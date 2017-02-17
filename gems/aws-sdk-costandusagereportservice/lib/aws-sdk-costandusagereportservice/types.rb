# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostandUsageReportService
  module Types

    # Request of DeleteReportDefinition
    #
    # @note When making an API call, you may pass DeleteReportDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         report_name: "ReportName",
    #       }
    #
    # @!attribute [rw] report_name
    #   Preferred name for a report, it has to be unique. Must starts with a
    #   number/letter, case sensitive. Limited to 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DeleteReportDefinitionRequest AWS API Documentation
    #
    class DeleteReportDefinitionRequest < Struct.new(
      :report_name)
      include Aws::Structure
    end

    # Response of DeleteReportDefinition
    #
    # @!attribute [rw] response_message
    #   A message indicates if the deletion is successful.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/DeleteReportDefinitionResponse AWS API Documentation
    #
    class DeleteReportDefinitionResponse < Struct.new(
      :response_message)
      include Aws::Structure
    end

    # Request of DescribeReportDefinitions
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
    #   The max number of results returned by the operation.
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
      include Aws::Structure
    end

    # Response of DescribeReportDefinitions
    #
    # @!attribute [rw] report_definitions
    #   A list of report definitions.
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
      include Aws::Structure
    end

    # Request of PutReportDefinition
    #
    # @note When making an API call, you may pass PutReportDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         report_definition: { # required
    #           report_name: "ReportName", # required
    #           time_unit: "HOURLY", # required, accepts HOURLY, DAILY
    #           format: "textORcsv", # required, accepts textORcsv
    #           compression: "ZIP", # required, accepts ZIP, GZIP
    #           additional_schema_elements: ["RESOURCES"], # required, accepts RESOURCES
    #           s3_bucket: "S3Bucket", # required
    #           s3_prefix: "S3Prefix", # required
    #           s3_region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1
    #           additional_artifacts: ["REDSHIFT"], # accepts REDSHIFT, QUICKSIGHT
    #         },
    #       }
    #
    # @!attribute [rw] report_definition
    #   The definition of AWS Cost and Usage Report. Customer can specify
    #   the report name, time unit, report format, compression format, S3
    #   bucket and additional artifacts and schema elements in the
    #   definition.
    #   @return [Types::ReportDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinitionRequest AWS API Documentation
    #
    class PutReportDefinitionRequest < Struct.new(
      :report_definition)
      include Aws::Structure
    end

    # Response of PutReportDefinition
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cur-2017-01-06/PutReportDefinitionResponse AWS API Documentation
    #
    class PutReportDefinitionResponse < Aws::EmptyStructure; end

    # The definition of AWS Cost and Usage Report. Customer can specify the
    # report name, time unit, report format, compression format, S3 bucket
    # and additional artifacts and schema elements in the definition.
    #
    # @note When making an API call, you may pass ReportDefinition
    #   data as a hash:
    #
    #       {
    #         report_name: "ReportName", # required
    #         time_unit: "HOURLY", # required, accepts HOURLY, DAILY
    #         format: "textORcsv", # required, accepts textORcsv
    #         compression: "ZIP", # required, accepts ZIP, GZIP
    #         additional_schema_elements: ["RESOURCES"], # required, accepts RESOURCES
    #         s3_bucket: "S3Bucket", # required
    #         s3_prefix: "S3Prefix", # required
    #         s3_region: "us-east-1", # required, accepts us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1
    #         additional_artifacts: ["REDSHIFT"], # accepts REDSHIFT, QUICKSIGHT
    #       }
    #
    # @!attribute [rw] report_name
    #   Preferred name for a report, it has to be unique. Must starts with a
    #   number/letter, case sensitive. Limited to 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] time_unit
    #   The frequency on which report data are measured and displayed.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Preferred format for report.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Preferred compression format for report.
    #   @return [String]
    #
    # @!attribute [rw] additional_schema_elements
    #   A list of schema elements.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_bucket
    #   Name of customer S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   Preferred report path prefix. Limited to 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   Region of customer S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] additional_artifacts
    #   A list of additional artifacts.
    #   @return [Array<String>]
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
      :additional_artifacts)
      include Aws::Structure
    end

  end
end
