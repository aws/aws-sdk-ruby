# frozen_string_literal: true

# This is generated code!

module Aws::AuditManager
  # This module contains the types returned by client operations.
  module Types

    # <p> The wrapper of Amazon Web Services account details, such as account ID or email address.
    #       </p>
    # @!attribute id
    #   <p> The identifier for the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute email_address
    #   <p> The email address that's associated with the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the Amazon Web Services account. </p>
    #   @return [String]
    class AWSAccount < Struct.new(
      nil,
      :id,
      :email_address,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An Amazon Web Services service such as Amazon S3 or CloudTrail.
    #       </p>
    #          <p>For an example of how to find an Amazon Web Services service name and how to define it in
    #          your assessment scope, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_GetServicesInScope.html#API_GetServicesInScope_Example_2">Finding an Amazon Web Services service name to use in your assessment scope</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_GetServicesInScope.html#API_GetServicesInScope_Example_3">Defining an Amazon Web Services service name in your assessment scope</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute service_name
    #   <p> The name of the Amazon Web Services service. </p>
    #   @return [String]
    class AWSService < Struct.new(
      nil,
      :service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Your account isn't registered with Audit Manager. Check the delegated
    #          administrator setup on the Audit Manager settings page, and try again. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An entity that defines the scope of audit evidence collected by Audit Manager.
    #          An Audit Manager assessment is an implementation of an Audit Manager framework. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the assessment. </p>
    #   @return [String]
    # @!attribute aws_account
    #   <p> The Amazon Web Services account that's associated with the assessment. </p>
    #   @return [Types::AWSAccount]
    # @!attribute metadata
    #   <p> The metadata for the assessment. </p>
    #   @return [Types::AssessmentMetadata]
    # @!attribute framework
    #   <p> The framework that the assessment was created from. </p>
    #   @return [Types::AssessmentFramework]
    # @!attribute tags
    #   <p> The tags that are associated with the assessment. </p>
    #   @return [Hash<String, String>]
    class Assessment < Struct.new(
      nil,
      :arn,
      :aws_account,
      :metadata,
      :framework,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The control entity that represents a standard control or a custom control in an Audit Manager assessment. </p>
    # @!attribute id
    #   <p> The identifier for the control. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the control. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the control. </p>
    #   @deprecated
    #     This data type will be deprecated on May 19, 2025. To view the assessment control description, use GetControl.
    #     Since: 2025-05-19
    #   @return [String]
    # @!attribute status
    #   <p> The status of the control. </p>
    #   @return [String]
    # @!attribute response
    #   <p> The response of the control. </p>
    #   @return [String]
    # @!attribute comments
    #   <p> The list of comments that's attached to the control. </p>
    #   @return [Array<Types::ControlComment>]
    # @!attribute evidence_sources
    #   <p> The list of data sources for the evidence. </p>
    #   @return [Array<String>]
    # @!attribute evidence_count
    #   <p> The amount of evidence that's collected for the control. </p>
    #   @return [Integer]
    # @!attribute assessment_report_evidence_count
    #   <p> The amount of evidence in the assessment report. </p>
    #   @return [Integer]
    class AssessmentControl < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :status,
      :response,
      :comments,
      :evidence_sources,
      :evidence_count,
      :assessment_report_evidence_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evidence_count] = 0 unless options.key?(:evidence_count)
        options[:assessment_report_evidence_count] = 0 unless options.key?(:assessment_report_evidence_count)
        super
      end
    end

    # <p> Represents a set of controls in an Audit Manager assessment. </p>
    # @!attribute id
    #   <p> The identifier of the control set in the assessment. This is the control set name in a
    #            plain string format. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description for the control set. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the control set. </p>
    #   @return [String]
    # @!attribute roles
    #   <p> The roles that are associated with the control set. </p>
    #   @return [Array<Types::Role>]
    # @!attribute controls
    #   <p> The list of controls that's contained with the control set. </p>
    #   @return [Array<Types::AssessmentControl>]
    # @!attribute delegations
    #   <p> The delegations that are associated with the control set. </p>
    #   @return [Array<Types::Delegation>]
    # @!attribute system_evidence_count
    #   <p> The total number of evidence objects that are retrieved automatically for the control
    #            set. </p>
    #   @return [Integer]
    # @!attribute manual_evidence_count
    #   <p> The total number of evidence objects that are uploaded manually to the control set.
    #         </p>
    #   @return [Integer]
    class AssessmentControlSet < Struct.new(
      nil,
      :id,
      :description,
      :status,
      :roles,
      :controls,
      :delegations,
      :system_evidence_count,
      :manual_evidence_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:system_evidence_count] = 0 unless options.key?(:system_evidence_count)
        options[:manual_evidence_count] = 0 unless options.key?(:manual_evidence_count)
        super
      end
    end

    # <p> The folder where Audit Manager stores evidence for an assessment. </p>
    # @!attribute name
    #   <p> The name of the evidence folder. </p>
    #   @return [String]
    # @!attribute date
    #   <p> The date when the first evidence was added to the evidence folder. </p>
    #   @return [Time]
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #   @return [String]
    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    # @!attribute data_source
    #   <p> The Amazon Web Services service that the evidence was collected from. </p>
    #   @return [String]
    # @!attribute author
    #   <p> The name of the user who created the evidence folder. </p>
    #   @return [String]
    # @!attribute total_evidence
    #   <p> The total amount of evidence in the evidence folder. </p>
    #   @return [Integer]
    # @!attribute assessment_report_selection_count
    #   <p> The total count of evidence that's included in the assessment report. </p>
    #   @return [Integer]
    # @!attribute control_name
    #   <p> The name of the control. </p>
    #   @return [String]
    # @!attribute evidence_resources_included_count
    #   <p> The amount of evidence that's included in the evidence folder. </p>
    #   @return [Integer]
    # @!attribute evidence_by_type_configuration_data_count
    #   <p> The number of evidence that falls under the configuration data category. This evidence
    #            is collected from configuration snapshots of other Amazon Web Services services such as
    #               Amazon EC2, Amazon S3, or IAM. </p>
    #   @return [Integer]
    # @!attribute evidence_by_type_manual_count
    #   <p> The number of evidence that falls under the manual category. This evidence is imported
    #            manually. </p>
    #   @return [Integer]
    # @!attribute evidence_by_type_compliance_check_count
    #   <p> The number of evidence that falls under the compliance check category. This evidence is
    #            collected from Config or Security Hub. </p>
    #   @return [Integer]
    # @!attribute evidence_by_type_compliance_check_issues_count
    #   <p> The total number of issues that were reported directly from Security Hub,
    #               Config, or both. </p>
    #   @return [Integer]
    # @!attribute evidence_by_type_user_activity_count
    #   <p> The number of evidence that falls under the user activity category. This evidence is
    #            collected from CloudTrail logs. </p>
    #   @return [Integer]
    # @!attribute evidence_aws_service_source_count
    #   <p> The total number of Amazon Web Services resources that were assessed to generate the
    #            evidence. </p>
    #   @return [Integer]
    class AssessmentEvidenceFolder < Struct.new(
      nil,
      :name,
      :date,
      :assessment_id,
      :control_set_id,
      :control_id,
      :id,
      :data_source,
      :author,
      :total_evidence,
      :assessment_report_selection_count,
      :control_name,
      :evidence_resources_included_count,
      :evidence_by_type_configuration_data_count,
      :evidence_by_type_manual_count,
      :evidence_by_type_compliance_check_count,
      :evidence_by_type_compliance_check_issues_count,
      :evidence_by_type_user_activity_count,
      :evidence_aws_service_source_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_evidence] = 0 unless options.key?(:total_evidence)
        options[:assessment_report_selection_count] = 0 unless options.key?(:assessment_report_selection_count)
        options[:evidence_resources_included_count] = 0 unless options.key?(:evidence_resources_included_count)
        options[:evidence_by_type_configuration_data_count] = 0 unless options.key?(:evidence_by_type_configuration_data_count)
        options[:evidence_by_type_manual_count] = 0 unless options.key?(:evidence_by_type_manual_count)
        options[:evidence_by_type_compliance_check_count] = 0 unless options.key?(:evidence_by_type_compliance_check_count)
        options[:evidence_by_type_compliance_check_issues_count] = 0 unless options.key?(:evidence_by_type_compliance_check_issues_count)
        options[:evidence_by_type_user_activity_count] = 0 unless options.key?(:evidence_by_type_user_activity_count)
        options[:evidence_aws_service_source_count] = 0 unless options.key?(:evidence_aws_service_source_count)
        super
      end
    end

    # <p> The file used to structure and automate Audit Manager assessments for a given
    #          compliance standard. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute id
    #   <p> The unique identifier for the framework. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the framework. </p>
    #   @return [String]
    # @!attribute metadata
    #   <p> The metadata of a framework, such as the name, ID, or description. </p>
    #   @return [Types::FrameworkMetadata]
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #   @return [Array<Types::AssessmentControlSet>]
    class AssessmentFramework < Struct.new(
      nil,
      :id,
      :arn,
      :metadata,
      :control_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that's associated with a standard framework or a custom framework. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the framework. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier for the framework. </p>
    #   @return [String]
    # @!attribute type
    #   <p> The framework type, such as a standard framework or a custom framework. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the framework. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the framework. </p>
    #   @return [String]
    # @!attribute logo
    #   <p> The logo that's associated with the framework. </p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #   @return [String]
    # @!attribute controls_count
    #   <p> The number of controls that are associated with the framework. </p>
    #   @return [Integer]
    # @!attribute control_sets_count
    #   <p> The number of control sets that are associated with the framework. </p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p> The time when the framework was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> The time when the framework was most recently updated. </p>
    #   @return [Time]
    class AssessmentFrameworkMetadata < Struct.new(
      nil,
      :arn,
      :id,
      :type,
      :name,
      :description,
      :logo,
      :compliance_type,
      :controls_count,
      :control_sets_count,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:controls_count] = 0 unless options.key?(:controls_count)
        options[:control_sets_count] = 0 unless options.key?(:control_sets_count)
        super
      end
    end

    # <p> Represents a share request for a custom framework in Audit Manager. </p>
    # @!attribute id
    #   <p> The unique identifier for the share request. </p>
    #   @return [String]
    # @!attribute framework_id
    #   <p>The unique identifier for the shared custom framework. </p>
    #   @return [String]
    # @!attribute framework_name
    #   <p> The name of the custom framework that the share request is for. </p>
    #   @return [String]
    # @!attribute framework_description
    #   <p>The description of the shared custom framework.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the share request. </p>
    #   @return [String]
    # @!attribute source_account
    #   <p> The Amazon Web Services account of the sender. </p>
    #   @return [String]
    # @!attribute destination_account
    #   <p> The Amazon Web Services account of the recipient. </p>
    #   @return [String]
    # @!attribute destination_region
    #   <p> The Amazon Web Services Region of the recipient. </p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p> The time when the share request expires. </p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p> The time when the share request was created. </p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p> Specifies when the share request was last updated. </p>
    #   @return [Time]
    # @!attribute comment
    #   <p> An optional comment from the sender about the share request. </p>
    #   @return [String]
    # @!attribute standard_controls_count
    #   <p>The number of standard controls that are part of the shared custom framework. </p>
    #   @return [Integer]
    # @!attribute custom_controls_count
    #   <p>The number of custom controls that are part of the shared custom framework.</p>
    #   @return [Integer]
    # @!attribute compliance_type
    #   <p>The compliance type that the shared custom framework supports, such as CIS or
    #            HIPAA.</p>
    #   @return [String]
    class AssessmentFrameworkShareRequest < Struct.new(
      nil,
      :id,
      :framework_id,
      :framework_name,
      :framework_description,
      :status,
      :source_account,
      :destination_account,
      :destination_region,
      :expiration_time,
      :creation_time,
      :last_updated,
      :comment,
      :standard_controls_count,
      :custom_controls_count,
      :compliance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that's associated with the specified assessment. </p>
    # @!attribute name
    #   <p> The name of the assessment. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the assessment. </p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p> The overall status of the assessment. </p>
    #   @return [String]
    # @!attribute assessment_reports_destination
    #   <p> The destination that evidence reports are stored in for the assessment. </p>
    #   @return [Types::AssessmentReportsDestination]
    # @!attribute scope
    #   <p> The wrapper of Amazon Web Services accounts and services that are in scope for the
    #            assessment. </p>
    #   @return [Types::Scope]
    # @!attribute roles
    #   <p> The roles that are associated with the assessment. </p>
    #   @return [Array<Types::Role>]
    # @!attribute delegations
    #   <p> The delegations that are associated with the assessment. </p>
    #   @return [Array<Types::Delegation>]
    # @!attribute creation_time
    #   <p> Specifies when the assessment was created. </p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p> The time of the most recent update. </p>
    #   @return [Time]
    class AssessmentMetadata < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :compliance_type,
      :status,
      :assessment_reports_destination,
      :scope,
      :roles,
      :delegations,
      :creation_time,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A metadata object that's associated with an assessment in Audit Manager.
    #       </p>
    # @!attribute name
    #   <p> The name of the assessment. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the assessment. </p>
    #   @return [String]
    # @!attribute roles
    #   <p> The roles that are associated with the assessment. </p>
    #   @return [Array<Types::Role>]
    # @!attribute delegations
    #   <p> The delegations that are associated with the assessment. </p>
    #   @return [Array<Types::Delegation>]
    # @!attribute creation_time
    #   <p> Specifies when the assessment was created. </p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p> The time of the most recent update. </p>
    #   @return [Time]
    class AssessmentMetadataItem < Struct.new(
      nil,
      :name,
      :id,
      :compliance_type,
      :status,
      :roles,
      :delegations,
      :creation_time,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A finalized document that's generated from an Audit Manager assessment. These
    #          reports summarize the relevant evidence that was collected for your audit, and link to the
    #          relevant evidence folders. These evidence folders are named and organized according to the
    #          controls that are specified in your assessment. </p>
    # @!attribute id
    #   <p> The unique identifier for the assessment report. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name that's given to the assessment report. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the specified assessment report. </p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p> The identifier for the specified Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The identifier for the specified assessment. </p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p> The name of the associated assessment. </p>
    #   @return [String]
    # @!attribute author
    #   <p> The name of the user who created the assessment report. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the specified assessment report. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> Specifies when the assessment report was created. </p>
    #   @return [Time]
    class AssessmentReport < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :aws_account_id,
      :assessment_id,
      :assessment_name,
      :author,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An error entity for assessment report evidence errors. This is used to provide more
    #          meaningful errors than a simple string message. </p>
    # @!attribute evidence_id
    #   <p> The identifier for the evidence. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The error code that was returned. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The error message that was returned. </p>
    #   @return [String]
    class AssessmentReportEvidenceError < Struct.new(
      nil,
      :evidence_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata objects that are associated with the specified assessment report. </p>
    # @!attribute id
    #   <p> The unique identifier for the assessment report. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the assessment report. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the assessment report. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The unique identifier for the associated assessment. </p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p>The name of the associated assessment. </p>
    #   @return [String]
    # @!attribute author
    #   <p> The name of the user who created the assessment report. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the assessment report. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> Specifies when the assessment report was created. </p>
    #   @return [Time]
    class AssessmentReportMetadata < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :assessment_id,
      :assessment_name,
      :author,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The location where Audit Manager saves assessment reports for the given
    #          assessment. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute destination_type
    #   <p> The destination type, such as Amazon S3. </p>
    #   @return [String]
    # @!attribute destination
    #   <p> The destination bucket where Audit Manager stores assessment reports. </p>
    #   @return [String]
    class AssessmentReportsDestination < Struct.new(
      nil,
      :destination_type,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    class AssociateAssessmentReportEvidenceFolderRequest < Struct.new(
      nil,
      :assessment_id,
      :evidence_folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateAssessmentReportEvidenceFolderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    # @!attribute evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #   @return [Array<String>]
    class BatchAssociateAssessmentReportEvidenceRequest < Struct.new(
      nil,
      :assessment_id,
      :evidence_folder_id,
      :evidence_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p> A list of errors that the <code>BatchAssociateAssessmentReportEvidence</code> API
    #            returned. </p>
    #   @return [Array<Types::AssessmentReportEvidenceError>]
    class BatchAssociateAssessmentReportEvidenceResponse < Struct.new(
      nil,
      :evidence_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An error entity for the <code>BatchCreateDelegationByAssessment</code> API. This is
    #          used to provide more meaningful errors than a simple string message. </p>
    # @!attribute create_delegation_request
    #   <p> The API request to batch create delegations in Audit Manager. </p>
    #   @return [Types::CreateDelegationRequest]
    # @!attribute error_code
    #   <p> The error code that the <code>BatchCreateDelegationByAssessment</code> API returned.
    #         </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The error message that the <code>BatchCreateDelegationByAssessment</code> API returned.
    #         </p>
    #   @return [String]
    class BatchCreateDelegationByAssessmentError < Struct.new(
      nil,
      :create_delegation_request,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute create_delegation_requests
    #   <p> The API request to batch create delegations in Audit Manager. </p>
    #   @return [Array<Types::CreateDelegationRequest>]
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    class BatchCreateDelegationByAssessmentRequest < Struct.new(
      nil,
      :create_delegation_requests,
      :assessment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegations
    #   <p> The delegations that are associated with the assessment. </p>
    #   @return [Array<Types::Delegation>]
    # @!attribute errors
    #   <p> A list of errors that the <code>BatchCreateDelegationByAssessment</code> API returned.
    #         </p>
    #   @return [Array<Types::BatchCreateDelegationByAssessmentError>]
    class BatchCreateDelegationByAssessmentResponse < Struct.new(
      nil,
      :delegations,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An error entity for the <code>BatchDeleteDelegationByAssessment</code> API. This is
    #          used to provide more meaningful errors than a simple string message. </p>
    # @!attribute delegation_id
    #   <p> The identifier for the delegation. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The error code that the <code>BatchDeleteDelegationByAssessment</code> API returned.
    #         </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The error message that the <code>BatchDeleteDelegationByAssessment</code> API returned.
    #         </p>
    #   @return [String]
    class BatchDeleteDelegationByAssessmentError < Struct.new(
      nil,
      :delegation_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegation_ids
    #   <p> The identifiers for the delegations. </p>
    #   @return [Array<String>]
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    class BatchDeleteDelegationByAssessmentRequest < Struct.new(
      nil,
      :delegation_ids,
      :assessment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p> A list of errors that the <code>BatchDeleteDelegationByAssessment</code> API returned.
    #         </p>
    #   @return [Array<Types::BatchDeleteDelegationByAssessmentError>]
    class BatchDeleteDelegationByAssessmentResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    # @!attribute evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #   @return [Array<String>]
    class BatchDisassociateAssessmentReportEvidenceRequest < Struct.new(
      nil,
      :assessment_id,
      :evidence_folder_id,
      :evidence_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence_ids
    #   <p> The identifier for the evidence. </p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p> A list of errors that the <code>BatchDisassociateAssessmentReportEvidence</code> API
    #            returned. </p>
    #   @return [Array<Types::AssessmentReportEvidenceError>]
    class BatchDisassociateAssessmentReportEvidenceResponse < Struct.new(
      nil,
      :evidence_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An error entity for the <code>BatchImportEvidenceToAssessmentControl</code> API. This
    #          is used to provide more meaningful errors than a simple string message. </p>
    # @!attribute manual_evidence
    #   <p> Manual evidence that can't be collected automatically by Audit Manager. </p>
    #   @return [Types::ManualEvidence]
    # @!attribute error_code
    #   <p> The error code that the <code>BatchImportEvidenceToAssessmentControl</code> API
    #            returned. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p> The error message that the <code>BatchImportEvidenceToAssessmentControl</code> API
    #            returned. </p>
    #   @return [String]
    class BatchImportEvidenceToAssessmentControlError < Struct.new(
      nil,
      :manual_evidence,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #   @return [String]
    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #   @return [String]
    # @!attribute manual_evidence
    #   <p> The list of manual evidence objects. </p>
    #   @return [Array<Types::ManualEvidence>]
    class BatchImportEvidenceToAssessmentControlRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :control_id,
      :manual_evidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p> A list of errors that the <code>BatchImportEvidenceToAssessmentControl</code> API
    #            returned. </p>
    #   @return [Array<Types::BatchImportEvidenceToAssessmentControlError>]
    class BatchImportEvidenceToAssessmentControlResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The record of a change within Audit Manager. For example, this could be the
    #          status change of an assessment or the delegation of a control set. </p>
    # @!attribute object_type
    #   <p> The object that was changed, such as an assessment, control, or control set. </p>
    #   @return [String]
    # @!attribute object_name
    #   <p> The name of the object that changed. This could be the name of an assessment, control,
    #            or control set.</p>
    #   @return [String]
    # @!attribute action
    #   <p> The action that was performed. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time when the action was performed and the changelog record was created. </p>
    #   @return [Time]
    # @!attribute created_by
    #   <p> The user or role that performed the action. </p>
    #   @return [String]
    class ChangeLog < Struct.new(
      nil,
      :object_type,
      :object_name,
      :action,
      :created_at,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A control in Audit Manager. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the control. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier for the control. </p>
    #   @return [String]
    # @!attribute type
    #   <p> Specifies whether the control is a standard control or a custom control.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the control. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the control. </p>
    #   @return [String]
    # @!attribute testing_information
    #   <p> The steps that you should follow to determine if the control has been satisfied.
    #         </p>
    #   @return [String]
    # @!attribute action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #   @return [String]
    # @!attribute action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #   @return [String]
    # @!attribute control_sources
    #   <p> The data source types that determine where Audit Manager collects evidence from for
    #            the control. </p>
    #   @return [String]
    # @!attribute control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #   @return [Array<Types::ControlMappingSource>]
    # @!attribute created_at
    #   <p> The time when the control was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> The time when the control was most recently updated. </p>
    #   @return [Time]
    # @!attribute created_by
    #   <p> The user or role that created the control. </p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p> The user or role that most recently updated the control. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags associated with the control. </p>
    #   @return [Hash<String, String>]
    # @!attribute state
    #   <p>The state of the control. The <code>END_OF_SUPPORT</code> state is applicable to
    #            standard controls only. This state indicates that the standard control can still be used to
    #            collect evidence, but Audit Manager is no longer updating or maintaining that
    #            control.</p>
    #   @return [String]
    class Control < Struct.new(
      nil,
      :arn,
      :id,
      :type,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_sources,
      :control_mapping_sources,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A comment that's posted by a user on a control. This includes the author's name, the
    #          comment text, and a timestamp. </p>
    # @!attribute author_name
    #   <p> The name of the user who authored the comment. </p>
    #   @return [String]
    # @!attribute comment_body
    #   <p> The body text of a control comment. </p>
    #   @return [String]
    # @!attribute posted_date
    #   <p> The time when the comment was posted. </p>
    #   @return [Time]
    class ControlComment < Struct.new(
      nil,
      :author_name,
      :comment_body,
      :posted_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the latest analytics data for a specific control domain.</p>
    #          <p>Control domain insights are grouped by control domain, and ranked by the highest total
    #          count of non-compliant evidence.</p>
    # @!attribute name
    #   <p>The name of the control domain. </p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the control domain. Audit Manager supports the control
    #            domains that are provided by Amazon Web Services Control Catalog. For information about how
    #            to find a list of available control domains, see <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a> in the Amazon Web Services Control Catalog API
    #            Reference.</p>
    #   @return [String]
    # @!attribute controls_count_by_noncompliant_evidence
    #   <p>The number of controls in the control domain that collected non-compliant evidence on
    #            the <code>lastUpdated</code> date. </p>
    #   @return [Integer]
    # @!attribute total_controls_count
    #   <p>The total number of controls in the control domain. </p>
    #   @return [Integer]
    # @!attribute evidence_insights
    #   <p>A breakdown of the compliance check status for the evidence that’s associated with the
    #            control domain. </p>
    #   @return [Types::EvidenceInsights]
    # @!attribute last_updated
    #   <p>The time when the control domain insights were last updated. </p>
    #   @return [Time]
    class ControlDomainInsights < Struct.new(
      nil,
      :name,
      :id,
      :controls_count_by_noncompliant_evidence,
      :total_controls_count,
      :evidence_insights,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the latest analytics data for a specific control in a specific active
    #          assessment.</p>
    #          <p>Control insights are grouped by control domain, and ranked by the highest total count of
    #          non-compliant evidence. </p>
    # @!attribute name
    #   <p>The name of the assessment control. </p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the assessment control. </p>
    #   @return [String]
    # @!attribute evidence_insights
    #   <p>A breakdown of the compliance check status for the evidence that’s associated with the
    #            assessment control. </p>
    #   @return [Types::EvidenceInsights]
    # @!attribute control_set_name
    #   <p>The name of the control set that the assessment control belongs to. </p>
    #   @return [String]
    # @!attribute last_updated
    #   <p>The time when the assessment control insights were last updated. </p>
    #   @return [Time]
    class ControlInsightsMetadataByAssessmentItem < Struct.new(
      nil,
      :name,
      :id,
      :evidence_insights,
      :control_set_name,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the latest analytics data for a specific control. </p>
    #          <p>This data reflects the total counts for the specified control across all active
    #          assessments. Control insights are grouped by control domain, and ranked by the highest
    #          total count of non-compliant evidence.</p>
    # @!attribute name
    #   <p>The name of the control. </p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the control. </p>
    #   @return [String]
    # @!attribute evidence_insights
    #   <p>A breakdown of the compliance check status for the evidence that’s associated with the
    #            control. </p>
    #   @return [Types::EvidenceInsights]
    # @!attribute last_updated
    #   <p>The time when the control insights were last updated. </p>
    #   @return [Time]
    class ControlInsightsMetadataItem < Struct.new(
      nil,
      :name,
      :id,
      :evidence_insights,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The data source that determines where Audit Manager collects evidence from for
    #          the control. </p>
    # @!attribute source_id
    #   <p> The unique identifier for the source. </p>
    #   @return [String]
    # @!attribute source_name
    #   <p> The name of the source. </p>
    #   @return [String]
    # @!attribute source_description
    #   <p> The description of the source. </p>
    #   @return [String]
    # @!attribute source_set_up_option
    #   <p>The setup option for the data source. This option reflects if the evidence collection
    #            method is automated or manual. If you don’t provide a value for
    #               <code>sourceSetUpOption</code>, Audit Manager automatically infers and populates
    #            the correct value based on the <code>sourceType</code> that you specify.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p> Specifies which type of data source is used to collect evidence. </p>
    #            <ul>
    #               <li>
    #                  <p>The source can be an individual data source type, such as
    #                     <code>AWS_Cloudtrail</code>, <code>AWS_Config</code>,
    #                     <code>AWS_Security_Hub</code>, <code>AWS_API_Call</code>, or <code>MANUAL</code>.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>The source can also be a managed grouping of data sources, such as a
    #                     <code>Core_Control</code> or a <code>Common_Control</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_keyword
    #   <p>A keyword that relates to the control data source.</p>
    #            <p>For manual evidence, this keyword indicates if the manual evidence is a file or
    #            text.</p>
    #            <p>For automated evidence, this keyword identifies a specific CloudTrail event,
    #               Config rule, Security Hub control, or Amazon Web Services API name. </p>
    #            <p> To learn more about the supported keywords that you can use when mapping a control data
    #            source, see the following pages in the <i>Audit Manager User
    #               Guide</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html">Config rules supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html">Security Hub controls supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html">API calls
    #                     supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-cloudtrail.html">CloudTrail event names supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::SourceKeyword]
    # @!attribute source_frequency
    #   <p>Specifies how often evidence is collected from the control mapping source. </p>
    #   @return [String]
    # @!attribute troubleshooting_text
    #   <p> The instructions for troubleshooting the control. </p>
    #   @return [String]
    class ControlMappingSource < Struct.new(
      nil,
      :source_id,
      :source_name,
      :source_description,
      :source_set_up_option,
      :source_type,
      :source_keyword,
      :source_frequency,
      :troubleshooting_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that's associated with the standard control or custom control. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the control. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier for the control. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the control. </p>
    #   @return [String]
    # @!attribute control_sources
    #   <p> The data source that determines where Audit Manager collects evidence from for the
    #            control. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time when the control was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> The time when the control was most recently updated. </p>
    #   @return [Time]
    class ControlMetadata < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :control_sources,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A set of controls in Audit Manager. </p>
    # @!attribute id
    #   <p> The identifier of the control set in the assessment. This is the control set name in a
    #            plain string format. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the control set. </p>
    #   @return [String]
    # @!attribute controls
    #   <p> The list of controls within the control set. </p>
    #   @return [Array<Types::Control>]
    class ControlSet < Struct.new(
      nil,
      :id,
      :name,
      :controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The control entity attributes that uniquely identify an existing control to be added to
    #          a framework in Audit Manager. </p>
    # @!attribute id
    #   <p> The unique identifier of the control. </p>
    #   @return [String]
    class CreateAssessmentFrameworkControl < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A <code>controlSet</code> entity that represents a collection of controls in Audit Manager. This doesn't contain the control set ID. </p>
    # @!attribute name
    #   <p> The name of the control set. </p>
    #   @return [String]
    # @!attribute controls
    #   <p> The list of controls within the control set. This doesn't contain the control set ID.
    #         </p>
    #   @return [Array<Types::CreateAssessmentFrameworkControl>]
    class CreateAssessmentFrameworkControlSet < Struct.new(
      nil,
      :name,
      :controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the new custom framework. </p>
    #   @return [String]
    # @!attribute description
    #   <p> An optional description for the new custom framework. </p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #   @return [String]
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #            <note>
    #               <p>The <code>Controls</code> object returns a partial response when called through Framework
    #               APIs. For a complete <code>Controls</code> object, use <code>GetControl</code>.</p>
    #            </note>
    #   @return [Array<Types::CreateAssessmentFrameworkControlSet>]
    # @!attribute tags
    #   <p> The tags that are associated with the framework. </p>
    #   @return [Hash<String, String>]
    class CreateAssessmentFrameworkRequest < Struct.new(
      nil,
      :name,
      :description,
      :compliance_type,
      :control_sets,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework
    #   <p> The new framework object that the <code>CreateAssessmentFramework</code> API returned. </p>
    #   @return [Types::Framework]
    class CreateAssessmentFrameworkResponse < Struct.new(
      nil,
      :framework,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the new assessment report. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the assessment report. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>A SQL statement that represents an evidence finder query.</p>
    #            <p>Provide this parameter when you want to generate an assessment report from the results
    #            of an evidence finder search query. When you use this parameter, Audit Manager
    #            generates a one-time report using only the evidence from the query output. This report does
    #            not include any assessment evidence that was manually <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#generate-assessment-report-include-evidence">added to a report using the console</a>, or <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_BatchAssociateAssessmentReportEvidence.html">associated with a report using the API</a>. </p>
    #            <p>To use this parameter, the <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_EvidenceFinderEnablement.html#auditmanager-Type-EvidenceFinderEnablement-enablementStatus">enablementStatus</a> of evidence finder must be <code>ENABLED</code>. </p>
    #            <p> For examples and help resolving <code>queryStatement</code> validation exceptions, see
    #               <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-finder-issues.html#querystatement-exceptions">Troubleshooting evidence finder issues</a> in the
    #                  <i>Audit Manager User Guide.</i>
    #            </p>
    #   @return [String]
    class CreateAssessmentReportRequest < Struct.new(
      nil,
      :name,
      :description,
      :assessment_id,
      :query_statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_report
    #   <p> The new assessment report that the <code>CreateAssessmentReport</code> API returned.
    #         </p>
    #   @return [Types::AssessmentReport]
    class CreateAssessmentReportResponse < Struct.new(
      nil,
      :assessment_report,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the assessment to be created. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The optional description of the assessment to be created. </p>
    #   @return [String]
    # @!attribute assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being created.
    #         </p>
    #   @return [Types::AssessmentReportsDestination]
    # @!attribute scope
    #   <p> The wrapper that contains the Amazon Web Services accounts that are in
    #            scope for the assessment. </p>
    #            <note>
    #               <p>You no longer need to specify which Amazon Web Services services are in scope when you
    #               create or update an assessment. Audit Manager infers the services in scope by
    #               examining your assessment controls and their data sources, and then mapping this
    #               information to the relevant Amazon Web Services services. </p>
    #               <p>If an underlying data source changes for your assessment, we automatically update the
    #               services scope as needed to reflect the correct Amazon Web Services services. This
    #               ensures that your assessment collects accurate and comprehensive evidence about all of
    #               the relevant services in your AWS environment.</p>
    #            </note>
    #   @return [Types::Scope]
    # @!attribute roles
    #   <p> The list of roles for the assessment. </p>
    #   @return [Array<Types::Role>]
    # @!attribute framework_id
    #   <p> The identifier for the framework that the assessment will be created from. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags that are associated with the assessment. </p>
    #   @return [Hash<String, String>]
    class CreateAssessmentRequest < Struct.new(
      nil,
      :name,
      :description,
      :assessment_reports_destination,
      :scope,
      :roles,
      :framework_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p> An entity that defines the scope of audit evidence collected by Audit Manager.
    #            An Audit Manager assessment is an implementation of an Audit Manager framework. </p>
    #   @return [Types::Assessment]
    class CreateAssessmentResponse < Struct.new(
      nil,
      :assessment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The mapping attributes that determine the evidence source for a given control, along
    #          with related parameters and metadata. This doesn't contain <code>mappingID</code>. </p>
    # @!attribute source_name
    #   <p> The name of the control mapping data source. </p>
    #   @return [String]
    # @!attribute source_description
    #   <p> The description of the data source that determines where Audit Manager collects
    #            evidence from for the control. </p>
    #   @return [String]
    # @!attribute source_set_up_option
    #   <p>The setup option for the data source. This option reflects if the evidence collection
    #            method is automated or manual. If you don’t provide a value for
    #               <code>sourceSetUpOption</code>, Audit Manager automatically infers and populates
    #            the correct value based on the <code>sourceType</code> that you specify.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p> Specifies which type of data source is used to collect evidence. </p>
    #            <ul>
    #               <li>
    #                  <p>The source can be an individual data source type, such as
    #                     <code>AWS_Cloudtrail</code>, <code>AWS_Config</code>,
    #                     <code>AWS_Security_Hub</code>, <code>AWS_API_Call</code>, or <code>MANUAL</code>.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>The source can also be a managed grouping of data sources, such as a
    #                     <code>Core_Control</code> or a <code>Common_Control</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_keyword
    #   <p>A keyword that relates to the control data source.</p>
    #            <p>For manual evidence, this keyword indicates if the manual evidence is a file or
    #            text.</p>
    #            <p>For automated evidence, this keyword identifies a specific CloudTrail event,
    #               Config rule, Security Hub control, or Amazon Web Services API name. </p>
    #            <p> To learn more about the supported keywords that you can use when mapping a control data
    #            source, see the following pages in the <i>Audit Manager User
    #               Guide</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html">Config rules supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html">Security Hub controls supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html">API calls
    #                     supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-cloudtrail.html">CloudTrail event names supported by Audit Manager</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::SourceKeyword]
    # @!attribute source_frequency
    #   <p>Specifies how often evidence is collected from the control mapping source. </p>
    #   @return [String]
    # @!attribute troubleshooting_text
    #   <p> The instructions for troubleshooting the control. </p>
    #   @return [String]
    class CreateControlMappingSource < Struct.new(
      nil,
      :source_name,
      :source_description,
      :source_set_up_option,
      :source_type,
      :source_keyword,
      :source_frequency,
      :troubleshooting_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the control. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the control. </p>
    #   @return [String]
    # @!attribute testing_information
    #   <p> The steps to follow to determine if the control is satisfied. </p>
    #   @return [String]
    # @!attribute action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #   @return [String]
    # @!attribute action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #   @return [String]
    # @!attribute control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #   @return [Array<Types::CreateControlMappingSource>]
    # @!attribute tags
    #   <p> The tags that are associated with the control. </p>
    #   @return [Hash<String, String>]
    class CreateControlRequest < Struct.new(
      nil,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_mapping_sources,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control
    #   <p> The new control that the <code>CreateControl</code> API returned. </p>
    #   @return [Types::Control]
    class CreateControlResponse < Struct.new(
      nil,
      :control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A collection of attributes that's used to create a delegation for an assessment in
    #             Audit Manager. </p>
    # @!attribute comment
    #   <p> A comment that's related to the delegation request. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #   @return [String]
    # @!attribute role_type
    #   <p> The type of customer persona. </p>
    #            <note>
    #               <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>. </p>
    #               <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>.</p>
    #               <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
    #                  <code>RESOURCE_OWNER</code>.</p>
    #            </note>
    #   @return [String]
    class CreateDelegationRequest < Struct.new(
      nil,
      :comment,
      :control_set_id,
      :role_arn,
      :role_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The default s3 bucket where Audit Manager saves the files that you export from evidence finder.</p>
    # @!attribute destination_type
    #   <p>The destination type, such as Amazon S3.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination bucket where Audit Manager stores exported files.</p>
    #   @return [String]
    class DefaultExportDestination < Struct.new(
      nil,
      :destination_type,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The assignment of a control set to a delegate for review. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute id
    #   <p> The unique identifier for the delegation. </p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p> The name of the assessment that's associated with the delegation. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The identifier for the assessment that's associated with the delegation. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the delegation. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #   @return [String]
    # @!attribute role_type
    #   <p> The type of customer persona. </p>
    #            <note>
    #               <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>. </p>
    #               <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>.</p>
    #               <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
    #                  <code>RESOURCE_OWNER</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute creation_time
    #   <p> Specifies when the delegation was created. </p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p> Specifies when the delegation was last updated. </p>
    #   @return [Time]
    # @!attribute control_set_id
    #   <p> The identifier for the control set that's associated with the delegation. </p>
    #   @return [String]
    # @!attribute comment
    #   <p> The comment that's related to the delegation. </p>
    #   @return [String]
    # @!attribute created_by
    #   <p> The user or role that created the delegation. </p>
    #   @return [String]
    class Delegation < Struct.new(
      nil,
      :id,
      :assessment_name,
      :assessment_id,
      :status,
      :role_arn,
      :role_type,
      :creation_time,
      :last_updated,
      :control_set_id,
      :comment,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that's associated with the delegation. </p>
    # @!attribute id
    #   <p> The unique identifier for the delegation. </p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p> The name of the associated assessment. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the delegation. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> Specifies when the delegation was created. </p>
    #   @return [Time]
    # @!attribute control_set_name
    #   <p> Specifies the name of the control set that was delegated for review. </p>
    #   @return [String]
    class DelegationMetadata < Struct.new(
      nil,
      :id,
      :assessment_name,
      :assessment_id,
      :status,
      :role_arn,
      :creation_time,
      :control_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_id
    #   <p> The identifier for the custom framework. </p>
    #   @return [String]
    class DeleteAssessmentFrameworkRequest < Struct.new(
      nil,
      :framework_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssessmentFrameworkResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The unique identifier for the share request to be deleted.</p>
    #   @return [String]
    # @!attribute request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    #   @return [String]
    class DeleteAssessmentFrameworkShareRequest < Struct.new(
      nil,
      :request_id,
      :request_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssessmentFrameworkShareResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    #   @return [String]
    class DeleteAssessmentReportRequest < Struct.new(
      nil,
      :assessment_id,
      :assessment_report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssessmentReportResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    class DeleteAssessmentRequest < Struct.new(
      nil,
      :assessment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssessmentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #   @return [String]
    class DeleteControlRequest < Struct.new(
      nil,
      :control_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteControlResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The registration status of the account. </p>
    #   @return [String]
    class DeregisterAccountResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the administrator account. </p>
    #   @return [String]
    class DeregisterOrganizationAdminAccountRequest < Struct.new(
      nil,
      :admin_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterOrganizationAdminAccountResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deregistration policy for the data that's stored in Audit Manager. You can
    #          use this attribute to determine how your data is handled when you <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeregisterAccount.html">deregister Audit Manager</a>.</p>
    #          <p>By default, Audit Manager retains evidence data for two years from the time of its
    #          creation. Other Audit Manager resources (including assessments, custom controls, and
    #          custom frameworks) remain in Audit Manager indefinitely, and are available if you
    #             <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_RegisterAccount.html">re-register Audit Manager</a> in the future. For more
    #          information about data retention, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/data-protection.html">Data
    #             Protection</a> in the <i>Audit Manager User Guide</i>.</p>
    #          <important>
    #             <p>If you choose to delete all data, this action permanently deletes all evidence data
    #             in your account within seven days. It also deletes all of the Audit Manager
    #             resources that you created, including assessments, custom controls, and custom
    #             frameworks. Your data will not be available if you re-register Audit Manager in the
    #             future.</p>
    #          </important>
    # @!attribute delete_resources
    #   <p>Specifies which Audit Manager data will be deleted when you deregister Audit Manager.</p>
    #            <ul>
    #               <li>
    #                  <p>If you set the value to <code>ALL</code>, all of your data is deleted within seven
    #                  days of deregistration.</p>
    #               </li>
    #               <li>
    #                  <p>If you set the value to <code>DEFAULT</code>, none of your data is deleted at the
    #                  time of deregistration. However, keep in mind that the Audit Manager data
    #                  retention policy still applies. As a result, any evidence data will be deleted two
    #                  years after its creation date. Your other Audit Manager resources will continue
    #                  to exist indefinitely.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeregistrationPolicy < Struct.new(
      nil,
      :delete_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    class DisassociateAssessmentReportEvidenceFolderRequest < Struct.new(
      nil,
      :assessment_id,
      :evidence_folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAssessmentReportEvidenceFolderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A record that contains the information needed to demonstrate compliance with the
    #          requirements specified by a control. Examples of evidence include change activity invoked
    #          by a user, or a system configuration snapshot. </p>
    # @!attribute data_source
    #   <p> The data source where the evidence was collected from. </p>
    #   @return [String]
    # @!attribute evidence_aws_account_id
    #   <p> The identifier for the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute time
    #   <p> The timestamp that represents when the evidence was collected. </p>
    #   @return [Time]
    # @!attribute event_source
    #   <p> The Amazon Web Services service that the evidence is collected from. </p>
    #   @return [String]
    # @!attribute event_name
    #   <p> The name of the evidence event. </p>
    #   @return [String]
    # @!attribute evidence_by_type
    #   <p> The type of automated evidence. </p>
    #   @return [String]
    # @!attribute resources_included
    #   <p> The list of resources that are assessed to generate the evidence. </p>
    #   @return [Array<Types::Resource>]
    # @!attribute attributes
    #   <p> The names and values that are used by the evidence event. This includes an attribute
    #            name (such as <code>allowUsersToChangePassword</code>) and value (such as <code>true</code>
    #            or <code>false</code>). </p>
    #   @return [Hash<String, String>]
    # @!attribute iam_id
    #   <p> The unique identifier for the user or role that's associated with
    #            the evidence. </p>
    #   @return [String]
    # @!attribute compliance_check
    #   <p>The evaluation status for automated evidence that falls under the compliance check
    #            category.</p>
    #            <ul>
    #               <li>
    #                  <p>Audit Manager classes evidence as non-compliant if Security Hub reports a
    #                     <i>Fail</i> result, or if Config reports a
    #                     <i>Non-compliant</i> result.</p>
    #               </li>
    #               <li>
    #                  <p>Audit Manager classes evidence as compliant if Security Hub reports a
    #                     <i>Pass</i> result, or if Config reports a
    #                     <i>Compliant</i> result.</p>
    #               </li>
    #               <li>
    #                  <p>If a compliance check isn't available or applicable, then no compliance evaluation can be made
    #                  for that evidence. This is the case if the evidence uses Config or
    #                     Security Hub as the underlying data source type, but those services aren't
    #                  enabled. This is also the case if the evidence uses an underlying data source type
    #                  that doesn't support compliance checks (such as manual evidence, Amazon Web Services
    #                  API calls, or CloudTrail). </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute aws_organization
    #   <p> The Amazon Web Services account that the evidence is collected from, and its
    #            organization path. </p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p> The identifier for the Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The identifier for the evidence. </p>
    #   @return [String]
    # @!attribute assessment_report_selection
    #   <p> Specifies whether the evidence is included in the assessment report. </p>
    #   @return [String]
    class Evidence < Struct.new(
      nil,
      :data_source,
      :evidence_aws_account_id,
      :time,
      :event_source,
      :event_name,
      :evidence_by_type,
      :resources_included,
      :attributes,
      :iam_id,
      :compliance_check,
      :aws_organization,
      :aws_account_id,
      :evidence_folder_id,
      :id,
      :assessment_report_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings object that specifies whether evidence finder is enabled. This object also
    #          describes the related event data store, and the backfill status for populating the event
    #          data store with evidence data.</p>
    # @!attribute event_data_store_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudTrail Lake event data store that’s
    #            used by evidence finder. The event data store is the lake of evidence data that evidence
    #            finder runs queries against.</p>
    #   @return [String]
    # @!attribute enablement_status
    #   <p>The current status of the evidence finder feature and the related event data store. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLE_IN_PROGRESS</code> means that you requested to enable evidence
    #                  finder. An event data store is currently being created to support evidence finder
    #                  queries.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> means that an event data store was successfully created and
    #                  evidence finder is enabled. We recommend that you wait 7 days until the event data
    #                  store is backfilled with your past two years’ worth of evidence data. You can use
    #                  evidence finder in the meantime, but not all data might be available until the
    #                  backfill is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLE_IN_PROGRESS</code> means that you requested to disable evidence finder, and your
    #                  request is pending the deletion of the event data store.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> means that you have permanently disabled evidence finder and the event
    #                  data store has been deleted. You can't re-enable evidence finder after this
    #                  point.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute backfill_status
    #   <p>The current status of the evidence data backfill process. </p>
    #            <p>The backfill starts after you enable evidence finder. During this task, Audit Manager populates an event data store with your past two years’ worth of evidence data so that
    #            your evidence can be queried.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOT_STARTED</code> means that the backfill hasn’t started yet. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> means that the backfill is in progress. This can take up
    #                  to 7 days to complete, depending on the amount of evidence data. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> means that the backfill is complete. All of your past
    #                  evidence is now queryable. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error
    #   <p>Represents any errors that occurred when enabling or disabling evidence finder. </p>
    #   @return [String]
    class EvidenceFinderEnablement < Struct.new(
      nil,
      :event_data_store_arn,
      :enablement_status,
      :backfill_status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A breakdown of the latest compliance check status for the evidence in your Audit Manager assessments. </p>
    # @!attribute noncompliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as
    #            non-compliant. This includes evidence that was collected from Security Hub with a
    #               <i>Fail</i> ruling, or collected from Config with a
    #               <i>Non-compliant</i> ruling. </p>
    #   @return [Integer]
    # @!attribute compliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as compliant.
    #            This includes evidence that was collected from Security Hub with a
    #               <i>Pass</i> ruling, or collected from Config with a
    #               <i>Compliant</i> ruling. </p>
    #   @return [Integer]
    # @!attribute inconclusive_evidence_count
    #   <p>The number of evidence that a compliance check ruling isn't available for. Evidence is
    #            inconclusive when the associated control uses Security Hub or Config as a data source but you didn't enable those services. This is also the case when a
    #            control uses a data source that doesn’t support compliance checks (for example, manual
    #            evidence, API calls, or CloudTrail). </p>
    #            <note>
    #               <p>If evidence has a compliance check status of <i>not applicable</i> in
    #               the console, it's classified as <i>inconclusive</i> in
    #                  <code>EvidenceInsights</code> data.</p>
    #            </note>
    #   @return [Integer]
    class EvidenceInsights < Struct.new(
      nil,
      :noncompliant_evidence_count,
      :compliant_evidence_count,
      :inconclusive_evidence_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The file that's used to structure and automate Audit Manager assessments for a
    #          given compliance standard. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the framework. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The unique identifier for the framework. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the framework. </p>
    #   @return [String]
    # @!attribute type
    #   <p> Specifies whether the framework is a standard framework or a custom framework.</p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The compliance type that the framework supports, such as CIS or HIPAA. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the framework. </p>
    #   @return [String]
    # @!attribute logo
    #   <p> The logo that's associated with the framework. </p>
    #   @return [String]
    # @!attribute control_sources
    #   <p> The control data sources where Audit Manager collects evidence from.</p>
    #            <important>
    #               <p>This API parameter is no longer supported.</p>
    #            </important>
    #   @deprecated
    #     Use controlSources from the Control
    #     Since: 2025-07-24
    #   @return [String]
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #            <note>
    #               <p>The <code>Controls</code> object returns a partial response when called through
    #               Framework APIs. For a complete <code>Controls</code> object, use
    #               <code>GetControl</code>.</p>
    #            </note>
    #   @return [Array<Types::ControlSet>]
    # @!attribute created_at
    #   <p> The time when the framework was created. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p> The time when the framework was most recently updated. </p>
    #   @return [Time]
    # @!attribute created_by
    #   <p> The user or role that created the framework. </p>
    #   @return [String]
    # @!attribute last_updated_by
    #   <p> The user or role that most recently updated the framework. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags that are associated with the framework. </p>
    #   @return [Hash<String, String>]
    class Framework < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :type,
      :compliance_type,
      :description,
      :logo,
      :control_sources,
      :control_sets,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata of a framework, such as the name, ID, or description. </p>
    # @!attribute name
    #   <p> The name of the framework. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the framework. </p>
    #   @return [String]
    # @!attribute logo
    #   <p> The logo that's associated with the framework. </p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The compliance standard that's associated with the framework. For example, this could
    #            be PCI DSS or HIPAA. </p>
    #   @return [String]
    class FrameworkMetadata < Struct.new(
      nil,
      :name,
      :description,
      :logo,
      :compliance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAccountStatusRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The status of the Amazon Web Services account. </p>
    #   @return [String]
    class GetAccountStatusResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_id
    #   <p> The identifier for the framework. </p>
    #   @return [String]
    class GetAssessmentFrameworkRequest < Struct.new(
      nil,
      :framework_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework
    #   <p> The framework that the <code>GetAssessmentFramework</code> API returned. </p>
    #            <note>
    #               <p>The <code>Controls</code> object returns a partial response when called through
    #               Framework APIs. For a complete <code>Controls</code> object, use
    #               <code>GetControl</code>.</p>
    #            </note>
    #   @return [Types::Framework]
    class GetAssessmentFrameworkResponse < Struct.new(
      nil,
      :framework,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    class GetAssessmentReportUrlRequest < Struct.new(
      nil,
      :assessment_report_id,
      :assessment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pre_signed_url
    #   <p> Short for uniform resource locator. A URL is used as a unique identifier to locate a
    #            resource on the internet. </p>
    #   @return [Types::URL]
    class GetAssessmentReportUrlResponse < Struct.new(
      nil,
      :pre_signed_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #   @return [String]
    class GetAssessmentRequest < Struct.new(
      nil,
      :assessment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p> An entity that defines the scope of audit evidence collected by Audit Manager.
    #            An Audit Manager assessment is an implementation of an Audit Manager framework. </p>
    #   @return [Types::Assessment]
    # @!attribute user_role
    #   <p> The wrapper that contains the Audit Manager role information of the current user.
    #            This includes the role type and IAM Amazon Resource Name (ARN). </p>
    #   @return [Types::Role]
    class GetAssessmentResponse < Struct.new(
      nil,
      :assessment,
      :user_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class GetChangeLogsRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :control_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_logs
    #   <p>The list of user activity for the control. </p>
    #   @return [Array<Types::ChangeLog>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class GetChangeLogsResponse < Struct.new(
      nil,
      :change_logs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #   @return [String]
    class GetControlRequest < Struct.new(
      nil,
      :control_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control
    #   <p> The details of the control that the <code>GetControl</code> API returned. </p>
    #   @return [Types::Control]
    class GetControlResponse < Struct.new(
      nil,
      :control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class GetDelegationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegations
    #   <p> The list of delegations that the <code>GetDelegations</code> API returned. </p>
    #   @return [Array<Types::DelegationMetadata>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class GetDelegationsResponse < Struct.new(
      nil,
      :delegations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class GetEvidenceByEvidenceFolderRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence
    #   <p> The list of evidence that the <code>GetEvidenceByEvidenceFolder</code> API returned.
    #         </p>
    #   @return [Array<Types::Evidence>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class GetEvidenceByEvidenceFolderResponse < Struct.new(
      nil,
      :evidence,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_name
    #   <p>The file that you want to upload. For a list of supported file formats, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files">Supported file types for manual evidence</a> in the <i>Audit Manager
    #               User Guide</i>.</p>
    #   @return [String]
    class GetEvidenceFileUploadUrlRequest < Struct.new(
      nil,
      :file_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute evidence_file_name
    #   <p>The name of the uploaded manual evidence file that the presigned URL was generated
    #            for.</p>
    #   @return [String]
    # @!attribute upload_url
    #   <p>The presigned URL that was generated.</p>
    #   @return [String]
    class GetEvidenceFileUploadUrlResponse < Struct.new(
      nil,
      :evidence_file_name,
      :upload_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    class GetEvidenceFolderRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence_folder
    #   <p> The folder that the evidence is stored in. </p>
    #   @return [Types::AssessmentEvidenceFolder]
    class GetEvidenceFolderResponse < Struct.new(
      nil,
      :evidence_folder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #   @return [String]
    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class GetEvidenceFoldersByAssessmentControlRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :control_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence_folders
    #   <p> The list of evidence folders that the
    #               <code>GetEvidenceFoldersByAssessmentControl</code> API returned. </p>
    #   @return [Array<Types::AssessmentEvidenceFolder>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class GetEvidenceFoldersByAssessmentControlResponse < Struct.new(
      nil,
      :evidence_folders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class GetEvidenceFoldersByAssessmentRequest < Struct.new(
      nil,
      :assessment_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence_folders
    #   <p> The list of evidence folders that the <code>GetEvidenceFoldersByAssessment</code> API
    #            returned. </p>
    #   @return [Array<Types::AssessmentEvidenceFolder>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class GetEvidenceFoldersByAssessmentResponse < Struct.new(
      nil,
      :evidence_folders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #   @return [String]
    # @!attribute evidence_id
    #   <p> The unique identifier for the evidence. </p>
    #   @return [String]
    class GetEvidenceRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      :evidence_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evidence
    #   <p> The evidence that the <code>GetEvidence</code> API returned. </p>
    #   @return [Types::Evidence]
    class GetEvidenceResponse < Struct.new(
      nil,
      :evidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #   @return [String]
    class GetInsightsByAssessmentRequest < Struct.new(
      nil,
      :assessment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute insights
    #   <p> The assessment analytics data that the <code>GetInsightsByAssessment</code> API
    #            returned. </p>
    #   @return [Types::InsightsByAssessment]
    class GetInsightsByAssessmentResponse < Struct.new(
      nil,
      :insights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetInsightsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute insights
    #   <p>The analytics data that the <code>GetInsights</code> API returned. </p>
    #   @return [Types::Insights]
    class GetInsightsResponse < Struct.new(
      nil,
      :insights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetOrganizationAdminAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the administrator account. </p>
    #   @return [String]
    # @!attribute organization_id
    #   <p> The identifier for the organization. </p>
    #   @return [String]
    class GetOrganizationAdminAccountResponse < Struct.new(
      nil,
      :admin_account_id,
      :organization_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetServicesInScopeRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_metadata
    #   <p> The metadata that's associated with the Amazon Web Services service. </p>
    #   @return [Array<Types::ServiceMetadata>]
    class GetServicesInScopeResponse < Struct.new(
      nil,
      :service_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute
    #   <p> The list of setting attribute enum values. </p>
    #   @return [String]
    class GetSettingsRequest < Struct.new(
      nil,
      :attribute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute settings
    #   <p> The settings object that holds all supported Audit Manager settings. </p>
    #   @return [Types::Settings]
    class GetSettingsResponse < Struct.new(
      nil,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the latest analytics data for all your active assessments. </p>
    #          <p>This summary is a snapshot of the data that your active assessments collected on the
    #             <code>lastUpdated</code> date. It’s important to understand that the following totals
    #          are daily counts based on this date — they aren’t a total sum to date. </p>
    #          <p>The <code>Insights</code> data is eventually consistent. This means that, when you read
    #          data from <code>Insights</code>, the response might not instantly reflect the results of a
    #          recently completed write or update operation. If you repeat your read request after a few
    #          hours, the response should return the latest data.</p>
    #          <note>
    #             <p>If you delete an assessment or change its status to inactive,
    #                <code>InsightsByAssessment</code> includes data for that assessment as
    #             follows.</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Inactive assessments</b> - If Audit Manager
    #                   collected evidence for your assessment before you changed it inactive, that
    #                   evidence is included in the <code>InsightsByAssessment</code> counts for that
    #                   day.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Deleted assessments</b> - If Audit Manager
    #                   collected evidence for your assessment before you deleted it, that evidence isn't
    #                   included in the <code>InsightsByAssessment</code> counts for that day.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute active_assessments_count
    #   <p>The number of active assessments in Audit Manager. </p>
    #   @return [Integer]
    # @!attribute noncompliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as
    #            non-compliant on the <code>lastUpdated</code> date. This includes evidence that was
    #            collected from Security Hub with a <i>Fail</i> ruling, or collected
    #            from Config with a <i>Non-compliant</i> ruling. </p>
    #   @return [Integer]
    # @!attribute compliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as compliant
    #            on the <code>lastUpdated</code> date. This includes evidence that was collected from
    #               Security Hub with a <i>Pass</i> ruling, or collected from
    #               Config with a <i>Compliant</i> ruling. </p>
    #   @return [Integer]
    # @!attribute inconclusive_evidence_count
    #   <p>The number of evidence without a compliance check ruling. Evidence is inconclusive when
    #            the associated control uses Security Hub or Config as a data
    #            source but you didn't enable those services. This is also the case when a control uses a
    #            data source that doesn’t support compliance checks (for example: manual evidence, API
    #            calls, or CloudTrail). </p>
    #            <note>
    #               <p>If evidence has a compliance check status of <i>not applicable</i>,
    #               it's classed as <i>inconclusive</i> in <code>Insights</code> data.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute assessment_controls_count_by_noncompliant_evidence
    #   <p>The number of assessment controls that collected non-compliant evidence on the
    #               <code>lastUpdated</code> date. </p>
    #   @return [Integer]
    # @!attribute total_assessment_controls_count
    #   <p>The total number of controls across all active assessments. </p>
    #   @return [Integer]
    # @!attribute last_updated
    #   <p>The time when the cross-assessment insights were last updated. </p>
    #   @return [Time]
    class Insights < Struct.new(
      nil,
      :active_assessments_count,
      :noncompliant_evidence_count,
      :compliant_evidence_count,
      :inconclusive_evidence_count,
      :assessment_controls_count_by_noncompliant_evidence,
      :total_assessment_controls_count,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the latest analytics data for a specific active assessment.</p>
    #          <p>This summary is a snapshot of the data that was collected on the
    #             <code>lastUpdated</code> date. It’s important to understand that the totals in
    #             <code>InsightsByAssessment</code> are daily counts based on this date — they aren’t a
    #          total sum to date. </p>
    #          <p>The <code>InsightsByAssessment</code> data is eventually consistent. This means that
    #          when you read data from <code>InsightsByAssessment</code>, the response might not instantly
    #          reflect the results of a recently completed write or update operation. If you repeat your
    #          read request after a few hours, the response returns the latest data.</p>
    #          <note>
    #             <p>If you delete an assessment or change its status to inactive,
    #                <code>InsightsByAssessment</code> includes data for that assessment as
    #             follows.</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Inactive assessments</b> - If Audit Manager
    #                   collected evidence for your assessment before you changed it inactive, that
    #                   evidence is included in the <code>InsightsByAssessment</code> counts for that
    #                   day.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Deleted assessments</b> - If Audit Manager
    #                   collected evidence for your assessment before you deleted it, that evidence isn't
    #                   included in the <code>InsightsByAssessment</code> counts for that day.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute noncompliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as
    #            non-compliant. This includes evidence that was collected from Security Hub with a
    #               <i>Fail</i> ruling, or collected from Config with a
    #               <i>Non-compliant</i> ruling. </p>
    #   @return [Integer]
    # @!attribute compliant_evidence_count
    #   <p>The number of compliance check evidence that Audit Manager classified as compliant.
    #            This includes evidence that was collected from Security Hub with a
    #               <i>Pass</i> ruling, or collected from Config with a
    #               <i>Compliant</i> ruling. </p>
    #   @return [Integer]
    # @!attribute inconclusive_evidence_count
    #   <p>The amount of evidence without a compliance check ruling. Evidence is inconclusive if
    #            the associated control uses Security Hub or Config as a data
    #            source and you didn't enable those services. This is also the case if a control uses a data
    #            source that doesn’t support compliance checks (for example, manual evidence, API calls, or
    #               CloudTrail). </p>
    #            <note>
    #               <p>If evidence has a compliance check status of <i>not applicable</i>,
    #               it's classified as <i>inconclusive</i> in
    #                  <code>InsightsByAssessment</code> data.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute assessment_controls_count_by_noncompliant_evidence
    #   <p>The number of assessment controls that collected non-compliant evidence on the
    #               <code>lastUpdated</code> date. </p>
    #   @return [Integer]
    # @!attribute total_assessment_controls_count
    #   <p>The total number of controls in the assessment. </p>
    #   @return [Integer]
    # @!attribute last_updated
    #   <p>The time when the assessment insights were last updated.</p>
    #   @return [Time]
    class InsightsByAssessment < Struct.new(
      nil,
      :noncompliant_evidence_count,
      :compliant_evidence_count,
      :inconclusive_evidence_count,
      :assessment_controls_count_by_noncompliant_evidence,
      :total_assessment_controls_count,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An internal service error occurred during the processing of your request. Try again
    #          later. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #            <p>Audit Manager supports the control domains that are provided by Amazon Web Services
    #            Control Catalog. For information about how to find a list of available control domains, see
    #               <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a> in the Amazon Web Services Control
    #            Catalog API Reference.</p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListAssessmentControlInsightsByControlDomainRequest < Struct.new(
      nil,
      :control_domain_id,
      :assessment_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_insights_by_assessment
    #   <p>The assessment control analytics data that the
    #               <code>ListAssessmentControlInsightsByControlDomain</code> API returned. </p>
    #   @return [Array<Types::ControlInsightsMetadataByAssessmentItem>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListAssessmentControlInsightsByControlDomainResponse < Struct.new(
      nil,
      :control_insights_by_assessment,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_type
    #   <p> Specifies whether the share request is a sent request or a received request.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListAssessmentFrameworkShareRequestsRequest < Struct.new(
      nil,
      :request_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_framework_share_requests
    #   <p> The list of share requests that the <code>ListAssessmentFrameworkShareRequests</code>
    #            API returned. </p>
    #   @return [Array<Types::AssessmentFrameworkShareRequest>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListAssessmentFrameworkShareRequestsResponse < Struct.new(
      nil,
      :assessment_framework_share_requests,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_type
    #   <p> The type of framework, such as a standard framework or a custom framework. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListAssessmentFrameworksRequest < Struct.new(
      nil,
      :framework_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_metadata_list
    #   <p> A list of metadata that the <code>ListAssessmentFrameworks</code> API returns for each
    #            framework.</p>
    #   @return [Array<Types::AssessmentFrameworkMetadata>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListAssessmentFrameworksResponse < Struct.new(
      nil,
      :framework_metadata_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListAssessmentReportsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_reports
    #   <p> The list of assessment reports that the <code>ListAssessmentReports</code> API
    #            returned. </p>
    #   @return [Array<Types::AssessmentReportMetadata>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListAssessmentReportsResponse < Struct.new(
      nil,
      :assessment_reports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The current status of the assessment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListAssessmentsRequest < Struct.new(
      nil,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_metadata
    #   <p>The metadata that the <code>ListAssessments</code> API returns for each
    #            assessment.</p>
    #   @return [Array<Types::AssessmentMetadataItem>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListAssessmentsResponse < Struct.new(
      nil,
      :assessment_metadata,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListControlDomainInsightsByAssessmentRequest < Struct.new(
      nil,
      :assessment_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_domain_insights
    #   <p>The control domain analytics data that the
    #               <code>ListControlDomainInsightsByAssessment</code> API returned. </p>
    #   @return [Array<Types::ControlDomainInsights>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListControlDomainInsightsByAssessmentResponse < Struct.new(
      nil,
      :control_domain_insights,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListControlDomainInsightsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_domain_insights
    #   <p>The control domain analytics data that the <code>ListControlDomainInsights</code> API
    #            returned. </p>
    #   @return [Array<Types::ControlDomainInsights>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListControlDomainInsightsResponse < Struct.new(
      nil,
      :control_domain_insights,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #            <p>Audit Manager supports the control domains that are provided by Amazon Web Services
    #            Control Catalog. For information about how to find a list of available control domains, see
    #               <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a> in the Amazon Web Services Control
    #            Catalog API Reference.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListControlInsightsByControlDomainRequest < Struct.new(
      nil,
      :control_domain_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_insights_metadata
    #   <p>The control analytics data that the <code>ListControlInsightsByControlDomain</code> API
    #            returned. </p>
    #   @return [Array<Types::ControlInsightsMetadataItem>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListControlInsightsByControlDomainResponse < Struct.new(
      nil,
      :control_insights_metadata,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_type
    #   <p>A filter that narrows the list of controls to a specific type. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    # @!attribute control_catalog_id
    #   <p>A filter that narrows the list of controls to a specific resource from the Amazon Web Services 
    #            Control Catalog. </p>
    #            <p>To use this parameter, specify the ARN of the Control Catalog resource. You can specify either 
    #            a control domain, a control objective, or a common control. For information about how to find the ARNs
    #            for these resources, see <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html">
    #                  <code>ListDomains</code>
    #               </a>, <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListObjectives.html">
    #                  <code>ListObjectives</code>
    #               </a>, and <a href="https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListCommonControls.html">
    #                  <code>ListCommonControls</code>
    #               </a>.</p>
    #            <note>
    #               <p>You can only filter by one Control Catalog resource at a time. 
    #               Specifying multiple resource ARNs isn’t currently supported. If you want to filter by more 
    #               than one ARN, we recommend that you run the <code>ListControls</code> operation separately 
    #               for each ARN. </p>
    #            </note>
    #            <p>Alternatively, specify <code>UNCATEGORIZED</code> to list controls that aren't
    #            mapped to a Control Catalog resource. For example, this operation might return a list of 
    #            custom controls that don't belong to any control domain or control objective.</p>
    #   @return [String]
    class ListControlsRequest < Struct.new(
      nil,
      :control_type,
      :next_token,
      :max_results,
      :control_catalog_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_metadata_list
    #   <p> A list of metadata that the <code>ListControls</code> API returns for each
    #            control.</p>
    #   @return [Array<Types::ControlMetadata>]
    # @!attribute next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListControlsResponse < Struct.new(
      nil,
      :control_metadata_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source
    #   <p>The control mapping data source that the keywords apply to. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListKeywordsForDataSourceRequest < Struct.new(
      nil,
      :source,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keywords
    #   <p>The list of keywords for the control mapping source.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListKeywordsForDataSourceResponse < Struct.new(
      nil,
      :keywords,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #   @return [Integer]
    class ListNotificationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notifications
    #   <p> The returned list of notifications. </p>
    #   @return [Array<Types::Notification>]
    # @!attribute next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #   @return [String]
    class ListNotificationsResponse < Struct.new(
      nil,
      :notifications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The list of tags that the <code>ListTagsForResource</code> API returned. </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Evidence that's manually added to a control in Audit Manager.
    #             <code>manualEvidence</code> can be one of the following: <code>evidenceFileName</code>,
    #             <code>s3ResourcePath</code>, or <code>textResponse</code>.</p>
    # @!attribute s3_resource_path
    #   <p>The S3 URL of the object that's imported as manual evidence. </p>
    #   @return [String]
    # @!attribute text_response
    #   <p>The plain text response that's entered and saved as manual evidence.</p>
    #   @return [String]
    # @!attribute evidence_file_name
    #   <p>The name of the file that's uploaded as manual evidence. This name is populated using
    #            the <code>evidenceFileName</code> value from the <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_GetEvidenceFileUploadUrl.html">
    #                  <code>GetEvidenceFileUploadUrl</code>
    #               </a> API response.</p>
    #   @return [String]
    class ManualEvidence < Struct.new(
      nil,
      :s3_resource_path,
      :text_response,
      :evidence_file_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The notification that informs a user of an update in Audit Manager. For
    #          example, this includes the notification that's sent when a control set is delegated for
    #          review. </p>
    # @!attribute id
    #   <p> The unique identifier for the notification. </p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p> The identifier for the assessment. </p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p> The name of the related assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The identifier for the control set. </p>
    #   @return [String]
    # @!attribute control_set_name
    #   <p> Specifies the name of the control set that the notification is about. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the notification. </p>
    #   @return [String]
    # @!attribute event_time
    #   <p> The time when the notification was sent. </p>
    #   @return [Time]
    # @!attribute source
    #   <p> The sender of the notification. </p>
    #   @return [String]
    class Notification < Struct.new(
      nil,
      :id,
      :assessment_id,
      :assessment_name,
      :control_set_id,
      :control_set_name,
      :description,
      :event_time,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kms_key
    #   <p> The KMS key details. </p>
    #   @return [String]
    # @!attribute delegated_admin_account
    #   <p> The delegated administrator account for Audit Manager. </p>
    #   @return [String]
    class RegisterAccountRequest < Struct.new(
      nil,
      :kms_key,
      :delegated_admin_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The status of the account registration request. </p>
    #   @return [String]
    class RegisterAccountResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the delegated administrator account. </p>
    #   @return [String]
    class RegisterOrganizationAdminAccountRequest < Struct.new(
      nil,
      :admin_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p> The identifier for the delegated administrator account. </p>
    #   @return [String]
    # @!attribute organization_id
    #   <p> The identifier for the organization. </p>
    #   @return [String]
    class RegisterOrganizationAdminAccountResponse < Struct.new(
      nil,
      :admin_account_id,
      :organization_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A system asset that's evaluated in an Audit Manager assessment. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) for the resource. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value of the resource. </p>
    #   @return [String]
    # @!attribute compliance_check
    #   <p> The evaluation status for a resource that was assessed when collecting compliance check
    #            evidence. </p>
    #            <ul>
    #               <li>
    #                  <p>Audit Manager classes the resource as non-compliant if Security Hub reports a
    #                     <i>Fail</i> result, or if Config reports a
    #                     <i>Non-compliant</i> result.</p>
    #               </li>
    #               <li>
    #                  <p>Audit Manager classes the resource as compliant if Security Hub reports a
    #                     <i>Pass</i> result, or if Config reports a
    #                     <i>Compliant</i> result.</p>
    #               </li>
    #               <li>
    #                  <p>If a compliance check isn't available or applicable, then no compliance evaluation can be made
    #                  for that resource. This is the case if a resource assessment uses Config or Security Hub as the underlying data source type, but those services
    #                  aren't enabled. This is also the case if the resource assessment uses an underlying
    #                  data source type that doesn't support compliance checks (such as manual evidence,
    #                     Amazon Web Services API calls, or CloudTrail). </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Resource < Struct.new(
      nil,
      :arn,
      :value,
      :compliance_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The resource that's specified in the request can't be found. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The unique identifier for the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of resource that's affected by the error. </p>
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

    # <p> The wrapper that contains the Audit Manager role information of the current user.
    #          This includes the role type and IAM Amazon Resource Name (ARN). </p>
    # @!attribute role_type
    #   <p> The type of customer persona. </p>
    #            <note>
    #               <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>. </p>
    #               <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
    #                  <code>PROCESS_OWNER</code>.</p>
    #               <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
    #                  <code>RESOURCE_OWNER</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role. </p>
    #   @return [String]
    class Role < Struct.new(
      nil,
      :role_type,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The wrapper that contains the Amazon Web Services accounts that are in
    #          scope for the assessment. </p>
    #          <note>
    #             <p>You no longer need to specify which Amazon Web Services services are in scope when you
    #             create or update an assessment. Audit Manager infers the services in scope by
    #             examining your assessment controls and their data sources, and then mapping this
    #             information to the relevant Amazon Web Services services. </p>
    #             <p>If an underlying data source changes for your assessment, we automatically update the
    #             services scope as needed to reflect the correct Amazon Web Services services. This
    #             ensures that your assessment collects accurate and comprehensive evidence about all of
    #             the relevant services in your AWS environment.</p>
    #          </note>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute aws_accounts
    #   <p> The Amazon Web Services accounts that are included in the scope of the assessment.
    #         </p>
    #   @return [Array<Types::AWSAccount>]
    # @!attribute aws_services
    #   <p> The Amazon Web Services services that are included in the scope of the assessment.
    #         </p>
    #            <important>
    #               <p>This API parameter is no longer supported. If you use this parameter to specify one
    #               or more Amazon Web Services services, Audit Manager ignores this input. Instead, the
    #               value for <code>awsServices</code> will show as empty.</p>
    #            </important>
    #   @deprecated
    #     You can't specify services in scope when creating/updating an assessment. If you use the parameter to specify one or more AWS services, Audit Manager ignores the input. Instead the value of the parameter will show as empty indicating that the services are defined and managed by Audit Manager.
    #   @return [Array<Types::AWSService>]
    class Scope < Struct.new(
      nil,
      :aws_accounts,
      :aws_services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that's associated with the Amazon Web Services service. </p>
    # @!attribute name
    #   <p> The name of the Amazon Web Services service. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The display name of the Amazon Web Services service. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the Amazon Web Services service. </p>
    #   @return [String]
    # @!attribute category
    #   <p> The category that the Amazon Web Services service belongs to, such as compute, storage,
    #            or database. </p>
    #   @return [String]
    class ServiceMetadata < Struct.new(
      nil,
      :name,
      :display_name,
      :description,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached your account quota for this resource type. To perform the requested
    #          action, delete some existing resources or <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">request a quota increase</a> from
    #          the Service Quotas console. For a list of Audit Manager service quotas, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html">Quotas and
    #             restrictions for Audit Manager</a>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings object that holds all supported Audit Manager settings. </p>
    # @!attribute is_aws_org_enabled
    #   <p> Specifies whether Organizations is enabled. </p>
    #   @return [Boolean]
    # @!attribute sns_topic
    #   <p> The designated Amazon Simple Notification Service (Amazon SNS) topic. </p>
    #   @return [String]
    # @!attribute default_assessment_reports_destination
    #   <p>The default S3 destination bucket for storing assessment reports.</p>
    #   @return [Types::AssessmentReportsDestination]
    # @!attribute default_process_owners
    #   <p> The designated default audit owners. </p>
    #   @return [Array<Types::Role>]
    # @!attribute kms_key
    #   <p> The KMS key details. </p>
    #   @return [String]
    # @!attribute evidence_finder_enablement
    #   <p>The current evidence finder status and event data store details.</p>
    #   @return [Types::EvidenceFinderEnablement]
    # @!attribute deregistration_policy
    #   <p>The deregistration policy for your Audit Manager data. You can
    #         use this attribute to determine how your data is handled when you deregister Audit Manager.</p>
    #   @return [Types::DeregistrationPolicy]
    # @!attribute default_export_destination
    #   <p>The default S3 destination bucket for storing evidence finder exports.</p>
    #   @return [Types::DefaultExportDestination]
    class Settings < Struct.new(
      nil,
      :is_aws_org_enabled,
      :sns_topic,
      :default_assessment_reports_destination,
      :default_process_owners,
      :kms_key,
      :evidence_finder_enablement,
      :deregistration_policy,
      :default_export_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A keyword that relates to the control data source.</p>
    #          <p>For manual evidence, this keyword indicates if the manual evidence is a file or
    #          text.</p>
    #          <p>For automated evidence, this keyword identifies a specific CloudTrail event,
    #             Config rule, Security Hub control, or Amazon Web Services API name. </p>
    #          <p> To learn more about the supported keywords that you can use when mapping a control data
    #          source, see the following pages in the <i>Audit Manager User
    #             Guide</i>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html">Config rules supported by Audit Manager</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html">Security Hub controls supported by Audit Manager</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html">API calls
    #                   supported by Audit Manager</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-cloudtrail.html">CloudTrail event names supported by Audit Manager</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute keyword_input_type
    #   <p> The input method for the keyword. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SELECT_FROM_LIST</code> is used when mapping a data source for automated
    #                  evidence.</p>
    #                  <ul>
    #                     <li>
    #                        <p>When <code>keywordInputType</code> is <code>SELECT_FROM_LIST</code>, a
    #                        keyword must be selected to collect automated evidence. For example, this
    #                        keyword can be a CloudTrail event name, a rule name for Config, a Security Hub control, or the name of an Amazon Web Services API call.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPLOAD_FILE</code> and <code>INPUT_TEXT</code> are only used when mapping a
    #                  data source for manual evidence.</p>
    #                  <ul>
    #                     <li>
    #                        <p>When <code>keywordInputType</code> is <code>UPLOAD_FILE</code>, a file must
    #                        be uploaded as manual evidence.</p>
    #                     </li>
    #                     <li>
    #                        <p>When <code>keywordInputType</code> is <code>INPUT_TEXT</code>, text must be
    #                        entered as manual evidence.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute keyword_value
    #   <p> The value of the keyword that's used when mapping a control data source. For example,
    #            this can be a CloudTrail event name, a rule name for Config, a
    #               Security Hub control, or the name of an Amazon Web Services API call. </p>
    #            <p>If you’re mapping a data source to a rule in Config, the
    #               <code>keywordValue</code> that you specify depends on the type of rule:</p>
    #            <ul>
    #               <li>
    #                  <p>For <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">managed rules</a>, you can use the rule identifier as the
    #                     <code>keywordValue</code>. You can find the rule identifier from the <a href="https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html">list of Config managed rules</a>. For some
    #                  rules, the rule identifier is different from the rule name. For example, the rule
    #                  name <code>restricted-ssh</code> has the following rule identifier:
    #                     <code>INCOMING_SSH_DISABLED</code>. Make sure to use the rule identifier, not the
    #                  rule name. </p>
    #                  <p>Keyword example for managed rules:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Managed rule name: <a href="https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-acl-prohibited.html">s3-bucket-acl-prohibited</a>
    #                        </p>
    #                        <p>
    #                           <code>keywordValue</code>: <code>S3_BUCKET_ACL_PROHIBITED</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html">custom rules</a>, you form the <code>keywordValue</code>
    #                  by adding the <code>Custom_</code> prefix to the rule name. This prefix distinguishes
    #                  the custom rule from a managed rule. </p>
    #                  <p>Keyword example for custom rules:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Custom rule name: my-custom-config-rule</p>
    #                        <p>
    #                           <code>keywordValue</code>: <code>Custom_my-custom-config-rule</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://docs.aws.amazon.com/config/latest/developerguide/service-linked-awsconfig-rules.html">service-linked rules</a>, you form the
    #                     <code>keywordValue</code> by adding the <code>Custom_</code> prefix to the rule
    #                  name. In addition, you remove the suffix ID that appears at the end of the rule name. </p>
    #                  <p>Keyword examples for service-linked rules:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Service-linked rule name:
    #                        CustomRuleForAccount-conformance-pack-szsm1uv0w</p>
    #                        <p>
    #                           <code>keywordValue</code>:
    #                           <code>Custom_CustomRuleForAccount-conformance-pack</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Service-linked rule name:
    #                        OrgConfigRule-s3-bucket-versioning-enabled-dbgzf8ba</p>
    #                        <p>
    #                           <code>keywordValue</code>:
    #                           <code>Custom_OrgConfigRule-s3-bucket-versioning-enabled</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>The <code>keywordValue</code> is case sensitive. If you enter a value incorrectly, Audit Manager might not recognize the data source mapping. As a result, you might not
    #            successfully collect evidence from that data source as intended. </p>
    #               <p>Keep in mind the following requirements, depending on the data source type that
    #               you're using. </p>
    #               <ol>
    #                  <li>
    #                     <p>For Config: </p>
    #                     <ul>
    #                        <li>
    #                           <p>For managed rules, make sure that the <code>keywordValue</code> is the rule identifier in
    #                        <code>ALL_CAPS_WITH_UNDERSCORES</code>. For example,
    #                        <code>CLOUDWATCH_LOG_GROUP_ENCRYPTED</code>. For accuracy, we recommend
    #                        that you reference the list of <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-config.html">supported Config managed rules</a>.</p>
    #                        </li>
    #                        <li>
    #                           <p>For custom rules, make sure that the <code>keywordValue</code> has the <code>Custom_</code>
    #                        prefix followed by the custom rule name. The format of the custom rule name
    #                        itself may vary. For accuracy, we recommend that you visit the <a href="https://console.aws.amazon.com/config/">Config console</a> to
    #                        verify your custom rule name.</p>
    #                        </li>
    #                     </ul>
    #                  </li>
    #                  <li>
    #                     <p>For Security Hub: The format varies for Security Hub control names.
    #                     For accuracy, we recommend that you reference the list of <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-ash.html">supported
    #                        Security Hub controls</a>.</p>
    #                  </li>
    #                  <li>
    #                     <p>For Amazon Web Services API calls: Make sure that the <code>keywordValue</code>
    #                     is written as <code>serviceprefix_ActionName</code>. For example,
    #                     <code>iam_ListGroups</code>. For accuracy, we recommend that you reference the
    #                     list of <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/control-data-sources-api.html">supported
    #                        API calls</a>.</p>
    #                  </li>
    #                  <li>
    #                     <p>For CloudTrail: Make sure that the <code>keywordValue</code> is written
    #                     as <code>serviceprefix_ActionName</code>. For example,
    #                     <code>cloudtrail_StartLogging</code>. For accuracy, we recommend that you
    #                     review the Amazon Web Services service prefix and action names in the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Service Authorization Reference</a>.</p>
    #                  </li>
    #               </ol>
    #            </important>
    #   @return [String]
    class SourceKeyword < Struct.new(
      nil,
      :keyword_input_type,
      :keyword_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_id
    #   <p> The unique identifier for the custom framework to be shared. </p>
    #   @return [String]
    # @!attribute destination_account
    #   <p> The Amazon Web Services account of the recipient. </p>
    #   @return [String]
    # @!attribute destination_region
    #   <p> The Amazon Web Services Region of the recipient. </p>
    #   @return [String]
    # @!attribute comment
    #   <p> An optional comment from the sender about the share request. </p>
    #   @return [String]
    class StartAssessmentFrameworkShareRequest < Struct.new(
      nil,
      :framework_id,
      :destination_account,
      :destination_region,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_framework_share_request
    #   <p> The share request that's created by the <code>StartAssessmentFrameworkShare</code> API.
    #         </p>
    #   @return [Types::AssessmentFrameworkShareRequest]
    class StartAssessmentFrameworkShareResponse < Struct.new(
      nil,
      :assessment_framework_share_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags that are associated with the resource. </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Short for uniform resource locator. A URL is used as a unique identifier to locate a
    #          resource on the internet. </p>
    # @!attribute hyperlink_name
    #   <p> The name or word that's used as a hyperlink to the URL. </p>
    #   @return [String]
    # @!attribute link
    #   <p> The unique identifier for the internet resource. </p>
    #   @return [String]
    class URL < Struct.new(
      nil,
      :hyperlink_name,
      :link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified resource. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The name or key of the tag. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute control_id
    #   <p> The unique identifier for the control. </p>
    #   @return [String]
    # @!attribute control_status
    #   <p> The status of the control. </p>
    #   @return [String]
    # @!attribute comment_body
    #   <p> The comment body text for the control. </p>
    #   @return [String]
    class UpdateAssessmentControlRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :control_id,
      :control_status,
      :comment_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control
    #   <p> The name of the updated control set that the <code>UpdateAssessmentControl</code> API
    #            returned. </p>
    #   @return [Types::AssessmentControl]
    class UpdateAssessmentControlResponse < Struct.new(
      nil,
      :control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute control_set_id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the control set that's being updated. </p>
    #   @return [String]
    # @!attribute comment
    #   <p> The comment that's related to the status update. </p>
    #   @return [String]
    class UpdateAssessmentControlSetStatusRequest < Struct.new(
      nil,
      :assessment_id,
      :control_set_id,
      :status,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_set
    #   <p> The name of the updated control set that the
    #               <code>UpdateAssessmentControlSetStatus</code> API returned. </p>
    #   @return [Types::AssessmentControlSet]
    class UpdateAssessmentControlSetStatusResponse < Struct.new(
      nil,
      :control_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A <code>controlSet</code> entity that represents a collection of controls in Audit Manager. This doesn't contain the control set ID. </p>
    # @!attribute id
    #   <p> The unique identifier for the control set. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the control set. </p>
    #   @return [String]
    # @!attribute controls
    #   <p> The list of controls that are contained within the control set. </p>
    #   @return [Array<Types::CreateAssessmentFrameworkControl>]
    class UpdateAssessmentFrameworkControlSet < Struct.new(
      nil,
      :id,
      :name,
      :controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_id
    #   <p> The unique identifier for the framework. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the framework to be updated. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the updated framework. </p>
    #   @return [String]
    # @!attribute compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #   @return [String]
    # @!attribute control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #            <note>
    #               <p>The <code>Controls</code> object returns a partial response when called through Framework
    #               APIs. For a complete <code>Controls</code> object, use <code>GetControl</code>.</p>
    #            </note>
    #   @return [Array<Types::UpdateAssessmentFrameworkControlSet>]
    class UpdateAssessmentFrameworkRequest < Struct.new(
      nil,
      :framework_id,
      :name,
      :description,
      :compliance_type,
      :control_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework
    #   <p> The framework object. </p>
    #   @return [Types::Framework]
    class UpdateAssessmentFrameworkResponse < Struct.new(
      nil,
      :framework,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p> The unique identifier for the share request. </p>
    #   @return [String]
    # @!attribute request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Specifies the update action for the share request.</p>
    #   @return [String]
    class UpdateAssessmentFrameworkShareRequest < Struct.new(
      nil,
      :request_id,
      :request_type,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_framework_share_request
    #   <p> The updated share request that's returned by the
    #               <code>UpdateAssessmentFrameworkShare</code> operation. </p>
    #   @return [Types::AssessmentFrameworkShareRequest]
    class UpdateAssessmentFrameworkShareResponse < Struct.new(
      nil,
      :assessment_framework_share_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p> The name of the assessment to be updated. </p>
    #   @return [String]
    # @!attribute assessment_description
    #   <p> The description of the assessment. </p>
    #   @return [String]
    # @!attribute scope
    #   <p> The scope of the assessment. </p>
    #   @return [Types::Scope]
    # @!attribute assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being updated.
    #         </p>
    #   @return [Types::AssessmentReportsDestination]
    # @!attribute roles
    #   <p> The list of roles for the assessment. </p>
    #   @return [Array<Types::Role>]
    class UpdateAssessmentRequest < Struct.new(
      nil,
      :assessment_id,
      :assessment_name,
      :assessment_description,
      :scope,
      :assessment_reports_destination,
      :roles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p> The response object for the <code>UpdateAssessment</code> API. This is the name of the
    #            updated assessment.</p>
    #   @return [Types::Assessment]
    class UpdateAssessmentResponse < Struct.new(
      nil,
      :assessment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the assessment. </p>
    #   @return [String]
    class UpdateAssessmentStatusRequest < Struct.new(
      nil,
      :assessment_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p> The name of the updated assessment that the <code>UpdateAssessmentStatus</code> API
    #            returned. </p>
    #   @return [Types::Assessment]
    class UpdateAssessmentStatusResponse < Struct.new(
      nil,
      :assessment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_id
    #   <p> The identifier for the control. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the updated control. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The optional description of the control. </p>
    #   @return [String]
    # @!attribute testing_information
    #   <p> The steps that you should follow to determine if the control is met. </p>
    #   @return [String]
    # @!attribute action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #   @return [String]
    # @!attribute action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #   @return [String]
    # @!attribute control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #   @return [Array<Types::ControlMappingSource>]
    class UpdateControlRequest < Struct.new(
      nil,
      :control_id,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_mapping_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control
    #   <p> The name of the updated control set that the <code>UpdateControl</code> API returned.
    #         </p>
    #   @return [Types::Control]
    class UpdateControlResponse < Struct.new(
      nil,
      :control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sns_topic
    #   <p> The Amazon Simple Notification Service (Amazon SNS) topic that Audit Manager sends
    #            notifications to. </p>
    #   @return [String]
    # @!attribute default_assessment_reports_destination
    #   <p> The default S3 destination bucket for storing assessment reports. </p>
    #   @return [Types::AssessmentReportsDestination]
    # @!attribute default_process_owners
    #   <p> A list of the default audit owners. </p>
    #   @return [Array<Types::Role>]
    # @!attribute kms_key
    #   <p> The KMS key details. </p>
    #   @return [String]
    # @!attribute evidence_finder_enabled
    #   <p>Specifies whether the evidence finder feature is enabled. Change this attribute to
    #            enable or disable evidence finder.</p>
    #            <important>
    #               <p>When you use this attribute to disable evidence finder, Audit Manager deletes the
    #               event data store that’s used to query your evidence data. As a result, you can’t
    #               re-enable evidence finder and use the feature again. Your only alternative is to <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeregisterAccount.html">deregister</a> and then <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_RegisterAccount.html">re-register</a>
    #               Audit Manager. </p>
    #            </important>
    #   @return [Boolean]
    # @!attribute deregistration_policy
    #   <p>The deregistration policy for your Audit Manager data. You can
    #            use this attribute to determine how your data is handled when you deregister Audit Manager.</p>
    #   @return [Types::DeregistrationPolicy]
    # @!attribute default_export_destination
    #   <p> The default S3 destination bucket for storing evidence finder exports. </p>
    #   @return [Types::DefaultExportDestination]
    class UpdateSettingsRequest < Struct.new(
      nil,
      :sns_topic,
      :default_assessment_reports_destination,
      :default_process_owners,
      :kms_key,
      :evidence_finder_enabled,
      :deregistration_policy,
      :default_export_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute settings
    #   <p> The current list of settings. </p>
    #   @return [Types::Settings]
    class UpdateSettingsResponse < Struct.new(
      nil,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_relative_path
    #   <p> The relative path of the Amazon S3 bucket that the assessment report is stored
    #            in. </p>
    #   @return [String]
    class ValidateAssessmentReportIntegrityRequest < Struct.new(
      nil,
      :s3_relative_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute signature_valid
    #   <p> Specifies whether the signature key is valid. </p>
    #   @return [Boolean]
    # @!attribute signature_algorithm
    #   <p> The signature algorithm that's used to code sign the assessment report file. </p>
    #   @return [String]
    # @!attribute signature_date_time
    #   <p> The date and time signature that specifies when the assessment report was created.
    #         </p>
    #   @return [String]
    # @!attribute signature_key_id
    #   <p> The unique identifier for the validation signature key. </p>
    #   @return [String]
    # @!attribute validation_errors
    #   <p> Represents any errors that occurred when validating the assessment report. </p>
    #   @return [Array<String>]
    class ValidateAssessmentReportIntegrityResponse < Struct.new(
      nil,
      :signature_valid,
      :signature_algorithm,
      :signature_date_time,
      :signature_key_id,
      :validation_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request has invalid or missing parameters. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p> The reason the request failed validation. </p>
    #   @return [String]
    # @!attribute fields
    #   <p> The fields that caused the error, if applicable. </p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Indicates that the request has invalid or missing parameters for the field. </p>
    # @!attribute name
    #   <p> The name of the validation error. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The body of the error message. </p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
