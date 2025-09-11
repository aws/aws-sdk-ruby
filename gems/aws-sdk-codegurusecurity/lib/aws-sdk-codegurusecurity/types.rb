# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruSecurity
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute error_code
    #   <p>The identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the resource you don't have access to.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource you don't have access to.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of findings metrics for an account on a specified date.</p>
    # @!attribute date
    #   <p>The date from which the findings metrics were retrieved.</p>
    #   @return [Time]
    # @!attribute new_findings
    #   <p>The number of new findings of each severity on the specified date.</p>
    #   @return [Types::FindingMetricsValuePerSeverity]
    # @!attribute closed_findings
    #   <p>The number of closed findings of each severity on the specified date.</p>
    #   @return [Types::FindingMetricsValuePerSeverity]
    # @!attribute open_findings
    #   <p>The number of open findings of each severity as of the specified date.</p>
    #   @return [Types::FindingMetricsValuePerSeverity]
    # @!attribute mean_time_to_close
    #   <p>The average time in days it takes to close findings of each severity as of a specified date.</p>
    #   @return [Types::FindingMetricsValuePerSeverity]
    class AccountFindingsMetric < Struct.new(
      :date,
      :new_findings,
      :closed_findings,
      :open_findings,
      :mean_time_to_close,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the error that caused a finding to fail to be retrieved.</p>
    # @!attribute scan_name
    #   <p>The name of the scan that generated the finding.</p>
    #   @return [String]
    # @!attribute finding_id
    #   <p>The finding ID of the finding that was not fetched.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>A code associated with the type of error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Describes the error.</p>
    #   @return [String]
    class BatchGetFindingsError < Struct.new(
      :scan_name,
      :finding_id,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_identifiers
    #   <p>A list of finding identifiers. Each identifier consists of a <code>scanName</code> and a <code>findingId</code>. You retrieve the <code>findingId</code> when you call <code>GetFindings</code>.</p>
    #   @return [Array<Types::FindingIdentifier>]
    class BatchGetFindingsRequest < Struct.new(
      :finding_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p> A list of all findings which were successfully fetched.</p>
    #   @return [Array<Types::Finding>]
    # @!attribute failed_findings
    #   <p>A list of errors for individual findings which were not fetched. Each BatchGetFindingsError contains the <code>scanName</code>, <code>findingId</code>, <code>errorCode</code> and error <code>message</code>.</p>
    #   @return [Array<Types::BatchGetFindingsError>]
    class BatchGetFindingsResponse < Struct.new(
      :findings,
      :failed_findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a finding category with open findings.</p>
    # @!attribute category_name
    #   <p>The name of the finding category. A finding category is determined by the detector that detected the finding.</p>
    #   @return [String]
    # @!attribute finding_number
    #   <p>The number of open findings in the category.</p>
    #   @return [Integer]
    class CategoryWithFindingNum < Struct.new(
      :category_name,
      :finding_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The line of code where a finding was detected.</p>
    # @!attribute number
    #   <p>The code line number.</p>
    #   @return [Integer]
    # @!attribute content
    #   <p>The code that contains a vulnerability.</p>
    #   @return [String]
    class CodeLine < Struct.new(
      :number,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>
    # @!attribute error_code
    #   <p>The identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the service resource associated with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource associated with the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token for the request. Amazon CodeGuru Security uses this value to prevent the accidental creation of duplicate scans if there are failures and retries.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the resource object to be scanned.</p>
    #   @return [Types::ResourceId]
    # @!attribute scan_name
    #   <p>The unique name that CodeGuru Security uses to track revisions across multiple scans of the same resource. Only allowed for a <code>STANDARD</code> scan type. </p>
    #   @return [String]
    # @!attribute scan_type
    #   <p>The type of scan, either <code>Standard</code> or <code>Express</code>. Defaults to <code>Standard</code> type if missing.</p> <p> <code>Express</code> scans run on limited resources and use a limited set of detectors to analyze your code in near-real time. <code>Standard</code> scans have standard resource limits and use the full set of detectors to analyze your code.</p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of analysis you want CodeGuru Security to perform in the scan, either <code>Security</code> or <code>All</code>. The <code>Security</code> type only generates findings related to security. The <code>All</code> type generates both security findings and quality findings. Defaults to <code>Security</code> type if missing.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag a scan. A tag is a custom attribute label with two parts:</p> <ul> <li> <p>A tag key. For example, <code>CostCenter</code>, <code>Environment</code>, or <code>Secret</code>. Tag keys are case sensitive.</p> </li> <li> <p>An optional tag value field. For example, <code>111122223333</code>, <code>Production</code>, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class CreateScanRequest < Struct.new(
      :client_token,
      :resource_id,
      :scan_name,
      :scan_type,
      :analysis_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_name
    #   <p>The name of the scan.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>UUID that identifies the individual scan run.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the resource object that contains resources that were scanned.</p>
    #   @return [Types::ResourceId]
    # @!attribute scan_state
    #   <p>The current state of the scan. Returns either <code>InProgress</code>, <code>Successful</code>, or <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute scan_name_arn
    #   <p>The ARN for the scan name.</p>
    #   @return [String]
    class CreateScanResponse < Struct.new(
      :scan_name,
      :run_id,
      :resource_id,
      :scan_state,
      :scan_name_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_name
    #   <p>The name of the scan that will use the uploaded resource. CodeGuru Security uses the unique scan name to track revisions across multiple scans of the same resource. Use this <code>scanName</code> when you call <code>CreateScan</code> on the code resource you upload to this URL.</p>
    #   @return [String]
    class CreateUploadUrlRequest < Struct.new(
      :scan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_url
    #   <p>A pre-signed S3 URL. You can upload the code file you want to scan with the required <code>requestHeaders</code> using any HTTP client.</p>
    #   @return [String]
    # @!attribute request_headers
    #   <p>A set of key-value pairs that contain the required headers when uploading your resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute code_artifact_id
    #   <p>The identifier for the uploaded code resource. Pass this to <code>CreateScan</code> to use the uploaded resources.</p>
    #   @return [String]
    class CreateUploadUrlResponse < Struct.new(
      :s3_url,
      :request_headers,
      :code_artifact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the encryption configuration for an account. Required to call <code>UpdateAccountConfiguration</code>.</p>
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN that is used for encryption. If an AWS-managed key is used for encryption, returns empty.</p>
    #   @return [String]
    class EncryptionConfig < Struct.new(
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the location of security vulnerabilities that Amazon CodeGuru Security detected in your code.</p>
    # @!attribute name
    #   <p>The name of the file.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path to the resource with the security vulnerability.</p>
    #   @return [String]
    # @!attribute start_line
    #   <p>The first line number of the code snippet where the security vulnerability appears in your code.</p>
    #   @return [Integer]
    # @!attribute end_line
    #   <p>The last line number of the code snippet where the security vulnerability appears in your code.</p>
    #   @return [Integer]
    # @!attribute code_snippet
    #   <p>A list of <code>CodeLine</code> objects that describe where the security vulnerability appears in your code.</p>
    #   @return [Array<Types::CodeLine>]
    class FilePath < Struct.new(
      :name,
      :path,
      :start_line,
      :end_line,
      :code_snippet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a finding that was detected in your code.</p>
    # @!attribute created_at
    #   <p>The time when the finding was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the finding.</p>
    #   @return [String]
    # @!attribute generator_id
    #   <p>The identifier for the component that generated a finding such as AmazonCodeGuruSecurity.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier for a finding.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the finding was last updated. Findings are updated when you remediate them or when the finding code location changes. </p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of finding. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the finding. A finding status can be open or closed. </p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource where Amazon CodeGuru Security detected a finding.</p>
    #   @return [Types::Resource]
    # @!attribute vulnerability
    #   <p>An object that describes the detected security vulnerability.</p>
    #   @return [Types::Vulnerability]
    # @!attribute severity
    #   <p>The severity of the finding. Severity can be critical, high, medium, low, or informational. For information on severity levels, see <a href="https://docs.aws.amazon.com/codeguru/latest/security-ug/findings-overview.html#severity-distribution">Finding severity</a> in the <i>Amazon CodeGuru Security User Guide</i>.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>An object that contains the details about how to remediate a finding.</p>
    #   @return [Types::Remediation]
    # @!attribute title
    #   <p>The title of the finding.</p>
    #   @return [String]
    # @!attribute detector_tags
    #   <p>One or more tags or categorizations that are associated with a detector. These tags are defined by type, programming language, or other classification such as maintainability or consistency.</p>
    #   @return [Array<String>]
    # @!attribute detector_id
    #   <p>The identifier for the detector that detected the finding in your code. A detector is a defined rule based on industry standards and AWS best practices. </p>
    #   @return [String]
    # @!attribute detector_name
    #   <p>The name of the detector that identified the security vulnerability in your code. </p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The identifier for the rule that generated the finding.</p>
    #   @return [String]
    class Finding < Struct.new(
      :created_at,
      :description,
      :generator_id,
      :id,
      :updated_at,
      :type,
      :status,
      :resource,
      :vulnerability,
      :severity,
      :remediation,
      :title,
      :detector_tags,
      :detector_id,
      :detector_name,
      :rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a finding and the scan that generated it. </p>
    # @!attribute scan_name
    #   <p>The name of the scan that generated the finding. </p>
    #   @return [String]
    # @!attribute finding_id
    #   <p>The identifier for a finding.</p>
    #   @return [String]
    class FindingIdentifier < Struct.new(
      :scan_name,
      :finding_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A numeric value corresponding to the severity of a finding, such as the number of open findings or the average time it takes to close findings of a given severity.</p>
    # @!attribute info
    #   <p>A numeric value corresponding to an informational finding.</p>
    #   @return [Float]
    # @!attribute low
    #   <p>A numeric value corresponding to a low severity finding.</p>
    #   @return [Float]
    # @!attribute medium
    #   <p>A numeric value corresponding to a medium severity finding.</p>
    #   @return [Float]
    # @!attribute high
    #   <p>A numeric value corresponding to a high severity finding.</p>
    #   @return [Float]
    # @!attribute critical
    #   <p>A numeric value corresponding to a critical finding.</p>
    #   @return [Float]
    class FindingMetricsValuePerSeverity < Struct.new(
      :info,
      :low,
      :medium,
      :high,
      :critical,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAccountConfigurationRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_config
    #   <p>An <code>EncryptionConfig</code> object that contains the KMS key ARN that is used for encryption. By default, CodeGuru Security uses an AWS-managed key for encryption. To specify your own key, call <code>UpdateAccountConfiguration</code>. If you do not specify a customer-managed key, returns empty.</p>
    #   @return [Types::EncryptionConfig]
    class GetAccountConfigurationResponse < Struct.new(
      :encryption_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_name
    #   <p>The name of the scan you want to retrieve findings from.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the <code>nextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the <code>nextToken</code> element is returned in the response. Use <code>nextToken</code> in a subsequent request to retrieve additional results. If not specified, returns 1000 results.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the findings you want to get. Pass either <code>Open</code>, <code>Closed</code>, or <code>All</code>.</p>
    #   @return [String]
    class GetFindingsRequest < Struct.new(
      :scan_name,
      :next_token,
      :max_results,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p>A list of findings generated by the specified scan.</p>
    #   @return [Array<Types::Finding>]
    # @!attribute next_token
    #   <p>A pagination token. You can use this in future calls to <code>GetFindings</code> to continue listing results after the current page. </p>
    #   @return [String]
    class GetFindingsResponse < Struct.new(
      :findings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute date
    #   <p>The date you want to retrieve summary metrics from, rounded to the nearest day. The date must be within the past two years.</p>
    #   @return [Time]
    class GetMetricsSummaryRequest < Struct.new(
      :date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metrics_summary
    #   <p>The summary metrics from the specified date.</p>
    #   @return [Types::MetricsSummary]
    class GetMetricsSummaryResponse < Struct.new(
      :metrics_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_name
    #   <p>The name of the scan you want to view details about.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>UUID that identifies the individual scan run you want to view details about. You retrieve this when you call the <code>CreateScan</code> operation. Defaults to the latest scan run if missing.</p>
    #   @return [String]
    class GetScanRequest < Struct.new(
      :scan_name,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scan_name
    #   <p>The name of the scan.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>UUID that identifies the individual scan run.</p>
    #   @return [String]
    # @!attribute scan_state
    #   <p>The current state of the scan. Returns either <code>InProgress</code>, <code>Successful</code>, or <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the scan was created.</p>
    #   @return [Time]
    # @!attribute analysis_type
    #   <p>The type of analysis CodeGuru Security performed in the scan, either <code>Security</code> or <code>All</code>. The <code>Security</code> type only generates findings related to security. The <code>All</code> type generates both security findings and quality findings.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the scan was last updated. Only available for <code>STANDARD</code> scan types.</p>
    #   @return [Time]
    # @!attribute number_of_revisions
    #   <p>The number of times a scan has been re-run on a revised resource.</p>
    #   @return [Integer]
    # @!attribute scan_name_arn
    #   <p>The ARN for the scan name.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Details about the error that causes a scan to fail to be retrieved.</p>
    #   @return [String]
    class GetScanResponse < Struct.new(
      :scan_name,
      :run_id,
      :scan_state,
      :created_at,
      :analysis_type,
      :updated_at,
      :number_of_revisions,
      :scan_name_arn,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
    # @!attribute error
    #   <p>The internal error encountered by the server.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the <code>nextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the <code>nextToken</code> element is returned in the response. Use <code>nextToken</code> in a subsequent request to retrieve additional results. If not specified, returns 1000 results.</p>
    #   @return [Integer]
    # @!attribute start_date
    #   <p>The start date of the interval which you want to retrieve metrics from. Rounds to the nearest day.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date of the interval which you want to retrieve metrics from. Round to the nearest day.</p>
    #   @return [Time]
    class ListFindingsMetricsRequest < Struct.new(
      :next_token,
      :max_results,
      :start_date,
      :end_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings_metrics
    #   <p>A list of <code>AccountFindingsMetric</code> objects retrieved from the specified time interval.</p>
    #   @return [Array<Types::AccountFindingsMetric>]
    # @!attribute next_token
    #   <p>A pagination token. You can use this in future calls to <code>ListFindingMetrics</code> to continue listing results after the current page. </p>
    #   @return [String]
    class ListFindingsMetricsResponse < Struct.new(
      :findings_metrics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the <code>nextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. Use this parameter when paginating results. If additional results exist beyond the number you specify, the <code>nextToken</code> element is returned in the response. Use <code>nextToken</code> in a subsequent request to retrieve additional results. If not specified, returns 100 results.</p>
    #   @return [Integer]
    class ListScansRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>ScanSummary</code> objects with information about all scans in an account.</p>
    #   @return [Array<Types::ScanSummary>]
    # @!attribute next_token
    #   <p>A pagination token. You can use this in future calls to <code>ListScans</code> to continue listing results after the current page.</p>
    #   @return [String]
    class ListScansResponse < Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the <code>ScanName</code> object. You can retrieve this ARN by calling <code>CreateScan</code>, <code>ListScans</code>, or <code>GetScan</code>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an existing scan. A tag is a custom attribute label with two parts:</p> <ul> <li> <p>A tag key. For example, <code>CostCenter</code>, <code>Environment</code>, or <code>Secret</code>. Tag keys are case sensitive.</p> </li> <li> <p>An optional tag value field. For example, <code>111122223333</code>, <code>Production</code>, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of metrics for an account as of a specified date.</p>
    # @!attribute date
    #   <p>The date from which the metrics summary information was retrieved.</p>
    #   @return [Time]
    # @!attribute open_findings
    #   <p>The number of open findings of each severity.</p>
    #   @return [Types::FindingMetricsValuePerSeverity]
    # @!attribute categories_with_most_findings
    #   <p>A list of <code>CategoryWithFindingNum</code> objects for the top 5 finding categories with the most findings.</p>
    #   @return [Array<Types::CategoryWithFindingNum>]
    # @!attribute scans_with_most_open_findings
    #   <p>A list of <code>ScanNameWithFindingNum</code> objects for the top 3 scans with the most number of open findings.</p>
    #   @return [Array<Types::ScanNameWithFindingNum>]
    # @!attribute scans_with_most_open_critical_findings
    #   <p>A list of <code>ScanNameWithFindingNum</code> objects for the top 3 scans with the most number of open critical findings.</p>
    #   @return [Array<Types::ScanNameWithFindingNum>]
    class MetricsSummary < Struct.new(
      :date,
      :open_findings,
      :categories_with_most_findings,
      :scans_with_most_open_findings,
      :scans_with_most_open_critical_findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the recommended course of action to remediate a finding.</p>
    # @!attribute text
    #   <p>The recommended course of action to remediate the finding.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL address to the recommendation for remediating the finding. </p>
    #   @return [String]
    class Recommendation < Struct.new(
      :text,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how to remediate a finding.</p>
    # @!attribute recommendation
    #   <p>An object that contains information about the recommended course of action to remediate a finding.</p>
    #   @return [Types::Recommendation]
    # @!attribute suggested_fixes
    #   <p>A list of <code>SuggestedFix</code> objects. Each object contains information about a suggested code fix to remediate the finding.</p>
    #   @return [Array<Types::SuggestedFix>]
    class Remediation < Struct.new(
      :recommendation,
      :suggested_fixes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a resource that contains a finding.</p>
    # @!attribute id
    #   <p>The <code>scanName</code> of the scan that was run on the resource.</p>
    #   @return [String]
    # @!attribute sub_resource_id
    #   <p>The identifier for a section of the resource.</p>
    #   @return [String]
    class Resource < Struct.new(
      :id,
      :sub_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier for a resource object that contains resources to scan. Specifying a codeArtifactId is required to create a scan.</p>
    # @!attribute code_artifact_id
    #   <p>The identifier for the code file uploaded to the resource object. Returned by <code>CreateUploadUrl</code> when you upload resources to be scanned.</p>
    #   @return [String]
    class ResourceId < Struct.new(
      :code_artifact_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CodeArtifactId < ResourceId; end
      class Unknown < ResourceId; end
    end

    # <p>The resource specified in the request was not found.</p>
    # @!attribute error_code
    #   <p>The identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the number of findings generated by a scan.</p>
    # @!attribute scan_name
    #   <p>The name of the scan.</p>
    #   @return [String]
    # @!attribute finding_number
    #   <p>The number of findings generated by a scan.</p>
    #   @return [Integer]
    class ScanNameWithFindingNum < Struct.new(
      :scan_name,
      :finding_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a scan. </p>
    # @!attribute scan_state
    #   <p>The state of the scan. A scan can be <code>In Progress</code>, <code>Complete</code>, or <code>Failed</code>. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time when the scan was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the scan was last updated. A scan is updated when it is re-run.</p>
    #   @return [Time]
    # @!attribute scan_name
    #   <p>The name of the scan. </p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The identifier for the scan run. </p>
    #   @return [String]
    # @!attribute scan_name_arn
    #   <p>The ARN for the scan name.</p>
    #   @return [String]
    class ScanSummary < Struct.new(
      :scan_state,
      :created_at,
      :updated_at,
      :scan_name,
      :run_id,
      :scan_name_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the suggested code fix to remediate a finding.</p>
    # @!attribute description
    #   <p>A description of the suggested code fix and why it is being suggested. </p>
    #   @return [String]
    # @!attribute code
    #   <p>The suggested code fix. If applicable, includes code patch to replace your source code. </p>
    #   @return [String]
    class SuggestedFix < Struct.new(
      :description,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the <code>ScanName</code> object. You can retrieve this ARN by calling <code>CreateScan</code>, <code>ListScans</code>, or <code>GetScan</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an existing scan. A tag is a custom attribute label with two parts:</p> <ul> <li> <p>A tag key. For example, <code>CostCenter</code>, <code>Environment</code>, or <code>Secret</code>. Tag keys are case sensitive.</p> </li> <li> <p>An optional tag value field. For example, <code>111122223333</code>, <code>Production</code>, or a team name. Omitting the tag value is the same as using an empty string. Tag values are case sensitive.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
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

    # <p>The request was denied due to request throttling.</p>
    # @!attribute error_code
    #   <p>The identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The identifier for the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The identifier for the originating quota.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :error_code,
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the <code>ScanName</code> object. You can retrieve this ARN by calling <code>CreateScan</code>, <code>ListScans</code>, or <code>GetScan</code>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys for each tag you want to remove from a scan.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
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

    # @!attribute encryption_config
    #   <p>The customer-managed KMS key ARN you want to use for encryption. If not specified, CodeGuru Security will use an AWS-managed key for encryption. If you previously specified a customer-managed KMS key and want CodeGuru Security to use an AWS-managed key for encryption instead, pass nothing.</p>
    #   @return [Types::EncryptionConfig]
    class UpdateAccountConfigurationRequest < Struct.new(
      :encryption_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_config
    #   <p>An <code>EncryptionConfig</code> object that contains the KMS key ARN that is used for encryption. If you did not specify a customer-managed KMS key in the request, returns empty. </p>
    #   @return [Types::EncryptionConfig]
    class UpdateAccountConfigurationResponse < Struct.new(
      :encryption_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the specified constraints.</p>
    # @!attribute error_code
    #   <p>The identifier for the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field that caused the error, if applicable.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :error_code,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a validation exception.</p>
    # @!attribute name
    #   <p>The name of the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Describes the exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a security vulnerability that Amazon CodeGuru Security detected.</p>
    # @!attribute reference_urls
    #   <p>One or more URL addresses that contain details about a vulnerability.</p>
    #   @return [Array<String>]
    # @!attribute related_vulnerabilities
    #   <p>One or more vulnerabilities that are related to the vulnerability being described.</p>
    #   @return [Array<String>]
    # @!attribute id
    #   <p>The identifier for the vulnerability.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p> An object that describes the location of the detected security vulnerability in your code.</p>
    #   @return [Types::FilePath]
    # @!attribute item_count
    #   <p>The number of times the vulnerability appears in your code.</p>
    #   @deprecated
    #     This shape is not used.
    #   @return [Integer]
    class Vulnerability < Struct.new(
      :reference_urls,
      :related_vulnerabilities,
      :id,
      :file_path,
      :item_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
