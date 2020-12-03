# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DevOpsGuru
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         config: { # required
    #           sns: { # required
    #             topic_arn: "__stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] config
    #   @return [Types::NotificationChannelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AddNotificationChannelRequest AWS API Documentation
    #
    class AddNotificationChannelRequest < Struct.new(
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AddNotificationChannelResponse AWS API Documentation
    #
    class AddNotificationChannelResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_watch_metrics
    #   @return [Array<Types::CloudWatchMetricsDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AnomalySourceDetails AWS API Documentation
    #
    class AnomalySourceDetails < Struct.new(
      :cloud_watch_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/AnomalyTimeRange AWS API Documentation
    #
    class AnomalyTimeRange < Struct.new(
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CloudFormationCollection
    #   data as a hash:
    #
    #       {
    #         stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #       }
    #
    # @!attribute [rw] stack_names
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationCollection AWS API Documentation
    #
    class CloudFormationCollection < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_names
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationCollectionFilter AWS API Documentation
    #
    class CloudFormationCollectionFilter < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight
    #   @return [Types::InsightHealth]
    #
    # @!attribute [rw] stack_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudFormationHealth AWS API Documentation
    #
    class CloudFormationHealth < Struct.new(
      :insight,
      :stack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dimensions
    #   @return [Array<Types::CloudWatchMetricsDimension>]
    #
    # @!attribute [rw] metric_name
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   @return [String]
    #
    # @!attribute [rw] period
    #   @return [Integer]
    #
    # @!attribute [rw] stat
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudWatchMetricsDetail AWS API Documentation
    #
    class CloudWatchMetricsDetail < Struct.new(
      :dimensions,
      :metric_name,
      :namespace,
      :period,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/CloudWatchMetricsDimension AWS API Documentation
    #
    class CloudWatchMetricsDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountHealthRequest AWS API Documentation
    #
    class DescribeAccountHealthRequest < Aws::EmptyStructure; end

    # @!attribute [rw] metrics_analyzed
    #   @return [Integer]
    #
    # @!attribute [rw] open_proactive_insights
    #   @return [Integer]
    #
    # @!attribute [rw] open_reactive_insights
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountHealthResponse AWS API Documentation
    #
    class DescribeAccountHealthResponse < Struct.new(
      :metrics_analyzed,
      :open_proactive_insights,
      :open_reactive_insights)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAccountOverviewRequest
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now, # required
    #         to_time: Time.now,
    #       }
    #
    # @!attribute [rw] from_time
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountOverviewRequest AWS API Documentation
    #
    class DescribeAccountOverviewRequest < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mean_time_to_recover_in_milliseconds
    #   @return [Integer]
    #
    # @!attribute [rw] proactive_insights
    #   @return [Integer]
    #
    # @!attribute [rw] reactive_insights
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAccountOverviewResponse AWS API Documentation
    #
    class DescribeAccountOverviewResponse < Struct.new(
      :mean_time_to_recover_in_milliseconds,
      :proactive_insights,
      :reactive_insights)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAnomalyRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAnomalyRequest AWS API Documentation
    #
    class DescribeAnomalyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_anomaly
    #   @return [Types::ProactiveAnomaly]
    #
    # @!attribute [rw] reactive_anomaly
    #   @return [Types::ReactiveAnomaly]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeAnomalyResponse AWS API Documentation
    #
    class DescribeAnomalyResponse < Struct.new(
      :proactive_anomaly,
      :reactive_anomaly)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInsightRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeInsightRequest AWS API Documentation
    #
    class DescribeInsightRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proactive_insight
    #   @return [Types::ProactiveInsight]
    #
    # @!attribute [rw] reactive_insight
    #   @return [Types::ReactiveInsight]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeInsightResponse AWS API Documentation
    #
    class DescribeInsightResponse < Struct.new(
      :proactive_insight,
      :reactive_insight)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourceCollectionHealthRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         resource_collection_type: "__string", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_collection_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeResourceCollectionHealthRequest AWS API Documentation
    #
    class DescribeResourceCollectionHealthRequest < Struct.new(
      :next_token,
      :resource_collection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_formation
    #   @return [Array<Types::CloudFormationHealth>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeResourceCollectionHealthResponse AWS API Documentation
    #
    class DescribeResourceCollectionHealthResponse < Struct.new(
      :cloud_formation,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeServiceIntegrationRequest AWS API Documentation
    #
    class DescribeServiceIntegrationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] service_integration
    #   @return [Types::ServiceIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/DescribeServiceIntegrationResponse AWS API Documentation
    #
    class DescribeServiceIntegrationResponse < Struct.new(
      :service_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EndTimeRange
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now,
    #         to_time: Time.now,
    #       }
    #
    # @!attribute [rw] from_time
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/EndTimeRange AWS API Documentation
    #
    class EndTimeRange < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   @return [String]
    #
    # @!attribute [rw] event_class
    #   @return [String]
    #
    # @!attribute [rw] event_source
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::EventResource>]
    #
    # @!attribute [rw] time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :data_source,
      :event_class,
      :event_source,
      :id,
      :name,
      :resource_collection,
      :resources,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/EventResource AWS API Documentation
    #
    class EventResource < Struct.new(
      :arn,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EventTimeRange
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now, # required
    #         to_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] from_time
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/EventTimeRange AWS API Documentation
    #
    class EventTimeRange < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         resource_collection_type: "__string", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_collection_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetResourceCollectionRequest AWS API Documentation
    #
    class GetResourceCollectionRequest < Struct.new(
      :next_token,
      :resource_collection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/GetResourceCollectionResponse AWS API Documentation
    #
    class GetResourceCollectionResponse < Struct.new(
      :next_token,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InsightFeedback
    #   data as a hash:
    #
    #       {
    #         feedback: "VALID_COLLECTION", # accepts VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT
    #         id: "__stringMin1Max100PatternW",
    #       }
    #
    # @!attribute [rw] feedback
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InsightFeedback AWS API Documentation
    #
    class InsightFeedback < Struct.new(
      :feedback,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mean_time_to_recover_in_milliseconds
    #   @return [Integer]
    #
    # @!attribute [rw] open_proactive_insights
    #   @return [Integer]
    #
    # @!attribute [rw] open_reactive_insights
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InsightHealth AWS API Documentation
    #
    class InsightHealth < Struct.new(
      :mean_time_to_recover_in_milliseconds,
      :open_proactive_insights,
      :open_reactive_insights)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InsightTimeRange AWS API Documentation
    #
    class InsightTimeRange < Struct.new(
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAnomaliesForInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #         start_time_range: {
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] insight_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] start_time_range
    #   @return [Types::StartTimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomaliesForInsightRequest AWS API Documentation
    #
    class ListAnomaliesForInsightRequest < Struct.new(
      :insight_id,
      :max_results,
      :next_token,
      :start_time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] proactive_anomalies
    #   @return [Array<Types::ProactiveAnomalySummary>]
    #
    # @!attribute [rw] reactive_anomalies
    #   @return [Array<Types::ReactiveAnomalySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListAnomaliesForInsightResponse AWS API Documentation
    #
    class ListAnomaliesForInsightResponse < Struct.new(
      :next_token,
      :proactive_anomalies,
      :reactive_anomalies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventsFilters
    #   data as a hash:
    #
    #       {
    #         data_source: "AWS_CLOUD_TRAIL", # accepts AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY
    #         event_class: "INFRASTRUCTURE", # accepts INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE
    #         event_source: "__stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents",
    #         event_time_range: {
    #           from_time: Time.now, # required
    #           to_time: Time.now, # required
    #         },
    #         insight_id: "__stringMin1Max100PatternW",
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] data_source
    #   @return [String]
    #
    # @!attribute [rw] event_class
    #   @return [String]
    #
    # @!attribute [rw] event_source
    #   @return [String]
    #
    # @!attribute [rw] event_time_range
    #   @return [Types::EventTimeRange]
    #
    # @!attribute [rw] insight_id
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEventsFilters AWS API Documentation
    #
    class ListEventsFilters < Struct.new(
      :data_source,
      :event_class,
      :event_source,
      :event_time_range,
      :insight_id,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventsRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           data_source: "AWS_CLOUD_TRAIL", # accepts AWS_CLOUD_TRAIL, AWS_CODE_DEPLOY
    #           event_class: "INFRASTRUCTURE", # accepts INFRASTRUCTURE, DEPLOYMENT, SECURITY_CHANGE, CONFIG_CHANGE, SCHEMA_CHANGE
    #           event_source: "__stringMin10Max50PatternAZAZ09AmazonawsComAwsEvents",
    #           event_time_range: {
    #             from_time: Time.now, # required
    #             to_time: Time.now, # required
    #           },
    #           insight_id: "__stringMin1Max100PatternW",
    #           resource_collection: {
    #             cloud_formation: {
    #               stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #             },
    #           },
    #         },
    #         max_results: 1,
    #         next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #       }
    #
    # @!attribute [rw] filters
    #   @return [Types::ListEventsFilters]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEventsRequest AWS API Documentation
    #
    class ListEventsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListEventsResponse AWS API Documentation
    #
    class ListEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInsightsAnyStatusFilter
    #   data as a hash:
    #
    #       {
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       }
    #
    # @!attribute [rw] start_time_range
    #   @return [Types::StartTimeRange]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsAnyStatusFilter AWS API Documentation
    #
    class ListInsightsAnyStatusFilter < Struct.new(
      :start_time_range,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInsightsClosedStatusFilter
    #   data as a hash:
    #
    #       {
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       }
    #
    # @!attribute [rw] end_time_range
    #   @return [Types::EndTimeRange]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsClosedStatusFilter AWS API Documentation
    #
    class ListInsightsClosedStatusFilter < Struct.new(
      :end_time_range,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInsightsOngoingStatusFilter
    #   data as a hash:
    #
    #       {
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       }
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsOngoingStatusFilter AWS API Documentation
    #
    class ListInsightsOngoingStatusFilter < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInsightsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #         status_filter: { # required
    #           any: {
    #             start_time_range: { # required
    #               from_time: Time.now,
    #               to_time: Time.now,
    #             },
    #             type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #           },
    #           closed: {
    #             end_time_range: { # required
    #               from_time: Time.now,
    #               to_time: Time.now,
    #             },
    #             type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #           },
    #           ongoing: {
    #             type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   @return [Types::ListInsightsStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsRequest AWS API Documentation
    #
    class ListInsightsRequest < Struct.new(
      :max_results,
      :next_token,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] proactive_insights
    #   @return [Array<Types::ProactiveInsightSummary>]
    #
    # @!attribute [rw] reactive_insights
    #   @return [Array<Types::ReactiveInsightSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsResponse AWS API Documentation
    #
    class ListInsightsResponse < Struct.new(
      :next_token,
      :proactive_insights,
      :reactive_insights)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInsightsStatusFilter
    #   data as a hash:
    #
    #       {
    #         any: {
    #           start_time_range: { # required
    #             from_time: Time.now,
    #             to_time: Time.now,
    #           },
    #           type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         },
    #         closed: {
    #           end_time_range: { # required
    #             from_time: Time.now,
    #             to_time: Time.now,
    #           },
    #           type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         },
    #         ongoing: {
    #           type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #         },
    #       }
    #
    # @!attribute [rw] any
    #   @return [Types::ListInsightsAnyStatusFilter]
    #
    # @!attribute [rw] closed
    #   @return [Types::ListInsightsClosedStatusFilter]
    #
    # @!attribute [rw] ongoing
    #   @return [Types::ListInsightsOngoingStatusFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListInsightsStatusFilter AWS API Documentation
    #
    class ListInsightsStatusFilter < Struct.new(
      :any,
      :closed,
      :ongoing)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotificationChannelsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListNotificationChannelsRequest AWS API Documentation
    #
    class ListNotificationChannelsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   @return [Array<Types::NotificationChannel>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListNotificationChannelsResponse AWS API Documentation
    #
    class ListNotificationChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         insight_id: "__stringMin1Max100PatternW", # required
    #         next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #       }
    #
    # @!attribute [rw] insight_id
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :insight_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] recommendations
    #   @return [Array<Types::Recommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :next_token,
      :recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config
    #   @return [Types::NotificationChannelConfig]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/NotificationChannel AWS API Documentation
    #
    class NotificationChannel < Struct.new(
      :config,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass NotificationChannelConfig
    #   data as a hash:
    #
    #       {
    #         sns: { # required
    #           topic_arn: "__stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12",
    #         },
    #       }
    #
    # @!attribute [rw] sns
    #   @return [Types::SnsChannelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/NotificationChannelConfig AWS API Documentation
    #
    class NotificationChannelConfig < Struct.new(
      :sns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_in_status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/OpsCenterIntegration AWS API Documentation
    #
    class OpsCenterIntegration < Struct.new(
      :opt_in_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass OpsCenterIntegrationConfig
    #   data as a hash:
    #
    #       {
    #         opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] opt_in_status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/OpsCenterIntegrationConfig AWS API Documentation
    #
    class OpsCenterIntegrationConfig < Struct.new(
      :opt_in_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PredictionTimeRange AWS API Documentation
    #
    class PredictionTimeRange < Struct.new(
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_time_range
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] associated_insight_id
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   @return [Float]
    #
    # @!attribute [rw] prediction_time_range
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveAnomaly AWS API Documentation
    #
    class ProactiveAnomaly < Struct.new(
      :anomaly_time_range,
      :associated_insight_id,
      :id,
      :limit,
      :prediction_time_range,
      :resource_collection,
      :severity,
      :source_details,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_time_range
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] associated_insight_id
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   @return [Float]
    #
    # @!attribute [rw] prediction_time_range
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveAnomalySummary AWS API Documentation
    #
    class ProactiveAnomalySummary < Struct.new(
      :anomaly_time_range,
      :associated_insight_id,
      :id,
      :limit,
      :prediction_time_range,
      :resource_collection,
      :severity,
      :source_details,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] prediction_time_range
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] ssm_ops_item_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveInsight AWS API Documentation
    #
    class ProactiveInsight < Struct.new(
      :id,
      :insight_time_range,
      :name,
      :prediction_time_range,
      :resource_collection,
      :severity,
      :ssm_ops_item_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] prediction_time_range
    #   @return [Types::PredictionTimeRange]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ProactiveInsightSummary AWS API Documentation
    #
    class ProactiveInsightSummary < Struct.new(
      :id,
      :insight_time_range,
      :name,
      :prediction_time_range,
      :resource_collection,
      :severity,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         insight_feedback: {
    #           feedback: "VALID_COLLECTION", # accepts VALID_COLLECTION, RECOMMENDATION_USEFUL, ALERT_TOO_SENSITIVE, DATA_NOISY_ANOMALY, DATA_INCORRECT
    #           id: "__stringMin1Max100PatternW",
    #         },
    #       }
    #
    # @!attribute [rw] insight_feedback
    #   @return [Types::InsightFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :insight_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/PutFeedbackResponse AWS API Documentation
    #
    class PutFeedbackResponse < Aws::EmptyStructure; end

    # @!attribute [rw] anomaly_time_range
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] associated_insight_id
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveAnomaly AWS API Documentation
    #
    class ReactiveAnomaly < Struct.new(
      :anomaly_time_range,
      :associated_insight_id,
      :id,
      :resource_collection,
      :severity,
      :source_details,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_time_range
    #   @return [Types::AnomalyTimeRange]
    #
    # @!attribute [rw] associated_insight_id
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   @return [Types::AnomalySourceDetails]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveAnomalySummary AWS API Documentation
    #
    class ReactiveAnomalySummary < Struct.new(
      :anomaly_time_range,
      :associated_insight_id,
      :id,
      :resource_collection,
      :severity,
      :source_details,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] ssm_ops_item_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveInsight AWS API Documentation
    #
    class ReactiveInsight < Struct.new(
      :id,
      :insight_time_range,
      :name,
      :resource_collection,
      :severity,
      :ssm_ops_item_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] insight_time_range
    #   @return [Types::InsightTimeRange]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severity
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ReactiveInsightSummary AWS API Documentation
    #
    class ReactiveInsightSummary < Struct.new(
      :id,
      :insight_time_range,
      :name,
      :resource_collection,
      :severity,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] link
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @!attribute [rw] related_anomalies
    #   @return [Array<Types::RecommendationRelatedAnomaly>]
    #
    # @!attribute [rw] related_events
    #   @return [Array<Types::RecommendationRelatedEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :description,
      :link,
      :name,
      :reason,
      :related_anomalies,
      :related_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   @return [Array<Types::RecommendationRelatedAnomalyResource>]
    #
    # @!attribute [rw] source_details
    #   @return [Array<Types::RecommendationRelatedAnomalySourceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedAnomaly AWS API Documentation
    #
    class RecommendationRelatedAnomaly < Struct.new(
      :resources,
      :source_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedAnomalyResource AWS API Documentation
    #
    class RecommendationRelatedAnomalyResource < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_watch_metrics
    #   @return [Array<Types::RecommendationRelatedCloudWatchMetricsSourceDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedAnomalySourceDetail AWS API Documentation
    #
    class RecommendationRelatedAnomalySourceDetail < Struct.new(
      :cloud_watch_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedCloudWatchMetricsSourceDetail AWS API Documentation
    #
    class RecommendationRelatedCloudWatchMetricsSourceDetail < Struct.new(
      :metric_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   @return [Array<Types::RecommendationRelatedEventResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedEvent AWS API Documentation
    #
    class RecommendationRelatedEvent < Struct.new(
      :name,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RecommendationRelatedEventResource AWS API Documentation
    #
    class RecommendationRelatedEventResource < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         id: "__string", # required
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RemoveNotificationChannelRequest AWS API Documentation
    #
    class RemoveNotificationChannelRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/RemoveNotificationChannelResponse AWS API Documentation
    #
    class RemoveNotificationChannelResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ResourceCollection
    #   data as a hash:
    #
    #       {
    #         cloud_formation: {
    #           stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #         },
    #       }
    #
    # @!attribute [rw] cloud_formation
    #   @return [Types::CloudFormationCollection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ResourceCollection AWS API Documentation
    #
    class ResourceCollection < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_formation
    #   @return [Types::CloudFormationCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ResourceCollectionFilter AWS API Documentation
    #
    class ResourceCollectionFilter < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchInsightsFilters
    #   data as a hash:
    #
    #       {
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #           },
    #         },
    #         severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #         statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #       }
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::ResourceCollection]
    #
    # @!attribute [rw] severities
    #   @return [Array<String>]
    #
    # @!attribute [rw] statuses
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsightsFilters AWS API Documentation
    #
    class SearchInsightsFilters < Struct.new(
      :resource_collection,
      :severities,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchInsightsRequest
    #   data as a hash:
    #
    #       {
    #         filters: {
    #           resource_collection: {
    #             cloud_formation: {
    #               stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #             },
    #           },
    #           severities: ["LOW"], # accepts LOW, MEDIUM, HIGH
    #           statuses: ["ONGOING"], # accepts ONGOING, CLOSED
    #         },
    #         max_results: 1,
    #         next_token: "__stringMin36Max36PatternAF098AF094AF094AF094AF0912",
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now,
    #         },
    #         type: "REACTIVE", # required, accepts REACTIVE, PROACTIVE
    #       }
    #
    # @!attribute [rw] filters
    #   @return [Types::SearchInsightsFilters]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] start_time_range
    #   @return [Types::StartTimeRange]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsightsRequest AWS API Documentation
    #
    class SearchInsightsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :start_time_range,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] proactive_insights
    #   @return [Array<Types::ProactiveInsightSummary>]
    #
    # @!attribute [rw] reactive_insights
    #   @return [Array<Types::ReactiveInsightSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SearchInsightsResponse AWS API Documentation
    #
    class SearchInsightsResponse < Struct.new(
      :next_token,
      :proactive_insights,
      :reactive_insights)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_center
    #   @return [Types::OpsCenterIntegration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceIntegrationConfig AWS API Documentation
    #
    class ServiceIntegrationConfig < Struct.new(
      :ops_center)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SnsChannelConfig
    #   data as a hash:
    #
    #       {
    #         topic_arn: "__stringMin36Max1024PatternArnAwsAZ09SnsAZ09D12",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/SnsChannelConfig AWS API Documentation
    #
    class SnsChannelConfig < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTimeRange
    #   data as a hash:
    #
    #       {
    #         from_time: Time.now,
    #         to_time: Time.now,
    #       }
    #
    # @!attribute [rw] from_time
    #   @return [Time]
    #
    # @!attribute [rw] to_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/StartTimeRange AWS API Documentation
    #
    class StartTimeRange < Struct.new(
      :from_time,
      :to_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCloudFormationCollectionFilter
    #   data as a hash:
    #
    #       {
    #         stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #       }
    #
    # @!attribute [rw] stack_names
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateCloudFormationCollectionFilter AWS API Documentation
    #
    class UpdateCloudFormationCollectionFilter < Struct.new(
      :stack_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourceCollectionFilter
    #   data as a hash:
    #
    #       {
    #         cloud_formation: {
    #           stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #         },
    #       }
    #
    # @!attribute [rw] cloud_formation
    #   @return [Types::UpdateCloudFormationCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollectionFilter AWS API Documentation
    #
    class UpdateResourceCollectionFilter < Struct.new(
      :cloud_formation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         action: "ADD", # required, accepts ADD, REMOVE
    #         resource_collection: { # required
    #           cloud_formation: {
    #             stack_names: ["__stringMin1Max128PatternAZAZAZAZ09"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   @return [String]
    #
    # @!attribute [rw] resource_collection
    #   @return [Types::UpdateResourceCollectionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollectionRequest AWS API Documentation
    #
    class UpdateResourceCollectionRequest < Struct.new(
      :action,
      :resource_collection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateResourceCollectionResponse AWS API Documentation
    #
    class UpdateResourceCollectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateServiceIntegrationConfig
    #   data as a hash:
    #
    #       {
    #         ops_center: {
    #           opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] ops_center
    #   @return [Types::OpsCenterIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegrationConfig AWS API Documentation
    #
    class UpdateServiceIntegrationConfig < Struct.new(
      :ops_center)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         service_integration: { # required
    #           ops_center: {
    #             opt_in_status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] service_integration
    #   @return [Types::UpdateServiceIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegrationRequest AWS API Documentation
    #
    class UpdateServiceIntegrationRequest < Struct.new(
      :service_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/UpdateServiceIntegrationResponse AWS API Documentation
    #
    class UpdateServiceIntegrationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] fields
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :fields,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-guru-2020-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
