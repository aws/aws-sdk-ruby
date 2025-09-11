# frozen_string_literal: true

# This is generated code!

module Aws::CostandUsageReportService
  # This module contains the types returned by client operations.
  module Types

    # <p>Deletes the specified report.</p>
    # @!attribute report_name
    #   <p>The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.</p>
    #   @return [String]
    class DeleteReportDefinitionRequest < Struct.new(
      :report_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response.</p>
    # @!attribute response_message
    #   <p>Whether the deletion was successful or not.</p>
    #   @return [String]
    class DeleteReportDefinitionResponse < Struct.new(
      :response_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Requests a Amazon Web Services Cost and Usage Report list owned by the account.</p>
    # @!attribute max_results
    #   <p>The maximum number of results that Amazon Web Services returns for the operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A generic string.</p>
    #   @return [String]
    class DescribeReportDefinitionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response.</p>
    # @!attribute report_definitions
    #   <p>An Amazon Web Services Cost and Usage Report list owned by the account.</p>
    #   @return [Array<Types::ReportDefinition>]
    # @!attribute next_token
    #   <p>A generic string.</p>
    #   @return [String]
    class DescribeReportDefinitionsResponse < Struct.new(
      :report_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A report with the specified name already exists in the account. Specify a different report name.</p>
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #   @return [String]
    class DuplicateReportNameException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error on the server occurred during the processing of your request. Try again later.</p>
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #   @return [String]
    class InternalErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_name
    #   <p>The report name of the report definition that tags are to be returned for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :report_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags assigned to the report definition resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_name
    #   <p>The name of the report that you want to create. The name must be unique,
    #           is case sensitive, and can't include spaces. </p>
    #   @return [String]
    # @!attribute report_definition
    #   <p>The definition of Amazon Web Services Cost and Usage Report. You can specify the report name, 
    #            time unit, report format, compression format, S3 bucket, additional artifacts, and schema 
    #            elements in the definition.
    #       </p>
    #   @return [Types::ReportDefinition]
    class ModifyReportDefinitionRequest < Struct.new(
      :report_name,
      :report_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyReportDefinitionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a Cost and Usage Report.</p>
    # @!attribute report_definition
    #   <p>Represents the output of the PutReportDefinition operation. The content consists of the detailed 
    #         metadata and data file information. </p>
    #   @return [Types::ReportDefinition]
    # @!attribute tags
    #   <p>The tags to be assigned to the report definition resource.</p>
    #   @return [Array<Types::Tag>]
    class PutReportDefinitionRequest < Struct.new(
      :report_definition,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    class PutReportDefinitionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of Amazon Web Services Cost and Usage Report. You can specify the report name, 
    #          time unit, report format, compression format, S3 bucket, additional artifacts, and schema 
    #          elements in the definition.
    #     </p>
    # @!attribute report_name
    #   <p>The name of the report that you want to create. The name must be unique,
    #           is case sensitive, and can't include spaces. </p>
    #   @return [String]
    # @!attribute time_unit
    #   <p>The length of time covered by the report. </p>
    #   @return [String]
    # @!attribute format
    #   <p>The format that Amazon Web Services saves the report in.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>The compression format that Amazon Web Services uses for the report.</p>
    #   @return [String]
    # @!attribute additional_schema_elements
    #   <p>A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs. </p>
    #   @return [Array<String>]
    # @!attribute s3_bucket
    #   <p>The S3 bucket where Amazon Web Services delivers the report.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The prefix that Amazon Web Services adds to the report name when Amazon Web Services delivers the report. Your prefix
    #           can't include spaces.</p>
    #   @return [String]
    # @!attribute s3_region
    #   <p>The region of the S3 bucket that Amazon Web Services delivers the report into.</p>
    #   @return [String]
    # @!attribute additional_artifacts
    #   <p>A list of manifests that you want Amazon Web Services to create for this report.</p>
    #   @return [Array<String>]
    # @!attribute refresh_closed_reports
    #   <p>Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to 
    #         previous months. These charges can include refunds, credits, or support fees.</p>
    #   @return [Boolean]
    # @!attribute report_versioning
    #   <p>Whether you want Amazon Web Services to overwrite the previous version of each report or 
    #            to deliver the report in addition to the previous versions.</p>
    #   @return [String]
    # @!attribute billing_view_arn
    #   <p>
    #         The Amazon resource name of the billing view. The <code>BillingViewArn</code> is needed to create Amazon Web Services Cost and Usage Report for each billing group maintained in the Amazon Web Services Billing Conductor service. The <code>BillingViewArn</code> for a billing group can be constructed as: <code>arn:aws:billing::payer-account-id:billingview/billing-group-primary-account-id</code>
    #            </p>
    #   @return [String]
    # @!attribute report_status
    #   <p>The status of the report.</p>
    #   @return [Types::ReportStatus]
    class ReportDefinition < Struct.new(
      :report_name,
      :time_unit,
      :format,
      :compression,
      :additional_schema_elements,
      :s3_bucket,
      :s3_prefix,
      :s3_region,
      :additional_artifacts,
      :refresh_closed_reports,
      :report_versioning,
      :billing_view_arn,
      :report_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This account already has five reports defined. To define a new report, you must delete an existing report.</p>
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #   @return [String]
    class ReportLimitReachedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A two element dictionary with a <code>lastDelivery</code> and <code>lastStatus</code> key
    #       whose values describe the date and status of the last delivered report for a particular report
    #       definition.</p>
    # @!attribute last_delivery
    #   <p>A timestamp that gives the date of a report delivery.</p>
    #   @return [String]
    # @!attribute last_status
    #   <p>An enum that gives the status of a report delivery.</p>
    #   @return [String]
    class ReportStatus < Struct.new(
      :last_delivery,
      :last_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified report (<code>ReportName</code>) in the request doesn't exist.</p>
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a report
    #       definition.</p>
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. Each report definition can only have up
    #         to one tag with the same key. If you try to add an existing tag with the same key, the
    #         existing tag value will be updated to the new value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag. Tag values are case-sensitive. This can be an empty string.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_name
    #   <p>The report name of the report definition that tags are to be associated with.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the report definition resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :report_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_name
    #   <p>The report name of the report definition that tags are to be disassociated
    #         from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tags to be disassociated from the report definition resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :report_name,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
