# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruSecurity
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] error_code
    #   The identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the resource you don't have access to.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource you don't have access to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of findings metrics in an account.
    #
    # @!attribute [rw] closed_findings
    #   The number of closed findings of each severity in an account on the
    #   specified date.
    #   @return [Types::FindingMetricsValuePerSeverity]
    #
    # @!attribute [rw] date
    #   The date from which the finding metrics were retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] mean_time_to_close
    #   The average time it takes to close findings of each severity in
    #   days.
    #   @return [Types::FindingMetricsValuePerSeverity]
    #
    # @!attribute [rw] new_findings
    #   The number of new findings of each severity in account on the
    #   specified date.
    #   @return [Types::FindingMetricsValuePerSeverity]
    #
    # @!attribute [rw] open_findings
    #   The number of open findings of each severity in an account as of the
    #   specified date.
    #   @return [Types::FindingMetricsValuePerSeverity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/AccountFindingsMetric AWS API Documentation
    #
    class AccountFindingsMetric < Struct.new(
      :closed_findings,
      :date,
      :mean_time_to_close,
      :new_findings,
      :open_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the error that caused a finding to fail to
    # be retrieved.
    #
    # @!attribute [rw] error_code
    #   A code associated with the type of error.
    #   @return [String]
    #
    # @!attribute [rw] finding_id
    #   The finding ID of the finding that was not fetched.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Describes the error.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan that generated the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/BatchGetFindingsError AWS API Documentation
    #
    class BatchGetFindingsError < Struct.new(
      :error_code,
      :finding_id,
      :message,
      :scan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_identifiers
    #   A list of finding identifiers. Each identifier consists of a
    #   `scanName` and a `findingId`. You retrieve the `findingId` when you
    #   call `GetFindings`.
    #   @return [Array<Types::FindingIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/BatchGetFindingsRequest AWS API Documentation
    #
    class BatchGetFindingsRequest < Struct.new(
      :finding_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_findings
    #   A list of errors for individual findings which were not fetched.
    #   Each BatchGetFindingsError contains the `scanName`, `findingId`,
    #   `errorCode` and error `message`.
    #   @return [Array<Types::BatchGetFindingsError>]
    #
    # @!attribute [rw] findings
    #   A list of all requested findings.
    #   @return [Array<Types::Finding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/BatchGetFindingsResponse AWS API Documentation
    #
    class BatchGetFindingsResponse < Struct.new(
      :failed_findings,
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a finding category with open findings.
    #
    # @!attribute [rw] category_name
    #   The name of the finding category. A finding category is determined
    #   by the detector that detected the finding.
    #   @return [String]
    #
    # @!attribute [rw] finding_number
    #   The number of open findings in the category.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CategoryWithFindingNum AWS API Documentation
    #
    class CategoryWithFindingNum < Struct.new(
      :category_name,
      :finding_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The line of code where a finding was detected.
    #
    # @!attribute [rw] content
    #   The code that contains a vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] number
    #   The code line number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CodeLine AWS API Documentation
    #
    class CodeLine < Struct.new(
      :content,
      :number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] error_code
    #   The identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the service resource associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource associated with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_type
    #   The type of analysis you want CodeGuru Security to perform in the
    #   scan, either `Security` or `All`. The `Secuirty` type only generates
    #   findings related to security. The `All` type generates both security
    #   findings and quality findings. Defaults to `Security` type if
    #   missing.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the request. Amazon CodeGuru Security uses
    #   this value to prevent the accidental creation of duplicate scans if
    #   there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for an input resource used to create a scan.
    #   @return [Types::ResourceId]
    #
    # @!attribute [rw] scan_name
    #   The unique name that CodeGuru Security uses to track revisions
    #   across multiple scans of the same resource. Only allowed for a
    #   `STANDARD` scan type. If not specified, it will be auto generated.
    #   @return [String]
    #
    # @!attribute [rw] scan_type
    #   The type of scan, either `Standard` or `Express`. Defaults to
    #   `Standard` type if missing.
    #
    #   `Express` scans run on limited resources and use a limited set of
    #   detectors to analyze your code in near-real time. `Standard` scans
    #   have standard resource limits and use the full set of detectors to
    #   analyze your code.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag a scan. A tag is a custom
    #   attribute label with two parts:
    #
    #   * A tag key. For example, `CostCenter`, `Environment`, or `Secret`.
    #     Tag keys are case sensitive.
    #
    #   * An optional tag value field. For example, `111122223333`,
    #     `Production`, or a team name. Omitting the tag value is the same
    #     as using an empty string. Tag values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CreateScanRequest AWS API Documentation
    #
    class CreateScanRequest < Struct.new(
      :analysis_type,
      :client_token,
      :resource_id,
      :scan_name,
      :scan_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The identifier for the resource object that contains resources that
    #   were scanned.
    #   @return [Types::ResourceId]
    #
    # @!attribute [rw] run_id
    #   UUID that identifies the individual scan run.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan.
    #   @return [String]
    #
    # @!attribute [rw] scan_name_arn
    #   The ARN for the scan name.
    #   @return [String]
    #
    # @!attribute [rw] scan_state
    #   The current state of the scan. Returns either `InProgress`,
    #   `Successful`, or `Failed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CreateScanResponse AWS API Documentation
    #
    class CreateScanResponse < Struct.new(
      :resource_id,
      :run_id,
      :scan_name,
      :scan_name_arn,
      :scan_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan_name
    #   The name of the scan that will use the uploaded resource. CodeGuru
    #   Security uses the unique scan name to track revisions across
    #   multiple scans of the same resource. Use this `scanName` when you
    #   call `CreateScan` on the code resource you upload to this URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CreateUploadUrlRequest AWS API Documentation
    #
    class CreateUploadUrlRequest < Struct.new(
      :scan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_artifact_id
    #   The identifier for the uploaded code resource.
    #   @return [String]
    #
    # @!attribute [rw] request_headers
    #   A set of key-value pairs that contain the required headers when
    #   uploading your resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] s3_url
    #   A pre-signed S3 URL. You can upload the code file you want to scan
    #   and add the required `requestHeaders` using any HTTP client.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CreateUploadUrlResponse AWS API Documentation
    #
    class CreateUploadUrlResponse < Struct.new(
      :code_artifact_id,
      :request_headers,
      :s3_url)
      SENSITIVE = [:request_headers, :s3_url]
      include Aws::Structure
    end

    # Information about account-level configuration.
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN to use for encryption. This must be provided as a
    #   header when uploading your code resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location of security vulnerabilities that Amazon
    # CodeGuru Security detected in your code.
    #
    # @!attribute [rw] code_snippet
    #   A list of `CodeLine` objects that describe where the security
    #   vulnerability appears in your code.
    #   @return [Array<Types::CodeLine>]
    #
    # @!attribute [rw] end_line
    #   The last line number of the code snippet where the security
    #   vulnerability appears in your code.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the file.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the resource with the security vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] start_line
    #   The first line number of the code snippet where the security
    #   vulnerability appears in your code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/FilePath AWS API Documentation
    #
    class FilePath < Struct.new(
      :code_snippet,
      :end_line,
      :name,
      :path,
      :start_line)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a finding that was detected in your code.
    #
    # @!attribute [rw] created_at
    #   The time when the finding was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The identifier for the detector that detected the finding in your
    #   code. A detector is a defined rule based on industry standards and
    #   AWS best practices.
    #   @return [String]
    #
    # @!attribute [rw] detector_name
    #   The name of the detector that identified the security vulnerability
    #   in your code.
    #   @return [String]
    #
    # @!attribute [rw] detector_tags
    #   One or more tags or categorizations that are associated with a
    #   detector. These tags are defined by type, programming language, or
    #   other classification such as maintainability or consistency.
    #   @return [Array<String>]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the component that generated a finding such as
    #   AWSCodeGuruSecurity or AWSInspector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier for a finding.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   An object that contains the details about how to remediate a
    #   finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] resource
    #   The resource where Amazon CodeGuru Security detected a finding.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] rule_id
    #   The identifier for the rule that generated the finding.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the finding. A finding status can be open or closed.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the finding was last updated. Findings are updated
    #   when you remediate them or when the finding code location changes.
    #   @return [Time]
    #
    # @!attribute [rw] vulnerability
    #   An object that describes the detected security vulnerability.
    #   @return [Types::Vulnerability]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :created_at,
      :description,
      :detector_id,
      :detector_name,
      :detector_tags,
      :generator_id,
      :id,
      :remediation,
      :resource,
      :rule_id,
      :severity,
      :status,
      :title,
      :type,
      :updated_at,
      :vulnerability)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a finding and the scan that
    # generated it.
    #
    # @!attribute [rw] finding_id
    #   The identifier for a finding.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan that generated the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/FindingIdentifier AWS API Documentation
    #
    class FindingIdentifier < Struct.new(
      :finding_id,
      :scan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The severity of the issue in the code that generated a finding.
    #
    # @!attribute [rw] critical
    #   The severity of the finding is critical and should be addressed
    #   immediately.
    #   @return [Float]
    #
    # @!attribute [rw] high
    #   The severity of the finding is high and should be addressed as a
    #   near-term priority.
    #   @return [Float]
    #
    # @!attribute [rw] info
    #   The finding is related to quality or readability improvements and
    #   not considered actionable.
    #   @return [Float]
    #
    # @!attribute [rw] low
    #   The severity of the finding is low and does require action on its
    #   own.
    #   @return [Float]
    #
    # @!attribute [rw] medium
    #   The severity of the finding is medium and should be addressed as a
    #   mid-term priority.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/FindingMetricsValuePerSeverity AWS API Documentation
    #
    class FindingMetricsValuePerSeverity < Struct.new(
      :critical,
      :high,
      :info,
      :low,
      :medium)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetAccountConfigurationRequest AWS API Documentation
    #
    class GetAccountConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] encryption_config
    #   An `EncryptionConfig` object that contains the KMS key ARN to use
    #   for encryption. By default, CodeGuru Security uses an AWS-managed
    #   key for encryption. To specify your own key, call
    #   `UpdateAccountConfiguration`.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetAccountConfigurationResponse AWS API Documentation
    #
    class GetAccountConfigurationResponse < Struct.new(
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. Use this
    #   parameter when paginating results. If additional results exist
    #   beyond the number you specify, the `nextToken` element is returned
    #   in the response. Use `nextToken` in a subsequent request to retrieve
    #   additional results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the `nextToken` value returned
    #   from the previous request to continue listing results after the
    #   first page.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan you want to retrieve findings from.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the findings you want to get. Pass either `Open`,
    #   `Closed`, or `All`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :max_results,
      :next_token,
      :scan_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   A list of findings generated by the specified scan.
    #   @return [Array<Types::Finding>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. You can use this in future calls to
    #   `GetFindings` to continue listing results after the current page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] date
    #   The date you want to retrieve summary metrics from, rounded to the
    #   nearest day. The date must be within the past two years since
    #   metrics data is only stored for two years. If a date outside of this
    #   range is passed, the response will be empty.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetMetricsSummaryRequest AWS API Documentation
    #
    class GetMetricsSummaryRequest < Struct.new(
      :date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics_summary
    #   The summary metrics from the specified date.
    #   @return [Types::MetricsSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetMetricsSummaryResponse AWS API Documentation
    #
    class GetMetricsSummaryResponse < Struct.new(
      :metrics_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   UUID that identifies the individual scan run you want to view
    #   details about. You retrieve this when you call the `CreateScan`
    #   operation. Defaults to the latest scan run if missing.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan you want to view details about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetScanRequest AWS API Documentation
    #
    class GetScanRequest < Struct.new(
      :run_id,
      :scan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_type
    #   The type of analysis CodeGuru Security performed in the scan, either
    #   `Security` or `All`. The `Security` type only generates findings
    #   related to security. The `All` type generates both security findings
    #   and quality findings.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the scan was created.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_revisions
    #   The number of times a scan has been re-run on a revised resource.
    #   @return [Integer]
    #
    # @!attribute [rw] run_id
    #   UUID that identifies the individual scan run.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan.
    #   @return [String]
    #
    # @!attribute [rw] scan_name_arn
    #   The ARN for the scan name.
    #   @return [String]
    #
    # @!attribute [rw] scan_state
    #   The current state of the scan. Pass either `InProgress`,
    #   `Successful`, or `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the scan was last updated. Only available for
    #   `STANDARD` scan types.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetScanResponse AWS API Documentation
    #
    class GetScanResponse < Struct.new(
      :analysis_type,
      :created_at,
      :number_of_revisions,
      :run_id,
      :scan_name,
      :scan_name_arn,
      :scan_state,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] error
    #   The internal error encountered by the server.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_date
    #   The end date of the interval which you want to retrieve metrics
    #   from.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. Use this
    #   parameter when paginating results. If additional results exist
    #   beyond the number you specify, the `nextToken` element is returned
    #   in the response. Use `nextToken` in a subsequent request to retrieve
    #   additional results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the `nextToken` value returned
    #   from the previous request to continue listing results after the
    #   first page.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The start date of the interval which you want to retrieve metrics
    #   from.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListFindingsMetricsRequest AWS API Documentation
    #
    class ListFindingsMetricsRequest < Struct.new(
      :end_date,
      :max_results,
      :next_token,
      :start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings_metrics
    #   A list of `AccountFindingsMetric` objects retrieved from the
    #   specified time interval.
    #   @return [Array<Types::AccountFindingsMetric>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. You can use this in future calls to
    #   `ListFindingMetrics` to continue listing results after the current
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListFindingsMetricsResponse AWS API Documentation
    #
    class ListFindingsMetricsResponse < Struct.new(
      :findings_metrics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. Use this
    #   parameter when paginating results. If additional results exist
    #   beyond the number you specify, the `nextToken` element is returned
    #   in the response. Use `nextToken` in a subsequent request to retrieve
    #   additional results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the `nextToken` value returned
    #   from the previous request to continue listing results after the
    #   first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListScansRequest AWS API Documentation
    #
    class ListScansRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token. You can use this in future calls to `ListScans`
    #   to continue listing results after the current page.
    #   @return [String]
    #
    # @!attribute [rw] summaries
    #   A list of `ScanSummary` objects with information about all scans in
    #   an account.
    #   @return [Array<Types::ScanSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListScansResponse AWS API Documentation
    #
    class ListScansResponse < Struct.new(
      :next_token,
      :summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the `ScanName` object. You can retrieve this ARN by
    #   calling `ListScans` or `GetScan`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an existing scan. A tag is a
    #   custom attribute label with two parts:
    #
    #   * A tag key. For example, `CostCenter`, `Environment`, or `Secret`.
    #     Tag keys are case sensitive.
    #
    #   * An optional tag value field. For example, `111122223333`,
    #     `Production`, or a team name. Omitting the tag value is the same
    #     as using an empty string. Tag values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about summary metrics in an account.
    #
    # @!attribute [rw] categories_with_most_findings
    #   A list of `CategoryWithFindingNum` objects for the top 5 finding
    #   categories with the most open findings in an account.
    #   @return [Array<Types::CategoryWithFindingNum>]
    #
    # @!attribute [rw] date
    #   The date from which the metrics summary information was retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] open_findings
    #   The number of open findings of each severity in an account.
    #   @return [Types::FindingMetricsValuePerSeverity]
    #
    # @!attribute [rw] scans_with_most_open_critical_findings
    #   A list of `ScanNameWithFindingNum` objects for the top 3 scans with
    #   the most number of open findings in an account.
    #   @return [Array<Types::ScanNameWithFindingNum>]
    #
    # @!attribute [rw] scans_with_most_open_findings
    #   A list of `ScanNameWithFindingNum` objects for the top 3 scans with
    #   the most number of open critical findings in an account.
    #   @return [Array<Types::ScanNameWithFindingNum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/MetricsSummary AWS API Documentation
    #
    class MetricsSummary < Struct.new(
      :categories_with_most_findings,
      :date,
      :open_findings,
      :scans_with_most_open_critical_findings,
      :scans_with_most_open_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the recommended course of action to remediate a
    # finding.
    #
    # @!attribute [rw] text
    #   The recommended course of action to remediate the finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL address to the recommendation for remediating the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :text,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how to remediate a finding.
    #
    # @!attribute [rw] recommendation
    #   An object that contains information about the recommended course of
    #   action to remediate a finding.
    #   @return [Types::Recommendation]
    #
    # @!attribute [rw] suggested_fixes
    #   A list of `SuggestedFix` objects. Each object contains information
    #   about a suggested code fix to remediate the finding.
    #   @return [Array<Types::SuggestedFix>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation,
      :suggested_fixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource, such as an Amazon S3 bucket or AWS
    # Lambda function, that contains a finding.
    #
    # @!attribute [rw] id
    #   The identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] sub_resource_id
    #   The identifier for a section of the resource, such as an AWS Lambda
    #   layer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :id,
      :sub_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier for a resource object that contains resources where a
    # finding was detected.
    #
    # @note ResourceId is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceId is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceId corresponding to the set member.
    #
    # @!attribute [rw] code_artifact_id
    #   The identifier for the code file uploaded to the resource where a
    #   finding was detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ResourceId AWS API Documentation
    #
    class ResourceId < Struct.new(
      :code_artifact_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CodeArtifactId < ResourceId; end
      class Unknown < ResourceId; end
    end

    # The resource specified in the request was not found.
    #
    # @!attribute [rw] error_code
    #   The identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a scan with open findings.
    #
    # @!attribute [rw] finding_number
    #   The number of open findings generated by a scan.
    #   @return [Integer]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ScanNameWithFindingNum AWS API Documentation
    #
    class ScanNameWithFindingNum < Struct.new(
      :finding_number,
      :scan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a scan.
    #
    # @!attribute [rw] created_at
    #   The time when the scan was created.
    #   @return [Time]
    #
    # @!attribute [rw] run_id
    #   The identifier for the scan run.
    #   @return [String]
    #
    # @!attribute [rw] scan_name
    #   The name of the scan.
    #   @return [String]
    #
    # @!attribute [rw] scan_name_arn
    #   The ARN for the scan name.
    #   @return [String]
    #
    # @!attribute [rw] scan_state
    #   The state of the scan. A scan can be `In Progress`, `Complete`, or
    #   `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time the scan was last updated. A scan is updated when it is
    #   re-run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ScanSummary AWS API Documentation
    #
    class ScanSummary < Struct.new(
      :created_at,
      :run_id,
      :scan_name,
      :scan_name_arn,
      :scan_state,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the suggested code fix to remediate a finding.
    #
    # @!attribute [rw] code
    #   The suggested code to add to your file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the suggested code fix and why it is being
    #   suggested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/SuggestedFix AWS API Documentation
    #
    class SuggestedFix < Struct.new(
      :code,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the `ScanName` object. You can retrieve this ARN by
    #   calling `ListScans` or `GetScan`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an existing scan. A tag is a
    #   custom attribute label with two parts:
    #
    #   * A tag key. For example, `CostCenter`, `Environment`, or `Secret`.
    #     Tag keys are case sensitive.
    #
    #   * An optional tag value field. For example, `111122223333`,
    #     `Production`, or a team name. Omitting the tag value is the same
    #     as using an empty string. Tag values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] error_code
    #   The identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The identifier for the originating quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The identifier for the originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :error_code,
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the `ScanName` object. You can retrieve this ARN by
    #   calling `ListScans` or `GetScan`.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys for each tag you want to remove from a scan.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] encryption_config
    #   The KMS key ARN you want to use for encryption. Defaults to
    #   service-side encryption if missing.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/UpdateAccountConfigurationRequest AWS API Documentation
    #
    class UpdateAccountConfigurationRequest < Struct.new(
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_config
    #   An `EncryptionConfig` object that contains the KMS key ARN to use
    #   for encryption.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/UpdateAccountConfigurationResponse AWS API Documentation
    #
    class UpdateAccountConfigurationResponse < Struct.new(
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the specified constraints.
    #
    # @!attribute [rw] error_code
    #   The identifier for the error.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the request failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_code,
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a validation exception.
    #
    # @!attribute [rw] message
    #   Describes the exception.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a security vulnerability that Amazon CodeGuru
    # Security detected.
    #
    # @!attribute [rw] file_path
    #   An object that describes the location of the detected security
    #   vulnerability in your code.
    #   @return [Types::FilePath]
    #
    # @!attribute [rw] id
    #   The identifier for the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   The number of times the vulnerability appears in your code.
    #   @return [Integer]
    #
    # @!attribute [rw] reference_urls
    #   One or more URL addresses that contain details about a
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   One or more vulnerabilities that are related to the vulnerability
    #   being described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/Vulnerability AWS API Documentation
    #
    class Vulnerability < Struct.new(
      :file_path,
      :id,
      :item_count,
      :reference_urls,
      :related_vulnerabilities)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
