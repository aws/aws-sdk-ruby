# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationCostProfiler
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>Required. ID of the report to delete.</p>
    #   @return [String]
    class DeleteReportDefinitionRequest < Struct.new(
      nil,
      :report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report that was deleted.</p>
    #   @return [String]
    class DeleteReportDefinitionResult < Struct.new(
      nil,
      :report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report to retrieve.</p>
    #   @return [String]
    class GetReportDefinitionRequest < Struct.new(
      nil,
      :report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report retrieved.</p>
    #   @return [String]
    # @!attribute report_description
    #   <p>Description of the report.</p>
    #   @return [String]
    # @!attribute report_frequency
    #   <p>Cadence used to generate the report.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Format of the generated report.</p>
    #   @return [String]
    # @!attribute destination_s3_location
    #   <p>Amazon Simple Storage Service (Amazon S3) location where the report is uploaded.</p>
    #   @return [Types::S3Location]
    # @!attribute created_at
    #   <p>Timestamp (milliseconds) when this report definition was created.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>Timestamp (milliseconds) when this report definition was last updated.</p>
    #   @return [Time]
    class GetReportDefinitionResult < Struct.new(
      nil,
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      :created_at,
      :last_updated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_s3_location
    #   <p>Amazon S3 location to import application usage data from.</p>
    #   @return [Types::SourceS3Location]
    class ImportApplicationUsageRequest < Struct.new(
      nil,
      :source_s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_id
    #   <p>ID of the import request.</p>
    #   @return [String]
    class ImportApplicationUsageResult < Struct.new(
      nil,
      :import_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value from a previous call to access the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListReportDefinitionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_definitions
    #   <p>The retrieved reports.</p>
    #   @return [Array<Types::ReportDefinition>]
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #   @return [String]
    class ListReportDefinitionsResult < Struct.new(
      nil,
      :report_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>Required. ID of the report. You can choose any valid string matching the pattern for the
    #         ID.</p>
    #   @return [String]
    # @!attribute report_description
    #   <p>Required. Description of the report.</p>
    #   @return [String]
    # @!attribute report_frequency
    #   <p>Required. The cadence to generate the report.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Required. The format to use for the generated report.</p>
    #   @return [String]
    # @!attribute destination_s3_location
    #   <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    #         report.</p>
    #   @return [Types::S3Location]
    class PutReportDefinitionRequest < Struct.new(
      nil,
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report.</p>
    #   @return [String]
    class PutReportDefinitionResult < Struct.new(
      nil,
      :report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a report in AWS Application Cost Profiler.</p>
    # @!attribute report_id
    #   <p>The ID of the report.</p>
    #   @return [String]
    # @!attribute report_description
    #   <p>Description of the report</p>
    #   @return [String]
    # @!attribute report_frequency
    #   <p>The cadence at which the report is generated.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format used for the generated reports.</p>
    #   @return [String]
    # @!attribute destination_s3_location
    #   <p>The location in Amazon Simple Storage Service (Amazon S3) the reports should be saved to.</p>
    #   @return [Types::S3Location]
    # @!attribute created_at
    #   <p>Timestamp (milliseconds) when this report definition was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>Timestamp (milliseconds) when this report definition was last updated.</p>
    #   @return [Time]
    class ReportDefinition < Struct.new(
      nil,
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the Amazon Simple Storage Service (Amazon S3) location where AWS Application Cost Profiler
    #       reports are generated and then written to.</p>
    # @!attribute bucket
    #   <p>Name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Prefix for the location to write to.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeds one or more of the service quotas.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the Amazon Simple Storage Service (Amazon S3) location where usage data is read
    #       from.</p>
    # @!attribute bucket
    #   <p>Name of the bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key of the object.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Region of the bucket. Only required for Regions that are disabled by default.
    #           For more infomration about Regions that are disabled by default, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable">
    #             Enabling a Region</a> in the <i>AWS General Reference guide</i>.</p>
    #   @return [String]
    class SourceS3Location < Struct.new(
      nil,
      :bucket,
      :key,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The calls to AWS Application Cost Profiler API are throttled. The request was denied.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>Required. ID of the report to update.</p>
    #   @return [String]
    # @!attribute report_description
    #   <p>Required. Description of the report.</p>
    #   @return [String]
    # @!attribute report_frequency
    #   <p>Required. The cadence to generate the report.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Required. The format to use for the generated report.</p>
    #   @return [String]
    # @!attribute destination_s3_location
    #   <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    #         report.</p>
    #   @return [Types::S3Location]
    class UpdateReportDefinitionRequest < Struct.new(
      nil,
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report.</p>
    #   @return [String]
    class UpdateReportDefinitionResult < Struct.new(
      nil,
      :report_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints for the API.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
