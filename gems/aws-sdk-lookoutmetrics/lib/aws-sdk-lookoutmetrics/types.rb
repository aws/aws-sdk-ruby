# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LookoutMetrics
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration that specifies the action to perform when anomalies
    # are detected.
    #
    # @!attribute [rw] sns_configuration
    #   A configuration for an Amazon SNS channel.
    #   @return [Types::SNSConfiguration]
    #
    # @!attribute [rw] lambda_configuration
    #   A configuration for an AWS Lambda channel.
    #   @return [Types::LambdaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/Action AWS API Documentation
    #
    class Action < Struct.new(
      :sns_configuration,
      :lambda_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ActivateAnomalyDetectorRequest AWS API Documentation
    #
    class ActivateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ActivateAnomalyDetectorResponse AWS API Documentation
    #
    class ActivateAnomalyDetectorResponse < Aws::EmptyStructure; end

    # A configuration for Amazon SNS-integrated notifications.
    #
    # @!attribute [rw] action
    #   Action that will be triggered when there is an alert.
    #   @return [Types::Action]
    #
    # @!attribute [rw] alert_description
    #   A description of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_arn
    #   The ARN of the alert.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to which the alert is attached.
    #   @return [String]
    #
    # @!attribute [rw] alert_name
    #   The name of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_sensitivity_threshold
    #   The minimum severity for an anomaly to trigger the alert.
    #   @return [Integer]
    #
    # @!attribute [rw] alert_type
    #   The type of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_status
    #   The status of the alert.
    #   @return [String]
    #
    # @!attribute [rw] last_modification_time
    #   The time at which the alert was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time at which the alert was created.
    #   @return [Time]
    #
    # @!attribute [rw] alert_filters
    #   The configuration of the alert filters, containing MetricList and
    #   DimensionFilter.
    #   @return [Types::AlertFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/Alert AWS API Documentation
    #
    class Alert < Struct.new(
      :action,
      :alert_description,
      :alert_arn,
      :anomaly_detector_arn,
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_type,
      :alert_status,
      :last_modification_time,
      :creation_time,
      :alert_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the alert filters.
    #
    # @!attribute [rw] metric_list
    #   The list of measures that you want to get alerts for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dimension_filter_list
    #   The list of DimensionFilter objects that are used for
    #   dimension-based filtering.
    #   @return [Array<Types::DimensionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AlertFilters AWS API Documentation
    #
    class AlertFilters < Struct.new(
      :metric_list,
      :dimension_filter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of an alert's configuration.
    #
    # @!attribute [rw] alert_arn
    #   The ARN of the alert.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to which the alert is attached.
    #   @return [String]
    #
    # @!attribute [rw] alert_name
    #   The name of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_sensitivity_threshold
    #   The minimum severity for an anomaly to trigger the alert.
    #   @return [Integer]
    #
    # @!attribute [rw] alert_type
    #   The type of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_status
    #   The status of the alert.
    #   @return [String]
    #
    # @!attribute [rw] last_modification_time
    #   The time at which the alert was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time at which the alert was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The alert's [tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AlertSummary AWS API Documentation
    #
    class AlertSummary < Struct.new(
      :alert_arn,
      :anomaly_detector_arn,
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_type,
      :alert_status,
      :last_modification_time,
      :creation_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a detector's configuration.
    #
    # @!attribute [rw] anomaly_detector_frequency
    #   The frequency at which the detector analyzes its source data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyDetectorConfig AWS API Documentation
    #
    class AnomalyDetectorConfig < Struct.new(
      :anomaly_detector_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a detector's configuration.
    #
    # @!attribute [rw] anomaly_detector_frequency
    #   The interval at which the detector analyzes its source data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyDetectorConfigSummary AWS API Documentation
    #
    class AnomalyDetectorConfigSummary < Struct.new(
      :anomaly_detector_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated details about the data quality metrics collected for the
    # `AnomalyDetectorArn` provided in the GetDataQualityMetrics object.
    #
    # @!attribute [rw] start_timestamp
    #   The start time for the data quality metrics collection.
    #   @return [Time]
    #
    # @!attribute [rw] metric_set_data_quality_metric_list
    #   An array of `DataQualityMetricList` objects. Each object in the
    #   array contains information about a data quality metric.
    #   @return [Array<Types::MetricSetDataQualityMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyDetectorDataQualityMetric AWS API Documentation
    #
    class AnomalyDetectorDataQualityMetric < Struct.new(
      :start_timestamp,
      :metric_set_data_quality_metric_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an an anomaly detector.
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_name
    #   The name of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_description
    #   A description of the detector.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the detector was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time at which the detector was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of detector.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The detector's [tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyDetectorSummary AWS API Documentation
    #
    class AnomalyDetectorSummary < Struct.new(
      :anomaly_detector_arn,
      :anomaly_detector_name,
      :anomaly_detector_description,
      :creation_time,
      :last_modification_time,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A group of anomalous metrics
    #
    # @!attribute [rw] start_time
    #   The start time for the group.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time for the group.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_score
    #   The severity score of the group.
    #   @return [Float]
    #
    # @!attribute [rw] primary_metric_name
    #   The name of the primary affected measure for the group.
    #   @return [String]
    #
    # @!attribute [rw] metric_level_impact_list
    #   A list of measures affected by the anomaly.
    #   @return [Array<Types::MetricLevelImpact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyGroup AWS API Documentation
    #
    class AnomalyGroup < Struct.new(
      :start_time,
      :end_time,
      :anomaly_group_id,
      :anomaly_group_score,
      :primary_metric_name,
      :metric_level_impact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated statistics for a group of anomalous metrics.
    #
    # @!attribute [rw] evaluation_start_date
    #   The start of the time range that was searched.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The number of groups found.
    #   @return [Integer]
    #
    # @!attribute [rw] itemized_metric_stats_list
    #   Statistics for individual metrics within the group.
    #   @return [Array<Types::ItemizedMetricStats>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyGroupStatistics AWS API Documentation
    #
    class AnomalyGroupStatistics < Struct.new(
      :evaluation_start_date,
      :total_count,
      :itemized_metric_stats_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a group of anomalous metrics.
    #
    # @!attribute [rw] start_time
    #   The start time for the group.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time for the group.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_score
    #   The severity score of the group.
    #   @return [Float]
    #
    # @!attribute [rw] primary_metric_name
    #   The name of the primary affected measure for the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyGroupSummary AWS API Documentation
    #
    class AnomalyGroupSummary < Struct.new(
      :start_time,
      :end_time,
      :anomaly_group_id,
      :anomaly_group_score,
      :primary_metric_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An anomalous metric in an anomaly group.
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] time_series_id
    #   The ID of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyGroupTimeSeries AWS API Documentation
    #
    class AnomalyGroupTimeSeries < Struct.new(
      :anomaly_group_id,
      :time_series_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Feedback for an anomalous metric.
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] time_series_id
    #   The ID of the metric.
    #   @return [String]
    #
    # @!attribute [rw] is_anomaly
    #   Feedback on whether the metric is a legitimate anomaly.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AnomalyGroupTimeSeriesFeedback AWS API Documentation
    #
    class AnomalyGroupTimeSeriesFeedback < Struct.new(
      :anomaly_group_id,
      :time_series_id,
      :is_anomaly)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon AppFlow flow datasource.
    #
    # @!attribute [rw] role_arn
    #   An IAM role that gives Amazon Lookout for Metrics permission to
    #   access the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   name of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AppFlowConfig AWS API Documentation
    #
    class AppFlowConfig < Struct.new(
      :role_arn,
      :flow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon Athena datasource.
    #
    # @!attribute [rw] role_arn
    #   An IAM role that gives Amazon Lookout for Metrics permission to
    #   access the data.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database's name.
    #   @return [String]
    #
    # @!attribute [rw] data_catalog
    #   The database's data catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The database's table name.
    #   @return [String]
    #
    # @!attribute [rw] work_group_name
    #   The database's work group name.
    #   @return [String]
    #
    # @!attribute [rw] s3_results_path
    #   The database's results path.
    #   @return [String]
    #
    # @!attribute [rw] back_test_configuration
    #   Settings for backtest mode.
    #   @return [Types::BackTestConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AthenaSourceConfig AWS API Documentation
    #
    class AthenaSourceConfig < Struct.new(
      :role_arn,
      :database_name,
      :data_catalog,
      :table_name,
      :work_group_name,
      :s3_results_path,
      :back_test_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute value.
    #
    # @!attribute [rw] s
    #   A string.
    #   @return [String]
    #
    # @!attribute [rw] n
    #   A number.
    #   @return [String]
    #
    # @!attribute [rw] b
    #   A binary value.
    #   @return [String]
    #
    # @!attribute [rw] ss
    #   A list of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ns
    #   A list of numbers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bs
    #   A list of binary values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :s,
      :n,
      :b,
      :ss,
      :ns,
      :bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # An auto detection metric source.
    #
    # @!attribute [rw] s3_source_config
    #   The source's source config.
    #   @return [Types::AutoDetectionS3SourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AutoDetectionMetricSource AWS API Documentation
    #
    class AutoDetectionMetricSource < Struct.new(
      :s3_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An auto detection source config.
    #
    # @!attribute [rw] templated_path_list
    #   The config's templated path list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] historical_data_path_list
    #   The config's historical data path list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/AutoDetectionS3SourceConfig AWS API Documentation
    #
    class AutoDetectionS3SourceConfig < Struct.new(
      :templated_path_list,
      :historical_data_path_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/BackTestAnomalyDetectorRequest AWS API Documentation
    #
    class BackTestAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/BackTestAnomalyDetectorResponse AWS API Documentation
    #
    class BackTestAnomalyDetectorResponse < Aws::EmptyStructure; end

    # Settings for backtest mode.
    #
    # @!attribute [rw] run_back_test_mode
    #   Run a backtest instead of monitoring new data.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/BackTestConfiguration AWS API Documentation
    #
    class BackTestConfiguration < Struct.new(
      :run_back_test_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon CloudWatch datasource.
    #
    # @!attribute [rw] role_arn
    #   An IAM role that gives Amazon Lookout for Metrics permission to
    #   access data in Amazon CloudWatch.
    #   @return [String]
    #
    # @!attribute [rw] back_test_configuration
    #   Settings for backtest mode.
    #   @return [Types::BackTestConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CloudWatchConfig AWS API Documentation
    #
    class CloudWatchConfig < Struct.new(
      :role_arn,
      :back_test_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict processing the request. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about dimensions that contributed to an anomaly.
    #
    # @!attribute [rw] dimension_contribution_list
    #   A list of contributing dimensions.
    #   @return [Array<Types::DimensionContribution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ContributionMatrix AWS API Documentation
    #
    class ContributionMatrix < Struct.new(
      :dimension_contribution_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert_name
    #   The name of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_sensitivity_threshold
    #   An integer from 0 to 100 specifying the alert sensitivity threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] alert_description
    #   A description of the alert.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to which the alert is attached.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Action that will be triggered when there is an alert.
    #   @return [Types::Action]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the alert.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] alert_filters
    #   The configuration of the alert filters, containing MetricList and
    #   DimensionFilterList.
    #   @return [Types::AlertFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateAlertRequest AWS API Documentation
    #
    class CreateAlertRequest < Struct.new(
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_description,
      :anomaly_detector_arn,
      :action,
      :tags,
      :alert_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert_arn
    #   The ARN of the alert.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateAlertResponse AWS API Documentation
    #
    class CreateAlertResponse < Struct.new(
      :alert_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_name
    #   The name of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_description
    #   A description of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_config
    #   Contains information about the configuration of the anomaly
    #   detector.
    #   @return [Types::AnomalyDetectorConfig]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key to use to encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the anomaly detector.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateAnomalyDetectorRequest AWS API Documentation
    #
    class CreateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_name,
      :anomaly_detector_description,
      :anomaly_detector_config,
      :kms_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateAnomalyDetectorResponse AWS API Documentation
    #
    class CreateAnomalyDetectorResponse < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector that will use the dataset.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_description
    #   A description of the dataset you are creating.
    #   @return [String]
    #
    # @!attribute [rw] metric_list
    #   A list of metrics that the dataset will contain.
    #   @return [Array<Types::Metric>]
    #
    # @!attribute [rw] offset
    #   After an interval ends, the amount of seconds that the detector
    #   waits before importing data. Offset is only supported for S3,
    #   Redshift, Athena and datasources.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp_column
    #   Contains information about the column used for tracking time in your
    #   source data.
    #   @return [Types::TimestampColumn]
    #
    # @!attribute [rw] dimension_list
    #   A list of the fields you want to treat as dimensions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_set_frequency
    #   The frequency with which the source data will be analyzed for
    #   anomalies.
    #   @return [String]
    #
    # @!attribute [rw] metric_source
    #   Contains information about how the source data should be
    #   interpreted.
    #   @return [Types::MetricSource]
    #
    # @!attribute [rw] timezone
    #   The time zone in which your source data was recorded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of [tags][1] to apply to the dataset.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dimension_filter_list
    #   A list of filters that specify which data is kept for anomaly
    #   detection.
    #   @return [Array<Types::MetricSetDimensionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateMetricSetRequest AWS API Documentation
    #
    class CreateMetricSetRequest < Struct.new(
      :anomaly_detector_arn,
      :metric_set_name,
      :metric_set_description,
      :metric_list,
      :offset,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :metric_source,
      :timezone,
      :tags,
      :dimension_filter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_set_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CreateMetricSetResponse AWS API Documentation
    #
    class CreateMetricSetResponse < Struct.new(
      :metric_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about how a source CSV data file should be
    # analyzed.
    #
    # @!attribute [rw] file_compression
    #   The level of compression of the source CSV file.
    #   @return [String]
    #
    # @!attribute [rw] charset
    #   The character set in which the source CSV file is written.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Whether or not the source CSV file contains a header.
    #   @return [Boolean]
    #
    # @!attribute [rw] delimiter
    #   The character used to delimit the source CSV file.
    #   @return [String]
    #
    # @!attribute [rw] header_list
    #   A list of the source CSV file's headers, if any.
    #   @return [Array<String>]
    #
    # @!attribute [rw] quote_symbol
    #   The character used as a quote character.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/CsvFormatDescriptor AWS API Documentation
    #
    class CsvFormatDescriptor < Struct.new(
      :file_compression,
      :charset,
      :contains_header,
      :delimiter,
      :header_list,
      :quote_symbol)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array that describes a data quality metric. Each
    # `DataQualityMetric` object contains the data quality metric name, its
    # value, a description of the metric, and the affected column.
    #
    # @!attribute [rw] metric_type
    #   The name of the data quality metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_description
    #   A description of the data quality metric.
    #   @return [String]
    #
    # @!attribute [rw] related_column_name
    #   The column that is being monitored.
    #   @return [String]
    #
    # @!attribute [rw] metric_value
    #   The value of the data quality metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DataQualityMetric AWS API Documentation
    #
    class DataQualityMetric < Struct.new(
      :metric_type,
      :metric_description,
      :related_column_name,
      :metric_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeactivateAnomalyDetectorRequest AWS API Documentation
    #
    class DeactivateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeactivateAnomalyDetectorResponse AWS API Documentation
    #
    class DeactivateAnomalyDetectorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] alert_arn
    #   The ARN of the alert to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeleteAlertRequest AWS API Documentation
    #
    class DeleteAlertRequest < Struct.new(
      :alert_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeleteAlertResponse AWS API Documentation
    #
    class DeleteAlertResponse < Aws::EmptyStructure; end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeleteAnomalyDetectorRequest AWS API Documentation
    #
    class DeleteAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DeleteAnomalyDetectorResponse AWS API Documentation
    #
    class DeleteAnomalyDetectorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] alert_arn
    #   The ARN of the alert to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAlertRequest AWS API Documentation
    #
    class DescribeAlertRequest < Struct.new(
      :alert_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert
    #   Contains information about an alert.
    #   @return [Types::Alert]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAlertResponse AWS API Documentation
    #
    class DescribeAlertResponse < Struct.new(
      :alert)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the anomaly detection job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAnomalyDetectionExecutionsRequest AWS API Documentation
    #
    class DescribeAnomalyDetectionExecutionsRequest < Struct.new(
      :anomaly_detector_arn,
      :timestamp,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_list
    #   A list of detection jobs.
    #   @return [Array<Types::ExecutionStatus>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAnomalyDetectionExecutionsResponse AWS API Documentation
    #
    class DescribeAnomalyDetectionExecutionsResponse < Struct.new(
      :execution_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAnomalyDetectorRequest AWS API Documentation
    #
    class DescribeAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_name
    #   The name of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_description
    #   A description of the detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_config
    #   Contains information about the detector's configuration.
    #   @return [Types::AnomalyDetectorConfigSummary]
    #
    # @!attribute [rw] creation_time
    #   The time at which the detector was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time at which the detector was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the detector.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason that the detector failed.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key to use to encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] failure_type
    #   The process that caused the detector to fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeAnomalyDetectorResponse AWS API Documentation
    #
    class DescribeAnomalyDetectorResponse < Struct.new(
      :anomaly_detector_arn,
      :anomaly_detector_name,
      :anomaly_detector_description,
      :anomaly_detector_config,
      :creation_time,
      :last_modification_time,
      :status,
      :failure_reason,
      :kms_key_arn,
      :failure_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_set_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeMetricSetRequest AWS API Documentation
    #
    class DescribeMetricSetRequest < Struct.new(
      :metric_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_set_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector that contains the dataset.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_description
    #   The dataset's description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time at which the dataset was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] offset
    #   After an interval ends, the amount of seconds that the detector
    #   waits before importing data. Offset is only supported for S3,
    #   Redshift, Athena and datasources.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_list
    #   A list of the metrics defined by the dataset.
    #   @return [Array<Types::Metric>]
    #
    # @!attribute [rw] timestamp_column
    #   Contains information about the column used for tracking time in your
    #   source data.
    #   @return [Types::TimestampColumn]
    #
    # @!attribute [rw] dimension_list
    #   A list of the dimensions chosen for analysis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_set_frequency
    #   The interval at which the data will be analyzed for anomalies.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone in which the dataset's data was recorded.
    #   @return [String]
    #
    # @!attribute [rw] metric_source
    #   Contains information about the dataset's source data.
    #   @return [Types::MetricSource]
    #
    # @!attribute [rw] dimension_filter_list
    #   The dimensions and their values that were used to filter the
    #   dataset.
    #   @return [Array<Types::MetricSetDimensionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DescribeMetricSetResponse AWS API Documentation
    #
    class DescribeMetricSetResponse < Struct.new(
      :metric_set_arn,
      :anomaly_detector_arn,
      :metric_set_name,
      :metric_set_description,
      :creation_time,
      :last_modification_time,
      :offset,
      :metric_list,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :timezone,
      :metric_source,
      :dimension_filter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   An anomaly detector ARN.
    #   @return [String]
    #
    # @!attribute [rw] auto_detection_metric_source
    #   A data source.
    #   @return [Types::AutoDetectionMetricSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectMetricSetConfigRequest AWS API Documentation
    #
    class DetectMetricSetConfigRequest < Struct.new(
      :anomaly_detector_arn,
      :auto_detection_metric_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detected_metric_set_config
    #   The inferred dataset configuration for the datasource.
    #   @return [Types::DetectedMetricSetConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectMetricSetConfigResponse AWS API Documentation
    #
    class DetectMetricSetConfigResponse < Struct.new(
      :detected_metric_set_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of an inferred CSV format.
    #
    # @!attribute [rw] file_compression
    #   The format's file compression.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] charset
    #   The format's charset.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] contains_header
    #   Whether the format includes a header.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] delimiter
    #   The format's delimiter.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] header_list
    #   The format's header list.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] quote_symbol
    #   The format's quote symbol.
    #   @return [Types::DetectedField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedCsvFormatDescriptor AWS API Documentation
    #
    class DetectedCsvFormatDescriptor < Struct.new(
      :file_compression,
      :charset,
      :contains_header,
      :delimiter,
      :header_list,
      :quote_symbol)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inferred field.
    #
    # @!attribute [rw] value
    #   The field's value.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] confidence
    #   The field's confidence.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The field's message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedField AWS API Documentation
    #
    class DetectedField < Struct.new(
      :value,
      :confidence,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of an inferred data format.
    #
    # @!attribute [rw] csv_format_descriptor
    #   Details about a CSV format.
    #   @return [Types::DetectedCsvFormatDescriptor]
    #
    # @!attribute [rw] json_format_descriptor
    #   Details about a JSON format.
    #   @return [Types::DetectedJsonFormatDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedFileFormatDescriptor AWS API Documentation
    #
    class DetectedFileFormatDescriptor < Struct.new(
      :csv_format_descriptor,
      :json_format_descriptor)
      SENSITIVE = []
      include Aws::Structure
    end

    # A detected JSON format descriptor.
    #
    # @!attribute [rw] file_compression
    #   The format's file compression.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] charset
    #   The format's character set.
    #   @return [Types::DetectedField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedJsonFormatDescriptor AWS API Documentation
    #
    class DetectedJsonFormatDescriptor < Struct.new(
      :file_compression,
      :charset)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inferred dataset configuration.
    #
    # @!attribute [rw] offset
    #   The dataset's offset.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] metric_set_frequency
    #   The dataset's interval.
    #   @return [Types::DetectedField]
    #
    # @!attribute [rw] metric_source
    #   The dataset's data source.
    #   @return [Types::DetectedMetricSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedMetricSetConfig AWS API Documentation
    #
    class DetectedMetricSetConfig < Struct.new(
      :offset,
      :metric_set_frequency,
      :metric_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inferred data source.
    #
    # @!attribute [rw] s3_source_config
    #   The data source's source configuration.
    #   @return [Types::DetectedS3SourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedMetricSource AWS API Documentation
    #
    class DetectedMetricSource < Struct.new(
      :s3_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inferred source configuration.
    #
    # @!attribute [rw] file_format_descriptor
    #   The source's file format descriptor.
    #   @return [Types::DetectedFileFormatDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DetectedS3SourceConfig AWS API Documentation
    #
    class DetectedS3SourceConfig < Struct.new(
      :file_format_descriptor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a dimension that contributed to an anomaly.
    #
    # @!attribute [rw] dimension_name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value_contribution_list
    #   A list of dimension values that contributed to the anomaly.
    #   @return [Array<Types::DimensionValueContribution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DimensionContribution AWS API Documentation
    #
    class DimensionContribution < Struct.new(
      :dimension_name,
      :dimension_value_contribution_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension filter, containing DimensionName and DimensionValueList.
    #
    # @!attribute [rw] dimension_name
    #   The name of the dimension to filter on.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value_list
    #   The list of values for the dimension specified in DimensionName that
    #   you want to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DimensionFilter AWS API Documentation
    #
    class DimensionFilter < Struct.new(
      :dimension_name,
      :dimension_value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dimension name and value.
    #
    # @!attribute [rw] dimension_name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DimensionNameValue AWS API Documentation
    #
    class DimensionNameValue < Struct.new(
      :dimension_name,
      :dimension_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The severity of a value of a dimension that contributed to an anomaly.
    #
    # @!attribute [rw] dimension_value
    #   The value of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] contribution_score
    #   The severity score of the value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/DimensionValueContribution AWS API Documentation
    #
    class DimensionValueContribution < Struct.new(
      :dimension_value,
      :contribution_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of an anomaly detector run.
    #
    # @!attribute [rw] timestamp
    #   The run's timestamp.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The run's status.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason that the run failed, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ExecutionStatus AWS API Documentation
    #
    class ExecutionStatus < Struct.new(
      :timestamp,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a source file's formatting.
    #
    # @!attribute [rw] csv_format_descriptor
    #   Contains information about how a source CSV data file should be
    #   analyzed.
    #   @return [Types::CsvFormatDescriptor]
    #
    # @!attribute [rw] json_format_descriptor
    #   Contains information about how a source JSON data file should be
    #   analyzed.
    #   @return [Types::JsonFormatDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/FileFormatDescriptor AWS API Documentation
    #
    class FileFormatDescriptor < Struct.new(
      :csv_format_descriptor,
      :json_format_descriptor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for choosing a subset of dimension values. Each
    # filter consists of the dimension that you want to include and the
    # condition statement. The condition statement is specified in the
    # `FilterOperation` object.
    #
    # @!attribute [rw] dimension_value
    #   The value that you want to include in the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_operation
    #   The condition to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :dimension_value,
      :filter_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetAnomalyGroupRequest AWS API Documentation
    #
    class GetAnomalyGroupRequest < Struct.new(
      :anomaly_group_id,
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_group
    #   Details about the anomaly group.
    #   @return [Types::AnomalyGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetAnomalyGroupResponse AWS API Documentation
    #
    class GetAnomalyGroupResponse < Struct.new(
      :anomaly_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector that you want
    #   to investigate.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_arn
    #   The Amazon Resource Name (ARN) of a specific data quality metric
    #   set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetDataQualityMetricsRequest AWS API Documentation
    #
    class GetDataQualityMetricsRequest < Struct.new(
      :anomaly_detector_arn,
      :metric_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_data_quality_metric_list
    #   A list of the data quality metrics for the `AnomalyDetectorArn` that
    #   you requested.
    #   @return [Array<Types::AnomalyDetectorDataQualityMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetDataQualityMetricsResponse AWS API Documentation
    #
    class GetDataQualityMetricsResponse < Struct.new(
      :anomaly_detector_data_quality_metric_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_time_series_feedback
    #   The anomalous metric and group ID.
    #   @return [Types::AnomalyGroupTimeSeries]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetFeedbackRequest AWS API Documentation
    #
    class GetFeedbackRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_time_series_feedback,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_group_time_series_feedback
    #   Feedback for an anomalous metric.
    #   @return [Array<Types::TimeSeriesFeedback>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetFeedbackResponse AWS API Documentation
    #
    class GetFeedbackResponse < Struct.new(
      :anomaly_group_time_series_feedback,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_source_config
    #   A datasource bucket in Amazon S3.
    #   @return [Types::SampleDataS3SourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetSampleDataRequest AWS API Documentation
    #
    class GetSampleDataRequest < Struct.new(
      :s3_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] header_values
    #   A list of header labels for the records.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sample_rows
    #   A list of records.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/GetSampleDataResponse AWS API Documentation
    #
    class GetSampleDataResponse < Struct.new(
      :header_values,
      :sample_rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated details about the measures contributing to the anomaly
    # group, and the measures potentially impacted by the anomaly group.
    #
    # @!attribute [rw] metric_name
    #   The name of the measure.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] relationship_type
    #   Whether a measure is a potential cause of the anomaly group
    #   (`CAUSE_OF_INPUT_ANOMALY_GROUP`), or whether the measure is impacted
    #   by the anomaly group (`EFFECT_OF_INPUT_ANOMALY_GROUP`).
    #   @return [String]
    #
    # @!attribute [rw] contribution_percentage
    #   For potential causes (`CAUSE_OF_INPUT_ANOMALY_GROUP`), the
    #   percentage contribution the measure has in causing the anomalies.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/InterMetricImpactDetails AWS API Documentation
    #
    class InterMetricImpactDetails < Struct.new(
      :metric_name,
      :anomaly_group_id,
      :relationship_type,
      :contribution_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated statistics about a measure affected by an anomaly.
    #
    # @!attribute [rw] metric_name
    #   The name of the measure.
    #   @return [String]
    #
    # @!attribute [rw] occurrence_count
    #   The number of times that the measure appears.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ItemizedMetricStats AWS API Documentation
    #
    class ItemizedMetricStats < Struct.new(
      :metric_name,
      :occurrence_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about how a source JSON data file should be
    # analyzed.
    #
    # @!attribute [rw] file_compression
    #   The level of compression of the source CSV file.
    #   @return [String]
    #
    # @!attribute [rw] charset
    #   The character set in which the source JSON file is written.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/JsonFormatDescriptor AWS API Documentation
    #
    class JsonFormatDescriptor < Struct.new(
      :file_compression,
      :charset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a Lambda configuration.
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that has permission to invoke the Lambda
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] lambda_arn
    #   The ARN of the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/LambdaConfiguration AWS API Documentation
    #
    class LambdaConfiguration < Struct.new(
      :role_arn,
      :lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the alert's detector.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request is truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that will be displayed by the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAlertsRequest AWS API Documentation
    #
    class ListAlertsRequest < Struct.new(
      :anomaly_detector_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert_summary_list
    #   Contains information about an alert.
    #   @return [Array<Types::AlertSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the service returns this token. To
    #   retrieve the next set of results, use this token in the next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAlertsResponse AWS API Documentation
    #
    class ListAlertsResponse < Struct.new(
      :alert_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyDetectorsRequest AWS API Documentation
    #
    class ListAnomalyDetectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_summary_list
    #   A list of anomaly detectors in the account in the current region.
    #   @return [Array<Types::AnomalyDetectorSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the service returns this token. To
    #   retrieve the next set of results, use the token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyDetectorsResponse AWS API Documentation
    #
    class ListAnomalyDetectorsResponse < Struct.new(
      :anomaly_detector_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] relationship_type_filter
    #   Filter for potential causes (`CAUSE_OF_INPUT_ANOMALY_GROUP`) or
    #   downstream effects (`EFFECT_OF_INPUT_ANOMALY_GROUP`) of the anomaly
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupRelatedMetricsRequest AWS API Documentation
    #
    class ListAnomalyGroupRelatedMetricsRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_id,
      :relationship_type_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inter_metric_impact_list
    #   Aggregated details about the measures contributing to the anomaly
    #   group, and the measures potentially impacted by the anomaly group.
    #   @return [Array<Types::InterMetricImpactDetails>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupRelatedMetricsResponse AWS API Documentation
    #
    class ListAnomalyGroupRelatedMetricsResponse < Struct.new(
      :inter_metric_impact_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] sensitivity_threshold
    #   The minimum severity score for inclusion in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupSummariesRequest AWS API Documentation
    #
    class ListAnomalyGroupSummariesRequest < Struct.new(
      :anomaly_detector_arn,
      :sensitivity_threshold,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_group_summary_list
    #   A list of anomaly group summaries.
    #   @return [Array<Types::AnomalyGroupSummary>]
    #
    # @!attribute [rw] anomaly_group_statistics
    #   Aggregated details about the anomaly groups.
    #   @return [Types::AnomalyGroupStatistics]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupSummariesResponse AWS API Documentation
    #
    class ListAnomalyGroupSummariesResponse < Struct.new(
      :anomaly_group_summary_list,
      :anomaly_group_statistics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the measure field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token that's returned by a previous request
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupTimeSeriesRequest AWS API Documentation
    #
    class ListAnomalyGroupTimeSeriesRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_id,
      :metric_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_group_id
    #   The ID of the anomaly group.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the measure field.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_list
    #   Timestamps for the anomalous metrics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] time_series_list
    #   A list of anomalous metrics.
    #   @return [Array<Types::TimeSeries>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListAnomalyGroupTimeSeriesResponse AWS API Documentation
    #
    class ListAnomalyGroupTimeSeriesResponse < Struct.new(
      :anomaly_group_id,
      :metric_name,
      :timestamp_list,
      :next_token,
      :time_series_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the anomaly detector containing the metrics sets to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of results, use the
    #   token in the next request. Tokens expire after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListMetricSetsRequest AWS API Documentation
    #
    class ListMetricSetsRequest < Struct.new(
      :anomaly_detector_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_set_summary_list
    #   A list of the datasets in the AWS Region, with configuration details
    #   for each.
    #   @return [Array<Types::MetricSetSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the list call returns this token. To
    #   retrieve the next set of results, use the token in the next list
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListMetricSetsResponse AWS API Documentation
    #
    class ListMetricSetsResponse < Struct.new(
      :metric_set_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The resource's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A calculation made by contrasting a measure and a dimension from your
    # source data.
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_function
    #   The function with which the metric is calculated.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/Metric AWS API Documentation
    #
    class Metric < Struct.new(
      :metric_name,
      :aggregation_function,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a measure affected by an anomaly.
    #
    # @!attribute [rw] metric_name
    #   The name of the measure.
    #   @return [String]
    #
    # @!attribute [rw] num_time_series
    #   The number of anomalous metrics for the measure.
    #   @return [Integer]
    #
    # @!attribute [rw] contribution_matrix
    #   Details about the dimensions that contributed to the anomaly.
    #   @return [Types::ContributionMatrix]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/MetricLevelImpact AWS API Documentation
    #
    class MetricLevelImpact < Struct.new(
      :metric_name,
      :num_time_series,
      :contribution_matrix)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of `DataQualityMetric` objects that describes one or more
    # data quality metrics.
    #
    # @!attribute [rw] metric_set_arn
    #   The Amazon Resource Name (ARN) of the data quality metric array.
    #   @return [String]
    #
    # @!attribute [rw] data_quality_metric_list
    #   The array of data quality metrics contained in the data quality
    #   metric set.
    #   @return [Array<Types::DataQualityMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/MetricSetDataQualityMetric AWS API Documentation
    #
    class MetricSetDataQualityMetric < Struct.new(
      :metric_set_arn,
      :data_quality_metric_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a list of filters for choosing a subset of dimension values.
    # Each filter consists of the dimension and one of its values that you
    # want to include. When multiple dimensions or values are specified, the
    # dimensions are joined with an AND operation and the values are joined
    # with an OR operation.
    #
    # @!attribute [rw] name
    #   The dimension that you want to filter on.
    #   @return [String]
    #
    # @!attribute [rw] filter_list
    #   The list of filters that you are applying.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/MetricSetDimensionFilter AWS API Documentation
    #
    class MetricSetDimensionFilter < Struct.new(
      :name,
      :filter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a dataset.
    #
    # @!attribute [rw] metric_set_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to which the dataset belongs.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_description
    #   The description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time at which the dataset was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The dataset's [tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/MetricSetSummary AWS API Documentation
    #
    class MetricSetSummary < Struct.new(
      :metric_set_arn,
      :anomaly_detector_arn,
      :metric_set_description,
      :metric_set_name,
      :creation_time,
      :last_modification_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about source data used to generate metrics.
    #
    # @!attribute [rw] s3_source_config
    #   Contains information about the configuration of the S3 bucket that
    #   contains source files.
    #   @return [Types::S3SourceConfig]
    #
    # @!attribute [rw] app_flow_config
    #   Details about an AppFlow datasource.
    #   @return [Types::AppFlowConfig]
    #
    # @!attribute [rw] cloud_watch_config
    #   Details about an Amazon CloudWatch monitoring datasource.
    #   @return [Types::CloudWatchConfig]
    #
    # @!attribute [rw] rds_source_config
    #   Details about an Amazon Relational Database Service (RDS)
    #   datasource.
    #   @return [Types::RDSSourceConfig]
    #
    # @!attribute [rw] redshift_source_config
    #   Details about an Amazon Redshift database datasource.
    #   @return [Types::RedshiftSourceConfig]
    #
    # @!attribute [rw] athena_source_config
    #   Details about an Amazon Athena datasource.
    #   @return [Types::AthenaSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/MetricSource AWS API Documentation
    #
    class MetricSource < Struct.new(
      :s3_source_config,
      :app_flow_config,
      :cloud_watch_config,
      :rds_source_config,
      :redshift_source_config,
      :athena_source_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The Amazon Resource Name (ARN) of the anomaly detector.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_group_time_series_feedback
    #   Feedback for an anomalous metric.
    #   @return [Types::AnomalyGroupTimeSeriesFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_time_series_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/PutFeedbackResponse AWS API Documentation
    #
    class PutFeedbackResponse < Aws::EmptyStructure; end

    # Contains information about the Amazon Relational Database Service
    # (RDS) configuration.
    #
    # @!attribute [rw] db_instance_identifier
    #   A string identifying the database instance.
    #   @return [String]
    #
    # @!attribute [rw] database_host
    #   The host name of the database.
    #   @return [String]
    #
    # @!attribute [rw] database_port
    #   The port number where the database can be accessed.
    #   @return [Integer]
    #
    # @!attribute [rw] secret_manager_arn
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager role.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the RDS database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in the database.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   An object containing information about the Amazon Virtual Private
    #   Cloud (VPC) configuration.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/RDSSourceConfig AWS API Documentation
    #
    class RDSSourceConfig < Struct.new(
      :db_instance_identifier,
      :database_host,
      :database_port,
      :secret_manager_arn,
      :database_name,
      :table_name,
      :role_arn,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the Amazon Redshift database configuration.
    #
    # @!attribute [rw] cluster_identifier
    #   A string identifying the Redshift cluster.
    #   @return [String]
    #
    # @!attribute [rw] database_host
    #   The name of the database host.
    #   @return [String]
    #
    # @!attribute [rw] database_port
    #   The port number where the database can be accessed.
    #   @return [Integer]
    #
    # @!attribute [rw] secret_manager_arn
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager role.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Redshift database name.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The table name of the Redshift database.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role providing access to the
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Contains information about the Amazon Virtual Private Cloud (VPC)
    #   configuration.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/RedshiftSourceConfig AWS API Documentation
    #
    class RedshiftSourceConfig < Struct.new(
      :cluster_identifier,
      :database_host,
      :database_port,
      :secret_manager_arn,
      :database_name,
      :table_name,
      :role_arn,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource cannot be found. Check the ARN of the resource
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of the S3 bucket that
    # contains source files.
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that has read and write access permissions to
    #   the source S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] templated_path_list
    #   A list of templated paths to the source files.
    #   @return [Array<String>]
    #
    # @!attribute [rw] historical_data_path_list
    #   A list of paths to the historical data files.
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_format_descriptor
    #   Contains information about a source file's formatting.
    #   @return [Types::FileFormatDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/S3SourceConfig AWS API Documentation
    #
    class S3SourceConfig < Struct.new(
      :role_arn,
      :templated_path_list,
      :historical_data_path_list,
      :file_format_descriptor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the SNS topic to which you want to send
    # your alerts and the IAM role that has access to that topic.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that has access to the target SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The ARN of the target SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] sns_format
    #   The format of the SNS topic.
    #
    #   * `JSON` – Send JSON alerts with an anomaly ID and a link to the
    #     anomaly detail page. This is the default.
    #
    #   * `LONG_TEXT` – Send human-readable alerts with information about
    #     the impacted timeseries and a link to the anomaly detail page. We
    #     recommend this for email.
    #
    #   * `SHORT_TEXT` – Send human-readable alerts with a link to the
    #     anomaly detail page. We recommend this for SMS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/SNSConfiguration AWS API Documentation
    #
    class SNSConfiguration < Struct.new(
      :role_arn,
      :sns_topic_arn,
      :sns_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the source configuration in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role.
    #   @return [String]
    #
    # @!attribute [rw] templated_path_list
    #   An array of strings containing the list of templated paths.
    #   @return [Array<String>]
    #
    # @!attribute [rw] historical_data_path_list
    #   An array of strings containing the historical set of data paths.
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_format_descriptor
    #   Contains information about a source file's formatting.
    #   @return [Types::FileFormatDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/SampleDataS3SourceConfig AWS API Documentation
    #
    class SampleDataS3SourceConfig < Struct.new(
      :role_arn,
      :templated_path_list,
      :historical_data_path_list,
      :file_format_descriptor)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded the service's quotas. Check the service quotas
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the resource. Tag keys and values can contain
    #   letters, numbers, spaces, and the following symbols: `_.:/=+@-`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Details about a metric. A metric is an aggregation of the values of a
    # measure for a dimension value, such as *availability* in the
    # *us-east-1* Region.
    #
    # @!attribute [rw] time_series_id
    #   The ID of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimension_list
    #   The dimensions of the metric.
    #   @return [Array<Types::DimensionNameValue>]
    #
    # @!attribute [rw] metric_value_list
    #   The values for the metric.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TimeSeries AWS API Documentation
    #
    class TimeSeries < Struct.new(
      :time_series_id,
      :dimension_list,
      :metric_value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about feedback submitted for an anomalous metric.
    #
    # @!attribute [rw] time_series_id
    #   The ID of the metric.
    #   @return [String]
    #
    # @!attribute [rw] is_anomaly
    #   Feedback on whether the metric is a legitimate anomaly.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TimeSeriesFeedback AWS API Documentation
    #
    class TimeSeriesFeedback < Struct.new(
      :time_series_id,
      :is_anomaly)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the column used to track time in a source
    # data file.
    #
    # @!attribute [rw] column_name
    #   The name of the timestamp column.
    #   @return [String]
    #
    # @!attribute [rw] column_format
    #   The format of the timestamp column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TimestampColumn AWS API Documentation
    #
    class TimestampColumn < Struct.new(
      :column_name,
      :column_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to too many requests being submitted at the
    # same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys to remove from the resource's tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] alert_arn
    #   The ARN of the alert to update.
    #   @return [String]
    #
    # @!attribute [rw] alert_description
    #   A description of the alert.
    #   @return [String]
    #
    # @!attribute [rw] alert_sensitivity_threshold
    #   An integer from 0 to 100 specifying the alert sensitivity threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   Action that will be triggered when there is an alert.
    #   @return [Types::Action]
    #
    # @!attribute [rw] alert_filters
    #   The configuration of the alert filters, containing MetricList and
    #   DimensionFilterList.
    #   @return [Types::AlertFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateAlertRequest AWS API Documentation
    #
    class UpdateAlertRequest < Struct.new(
      :alert_arn,
      :alert_description,
      :alert_sensitivity_threshold,
      :action,
      :alert_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alert_arn
    #   The ARN of the updated alert.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateAlertResponse AWS API Documentation
    #
    class UpdateAlertResponse < Struct.new(
      :alert_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the detector to update.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of an AWS KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_description
    #   The updated detector description.
    #   @return [String]
    #
    # @!attribute [rw] anomaly_detector_config
    #   Contains information about the configuration to which the detector
    #   will be updated.
    #   @return [Types::AnomalyDetectorConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateAnomalyDetectorRequest AWS API Documentation
    #
    class UpdateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      :kms_key_arn,
      :anomaly_detector_description,
      :anomaly_detector_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] anomaly_detector_arn
    #   The ARN of the updated detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateAnomalyDetectorResponse AWS API Documentation
    #
    class UpdateAnomalyDetectorResponse < Struct.new(
      :anomaly_detector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_set_arn
    #   The ARN of the dataset to update.
    #   @return [String]
    #
    # @!attribute [rw] metric_set_description
    #   The dataset's description.
    #   @return [String]
    #
    # @!attribute [rw] metric_list
    #   The metric list.
    #   @return [Array<Types::Metric>]
    #
    # @!attribute [rw] offset
    #   After an interval ends, the amount of seconds that the detector
    #   waits before importing data. Offset is only supported for S3,
    #   Redshift, Athena and datasources.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp_column
    #   The timestamp column.
    #   @return [Types::TimestampColumn]
    #
    # @!attribute [rw] dimension_list
    #   The dimension list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_set_frequency
    #   The dataset's interval.
    #   @return [String]
    #
    # @!attribute [rw] metric_source
    #   Contains information about source data used to generate metrics.
    #   @return [Types::MetricSource]
    #
    # @!attribute [rw] dimension_filter_list
    #   Describes a list of filters for choosing specific dimensions and
    #   specific values. Each filter consists of the dimension and one of
    #   its values that you want to include. When multiple dimensions or
    #   values are specified, the dimensions are joined with an AND
    #   operation and the values are joined with an OR operation.
    #   @return [Array<Types::MetricSetDimensionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateMetricSetRequest AWS API Documentation
    #
    class UpdateMetricSetRequest < Struct.new(
      :metric_set_arn,
      :metric_set_description,
      :metric_list,
      :offset,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :metric_source,
      :dimension_filter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_set_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/UpdateMetricSetResponse AWS API Documentation
    #
    class UpdateMetricSetResponse < Struct.new(
      :metric_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the AWS
    # service. Check your input values and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that validation failed.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a a field in a validation exception.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message with more information about the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about the Amazon Virtual Private
    # Cloud (VPC).
    #
    # @!attribute [rw] subnet_id_list
    #   An array of strings containing the Amazon VPC subnet IDs (e.g.,
    #   `subnet-0bb1c79de3EXAMPLE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_id_list
    #   An array of strings containing the list of security groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :subnet_id_list,
      :security_group_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
