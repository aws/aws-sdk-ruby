# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::XRay
  module Types

    # An alias for an edge.
    #
    # @!attribute [rw] name
    #   The canonical name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A list of names for the alias, including the canonical name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Alias AWS API Documentation
    #
    class Alias < Struct.new(
      :name,
      :names,
      :type)
      include Aws::Structure
    end

    # Value of a segment annotation. Has one of three value types: Number,
    # Boolean or String.
    #
    # @!attribute [rw] number_value
    #   Value for a Number annotation.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   Value for a Boolean annotation.
    #   @return [Boolean]
    #
    # @!attribute [rw] string_value
    #   Value for a String annotation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/AnnotationValue AWS API Documentation
    #
    class AnnotationValue < Struct.new(
      :number_value,
      :boolean_value,
      :string_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BackendConnectionErrors
    #   data as a hash:
    #
    #       {
    #         timeout_count: 1,
    #         connection_refused_count: 1,
    #         http_code_4_xx_count: 1,
    #         http_code_5_xx_count: 1,
    #         unknown_host_count: 1,
    #         other_count: 1,
    #       }
    #
    # @!attribute [rw] timeout_count
    #   @return [Integer]
    #
    # @!attribute [rw] connection_refused_count
    #   @return [Integer]
    #
    # @!attribute [rw] http_code_4_xx_count
    #   @return [Integer]
    #
    # @!attribute [rw] http_code_5_xx_count
    #   @return [Integer]
    #
    # @!attribute [rw] unknown_host_count
    #   @return [Integer]
    #
    # @!attribute [rw] other_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BackendConnectionErrors AWS API Documentation
    #
    class BackendConnectionErrors < Struct.new(
      :timeout_count,
      :connection_refused_count,
      :http_code_4_xx_count,
      :http_code_5_xx_count,
      :unknown_host_count,
      :other_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetTracesRequest
    #   data as a hash:
    #
    #       {
    #         trace_ids: ["TraceId"], # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] trace_ids
    #   Specify the trace IDs of requests for which to retrieve segments.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTracesRequest AWS API Documentation
    #
    class BatchGetTracesRequest < Struct.new(
      :trace_ids,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] traces
    #   Full traces for the specified requests.
    #   @return [Array<Types::Trace>]
    #
    # @!attribute [rw] unprocessed_trace_ids
    #   Trace IDs of requests that haven't been processed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTracesResult AWS API Documentation
    #
    class BatchGetTracesResult < Struct.new(
      :traces,
      :unprocessed_trace_ids,
      :next_token)
      include Aws::Structure
    end

    # Information about a connection between two services.
    #
    # @!attribute [rw] reference_id
    #   Identifier of the edge. Unique within a service map.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the first segment on the edge.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the last segment on the edge.
    #   @return [Time]
    #
    # @!attribute [rw] summary_statistics
    #   Response statistics for segments on the edge.
    #   @return [Types::EdgeStatistics]
    #
    # @!attribute [rw] response_time_histogram
    #   A histogram that maps the spread of client response times on an
    #   edge.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @!attribute [rw] aliases
    #   Aliases for the edge.
    #   @return [Array<Types::Alias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Edge AWS API Documentation
    #
    class Edge < Struct.new(
      :reference_id,
      :start_time,
      :end_time,
      :summary_statistics,
      :response_time_histogram,
      :aliases)
      include Aws::Structure
    end

    # Response statistics for an edge.
    #
    # @!attribute [rw] ok_count
    #   The number of requests that completed with a 2xx Success status
    #   code.
    #   @return [Integer]
    #
    # @!attribute [rw] error_statistics
    #   Information about requests that failed with a 4xx Client Error
    #   status code.
    #   @return [Types::ErrorStatistics]
    #
    # @!attribute [rw] fault_statistics
    #   Information about requests that failed with a 5xx Server Error
    #   status code.
    #   @return [Types::FaultStatistics]
    #
    # @!attribute [rw] total_count
    #   The total number of completed requests.
    #   @return [Integer]
    #
    # @!attribute [rw] total_response_time
    #   The aggregate response time of completed requests.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/EdgeStatistics AWS API Documentation
    #
    class EdgeStatistics < Struct.new(
      :ok_count,
      :error_statistics,
      :fault_statistics,
      :total_count,
      :total_response_time)
      include Aws::Structure
    end

    # Information about requests that failed with a 4xx Client Error status
    # code.
    #
    # @!attribute [rw] throttle_count
    #   The number of requests that failed with a 419 throttling status
    #   code.
    #   @return [Integer]
    #
    # @!attribute [rw] other_count
    #   The number of requests that failed with untracked 4xx Client Error
    #   status codes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_count
    #   The total number of requests that failed with a 4xx Client Error
    #   status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ErrorStatistics AWS API Documentation
    #
    class ErrorStatistics < Struct.new(
      :throttle_count,
      :other_count,
      :total_count)
      include Aws::Structure
    end

    # Information about requests that failed with a 5xx Server Error status
    # code.
    #
    # @!attribute [rw] other_count
    #   The number of requests that failed with untracked 5xx Server Error
    #   status codes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_count
    #   The total number of requests that failed with a 5xx Server Error
    #   status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/FaultStatistics AWS API Documentation
    #
    class FaultStatistics < Struct.new(
      :other_count,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceGraphRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] start_time
    #   The start of the time frame for which to generate a graph.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time frame for which to generate a graph.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraphRequest AWS API Documentation
    #
    class GetServiceGraphRequest < Struct.new(
      :start_time,
      :end_time,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time frame for which the graph was generated.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time frame for which the graph was generated.
    #   @return [Time]
    #
    # @!attribute [rw] services
    #   The services that have processed a traced request during the
    #   specified time frame.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraphResult AWS API Documentation
    #
    class GetServiceGraphResult < Struct.new(
      :start_time,
      :end_time,
      :services,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTraceGraphRequest
    #   data as a hash:
    #
    #       {
    #         trace_ids: ["TraceId"], # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] trace_ids
    #   Trace IDs of requests for which to generate a service graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraphRequest AWS API Documentation
    #
    class GetTraceGraphRequest < Struct.new(
      :trace_ids,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] services
    #   The services that have processed one of the specified requests.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraphResult AWS API Documentation
    #
    class GetTraceGraphResult < Struct.new(
      :services,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTraceSummariesRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         sampling: false,
    #         filter_expression: "FilterExpression",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] start_time
    #   The start of the time frame for which to retrieve traces.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time frame for which to retrieve traces.
    #   @return [Time]
    #
    # @!attribute [rw] sampling
    #   Set to `true` to get summaries for only a subset of available
    #   traces.
    #   @return [Boolean]
    #
    # @!attribute [rw] filter_expression
    #   Specify a filter expression to retrieve trace summaries for services
    #   or requests that meet certain requirements.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummariesRequest AWS API Documentation
    #
    class GetTraceSummariesRequest < Struct.new(
      :start_time,
      :end_time,
      :sampling,
      :filter_expression,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] trace_summaries
    #   Trace IDs and metadata for traces that were found in the specified
    #   time frame.
    #   @return [Array<Types::TraceSummary>]
    #
    # @!attribute [rw] approximate_time
    #   The start time of this page of results.
    #   @return [Time]
    #
    # @!attribute [rw] traces_processed_count
    #   The number of traces that were processed to get this set of
    #   summaries.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the requested time frame contained more than one page of results,
    #   you can use this token to retrieve the next page. The first page
    #   contains the most most recent results, closest to the end of the
    #   time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummariesResult AWS API Documentation
    #
    class GetTraceSummariesResult < Struct.new(
      :trace_summaries,
      :approximate_time,
      :traces_processed_count,
      :next_token)
      include Aws::Structure
    end

    # An entry in a histogram for a statistic. A histogram maps the range of
    # observed values on the X axis, and the prevalence of each value on the
    # Y axis.
    #
    # @!attribute [rw] value
    #   The value of the entry.
    #   @return [Float]
    #
    # @!attribute [rw] count
    #   The prevalence of the entry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/HistogramEntry AWS API Documentation
    #
    class HistogramEntry < Struct.new(
      :value,
      :count)
      include Aws::Structure
    end

    # Information about an HTTP request.
    #
    # @!attribute [rw] http_url
    #   The request URL.
    #   @return [String]
    #
    # @!attribute [rw] http_status
    #   The response status.
    #   @return [Integer]
    #
    # @!attribute [rw] http_method
    #   The request method.
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   The request's user agent string.
    #   @return [String]
    #
    # @!attribute [rw] client_ip
    #   The IP address of the requestor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Http AWS API Documentation
    #
    class Http < Struct.new(
      :http_url,
      :http_status,
      :http_method,
      :user_agent,
      :client_ip)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutTelemetryRecordsRequest
    #   data as a hash:
    #
    #       {
    #         telemetry_records: [ # required
    #           {
    #             timestamp: Time.now,
    #             segments_received_count: 1,
    #             segments_sent_count: 1,
    #             segments_spillover_count: 1,
    #             segments_rejected_count: 1,
    #             backend_connection_errors: {
    #               timeout_count: 1,
    #               connection_refused_count: 1,
    #               http_code_4_xx_count: 1,
    #               http_code_5_xx_count: 1,
    #               unknown_host_count: 1,
    #               other_count: 1,
    #             },
    #           },
    #         ],
    #         ec2_instance_id: "String",
    #         hostname: "String",
    #         resource_arn: "String",
    #       }
    #
    # @!attribute [rw] telemetry_records
    #   @return [Array<Types::TelemetryRecord>]
    #
    # @!attribute [rw] ec2_instance_id
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecordsRequest AWS API Documentation
    #
    class PutTelemetryRecordsRequest < Struct.new(
      :telemetry_records,
      :ec2_instance_id,
      :hostname,
      :resource_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecordsResult AWS API Documentation
    #
    class PutTelemetryRecordsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutTraceSegmentsRequest
    #   data as a hash:
    #
    #       {
    #         trace_segment_documents: ["TraceSegmentDocument"], # required
    #       }
    #
    # @!attribute [rw] trace_segment_documents
    #   A string containing a JSON document defining one or more segments or
    #   subsegments.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegmentsRequest AWS API Documentation
    #
    class PutTraceSegmentsRequest < Struct.new(
      :trace_segment_documents)
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_trace_segments
    #   Segments that failed processing.
    #   @return [Array<Types::UnprocessedTraceSegment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegmentsResult AWS API Documentation
    #
    class PutTraceSegmentsResult < Struct.new(
      :unprocessed_trace_segments)
      include Aws::Structure
    end

    # A segment from a trace that has been ingested by the X-Ray service.
    # The segment can be compiled from documents uploaded with
    # PutTraceSegments, or an `inferred` segment for a downstream service,
    # generated from a subsegment sent by the service that called it.
    #
    # @!attribute [rw] id
    #   The segment's ID.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The segment document
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :id,
      :document)
      include Aws::Structure
    end

    # Information about an application that processed requests, users that
    # made requests, or downstream services, resources and applications that
    # an application used.
    #
    # @!attribute [rw] reference_id
    #   Identifier for the service. Unique within the service map.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The canonical name of the service.
    #   @return [String]
    #
    # @!attribute [rw] names
    #   A list of names for the service, including the canonical name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] root
    #   Indicates that the service was the first service to process a
    #   request.
    #   @return [Boolean]
    #
    # @!attribute [rw] account_id
    #   Identifier of the AWS account in which the service runs.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of service.
    #
    #   * AWS Resource - The type of an AWS resource. For example,
    #     `AWS::EC2::Instance` for a application running on Amazon EC2 or
    #     `AWS::DynamoDB::Table` for an Amazon DynamoDB table that the
    #     application used.
    #
    #   * AWS Service - The type of an AWS service. For example,
    #     `AWS::DynamoDB` for downstream calls to Amazon DynamoDB that
    #     didn't target a specific table.
    #
    #   * `client` - Represents the clients that sent requests to a root
    #     service.
    #
    #   * `remote` - A downstream service of indeterminate type.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The service's state.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the first segment that the service generated.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the last segment that the service generated.
    #   @return [Time]
    #
    # @!attribute [rw] edges
    #   Connections to downstream services.
    #   @return [Array<Types::Edge>]
    #
    # @!attribute [rw] summary_statistics
    #   Aggregated statistics for the service.
    #   @return [Types::ServiceStatistics]
    #
    # @!attribute [rw] duration_histogram
    #   A histogram that maps the spread of service durations.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @!attribute [rw] response_time_histogram
    #   A histogram that maps the spread of service response times.
    #   @return [Array<Types::HistogramEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Service AWS API Documentation
    #
    class Service < Struct.new(
      :reference_id,
      :name,
      :names,
      :root,
      :account_id,
      :type,
      :state,
      :start_time,
      :end_time,
      :edges,
      :summary_statistics,
      :duration_histogram,
      :response_time_histogram)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] names
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ServiceId AWS API Documentation
    #
    class ServiceId < Struct.new(
      :name,
      :names,
      :account_id,
      :type)
      include Aws::Structure
    end

    # Response statistics for a service.
    #
    # @!attribute [rw] ok_count
    #   The number of requests that completed with a 2xx Success status
    #   code.
    #   @return [Integer]
    #
    # @!attribute [rw] error_statistics
    #   Information about requests that failed with a 4xx Client Error
    #   status code.
    #   @return [Types::ErrorStatistics]
    #
    # @!attribute [rw] fault_statistics
    #   Information about requests that failed with a 5xx Server Error
    #   status code.
    #   @return [Types::FaultStatistics]
    #
    # @!attribute [rw] total_count
    #   The total number of completed requests.
    #   @return [Integer]
    #
    # @!attribute [rw] total_response_time
    #   The aggregate response time of completed requests.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ServiceStatistics AWS API Documentation
    #
    class ServiceStatistics < Struct.new(
      :ok_count,
      :error_statistics,
      :fault_statistics,
      :total_count,
      :total_response_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TelemetryRecord
    #   data as a hash:
    #
    #       {
    #         timestamp: Time.now,
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code_4_xx_count: 1,
    #           http_code_5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1,
    #         },
    #       }
    #
    # @!attribute [rw] timestamp
    #   @return [Time]
    #
    # @!attribute [rw] segments_received_count
    #   @return [Integer]
    #
    # @!attribute [rw] segments_sent_count
    #   @return [Integer]
    #
    # @!attribute [rw] segments_spillover_count
    #   @return [Integer]
    #
    # @!attribute [rw] segments_rejected_count
    #   @return [Integer]
    #
    # @!attribute [rw] backend_connection_errors
    #   @return [Types::BackendConnectionErrors]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TelemetryRecord AWS API Documentation
    #
    class TelemetryRecord < Struct.new(
      :timestamp,
      :segments_received_count,
      :segments_sent_count,
      :segments_spillover_count,
      :segments_rejected_count,
      :backend_connection_errors)
      include Aws::Structure
    end

    # A collection of segment documents with matching trace IDs.
    #
    # @!attribute [rw] id
    #   The unique identifier for the request that generated the trace's
    #   segments and subsegments.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time in seconds between the start time of the root
    #   segment and the end time of the last segment that completed.
    #   @return [Float]
    #
    # @!attribute [rw] segments
    #   Segment documents for the segments and subsegments that comprise the
    #   trace.
    #   @return [Array<Types::Segment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/Trace AWS API Documentation
    #
    class Trace < Struct.new(
      :id,
      :duration,
      :segments)
      include Aws::Structure
    end

    # Metadata generated from the segment documents in a trace.
    #
    # @!attribute [rw] id
    #   The unique identifier for the request that generated the trace's
    #   segments and subsegments.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time in seconds between the start time of the root
    #   segment and the end time of the last segment that completed.
    #   @return [Float]
    #
    # @!attribute [rw] response_time
    #   The length of time in seconds between the start and end times of the
    #   root segment. If the service performs work asynchronously, the
    #   response time measures the time before the response is sent to the
    #   user, while the duration measures the amount of time before the last
    #   traced activity completes.
    #   @return [Float]
    #
    # @!attribute [rw] has_fault
    #   One or more of the segment documents has a 500 series error.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_error
    #   One or more of the segment documents has a 400 series error.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_throttle
    #   One or more of the segment documents has a 429 throttling error.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_partial
    #   One or more of the segment documents is in progress.
    #   @return [Boolean]
    #
    # @!attribute [rw] http
    #   Information about the HTTP request served by the trace.
    #   @return [Types::Http]
    #
    # @!attribute [rw] annotations
    #   Annotations from the trace's segment documents.
    #   @return [Hash<String,Array<Types::ValueWithServiceIds>>]
    #
    # @!attribute [rw] users
    #   Users from the trace's segment documents.
    #   @return [Array<Types::TraceUser>]
    #
    # @!attribute [rw] service_ids
    #   Service IDs from the trace's segment documents.
    #   @return [Array<Types::ServiceId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TraceSummary AWS API Documentation
    #
    class TraceSummary < Struct.new(
      :id,
      :duration,
      :response_time,
      :has_fault,
      :has_error,
      :has_throttle,
      :is_partial,
      :http,
      :annotations,
      :users,
      :service_ids)
      include Aws::Structure
    end

    # Information about a user recorded in segment documents.
    #
    # @!attribute [rw] user_name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] service_ids
    #   Services that the user's request hit.
    #   @return [Array<Types::ServiceId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TraceUser AWS API Documentation
    #
    class TraceUser < Struct.new(
      :user_name,
      :service_ids)
      include Aws::Structure
    end

    # Information about a segment that failed processing.
    #
    # @!attribute [rw] id
    #   The segment's ID.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error that caused processing to fail.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UnprocessedTraceSegment AWS API Documentation
    #
    class UnprocessedTraceSegment < Struct.new(
      :id,
      :error_code,
      :message)
      include Aws::Structure
    end

    # Information about a segment annotation.
    #
    # @!attribute [rw] annotation_value
    #   Values of the annotation.
    #   @return [Types::AnnotationValue]
    #
    # @!attribute [rw] service_ids
    #   Services to which the annotation applies.
    #   @return [Array<Types::ServiceId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ValueWithServiceIds AWS API Documentation
    #
    class ValueWithServiceIds < Struct.new(
      :annotation_value,
      :service_ids)
      include Aws::Structure
    end

  end
end
