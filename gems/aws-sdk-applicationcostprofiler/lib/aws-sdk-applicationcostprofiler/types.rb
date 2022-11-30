# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationCostProfiler
  module Types

    # You do not have permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Required. ID of the report to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/DeleteReportDefinitionRequest AWS API Documentation
    #
    class DeleteReportDefinitionRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   ID of the report that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/DeleteReportDefinitionResult AWS API Documentation
    #
    class DeleteReportDefinitionResult < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   ID of the report to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/GetReportDefinitionRequest AWS API Documentation
    #
    class GetReportDefinitionRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   ID of the report retrieved.
    #   @return [String]
    #
    # @!attribute [rw] report_description
    #   Description of the report.
    #   @return [String]
    #
    # @!attribute [rw] report_frequency
    #   Cadence used to generate the report.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Format of the generated report.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_location
    #   Amazon Simple Storage Service (Amazon S3) location where the report
    #   is uploaded.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] created_at
    #   Timestamp (milliseconds) when this report definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   Timestamp (milliseconds) when this report definition was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/GetReportDefinitionResult AWS API Documentation
    #
    class GetReportDefinitionResult < Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      :created_at,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_s3_location
    #   Amazon S3 location to import application usage data from.
    #   @return [Types::SourceS3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ImportApplicationUsageRequest AWS API Documentation
    #
    class ImportApplicationUsageRequest < Struct.new(
      :source_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   ID of the import request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ImportApplicationUsageResult AWS API Documentation
    #
    class ImportApplicationUsageResult < Struct.new(
      :import_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value from a previous call to access the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ListReportDefinitionsRequest AWS API Documentation
    #
    class ListReportDefinitionsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_definitions
    #   The retrieved reports.
    #   @return [Array<Types::ReportDefinition>]
    #
    # @!attribute [rw] next_token
    #   The value of the next token, if it exists. Null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ListReportDefinitionsResult AWS API Documentation
    #
    class ListReportDefinitionsResult < Struct.new(
      :report_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Required. ID of the report. You can choose any valid string matching
    #   the pattern for the ID.
    #   @return [String]
    #
    # @!attribute [rw] report_description
    #   Required. Description of the report.
    #   @return [String]
    #
    # @!attribute [rw] report_frequency
    #   Required. The cadence to generate the report.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Required. The format to use for the generated report.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_location
    #   Required. Amazon Simple Storage Service (Amazon S3) location where
    #   Application Cost Profiler uploads the report.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/PutReportDefinitionRequest AWS API Documentation
    #
    class PutReportDefinitionRequest < Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   ID of the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/PutReportDefinitionResult AWS API Documentation
    #
    class PutReportDefinitionResult < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a report in AWS Application Cost Profiler.
    #
    # @!attribute [rw] report_id
    #   The ID of the report.
    #   @return [String]
    #
    # @!attribute [rw] report_description
    #   Description of the report
    #   @return [String]
    #
    # @!attribute [rw] report_frequency
    #   The cadence at which the report is generated.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format used for the generated reports.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_location
    #   The location in Amazon Simple Storage Service (Amazon S3) the
    #   reports should be saved to.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] created_at
    #   Timestamp (milliseconds) when this report definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Timestamp (milliseconds) when this report definition was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ReportDefinition AWS API Documentation
    #
    class ReportDefinition < Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the Amazon Simple Storage Service (Amazon S3) location
    # where AWS Application Cost Profiler reports are generated and then
    # written to.
    #
    # @!attribute [rw] bucket
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Prefix for the location to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeds one or more of the service quotas.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the Amazon Simple Storage Service (Amazon S3) location
    # where usage data is read from.
    #
    # @!attribute [rw] bucket
    #   Name of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key of the object.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Region of the bucket. Only required for Regions that are disabled by
    #   default. For more infomration about Regions that are disabled by
    #   default, see [ Enabling a Region][1] in the *AWS General Reference
    #   guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/SourceS3Location AWS API Documentation
    #
    class SourceS3Location < Struct.new(
      :bucket,
      :key,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The calls to AWS Application Cost Profiler API are throttled. The
    # request was denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Required. ID of the report to update.
    #   @return [String]
    #
    # @!attribute [rw] report_description
    #   Required. Description of the report.
    #   @return [String]
    #
    # @!attribute [rw] report_frequency
    #   Required. The cadence to generate the report.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Required. The format to use for the generated report.
    #   @return [String]
    #
    # @!attribute [rw] destination_s3_location
    #   Required. Amazon Simple Storage Service (Amazon S3) location where
    #   Application Cost Profiler uploads the report.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/UpdateReportDefinitionRequest AWS API Documentation
    #
    class UpdateReportDefinitionRequest < Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   ID of the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/UpdateReportDefinitionResult AWS API Documentation
    #
    class UpdateReportDefinitionResult < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints for the API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSApplicationCostProfiler-2020-09-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
