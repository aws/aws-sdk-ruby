# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AbuseSignal
  module Types

    # The caller does not have sufficient access to perform this operation.
    # Verify that the caller has the specific IAM permission for the
    # operation it is calling (for example, `abuse:CreateAbuseReport`,
    # `abuse:GetAbuseReportStatus`, or `abuse:ListAbuseReportStatuses`).
    # Grant only the actions each caller requires.
    #
    # @!attribute [rw] message
    #   A description of the access-denied error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource. For
    # example, an idempotency token was reused with a different payload.
    #
    # @!attribute [rw] message
    #   A description of the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for a CreateAbuseReport request. Provide the report in XARF
    # format, and optionally your own correlation ID and idempotency token.
    #
    # @!attribute [rw] report
    #   The abuse report data in XARF format. Provide the report under the
    #   `xarf` key.
    #   @return [Types::ReportData]
    #
    # @!attribute [rw] correlation_id
    #   An optional correlation ID for tracking the report in the
    #   reporter's system. The service echoes this value back in responses,
    #   and you can use it to filter reports with ListAbuseReportStatuses.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An optional, client-provided idempotency token that ensures the
    #   operation completes no more than once. If the token matches a
    #   previous request within 24 hours, the service returns the existing
    #   report ID instead of creating a new report. When you omit this
    #   token, the service automatically generates one that is scoped to a
    #   5-minute window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/CreateAbuseReportRequest AWS API Documentation
    #
    class CreateAbuseReportRequest < Struct.new(
      :report,
      :correlation_id,
      :client_token)
      SENSITIVE = [:report]
      include Aws::Structure
    end

    # The response from a CreateAbuseReport request. Contains the identifier
    # that Amazon Web Services assigned to your report, which you use to
    # track it.
    #
    # @!attribute [rw] report_id
    #   The unique identifier assigned to the submitted abuse report. Use
    #   this ID with GetAbuseReportStatus to track processing.
    #   @return [String]
    #
    # @!attribute [rw] correlation_id
    #   The correlation ID that you provided in the request, if any. The
    #   service echoes this value back in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/CreateAbuseReportResponse AWS API Documentation
    #
    class CreateAbuseReportResponse < Struct.new(
      :report_id,
      :correlation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for a GetAbuseReportStatus request. Identifies the abuse
    # report whose status you want to retrieve.
    #
    # @!attribute [rw] report_id
    #   The unique identifier of the abuse report to retrieve status for.
    #   This is the `reportId` that is returned by CreateAbuseReport.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/GetAbuseReportStatusRequest AWS API Documentation
    #
    class GetAbuseReportStatusRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a GetAbuseReportStatus request. Contains the
    # report's current status, when you submitted it, and when its status
    # last changed.
    #
    # @!attribute [rw] report_id
    #   The unique identifier of the abuse report.
    #   @return [String]
    #
    # @!attribute [rw] correlation_id
    #   The reporter-provided correlation ID for cross-referencing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current processing status of the abuse report. Valid values are
    #   `QUEUED` (the report has been received and queued for processing),
    #   `PROCESSING` (the report has been received and is being processed),
    #   and `COMPLETED` (downstream resolution is finished).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the current status.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   A code that explains the resolution outcome. This value is returned
    #   only after the report reaches the terminal `COMPLETED` status; it is
    #   absent while the report is `QUEUED` or `PROCESSING`. Treat an
    #   unrecognized value as opaque, because the set of reason codes is
    #   append-only.
    #   @return [String]
    #
    # @!attribute [rw] submitted_at
    #   The date and time when the abuse report was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/GetAbuseReportStatusResponse AWS API Documentation
    #
    class GetAbuseReportStatusResponse < Struct.new(
      :report_id,
      :correlation_id,
      :status,
      :description,
      :reason_code,
      :submitted_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of the request.
    # This error is retryable; check the `Retry-After` header before you
    # retry.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before you retry the request. The
    #   service also returns this value in the `Retry-After` HTTP header.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for a ListAbuseReportStatuses request. Use it to filter
    # results by correlation ID and to page through them.
    #
    # @!attribute [rw] correlation_id
    #   Filters results by the reporter-provided correlation ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token for retrieving the next page of results. Omit
    #   this parameter to return the first page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single page. Valid
    #   range: 1–50. The default is 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ListAbuseReportStatusesRequest AWS API Documentation
    #
    class ListAbuseReportStatusesRequest < Struct.new(
      :correlation_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a ListAbuseReportStatuses request. Contains one page
    # of abuse report statuses and, when more results remain, a token for
    # retrieving the next page.
    #
    # @!attribute [rw] reports
    #   A list of abuse report status items. This list is empty when no
    #   reports are found for the calling account, or when no reports match
    #   the specified `correlationId` filter.
    #   @return [Array<Types::ReportStatusListItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next page of results. This value is
    #   `null` when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ListAbuseReportStatusesResponse AWS API Documentation
    #
    class ListAbuseReportStatusesResponse < Struct.new(
      :reports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The abuse report data in XARF format. This is a union type, so exactly
    # one member must be specified.
    #
    # @note ReportData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] xarf
    #   A JSON object that conforms to the XARF v4 specification. At a
    #   minimum, the document must include the XARF core fields, including
    #   the required `category` and `type` fields that classify the report
    #   (for example, `category` `content` with `type` `phishing`). For the
    #   XARF core fields and detailed schema definitions of each report
    #   type, see the [XARF v4 Technical Specification on the XARF
    #   website][1].
    #
    #   <note markdown="1"> Never include images, video, or copies of child sexual abuse or
    #   child sexual exploitation material in a report, in any field and for
    #   any report type. Send URLs, hash values, and reference identifiers
    #   only.
    #
    #    </note>
    #
    #   If you suspect that activity is illegal, use the XARF `description`
    #   field to explain why and name the laws concerned.
    #
    #   **Testing your integration**
    #
    #   To test your integration, add the tag `lifecycle:test` to the
    #   report. Amazon Web Services validates test reports and returns a
    #   report ID and status in the same way as other reports, but doesn't
    #   process them as abuse reports. Amazon Web Services deletes test
    #   reports shortly after submission.
    #
    #   Use test values only, such as example.com and the IP address ranges
    #   reserved for documentation (192.0.2.0/24, 198.51.100.0/24 and
    #   203.0.113.0/24). Don't add this tag to a real abuse report.
    #
    #   Tag keys that begin with `aws:` are reserved.
    #
    #
    #
    #   [1]: https://xarf.org/docs/specification/
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ReportData AWS API Documentation
    #
    class ReportData < Struct.new(
      :xarf,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Xarf < ReportData; end
      class Unknown < ReportData; end
    end

    # Status information for an individual abuse report. The
    # ListAbuseReportStatuses operation returns this structure in its
    # reports list.
    #
    # @!attribute [rw] report_id
    #   The unique identifier of the abuse report.
    #   @return [String]
    #
    # @!attribute [rw] correlation_id
    #   The reporter-provided correlation ID for cross-referencing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current processing status of the abuse report. Valid values are
    #   `QUEUED` (the report has been received and queued for processing),
    #   `PROCESSING` (the report has been received and is being processed),
    #   and `COMPLETED` (downstream resolution is finished).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the status.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   A code that explains the resolution outcome. This value is present
    #   only after the report reaches the terminal `COMPLETED` status; it is
    #   absent while the report is `QUEUED` or `PROCESSING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ReportStatusListItem AWS API Documentation
    #
    class ReportStatusListItem < Struct.new(
      :report_id,
      :correlation_id,
      :status,
      :description,
      :reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found. Verify that the `reportId` is
    # correct.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes one specific submission requirement that a well-formed
    # report did not meet. The service returns this structure in the
    # `unmetRequirements` list of a `SubmissionRequirementException` (HTTP
    # 422).
    #
    # @!attribute [rw] code
    #   A stable, dot-namespaced identifier for the submission requirement
    #   that the report did not meet (for example,
    #   `rule.timestamp.too_old`). The set of codes is append-only, so treat
    #   an unrecognized value as opaque. This value is absent when the
    #   requirement that the report did not meet does not publish an
    #   identifier.
    #
    #   The service checks the following submission requirements:
    #
    #   * `rule.source_identifier.too_long` (`source_identifier`) – The
    #     value exceeds the maximum accepted length of 253 characters (the
    #     DNS hostname limit).
    #
    #   * `rule.source_identifier.forbidden_characters`
    #     (`source_identifier`) – The value contains characters that are
    #     never valid in an address (`{`, `}`, `*`, or `` ` ``). These are
    #     common template-injection and command-injection markers.
    #
    #   * `rule.source_identifier.malformed` (`source_identifier`) – The
    #     value is not a valid IPv4 address, IPv6 address, URL, or domain
    #     name.
    #
    #   * `rule.timestamp.unparseable` (`timestamp`) – The value could not
    #     be parsed as an RFC 3339 date-time.
    #
    #   * `rule.timestamp.in_future` (`timestamp`) – The value is dated
    #     further into the future than the accepted clock-skew tolerance (a
    #     default of 1 hour).
    #
    #   * `rule.timestamp.too_old` (`timestamp`) – The value predates the
    #     submission lookback window (a default of 90 days). For content
    #     that is still accessible, set `timestamp` to the time you most
    #     recently observed it.
    #
    #   * `rule.evidence.content_type_mismatch` (`evidence`) – The decoded
    #     payload of an evidence item does not match its declared
    #     `content_type`. The `path` identifies the item, for example
    #     `/evidence/0`.
    #
    #   Submission requirement thresholds are configuration-driven and can
    #   change over time. The set of codes is append-only, so treat an
    #   unrecognized code as opaque.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   A JSON Pointer expression to the report member that did not meet the
    #   requirement. An empty string refers to the report as a whole.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed, human-readable description of the unmet submission
    #   requirement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/SubmissionRequirement AWS API Documentation
    #
    class SubmissionRequirement < Struct.new(
      :code,
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The report is well-formed and satisfies the XARF schema, but it does
    # not meet one or more submission requirements (for example, the
    # submission lookback window or `source_identifier` restrictions). This
    # error is distinct from `ValidationException` (HTTP 400), which
    # indicates that the report is not well-formed. Retrying the same report
    # will not succeed; the report content must change.
    #
    # @!attribute [rw] message
    #   A summary of the unmet submission requirements.
    #   @return [String]
    #
    # @!attribute [rw] unmet_requirements
    #   A list of the specific submission requirements that the report did
    #   not meet.
    #   @return [Array<Types::SubmissionRequirement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/SubmissionRequirementException AWS API Documentation
    #
    class SubmissionRequirementException < Struct.new(
      :message,
      :unmet_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. This error is
    # retryable; retry with exponential backoff.
    #
    # @!attribute [rw] message
    #   A description of the throttling error.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the Amazon Web Services service that is associated with
    #   the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before you retry the request. The
    #   service also returns this value in the `Retry-After` HTTP header.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service,
    # which indicates that the request is not well-formed. Check `fieldList`
    # for the specific members that failed validation.
    #
    # @!attribute [rw] message
    #   A summary of the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of the specific input fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes one specific validation failure for an input member.
    #
    # @!attribute [rw] path
    #   A JSON Pointer expression to the structure member whose value failed
    #   to satisfy the modeled constraints.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed description of the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/abuse-signal-2026-01-12/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

