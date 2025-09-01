# frozen_string_literal: true

# This is generated code!

module Aws::LookoutMetrics
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A configuration that specifies the action to perform when anomalies are detected.</p>
    # @!attribute sns_configuration
    #   <p>A configuration for an Amazon SNS channel.</p>
    #   @return [Types::SNSConfiguration]
    # @!attribute lambda_configuration
    #   <p>A configuration for an AWS Lambda channel.</p>
    #   @return [Types::LambdaConfiguration]
    class Action < Struct.new(
      :sns_configuration,
      :lambda_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the anomaly detector.</p>
    #   @return [String]
    class ActivateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ActivateAnomalyDetectorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AggregationFunction
      AVG = 'AVG'
      SUM = 'SUM'
    end

    # <p>A configuration for Amazon SNS-integrated notifications.</p>
    # @!attribute action
    #   <p>Action that will be triggered when there is an alert.</p>
    #   @return [Types::Action]
    # @!attribute alert_description
    #   <p>A description of the alert.</p>
    #   @return [String]
    # @!attribute alert_arn
    #   <p>The ARN of the alert.</p>
    #   @return [String]
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #   @return [String]
    # @!attribute alert_name
    #   <p>The name of the alert.</p>
    #   @return [String]
    # @!attribute alert_sensitivity_threshold
    #   <p>The minimum severity for an anomaly to trigger the alert.</p>
    #   @return [Integer]
    # @!attribute alert_type
    #   <p>The type of the alert.</p>
    #   @return [String]
    # @!attribute alert_status
    #   <p>The status of the alert.</p>
    #   @return [String]
    # @!attribute last_modification_time
    #   <p>The time at which the alert was last modified.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>The time at which the alert was created.</p>
    #   @return [Time]
    # @!attribute alert_filters
    #   <p>The configuration of the alert filters, containing MetricList and DimensionFilter.</p>
    #   @return [Types::AlertFilters]
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
      :alert_filters,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:alert_sensitivity_threshold] = 0 unless options.key?(:alert_sensitivity_threshold)
        super
      end
    end

    # <p>The configuration of the alert filters.</p>
    # @!attribute metric_list
    #   <p>The list of measures that you want to get alerts for.</p>
    #   @return [Array<String>]
    # @!attribute dimension_filter_list
    #   <p>The list of DimensionFilter objects that are used for dimension-based filtering.</p>
    #   @return [Array<Types::DimensionFilter>]
    class AlertFilters < Struct.new(
      :metric_list,
      :dimension_filter_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AlertStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    # <p>Provides a summary of an alert's configuration.</p>
    # @!attribute alert_arn
    #   <p>The ARN of the alert.</p>
    #   @return [String]
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #   @return [String]
    # @!attribute alert_name
    #   <p>The name of the alert.</p>
    #   @return [String]
    # @!attribute alert_sensitivity_threshold
    #   <p>The minimum severity for an anomaly to trigger the alert.</p>
    #   @return [Integer]
    # @!attribute alert_type
    #   <p>The type of the alert.</p>
    #   @return [String]
    # @!attribute alert_status
    #   <p>The status of the alert.</p>
    #   @return [String]
    # @!attribute last_modification_time
    #   <p>The time at which the alert was last modified.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>The time at which the alert was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The alert's <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>.</p>
    #   @return [Hash<String, String>]
    class AlertSummary < Struct.new(
      :alert_arn,
      :anomaly_detector_arn,
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_type,
      :alert_status,
      :last_modification_time,
      :creation_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:alert_sensitivity_threshold] = 0 unless options.key?(:alert_sensitivity_threshold)
        super
      end
    end

    module AlertType
      SNS = 'SNS'
      LAMBDA = 'LAMBDA'
    end

    module AnomalyDetectionTaskStatus
      PENDING = 'PENDING'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
      FAILED_TO_SCHEDULE = 'FAILED_TO_SCHEDULE'
    end

    # <p>Contains information about a detector's configuration.</p>
    # @!attribute anomaly_detector_frequency
    #   <p>The frequency at which the detector analyzes its source data.</p>
    #   @return [String]
    class AnomalyDetectorConfig < Struct.new(
      :anomaly_detector_frequency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a detector's configuration.</p>
    # @!attribute anomaly_detector_frequency
    #   <p>The interval at which the detector analyzes its source data.</p>
    #   @return [String]
    class AnomalyDetectorConfigSummary < Struct.new(
      :anomaly_detector_frequency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Aggregated details about the data quality metrics collected for the <code>AnomalyDetectorArn</code> provided in the <a>GetDataQualityMetrics</a> object.</p>
    # @!attribute start_timestamp
    #   <p>The start time for the data quality metrics collection.</p>
    #   @return [Time]
    # @!attribute metric_set_data_quality_metric_list
    #   <p>An array of <code>DataQualityMetricList</code> objects. Each object in the array contains information about a data quality metric.</p>
    #   @return [Array<Types::MetricSetDataQualityMetric>]
    class AnomalyDetectorDataQualityMetric < Struct.new(
      :start_timestamp,
      :metric_set_data_quality_metric_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnomalyDetectorFailureType
      ACTIVATION_FAILURE = 'ACTIVATION_FAILURE'
      BACK_TEST_ACTIVATION_FAILURE = 'BACK_TEST_ACTIVATION_FAILURE'
      DELETION_FAILURE = 'DELETION_FAILURE'
      DEACTIVATION_FAILURE = 'DEACTIVATION_FAILURE'
    end

    module AnomalyDetectorStatus
      ACTIVE = 'ACTIVE'
      ACTIVATING = 'ACTIVATING'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      INACTIVE = 'INACTIVE'
      LEARNING = 'LEARNING'
      BACK_TEST_ACTIVATING = 'BACK_TEST_ACTIVATING'
      BACK_TEST_ACTIVE = 'BACK_TEST_ACTIVE'
      BACK_TEST_COMPLETE = 'BACK_TEST_COMPLETE'
      DEACTIVATED = 'DEACTIVATED'
      DEACTIVATING = 'DEACTIVATING'
    end

    # <p>Contains information about an an anomaly detector.</p>
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_name
    #   <p>The name of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_description
    #   <p>A description of the detector.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the detector was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time at which the detector was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of detector.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The detector's <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>.</p>
    #   @return [Hash<String, String>]
    class AnomalyDetectorSummary < Struct.new(
      :anomaly_detector_arn,
      :anomaly_detector_name,
      :anomaly_detector_description,
      :creation_time,
      :last_modification_time,
      :status,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A group of anomalous metrics</p>
    # @!attribute start_time
    #   <p>The start time for the group.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The end time for the group.</p>
    #   @return [String]
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute anomaly_group_score
    #   <p>The severity score of the group.</p>
    #   @return [Float]
    # @!attribute primary_metric_name
    #   <p>The name of the primary affected measure for the group.</p>
    #   @return [String]
    # @!attribute metric_level_impact_list
    #   <p>A list of measures affected by the anomaly.</p>
    #   @return [Array<Types::MetricLevelImpact>]
    class AnomalyGroup < Struct.new(
      :start_time,
      :end_time,
      :anomaly_group_id,
      :anomaly_group_score,
      :primary_metric_name,
      :metric_level_impact_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Aggregated statistics for a group of anomalous metrics.</p>
    # @!attribute evaluation_start_date
    #   <p>The start of the time range that was searched.</p>
    #   @return [String]
    # @!attribute total_count
    #   <p>The number of groups found.</p>
    #   @return [Integer]
    # @!attribute itemized_metric_stats_list
    #   <p>Statistics for individual metrics within the group.</p>
    #   @return [Array<Types::ItemizedMetricStats>]
    class AnomalyGroupStatistics < Struct.new(
      :evaluation_start_date,
      :total_count,
      :itemized_metric_stats_list,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_count] = 0 unless options.key?(:total_count)
        super
      end
    end

    # <p>Details about a group of anomalous metrics.</p>
    # @!attribute start_time
    #   <p>The start time for the group.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The end time for the group.</p>
    #   @return [String]
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute anomaly_group_score
    #   <p>The severity score of the group.</p>
    #   @return [Float]
    # @!attribute primary_metric_name
    #   <p>The name of the primary affected measure for the group.</p>
    #   @return [String]
    class AnomalyGroupSummary < Struct.new(
      :start_time,
      :end_time,
      :anomaly_group_id,
      :anomaly_group_score,
      :primary_metric_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An anomalous metric in an anomaly group.</p>
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #   @return [String]
    class AnomalyGroupTimeSeries < Struct.new(
      :anomaly_group_id,
      :time_series_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Feedback for an anomalous metric.</p>
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #   @return [String]
    # @!attribute is_anomaly
    #   <p>Feedback on whether the metric is a legitimate anomaly.</p>
    #   @return [Boolean]
    class AnomalyGroupTimeSeriesFeedback < Struct.new(
      :anomaly_group_id,
      :time_series_id,
      :is_anomaly,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about an Amazon AppFlow flow datasource.</p>
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Lookout for Metrics permission to access the flow.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p> name of the flow.</p>
    #   @return [String]
    class AppFlowConfig < Struct.new(
      :role_arn,
      :flow_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about an Amazon Athena datasource.</p>
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Lookout for Metrics permission to access the data.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database's name.</p>
    #   @return [String]
    # @!attribute data_catalog
    #   <p>The database's data catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The database's table name.</p>
    #   @return [String]
    # @!attribute work_group_name
    #   <p>The database's work group name.</p>
    #   @return [String]
    # @!attribute s3_results_path
    #   <p>The database's results path.</p>
    #   @return [String]
    # @!attribute back_test_configuration
    #   <p>Settings for backtest mode.</p>
    #   @return [Types::BackTestConfiguration]
    class AthenaSourceConfig < Struct.new(
      :role_arn,
      :database_name,
      :data_catalog,
      :table_name,
      :work_group_name,
      :s3_results_path,
      :back_test_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An attribute value.</p>
    # @!attribute s
    #   <p>A string.</p>
    #   @return [String]
    # @!attribute n
    #   <p>A number.</p>
    #   @return [String]
    # @!attribute b
    #   <p>A binary value.</p>
    #   @return [String]
    # @!attribute ss
    #   <p>A list of strings.</p>
    #   @return [Array<String>]
    # @!attribute ns
    #   <p>A list of numbers.</p>
    #   @return [Array<String>]
    # @!attribute bs
    #   <p>A list of binary values.</p>
    #   @return [Array<String>]
    class AttributeValue < Struct.new(
      :s,
      :n,
      :b,
      :ss,
      :ns,
      :bs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An auto detection metric source.</p>
    # @!attribute s3_source_config
    #   <p>The source's source config.</p>
    #   @return [Types::AutoDetectionS3SourceConfig]
    class AutoDetectionMetricSource < Struct.new(
      :s3_source_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An auto detection source config.</p>
    # @!attribute templated_path_list
    #   <p>The config's templated path list.</p>
    #   @return [Array<String>]
    # @!attribute historical_data_path_list
    #   <p>The config's historical data path list.</p>
    #   @return [Array<String>]
    class AutoDetectionS3SourceConfig < Struct.new(
      :templated_path_list,
      :historical_data_path_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    class BackTestAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class BackTestAnomalyDetectorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings for backtest mode.</p>
    # @!attribute run_back_test_mode
    #   <p>Run a backtest instead of monitoring new data.</p>
    #   @return [Boolean]
    class BackTestConfiguration < Struct.new(
      :run_back_test_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CSVFileCompression
      NONE = 'NONE'
      GZIP = 'GZIP'
    end

    # <p>Details about an Amazon CloudWatch datasource.</p>
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Lookout for Metrics permission to access data in Amazon CloudWatch.</p>
    #   @return [String]
    # @!attribute back_test_configuration
    #   <p>Settings for backtest mode.</p>
    #   @return [Types::BackTestConfiguration]
    class CloudWatchConfig < Struct.new(
      :role_arn,
      :back_test_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Confidence
      HIGH = 'HIGH'
      LOW = 'LOW'
      NONE = 'NONE'
    end

    # <p>There was a conflict processing the request. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about dimensions that contributed to an anomaly.</p>
    # @!attribute dimension_contribution_list
    #   <p>A list of contributing dimensions.</p>
    #   @return [Array<Types::DimensionContribution>]
    class ContributionMatrix < Struct.new(
      :dimension_contribution_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_name
    #   <p>The name of the alert.</p>
    #   @return [String]
    # @!attribute alert_sensitivity_threshold
    #   <p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>
    #   @return [Integer]
    # @!attribute alert_description
    #   <p>A description of the alert.</p>
    #   @return [String]
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #   @return [String]
    # @!attribute action
    #   <p>Action that will be triggered when there is an alert.</p>
    #   @return [Types::Action]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the alert.</p>
    #   @return [Hash<String, String>]
    # @!attribute alert_filters
    #   <p>The configuration of the alert filters, containing MetricList and DimensionFilterList.</p>
    #   @return [Types::AlertFilters]
    class CreateAlertRequest < Struct.new(
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_description,
      :anomaly_detector_arn,
      :action,
      :tags,
      :alert_filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert.</p>
    #   @return [String]
    class CreateAlertResponse < Struct.new(
      :alert_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_name
    #   <p>The name of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_description
    #   <p>A description of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_config
    #   <p>Contains information about the configuration of the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorConfig]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use to encrypt your data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the anomaly detector.</p>
    #   @return [Hash<String, String>]
    class CreateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_name,
      :anomaly_detector_description,
      :anomaly_detector_config,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector.</p>
    #   @return [String]
    class CreateAnomalyDetectorResponse < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the anomaly detector that will use the dataset.</p>
    #   @return [String]
    # @!attribute metric_set_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute metric_set_description
    #   <p>A description of the dataset you are creating.</p>
    #   @return [String]
    # @!attribute metric_list
    #   <p>A list of metrics that the dataset will contain.</p>
    #   @return [Array<Types::Metric>]
    # @!attribute offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>
    #   @return [Integer]
    # @!attribute timestamp_column
    #   <p>Contains information about the column used for tracking time in your source data.</p>
    #   @return [Types::TimestampColumn]
    # @!attribute dimension_list
    #   <p>A list of the fields you want to treat as dimensions.</p>
    #   @return [Array<String>]
    # @!attribute metric_set_frequency
    #   <p>The frequency with which the source data will be analyzed for anomalies.</p>
    #   @return [String]
    # @!attribute metric_source
    #   <p>Contains information about how the source data should be interpreted.</p>
    #   @return [Types::MetricSource]
    # @!attribute timezone
    #   <p>The time zone in which your source data was recorded.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the dataset.</p>
    #   @return [Hash<String, String>]
    # @!attribute dimension_filter_list
    #   <p>A list of filters that specify which data is kept for anomaly detection.</p>
    #   @return [Array<Types::MetricSetDimensionFilter>]
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
      :dimension_filter_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    class CreateMetricSetResponse < Struct.new(
      :metric_set_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about how a source CSV data file should be analyzed.</p>
    # @!attribute file_compression
    #   <p>The level of compression of the source CSV file.</p>
    #   @return [String]
    # @!attribute charset
    #   <p>The character set in which the source CSV file is written.</p>
    #   @return [String]
    # @!attribute contains_header
    #   <p>Whether or not the source CSV file contains a header.</p>
    #   @return [Boolean]
    # @!attribute delimiter
    #   <p>The character used to delimit the source CSV file.</p>
    #   @return [String]
    # @!attribute header_list
    #   <p>A list of the source CSV file's headers, if any.</p>
    #   @return [Array<String>]
    # @!attribute quote_symbol
    #   <p>The character used as a quote character.</p>
    #   @return [String]
    class CsvFormatDescriptor < Struct.new(
      :file_compression,
      :charset,
      :contains_header,
      :delimiter,
      :header_list,
      :quote_symbol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An array that describes a data quality metric. Each <code>DataQualityMetric</code> object contains the data quality metric name, its value, a description of the metric, and the affected column.</p>
    # @!attribute metric_type
    #   <p>The name of the data quality metric.</p>
    #   @return [String]
    # @!attribute metric_description
    #   <p>A description of the data quality metric.</p>
    #   @return [String]
    # @!attribute related_column_name
    #   <p>The column that is being monitored.</p>
    #   @return [String]
    # @!attribute metric_value
    #   <p>The value of the data quality metric.</p>
    #   @return [Float]
    class DataQualityMetric < Struct.new(
      :metric_type,
      :metric_description,
      :related_column_name,
      :metric_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataQualityMetricType
      COLUMN_COMPLETENESS = 'COLUMN_COMPLETENESS'
      DIMENSION_UNIQUENESS = 'DIMENSION_UNIQUENESS'
      TIME_SERIES_COUNT = 'TIME_SERIES_COUNT'
      ROWS_PROCESSED = 'ROWS_PROCESSED'
      ROWS_PARTIAL_COMPLIANCE = 'ROWS_PARTIAL_COMPLIANCE'
      INVALID_ROWS_COMPLIANCE = 'INVALID_ROWS_COMPLIANCE'
      BACKTEST_TRAINING_DATA_START_TIME_STAMP = 'BACKTEST_TRAINING_DATA_START_TIME_STAMP'
      BACKTEST_TRAINING_DATA_END_TIME_STAMP = 'BACKTEST_TRAINING_DATA_END_TIME_STAMP'
      BACKTEST_INFERENCE_DATA_START_TIME_STAMP = 'BACKTEST_INFERENCE_DATA_START_TIME_STAMP'
      BACKTEST_INFERENCE_DATA_END_TIME_STAMP = 'BACKTEST_INFERENCE_DATA_END_TIME_STAMP'
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    class DeactivateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeactivateAnomalyDetectorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert to delete.</p>
    #   @return [String]
    class DeleteAlertRequest < Struct.new(
      :alert_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAlertResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to delete.</p>
    #   @return [String]
    class DeleteAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAnomalyDetectorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert to describe.</p>
    #   @return [String]
    class DescribeAlertRequest < Struct.new(
      :alert_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert
    #   <p>Contains information about an alert.</p>
    #   @return [Types::Alert]
    class DescribeAlertResponse < Struct.new(
      :alert,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the anomaly detection job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class DescribeAnomalyDetectionExecutionsRequest < Struct.new(
      :anomaly_detector_arn,
      :timestamp,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute execution_list
    #   <p>A list of detection jobs.</p>
    #   @return [Array<Types::ExecutionStatus>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class DescribeAnomalyDetectionExecutionsResponse < Struct.new(
      :execution_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to describe.</p>
    #   @return [String]
    class DescribeAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_name
    #   <p>The name of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_description
    #   <p>A description of the detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_config
    #   <p>Contains information about the detector's configuration.</p>
    #   @return [Types::AnomalyDetectorConfigSummary]
    # @!attribute creation_time
    #   <p>The time at which the detector was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time at which the detector was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the detector.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason that the detector failed.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use to encrypt your data.</p>
    #   @return [String]
    # @!attribute failure_type
    #   <p>The process that caused the detector to fail.</p>
    #   @return [String]
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
      :failure_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    class DescribeMetricSetRequest < Struct.new(
      :metric_set_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector that contains the dataset.</p>
    #   @return [String]
    # @!attribute metric_set_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute metric_set_description
    #   <p>The dataset's description.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the dataset was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time at which the dataset was last modified.</p>
    #   @return [Time]
    # @!attribute offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>
    #   @return [Integer]
    # @!attribute metric_list
    #   <p>A list of the metrics defined by the dataset.</p>
    #   @return [Array<Types::Metric>]
    # @!attribute timestamp_column
    #   <p>Contains information about the column used for tracking time in your source data.</p>
    #   @return [Types::TimestampColumn]
    # @!attribute dimension_list
    #   <p>A list of the dimensions chosen for analysis.</p>
    #   @return [Array<String>]
    # @!attribute metric_set_frequency
    #   <p>The interval at which the data will be analyzed for anomalies.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>The time zone in which the dataset's data was recorded.</p>
    #   @return [String]
    # @!attribute metric_source
    #   <p>Contains information about the dataset's source data.</p>
    #   @return [Types::MetricSource]
    # @!attribute dimension_filter_list
    #   <p>The dimensions and their values that were used to filter the dataset.</p>
    #   @return [Array<Types::MetricSetDimensionFilter>]
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
      :dimension_filter_list,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:offset] =  unless options.key?(:offset)
        super
      end
    end

    # @!attribute anomaly_detector_arn
    #   <p>An anomaly detector ARN.</p>
    #   @return [String]
    # @!attribute auto_detection_metric_source
    #   <p>A data source.</p>
    #   @return [Types::AutoDetectionMetricSource]
    class DetectMetricSetConfigRequest < Struct.new(
      :anomaly_detector_arn,
      :auto_detection_metric_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute detected_metric_set_config
    #   <p>The inferred dataset configuration for the datasource.</p>
    #   @return [Types::DetectedMetricSetConfig]
    class DetectMetricSetConfigResponse < Struct.new(
      :detected_metric_set_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Properties of an inferred CSV format.</p>
    # @!attribute file_compression
    #   <p>The format's file compression.</p>
    #   @return [Types::DetectedField]
    # @!attribute charset
    #   <p>The format's charset.</p>
    #   @return [Types::DetectedField]
    # @!attribute contains_header
    #   <p>Whether the format includes a header.</p>
    #   @return [Types::DetectedField]
    # @!attribute delimiter
    #   <p>The format's delimiter.</p>
    #   @return [Types::DetectedField]
    # @!attribute header_list
    #   <p>The format's header list.</p>
    #   @return [Types::DetectedField]
    # @!attribute quote_symbol
    #   <p>The format's quote symbol.</p>
    #   @return [Types::DetectedField]
    class DetectedCsvFormatDescriptor < Struct.new(
      :file_compression,
      :charset,
      :contains_header,
      :delimiter,
      :header_list,
      :quote_symbol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An inferred field.</p>
    # @!attribute value
    #   <p>The field's value.</p>
    #   @return [Types::AttributeValue]
    # @!attribute confidence
    #   <p>The field's confidence.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The field's message.</p>
    #   @return [String]
    class DetectedField < Struct.new(
      :value,
      :confidence,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Properties of an inferred data format.</p>
    # @!attribute csv_format_descriptor
    #   <p>Details about a CSV format.</p>
    #   @return [Types::DetectedCsvFormatDescriptor]
    # @!attribute json_format_descriptor
    #   <p>Details about a JSON format.</p>
    #   @return [Types::DetectedJsonFormatDescriptor]
    class DetectedFileFormatDescriptor < Struct.new(
      :csv_format_descriptor,
      :json_format_descriptor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A detected JSON format descriptor.</p>
    # @!attribute file_compression
    #   <p>The format's file compression.</p>
    #   @return [Types::DetectedField]
    # @!attribute charset
    #   <p>The format's character set.</p>
    #   @return [Types::DetectedField]
    class DetectedJsonFormatDescriptor < Struct.new(
      :file_compression,
      :charset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An inferred dataset configuration.</p>
    # @!attribute offset
    #   <p>The dataset's offset.</p>
    #   @return [Types::DetectedField]
    # @!attribute metric_set_frequency
    #   <p>The dataset's interval.</p>
    #   @return [Types::DetectedField]
    # @!attribute metric_source
    #   <p>The dataset's data source.</p>
    #   @return [Types::DetectedMetricSource]
    class DetectedMetricSetConfig < Struct.new(
      :offset,
      :metric_set_frequency,
      :metric_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An inferred data source.</p>
    # @!attribute s3_source_config
    #   <p>The data source's source configuration.</p>
    #   @return [Types::DetectedS3SourceConfig]
    class DetectedMetricSource < Struct.new(
      :s3_source_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An inferred source configuration.</p>
    # @!attribute file_format_descriptor
    #   <p>The source's file format descriptor.</p>
    #   @return [Types::DetectedFileFormatDescriptor]
    class DetectedS3SourceConfig < Struct.new(
      :file_format_descriptor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a dimension that contributed to an anomaly.</p>
    # @!attribute dimension_name
    #   <p>The name of the dimension.</p>
    #   @return [String]
    # @!attribute dimension_value_contribution_list
    #   <p>A list of dimension values that contributed to the anomaly.</p>
    #   @return [Array<Types::DimensionValueContribution>]
    class DimensionContribution < Struct.new(
      :dimension_name,
      :dimension_value_contribution_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The dimension filter, containing DimensionName and DimensionValueList.</p>
    # @!attribute dimension_name
    #   <p>The name of the dimension to filter on.</p>
    #   @return [String]
    # @!attribute dimension_value_list
    #   <p>The list of values for the dimension specified in DimensionName that you want to filter on.</p>
    #   @return [Array<String>]
    class DimensionFilter < Struct.new(
      :dimension_name,
      :dimension_value_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A dimension name and value.</p>
    # @!attribute dimension_name
    #   <p>The name of the dimension.</p>
    #   @return [String]
    # @!attribute dimension_value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    class DimensionNameValue < Struct.new(
      :dimension_name,
      :dimension_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The severity of a value of a dimension that contributed to an anomaly.</p>
    # @!attribute dimension_value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    # @!attribute contribution_score
    #   <p>The severity score of the value.</p>
    #   @return [Float]
    class DimensionValueContribution < Struct.new(
      :dimension_value,
      :contribution_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The status of an anomaly detector run.</p>
    # @!attribute timestamp
    #   <p>The run's timestamp.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The run's status.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason that the run failed, if applicable.</p>
    #   @return [String]
    class ExecutionStatus < Struct.new(
      :timestamp,
      :status,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a source file's formatting.</p>
    # @!attribute csv_format_descriptor
    #   <p>Contains information about how a source CSV data file should be analyzed.</p>
    #   @return [Types::CsvFormatDescriptor]
    # @!attribute json_format_descriptor
    #   <p>Contains information about how a source JSON data file should be analyzed.</p>
    #   @return [Types::JsonFormatDescriptor]
    class FileFormatDescriptor < Struct.new(
      :csv_format_descriptor,
      :json_format_descriptor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a filter for choosing a subset of dimension values. Each filter consists of the dimension that you want to include and the condition statement. The condition statement is specified in the <code>FilterOperation</code> object.</p>
    # @!attribute dimension_value
    #   <p>The value that you want to include in the filter.</p>
    #   @return [String]
    # @!attribute filter_operation
    #   <p>The condition to apply.</p>
    #   @return [String]
    class Filter < Struct.new(
      :dimension_value,
      :filter_operation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FilterOperation
      EQUALS = 'EQUALS'
    end

    module Frequency
      P1D = 'P1D'
      PT1H = 'PT1H'
      PT10M = 'PT10M'
      PT5M = 'PT5M'
    end

    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    class GetAnomalyGroupRequest < Struct.new(
      :anomaly_group_id,
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_group
    #   <p>Details about the anomaly group.</p>
    #   @return [Types::AnomalyGroup]
    class GetAnomalyGroupResponse < Struct.new(
      :anomaly_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector that you want to investigate.</p>
    #   @return [String]
    # @!attribute metric_set_arn
    #   <p>The Amazon Resource Name (ARN) of a specific data quality metric set.</p>
    #   @return [String]
    class GetDataQualityMetricsRequest < Struct.new(
      :anomaly_detector_arn,
      :metric_set_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_data_quality_metric_list
    #   <p>A list of the data quality metrics for the <code>AnomalyDetectorArn</code> that you requested.</p>
    #   @return [Array<Types::AnomalyDetectorDataQualityMetric>]
    class GetDataQualityMetricsResponse < Struct.new(
      :anomaly_detector_data_quality_metric_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_group_time_series_feedback
    #   <p>The anomalous metric and group ID.</p>
    #   @return [Types::AnomalyGroupTimeSeries]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class GetFeedbackRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_time_series_feedback,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_group_time_series_feedback
    #   <p>Feedback for an anomalous metric.</p>
    #   @return [Array<Types::TimeSeriesFeedback>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class GetFeedbackResponse < Struct.new(
      :anomaly_group_time_series_feedback,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute s3_source_config
    #   <p>A datasource bucket in Amazon S3.</p>
    #   @return [Types::SampleDataS3SourceConfig]
    class GetSampleDataRequest < Struct.new(
      :s3_source_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute header_values
    #   <p>A list of header labels for the records.</p>
    #   @return [Array<String>]
    # @!attribute sample_rows
    #   <p>A list of records.</p>
    #   @return [Array<Array<String>>]
    class GetSampleDataResponse < Struct.new(
      :header_values,
      :sample_rows,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Aggregated details about the measures contributing to the anomaly group, and the measures
    #             potentially impacted by the anomaly group.</p>
    #          <p></p>
    # @!attribute metric_name
    #   <p>The name of the measure.</p>
    #   @return [String]
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute relationship_type
    #   <p>Whether a measure is a potential cause of the anomaly group
    #               (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>), or whether the measure is impacted by the
    #               anomaly group (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>).</p>
    #   @return [String]
    # @!attribute contribution_percentage
    #   <p>For potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>), the percentage
    #               contribution the measure has in causing the anomalies.</p>
    #   @return [Float]
    class InterMetricImpactDetails < Struct.new(
      :metric_name,
      :anomaly_group_id,
      :relationship_type,
      :contribution_percentage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Aggregated statistics about a measure affected by an anomaly.</p>
    # @!attribute metric_name
    #   <p>The name of the measure.</p>
    #   @return [String]
    # @!attribute occurrence_count
    #   <p>The number of times that the measure appears.</p>
    #   @return [Integer]
    class ItemizedMetricStats < Struct.new(
      :metric_name,
      :occurrence_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:occurrence_count] = 0 unless options.key?(:occurrence_count)
        super
      end
    end

    module JsonFileCompression
      NONE = 'NONE'
      GZIP = 'GZIP'
    end

    # <p>Contains information about how a source JSON data file should be analyzed.</p>
    # @!attribute file_compression
    #   <p>The level of compression of the source CSV file.</p>
    #   @return [String]
    # @!attribute charset
    #   <p>The character set in which the source JSON file is written.</p>
    #   @return [String]
    class JsonFormatDescriptor < Struct.new(
      :file_compression,
      :charset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a Lambda configuration.</p>
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that has permission to invoke the Lambda function.</p>
    #   @return [String]
    # @!attribute lambda_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    class LambdaConfiguration < Struct.new(
      :role_arn,
      :lambda_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the alert's detector.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the result of the previous request is truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that will be displayed by the request.</p>
    #   @return [Integer]
    class ListAlertsRequest < Struct.new(
      :anomaly_detector_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_summary_list
    #   <p>Contains information about an alert.</p>
    #   @return [Array<Types::AlertSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, the service returns this token. To retrieve the next set of results, use this
    #         token in the next request.</p>
    #   @return [String]
    class ListAlertsResponse < Struct.new(
      :alert_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    #   @return [String]
    class ListAnomalyDetectorsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_summary_list
    #   <p>A list of anomaly detectors in the account in the current region.</p>
    #   @return [Array<Types::AnomalyDetectorSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, the service returns this token. To retrieve the next set of results, use the
    #         token in the next request.</p>
    #   @return [String]
    class ListAnomalyDetectorsResponse < Struct.new(
      :anomaly_detector_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute relationship_type_filter
    #   <p>Filter for potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>) or
    #               downstream effects (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>) of the anomaly group.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next
    #               page of results.</p>
    #   @return [String]
    class ListAnomalyGroupRelatedMetricsRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_id,
      :relationship_type_filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inter_metric_impact_list
    #   <p>Aggregated details about the measures contributing to the anomaly group, and the measures
    #               potentially impacted by the anomaly group.</p>
    #   @return [Array<Types::InterMetricImpactDetails>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListAnomalyGroupRelatedMetricsResponse < Struct.new(
      :inter_metric_impact_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute sensitivity_threshold
    #   <p>The minimum severity score for inclusion in the output.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAnomalyGroupSummariesRequest < Struct.new(
      :anomaly_detector_arn,
      :sensitivity_threshold,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_group_summary_list
    #   <p>A list of anomaly group summaries.</p>
    #   @return [Array<Types::AnomalyGroupSummary>]
    # @!attribute anomaly_group_statistics
    #   <p>Aggregated details about the anomaly groups.</p>
    #   @return [Types::AnomalyGroupStatistics]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListAnomalyGroupSummariesResponse < Struct.new(
      :anomaly_group_summary_list,
      :anomaly_group_statistics,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the measure field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAnomalyGroupTimeSeriesRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_id,
      :metric_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the measure field.</p>
    #   @return [String]
    # @!attribute timestamp_list
    #   <p>Timestamps for the anomalous metrics.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    # @!attribute time_series_list
    #   <p>A list of anomalous metrics.</p>
    #   @return [Array<Types::TimeSeries>]
    class ListAnomalyGroupTimeSeriesResponse < Struct.new(
      :anomaly_group_id,
      :metric_name,
      :timestamp_list,
      :next_token,
      :time_series_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the anomaly detector containing the metrics sets to list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #   @return [String]
    class ListMetricSetsRequest < Struct.new(
      :anomaly_detector_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metric_set_summary_list
    #   <p>A list of the datasets in the AWS Region, with configuration details for each.</p>
    #   @return [Array<Types::MetricSetSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, the list call returns this token. To retrieve the next set
    #         of results, use the token in the next list request. </p>
    #   @return [String]
    class ListMetricSetsResponse < Struct.new(
      :metric_set_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The resource's tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A calculation made by contrasting a measure and a dimension from your source data.</p>
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute aggregation_function
    #   <p>The function with which the metric is calculated.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace for the metric.</p>
    #   @return [String]
    class Metric < Struct.new(
      :metric_name,
      :aggregation_function,
      :namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a measure affected by an anomaly.</p>
    # @!attribute metric_name
    #   <p>The name of the measure.</p>
    #   @return [String]
    # @!attribute num_time_series
    #   <p>The number of anomalous metrics for the measure.</p>
    #   @return [Integer]
    # @!attribute contribution_matrix
    #   <p>Details about the dimensions that contributed to the anomaly.</p>
    #   @return [Types::ContributionMatrix]
    class MetricLevelImpact < Struct.new(
      :metric_name,
      :num_time_series,
      :contribution_matrix,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:num_time_series] = 0 unless options.key?(:num_time_series)
        super
      end
    end

    # <p>An array of <code>DataQualityMetric</code> objects that describes one or more data quality metrics.</p>
    # @!attribute metric_set_arn
    #   <p>The Amazon Resource Name (ARN) of the data quality metric array.</p>
    #   @return [String]
    # @!attribute data_quality_metric_list
    #   <p>The array of data quality metrics contained in the data quality metric set.</p>
    #   @return [Array<Types::DataQualityMetric>]
    class MetricSetDataQualityMetric < Struct.new(
      :metric_set_arn,
      :data_quality_metric_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a list of filters for choosing a subset of dimension values. Each filter consists of the dimension and one of its values that you want to include. When multiple dimensions or values are specified, the dimensions are joined with an AND operation and the values are joined with an OR operation. </p>
    # @!attribute name
    #   <p>The dimension that you want to filter on.</p>
    #   @return [String]
    # @!attribute filter_list
    #   <p>The list of filters that you are applying.</p>
    #   @return [Array<Types::Filter>]
    class MetricSetDimensionFilter < Struct.new(
      :name,
      :filter_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a dataset.</p>
    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the dataset belongs.</p>
    #   @return [String]
    # @!attribute metric_set_description
    #   <p>The description of the dataset.</p>
    #   @return [String]
    # @!attribute metric_set_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the dataset was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time at which the dataset was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The dataset's <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>.</p>
    #   @return [Hash<String, String>]
    class MetricSetSummary < Struct.new(
      :metric_set_arn,
      :anomaly_detector_arn,
      :metric_set_description,
      :metric_set_name,
      :creation_time,
      :last_modification_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about source data used to generate metrics.</p>
    # @!attribute s3_source_config
    #   <p>Contains information about the configuration of the S3 bucket that contains source files.</p>
    #   @return [Types::S3SourceConfig]
    # @!attribute app_flow_config
    #   <p>Details about an AppFlow datasource.</p>
    #   @return [Types::AppFlowConfig]
    # @!attribute cloud_watch_config
    #   <p>Details about an Amazon CloudWatch monitoring datasource.</p>
    #   @return [Types::CloudWatchConfig]
    # @!attribute rds_source_config
    #   <p>Details about an Amazon Relational Database Service (RDS) datasource.</p>
    #   @return [Types::RDSSourceConfig]
    # @!attribute redshift_source_config
    #   <p>Details about an Amazon Redshift database datasource.</p>
    #   @return [Types::RedshiftSourceConfig]
    # @!attribute athena_source_config
    #   <p>Details about an Amazon Athena datasource.</p>
    #   @return [Types::AthenaSourceConfig]
    class MetricSource < Struct.new(
      :s3_source_config,
      :app_flow_config,
      :cloud_watch_config,
      :rds_source_config,
      :redshift_source_config,
      :athena_source_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_group_time_series_feedback
    #   <p>Feedback for an anomalous metric.</p>
    #   @return [Types::AnomalyGroupTimeSeriesFeedback]
    class PutFeedbackRequest < Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_time_series_feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutFeedbackResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Relational Database Service (RDS) configuration.</p>
    # @!attribute db_instance_identifier
    #   <p>A string identifying the database instance.</p>
    #   @return [String]
    # @!attribute database_host
    #   <p>The host name of the database.</p>
    #   @return [String]
    # @!attribute database_port
    #   <p>The port number where the database can be accessed.</p>
    #   @return [Integer]
    # @!attribute secret_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the RDS database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table in the database.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>An object containing information about the Amazon Virtual Private Cloud (VPC) configuration.</p>
    #   @return [Types::VpcConfiguration]
    class RDSSourceConfig < Struct.new(
      :db_instance_identifier,
      :database_host,
      :database_port,
      :secret_manager_arn,
      :database_name,
      :table_name,
      :role_arn,
      :vpc_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the Amazon Redshift database configuration.</p>
    # @!attribute cluster_identifier
    #   <p>A string identifying the Redshift cluster.</p>
    #   @return [String]
    # @!attribute database_host
    #   <p>The name of the database host.</p>
    #   @return [String]
    # @!attribute database_port
    #   <p>The port number where the database can be accessed.</p>
    #   @return [Integer]
    # @!attribute secret_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The Redshift database name.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The table name of the Redshift database.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role providing access to the database.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>Contains information about the Amazon Virtual Private Cloud (VPC) configuration.</p>
    #   @return [Types::VpcConfiguration]
    class RedshiftSourceConfig < Struct.new(
      :cluster_identifier,
      :database_host,
      :database_port,
      :secret_manager_arn,
      :database_name,
      :table_name,
      :role_arn,
      :vpc_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RelationshipType
      CAUSE_OF_INPUT_ANOMALY_GROUP = 'CAUSE_OF_INPUT_ANOMALY_GROUP'
      EFFECT_OF_INPUT_ANOMALY_GROUP = 'EFFECT_OF_INPUT_ANOMALY_GROUP'
    end

    # <p>The specified resource cannot be found. Check the ARN of the resource and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the configuration of the S3 bucket that contains source files.</p>
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that has read and write access permissions to the source S3 bucket.</p>
    #   @return [String]
    # @!attribute templated_path_list
    #   <p>A list of templated paths to the source files.</p>
    #   @return [Array<String>]
    # @!attribute historical_data_path_list
    #   <p>A list of paths to the historical data files.</p>
    #   @return [Array<String>]
    # @!attribute file_format_descriptor
    #   <p>Contains information about a source file's formatting.</p>
    #   @return [Types::FileFormatDescriptor]
    class S3SourceConfig < Struct.new(
      :role_arn,
      :templated_path_list,
      :historical_data_path_list,
      :file_format_descriptor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the SNS topic to which you want to send your alerts and the IAM role that has
    #       access to that topic.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that has access to the target SNS topic.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The ARN of the target SNS topic.</p>
    #   @return [String]
    # @!attribute sns_format
    #   <p>The format of the SNS topic.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – Send JSON alerts with an anomaly ID and a link to the anomaly detail page. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LONG_TEXT</code> – Send human-readable alerts with information about the impacted timeseries and a link to the anomaly detail page. We recommend this for email.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHORT_TEXT</code> – Send human-readable alerts with a link to the anomaly detail page. We recommend this for SMS.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SNSConfiguration < Struct.new(
      :role_arn,
      :sns_topic_arn,
      :sns_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the source configuration in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role.</p>
    #   @return [String]
    # @!attribute templated_path_list
    #   <p>An array of strings containing the list of templated paths.</p>
    #   @return [Array<String>]
    # @!attribute historical_data_path_list
    #   <p>An array of strings containing the historical set of data paths.</p>
    #   @return [Array<String>]
    # @!attribute file_format_descriptor
    #   <p>Contains information about a source file's formatting.</p>
    #   @return [Types::FileFormatDescriptor]
    class SampleDataS3SourceConfig < Struct.new(
      :role_arn,
      :templated_path_list,
      :historical_data_path_list,
      :file_format_descriptor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request exceeded the service's quotas. Check the service quotas and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SnsFormat
      LONG_TEXT = 'LONG_TEXT'
      SHORT_TEXT = 'SHORT_TEXT'
      JSON = 'JSON'
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following
    #         symbols: <code>_.:/=+@-</code>
    #            </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a metric. A metric is an aggregation of the values of a measure for a dimension value, such as
    #         <i>availability</i> in the <i>us-east-1</i> Region.</p>
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #   @return [String]
    # @!attribute dimension_list
    #   <p>The dimensions of the metric.</p>
    #   @return [Array<Types::DimensionNameValue>]
    # @!attribute metric_value_list
    #   <p>The values for the metric.</p>
    #   @return [Array<Float>]
    class TimeSeries < Struct.new(
      :time_series_id,
      :dimension_list,
      :metric_value_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about feedback submitted for an anomalous metric.</p>
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #   @return [String]
    # @!attribute is_anomaly
    #   <p>Feedback on whether the metric is a legitimate anomaly.</p>
    #   @return [Boolean]
    class TimeSeriesFeedback < Struct.new(
      :time_series_id,
      :is_anomaly,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the column used to track time in a source data file.</p>
    # @!attribute column_name
    #   <p>The name of the timestamp column.</p>
    #   @return [String]
    # @!attribute column_format
    #   <p>The format of the timestamp column.</p>
    #   @return [String]
    class TimestampColumn < Struct.new(
      :column_name,
      :column_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to too many requests being submitted at the same time.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys to remove from the resource's tags.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert to update.</p>
    #   @return [String]
    # @!attribute alert_description
    #   <p>A description of the alert.</p>
    #   @return [String]
    # @!attribute alert_sensitivity_threshold
    #   <p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>Action that will be triggered when there is an alert.</p>
    #   @return [Types::Action]
    # @!attribute alert_filters
    #   <p>The configuration of the alert filters, containing MetricList and DimensionFilterList.</p>
    #   @return [Types::AlertFilters]
    class UpdateAlertRequest < Struct.new(
      :alert_arn,
      :alert_description,
      :alert_sensitivity_threshold,
      :action,
      :alert_filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the updated alert.</p>
    #   @return [String]
    class UpdateAlertResponse < Struct.new(
      :alert_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to update.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS KMS encryption key.</p>
    #   @return [String]
    # @!attribute anomaly_detector_description
    #   <p>The updated detector description.</p>
    #   @return [String]
    # @!attribute anomaly_detector_config
    #   <p>Contains information about the configuration to which the detector will be updated.</p>
    #   @return [Types::AnomalyDetectorConfig]
    class UpdateAnomalyDetectorRequest < Struct.new(
      :anomaly_detector_arn,
      :kms_key_arn,
      :anomaly_detector_description,
      :anomaly_detector_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the updated detector.</p>
    #   @return [String]
    class UpdateAnomalyDetectorResponse < Struct.new(
      :anomaly_detector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset to update.</p>
    #   @return [String]
    # @!attribute metric_set_description
    #   <p>The dataset's description.</p>
    #   @return [String]
    # @!attribute metric_list
    #   <p>The metric list.</p>
    #   @return [Array<Types::Metric>]
    # @!attribute offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3, Redshift, Athena and datasources.</p>
    #   @return [Integer]
    # @!attribute timestamp_column
    #   <p>The timestamp column.</p>
    #   @return [Types::TimestampColumn]
    # @!attribute dimension_list
    #   <p>The dimension list.</p>
    #   @return [Array<String>]
    # @!attribute metric_set_frequency
    #   <p>The dataset's interval.</p>
    #   @return [String]
    # @!attribute metric_source
    #   <p>Contains information about source data used to generate metrics.</p>
    #   @return [Types::MetricSource]
    # @!attribute dimension_filter_list
    #   <p>Describes a list of filters for choosing specific dimensions and specific values. Each
    #         filter consists of the dimension and one of its values that you want to include. When
    #         multiple dimensions or values are specified, the dimensions are joined with an AND operation
    #         and the values are joined with an OR operation.</p>
    #   @return [Array<Types::MetricSetDimensionFilter>]
    class UpdateMetricSetRequest < Struct.new(
      :metric_set_arn,
      :metric_set_description,
      :metric_list,
      :offset,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :metric_source,
      :dimension_filter_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    class UpdateMetricSetResponse < Struct.new(
      :metric_set_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the AWS service. Check your input values and try
    #       again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>Fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a a field in a validation exception.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message with more information about the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      UNKNOWN_OPERATION = 'UNKNOWN_OPERATION'
      CANNOT_PARSE = 'CANNOT_PARSE'
      FIELD_VALIDATION_FAILED = 'FIELD_VALIDATION_FAILED'
      OTHER = 'OTHER'
    end

    # <p>Contains configuration information about the Amazon Virtual Private Cloud (VPC).</p>
    # @!attribute subnet_id_list
    #   <p>An array of strings containing the Amazon VPC subnet IDs (e.g., <code>subnet-0bb1c79de3EXAMPLE</code>.</p>
    #   @return [Array<String>]
    # @!attribute security_group_id_list
    #   <p>An array of strings containing the list of security groups.</p>
    #   @return [Array<String>]
    class VpcConfiguration < Struct.new(
      :subnet_id_list,
      :security_group_id_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
