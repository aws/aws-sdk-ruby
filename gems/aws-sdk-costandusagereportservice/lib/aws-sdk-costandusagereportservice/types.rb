# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostandUsageReportService
  module Types

    # Deletes the specified report.
    #
    # @!attribute [rw] report_name
    #   The name of the report that you want to delete. The name must be
    #   unique, is case sensitive, and can't include spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DeleteReportDefinitionRequest AWS API Documentation
    #
    class DeleteReportDefinitionRequest < Struct.new(
      :report_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response.
    #
    # @!attribute [rw] response_message
    #   Whether the deletion was successful or not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DeleteReportDefinitionResponse AWS API Documentation
    #
    class DeleteReportDefinitionResponse < Struct.new(
      :response_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requests a Amazon Web Services Cost and Usage Report list owned by the
    # account.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that Amazon Web Services returns for
    #   the operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A generic string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DescribeReportDefinitionsRequest AWS API Documentation
    #
    class DescribeReportDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response.
    #
    # @!attribute [rw] report_definitions
    #   An Amazon Web Services Cost and Usage Report list owned by the
    #   account.
    #   @return [Array<Types::ReportDefinition>]
    #
    # @!attribute [rw] next_token
    #   A generic string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DescribeReportDefinitionsResponse AWS API Documentation
    #
    class DescribeReportDefinitionsResponse < Struct.new(
      :report_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A report with the specified name already exists in the account.
    # Specify a different report name.
    #
    # @!attribute [rw] message
    #   A message to show the detail of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DuplicateReportNameException AWS API Documentation
    #
    class DuplicateReportNameException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error on the server occurred during the processing of your request.
    # Try again later.
    #
    # @!attribute [rw] message
    #   A message to show the detail of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/InternalErrorException AWS API Documentation
    #
    class InternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_name
    #   The report name of the report definition that tags are to be
    #   returned for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :report_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags assigned to the report definition resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_name
    #   The name of the report that you want to create. The name must be
    #   unique, is case sensitive, and can't include spaces.
    #   @return [String]
    #
    # @!attribute [rw] report_definition
    #   The definition of Amazon Web Services Cost and Usage Report. You can
    #   specify the report name, time unit, report format, compression
    #   format, S3 bucket, additional artifacts, and schema elements in the
    #   definition.
    #   @return [Types::ReportDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ModifyReportDefinitionRequest AWS API Documentation
    #
    class ModifyReportDefinitionRequest < Struct.new(
      :report_name,
      :report_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ModifyReportDefinitionResponse AWS API Documentation
    #
    class ModifyReportDefinitionResponse < Aws::EmptyStructure; end

    # Creates a Cost and Usage Report.
    #
    # @!attribute [rw] report_definition
    #   Represents the output of the PutReportDefinition operation. The
    #   content consists of the detailed metadata and data file information.
    #   @return [Types::ReportDefinition]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the report definition resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinitionRequest AWS API Documentation
    #
    class PutReportDefinitionRequest < Struct.new(
      :report_definition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinitionResponse AWS API Documentation
    #
    class PutReportDefinitionResponse < Aws::EmptyStructure; end

    # The definition of Amazon Web Services Cost and Usage Report. You can
    # specify the report name, time unit, report format, compression format,
    # S3 bucket, additional artifacts, and schema elements in the
    # definition.
    #
    # @!attribute [rw] report_name
    #   The name of the report that you want to create. The name must be
    #   unique, is case sensitive, and can't include spaces.
    #   @return [String]
    #
    # @!attribute [rw] time_unit
    #   The length of time covered by the report.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format that Amazon Web Services saves the report in.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   The compression format that Amazon Web Services uses for the report.
    #   @return [String]
    #
    # @!attribute [rw] additional_schema_elements
    #   A list of strings that indicate additional content that Amazon Web
    #   Services includes in the report, such as individual resource IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where Amazon Web Services delivers the report.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The prefix that Amazon Web Services adds to the report name when
    #   Amazon Web Services delivers the report. Your prefix can't include
    #   spaces.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   The region of the S3 bucket that Amazon Web Services delivers the
    #   report into.
    #   @return [String]
    #
    # @!attribute [rw] additional_artifacts
    #   A list of manifests that you want Amazon Web Services to create for
    #   this report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] refresh_closed_reports
    #   Whether you want Amazon Web Services to update your reports after
    #   they have been finalized if Amazon Web Services detects charges
    #   related to previous months. These charges can include refunds,
    #   credits, or support fees.
    #   @return [Boolean]
    #
    # @!attribute [rw] report_versioning
    #   Whether you want Amazon Web Services to overwrite the previous
    #   version of each report or to deliver the report in addition to the
    #   previous versions.
    #   @return [String]
    #
    # @!attribute [rw] billing_view_arn
    #   The Amazon resource name of the billing view. The `BillingViewArn`
    #   is needed to create Amazon Web Services Cost and Usage Report for
    #   each billing group maintained in the Amazon Web Services Billing
    #   Conductor service. The `BillingViewArn` for a billing group can be
    #   constructed as:
    #   `arn:aws:billing::payer-account-id:billingview/billing-group-primary-account-id`
    #   @return [String]
    #
    # @!attribute [rw] report_status
    #   The status of the report.
    #   @return [Types::ReportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ReportDefinition AWS API Documentation
    #
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
      :report_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This account already has five reports defined. To define a new report,
    # you must delete an existing report.
    #
    # @!attribute [rw] message
    #   A message to show the detail of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ReportLimitReachedException AWS API Documentation
    #
    class ReportLimitReachedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A two element dictionary with a `lastDelivery` and `lastStatus` key
    # whose values describe the date and status of the last delivered report
    # for a particular report definition.
    #
    # @!attribute [rw] last_delivery
    #   A timestamp that gives the date of a report delivery.
    #   @return [String]
    #
    # @!attribute [rw] last_status
    #   An enum that gives the status of a report delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ReportStatus AWS API Documentation
    #
    class ReportStatus < Struct.new(
      :last_delivery,
      :last_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified report (`ReportName`) in the request doesn't exist.
    #
    # @!attribute [rw] message
    #   A message to show the detail of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag. A tag is a key-value pair. You can add up to 50 tags
    # to a report definition.
    #
    # @!attribute [rw] key
    #   The key of the tag. Tag keys are case sensitive. Each report
    #   definition can only have up to one tag with the same key. If you try
    #   to add an existing tag with the same key, the existing tag value
    #   will be updated to the new value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag. Tag values are case-sensitive. This can be an
    #   empty string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_name
    #   The report name of the report definition that tags are to be
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the report definition resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :report_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] report_name
    #   The report name of the report definition that tags are to be
    #   disassociated from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags to be disassociated from the report definition resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :report_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   A message to show the detail of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

