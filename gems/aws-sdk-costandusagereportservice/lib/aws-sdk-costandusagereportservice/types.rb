# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostandUsageReportService
  module Types

    # Deletes the specified report.
    #
    # @note When making an API call, you may pass DeleteReportDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         report_name: "ReportName",
    #       }
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

    # Requests a list of AWS Cost and Usage reports owned by the account.
    #
    # @note When making an API call, you may pass DescribeReportDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that AWS returns for the operation.
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
    #   A list of AWS Cost and Usage reports owned by the account.
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

    # @note When making an API call, you may pass ModifyReportDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         report_name: "ReportName", # required
    #         report_definition: { # required
    #           report_name: "ReportName", # required
    #           time_unit: "HOURLY", # required, accepts HOURLY, DAILY, MONTHLY
    #           format: "textORcsv", # required, accepts textORcsv, Parquet
    #           compression: "ZIP", # required, accepts ZIP, GZIP, Parquet
    #           additional_schema_elements: ["RESOURCES"], # required, accepts RESOURCES
    #           s3_bucket: "S3Bucket", # required
    #           s3_prefix: "S3Prefix", # required
    #           s3_region: "af-south-1", # required, accepts af-south-1, ap-east-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, ap-northeast-3, ca-central-1, eu-central-1, eu-west-1, eu-west-2, eu-west-3, eu-north-1, eu-south-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2, cn-north-1, cn-northwest-1
    #           additional_artifacts: ["REDSHIFT"], # accepts REDSHIFT, QUICKSIGHT, ATHENA
    #           refresh_closed_reports: false,
    #           report_versioning: "CREATE_NEW_REPORT", # accepts CREATE_NEW_REPORT, OVERWRITE_REPORT
    #         },
    #       }
    #
    # @!attribute [rw] report_name
    #   The name of the report that you want to create. The name must be
    #   unique, is case sensitive, and can't include spaces.
    #   @return [String]
    #
    # @!attribute [rw] report_definition
    #   The definition of AWS Cost and Usage Report. You can specify the
    #   report name, time unit, report format, compression format, S3
    #   bucket, additional artifacts, and schema elements in the definition.
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
    # @note When making an API call, you may pass PutReportDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         report_definition: { # required
    #           report_name: "ReportName", # required
    #           time_unit: "HOURLY", # required, accepts HOURLY, DAILY, MONTHLY
    #           format: "textORcsv", # required, accepts textORcsv, Parquet
    #           compression: "ZIP", # required, accepts ZIP, GZIP, Parquet
    #           additional_schema_elements: ["RESOURCES"], # required, accepts RESOURCES
    #           s3_bucket: "S3Bucket", # required
    #           s3_prefix: "S3Prefix", # required
    #           s3_region: "af-south-1", # required, accepts af-south-1, ap-east-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, ap-northeast-3, ca-central-1, eu-central-1, eu-west-1, eu-west-2, eu-west-3, eu-north-1, eu-south-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2, cn-north-1, cn-northwest-1
    #           additional_artifacts: ["REDSHIFT"], # accepts REDSHIFT, QUICKSIGHT, ATHENA
    #           refresh_closed_reports: false,
    #           report_versioning: "CREATE_NEW_REPORT", # accepts CREATE_NEW_REPORT, OVERWRITE_REPORT
    #         },
    #       }
    #
    # @!attribute [rw] report_definition
    #   Represents the output of the PutReportDefinition operation. The
    #   content consists of the detailed metadata and data file information.
    #   @return [Types::ReportDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinitionRequest AWS API Documentation
    #
    class PutReportDefinitionRequest < Struct.new(
      :report_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinitionResponse AWS API Documentation
    #
    class PutReportDefinitionResponse < Aws::EmptyStructure; end

    # The definition of AWS Cost and Usage Report. You can specify the
    # report name, time unit, report format, compression format, S3 bucket,
    # additional artifacts, and schema elements in the definition.
    #
    # @note When making an API call, you may pass ReportDefinition
    #   data as a hash:
    #
    #       {
    #         report_name: "ReportName", # required
    #         time_unit: "HOURLY", # required, accepts HOURLY, DAILY, MONTHLY
    #         format: "textORcsv", # required, accepts textORcsv, Parquet
    #         compression: "ZIP", # required, accepts ZIP, GZIP, Parquet
    #         additional_schema_elements: ["RESOURCES"], # required, accepts RESOURCES
    #         s3_bucket: "S3Bucket", # required
    #         s3_prefix: "S3Prefix", # required
    #         s3_region: "af-south-1", # required, accepts af-south-1, ap-east-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, ap-northeast-3, ca-central-1, eu-central-1, eu-west-1, eu-west-2, eu-west-3, eu-north-1, eu-south-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2, cn-north-1, cn-northwest-1
    #         additional_artifacts: ["REDSHIFT"], # accepts REDSHIFT, QUICKSIGHT, ATHENA
    #         refresh_closed_reports: false,
    #         report_versioning: "CREATE_NEW_REPORT", # accepts CREATE_NEW_REPORT, OVERWRITE_REPORT
    #       }
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
    #   The format that AWS saves the report in.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   The compression format that AWS uses for the report.
    #   @return [String]
    #
    # @!attribute [rw] additional_schema_elements
    #   A list of strings that indicate additional content that Amazon Web
    #   Services includes in the report, such as individual resource IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where AWS delivers the report.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The prefix that AWS adds to the report name when AWS delivers the
    #   report. Your prefix can't include spaces.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   The region of the S3 bucket that AWS delivers the report into.
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
      :report_versioning)
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

    # The input fails to satisfy the constraints specified by an AWS
    # service.
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
