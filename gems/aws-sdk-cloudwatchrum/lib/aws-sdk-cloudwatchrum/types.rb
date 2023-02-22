# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchRUM
  module Types

    # You don't have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A RUM app monitor collects telemetry data from your application and
    # sends that data to RUM. The data includes performance and reliability
    # information such as page load time, client-side errors, and user
    # behavior.
    #
    # @!attribute [rw] app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor.
    #   @return [Types::AppMonitorConfiguration]
    #
    # @!attribute [rw] created
    #   The date and time that this app monitor was created.
    #   @return [String]
    #
    # @!attribute [rw] custom_events
    #   Specifies whether this app monitor allows the web client to define
    #   and send custom events.
    #
    #   For more information about custom events, see [Send custom
    #   events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html
    #   @return [Types::CustomEvents]
    #
    # @!attribute [rw] data_storage
    #   A structure that contains information about whether this app monitor
    #   stores a copy of the telemetry data that RUM collects using
    #   CloudWatch Logs.
    #   @return [Types::DataStorage]
    #
    # @!attribute [rw] domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of this app monitor.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time of the most recent changes to this app monitor's
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the app monitor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the app monitor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with this app monitor.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/AppMonitor AWS API Documentation
    #
    class AppMonitor < Struct.new(
      :app_monitor_configuration,
      :created,
      :custom_events,
      :data_storage,
      :domain,
      :id,
      :last_modified,
      :name,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains much of the configuration data for the app
    # monitor.
    #
    # @!attribute [rw] allow_cookies
    #   If you set this to `true`, the RUM web client sets two cookies, a
    #   session cookie and a user cookie. The cookies allow the RUM web
    #   client to collect data relating to the number of users an
    #   application has and the behavior of the application across a
    #   sequence of events. Cookies are stored in the top-level domain of
    #   the current page.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_x_ray
    #   If you set this to `true`, RUM enables X-Ray tracing for the user
    #   sessions that RUM samples. RUM adds an X-Ray trace header to allowed
    #   HTTP requests. It also records an X-Ray segment for allowed HTTP
    #   requests. You can see traces and segments from these user sessions
    #   in the X-Ray console and the CloudWatch ServiceLens console. For
    #   more information, see [What is X-Ray?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/xray/latest/devguide/aws-xray.html
    #   @return [Boolean]
    #
    # @!attribute [rw] excluded_pages
    #   A list of URLs in your website or application to exclude from RUM
    #   data collection.
    #
    #   You can't include both `ExcludedPages` and `IncludedPages` in the
    #   same operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] favorite_pages
    #   A list of pages in your application that are to be displayed with a
    #   "favorite" icon in the CloudWatch RUM console.
    #   @return [Array<String>]
    #
    # @!attribute [rw] guest_role_arn
    #   The ARN of the guest IAM role that is attached to the Amazon Cognito
    #   identity pool that is used to authorize the sending of data to RUM.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   The ID of the Amazon Cognito identity pool that is used to authorize
    #   the sending of data to RUM.
    #   @return [String]
    #
    # @!attribute [rw] included_pages
    #   If this app monitor is to collect data from only certain pages in
    #   your application, this structure lists those pages.
    #
    #   You can't include both `ExcludedPages` and `IncludedPages` in the
    #   same operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_sample_rate
    #   Specifies the portion of user sessions to use for RUM data
    #   collection. Choosing a higher portion gives you more data but also
    #   incurs more costs.
    #
    #   The range for this value is 0 to 1 inclusive. Setting this to 1
    #   means that 100% of user sessions are sampled, and setting it to 0.1
    #   means that 10% of user sessions are sampled.
    #
    #   If you omit this parameter, the default of 0.1 is used, and 10% of
    #   sessions will be sampled.
    #   @return [Float]
    #
    # @!attribute [rw] telemetries
    #   An array that lists the types of telemetry data that this app
    #   monitor is to collect.
    #
    #   * `errors` indicates that RUM collects data about unhandled
    #     JavaScript errors raised by your application.
    #
    #   * `performance` indicates that RUM collects performance data about
    #     how your application and its resources are loaded and rendered.
    #     This includes Core Web Vitals.
    #
    #   * `http` indicates that RUM collects data about HTTP errors thrown
    #     by your application.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/AppMonitorConfiguration AWS API Documentation
    #
    class AppMonitorConfiguration < Struct.new(
      :allow_cookies,
      :enable_x_ray,
      :excluded_pages,
      :favorite_pages,
      :guest_role_arn,
      :identity_pool_id,
      :included_pages,
      :session_sample_rate,
      :telemetries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about the RUM app monitor.
    #
    # @!attribute [rw] id
    #   The unique ID of the app monitor.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the app monitor.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the app monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/AppMonitorDetails AWS API Documentation
    #
    class AppMonitorDetails < Struct.new(
      :id,
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that includes some data about app monitors and their
    # settings.
    #
    # @!attribute [rw] created
    #   The date and time that the app monitor was created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of this app monitor.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time of the most recent changes to this app monitor's
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this app monitor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of this app monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/AppMonitorSummary AWS API Documentation
    #
    class AppMonitorSummary < Struct.new(
      :created,
      :id,
      :last_modified,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines one error caused by a
    # [BatchCreateRumMetricsDefinitions][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for this metric definition.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition
    #   The metric definition that caused this error.
    #   @return [Types::MetricDefinitionRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchCreateRumMetricDefinitionsError AWS API Documentation
    #
    class BatchCreateRumMetricDefinitionsError < Struct.new(
      :error_code,
      :error_message,
      :metric_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_name
    #   The name of the CloudWatch RUM app monitor that is to send the
    #   metrics.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination to send the metrics to. Valid values are
    #   `CloudWatch` and `Evidently`. If you specify `Evidently`, you must
    #   also specify the ARN of the CloudWatchEvidently experiment that will
    #   receive the metrics and an IAM role that has permission to write to
    #   the experiment.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that is
    #   to receive the metrics. You must have already defined this
    #   experiment as a valid destination. For more information, see
    #   [PutRumMetricsDestination][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html
    #   @return [String]
    #
    # @!attribute [rw] metric_definitions
    #   An array of structures which define the metrics that you want to
    #   send.
    #   @return [Array<Types::MetricDefinitionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchCreateRumMetricDefinitionsRequest AWS API Documentation
    #
    class BatchCreateRumMetricDefinitionsRequest < Struct.new(
      :app_monitor_name,
      :destination,
      :destination_arn,
      :metric_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   An array of error objects, if the operation caused any errors.
    #   @return [Array<Types::BatchCreateRumMetricDefinitionsError>]
    #
    # @!attribute [rw] metric_definitions
    #   An array of structures that define the extended metrics.
    #   @return [Array<Types::MetricDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchCreateRumMetricDefinitionsResponse AWS API Documentation
    #
    class BatchCreateRumMetricDefinitionsResponse < Struct.new(
      :errors,
      :metric_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines one error caused by a
    # [BatchCreateRumMetricsDefinitions][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchDeleteRumMetricsDefinitions.html
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for this metric definition.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition_id
    #   The ID of the metric definition that caused this error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchDeleteRumMetricDefinitionsError AWS API Documentation
    #
    class BatchDeleteRumMetricDefinitionsError < Struct.new(
      :error_code,
      :error_message,
      :metric_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_name
    #   The name of the CloudWatch RUM app monitor that is sending these
    #   metrics.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Defines the destination where you want to stop sending the specified
    #   metrics. Valid values are `CloudWatch` and `Evidently`. If you
    #   specify `Evidently`, you must also specify the ARN of the
    #   CloudWatchEvidently experiment that is to be the destination and an
    #   IAM role that has permission to write to the experiment.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that
    #   was receiving the metrics that are being deleted.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition_ids
    #   An array of structures which define the metrics that you want to
    #   stop sending.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchDeleteRumMetricDefinitionsRequest AWS API Documentation
    #
    class BatchDeleteRumMetricDefinitionsRequest < Struct.new(
      :app_monitor_name,
      :destination,
      :destination_arn,
      :metric_definition_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   An array of error objects, if the operation caused any errors.
    #   @return [Array<Types::BatchDeleteRumMetricDefinitionsError>]
    #
    # @!attribute [rw] metric_definition_ids
    #   The IDs of the metric definitions that were deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchDeleteRumMetricDefinitionsResponse AWS API Documentation
    #
    class BatchDeleteRumMetricDefinitionsResponse < Struct.new(
      :errors,
      :metric_definition_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_name
    #   The name of the CloudWatch RUM app monitor that is sending the
    #   metrics.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The type of destination that you want to view metrics for. Valid
    #   values are `CloudWatch` and `Evidently`.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that
    #   corresponds to the destination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. The
    #   default is 50. The maximum that you can specify is 100.
    #
    #   To retrieve the remaining results, make another call with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchGetRumMetricDefinitionsRequest AWS API Documentation
    #
    class BatchGetRumMetricDefinitionsRequest < Struct.new(
      :app_monitor_name,
      :destination,
      :destination_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_definitions
    #   An array of structures that display information about the metrics
    #   that are sent by the specified app monitor to the specified
    #   destination.
    #   @return [Array<Types::MetricDefinition>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent operation to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchGetRumMetricDefinitionsResponse AWS API Documentation
    #
    class BatchGetRumMetricDefinitionsResponse < Struct.new(
      :metric_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation attempted to create a resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor. If you are using Amazon Cognito for authorization, you must
    #   include this structure in your request, and it must include the ID
    #   of the Amazon Cognito identity pool to use for authorization. If you
    #   don't include `AppMonitorConfiguration`, you must set up your own
    #   authorization method. For more information, see [Authorize your
    #   application to send data to Amazon Web Services][1].
    #
    #   If you omit this argument, the sample rate used for RUM is set to
    #   10% of the user sessions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html
    #   @return [Types::AppMonitorConfiguration]
    #
    # @!attribute [rw] custom_events
    #   Specifies whether this app monitor allows the web client to define
    #   and send custom events. If you omit this parameter, custom events
    #   are `DISABLED`.
    #
    #   For more information about custom events, see [Send custom
    #   events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html
    #   @return [Types::CustomEvents]
    #
    # @!attribute [rw] cw_log_enabled
    #   Data collected by RUM is kept by RUM for 30 days and then deleted.
    #   This parameter specifies whether RUM sends a copy of this telemetry
    #   data to Amazon CloudWatch Logs in your account. This enables you to
    #   keep the telemetry data for more than 30 days, but it does incur
    #   Amazon CloudWatch Logs charges.
    #
    #   If you omit this parameter, the default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the app monitor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the app monitor.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with an app monitor.
    #
    #   For more information, see [Tagging Amazon Web Services
    #   resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CreateAppMonitorRequest AWS API Documentation
    #
    class CreateAppMonitorRequest < Struct.new(
      :app_monitor_configuration,
      :custom_events,
      :cw_log_enabled,
      :domain,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique ID of the new app monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CreateAppMonitorResponse AWS API Documentation
    #
    class CreateAppMonitorResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about custom events for this app
    # monitor.
    #
    # @!attribute [rw] status
    #   Specifies whether this app monitor allows the web client to define
    #   and send custom events. The default is for custom events to be
    #   `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CustomEvents AWS API Documentation
    #
    class CustomEvents < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the information about whether the app
    # monitor stores copies of the data that RUM collects in CloudWatch
    # Logs. If it does, this structure also contains the name of the log
    # group.
    #
    # @!attribute [rw] cw_log_enabled
    #   Indicated whether the app monitor stores copies of the data that RUM
    #   collects in CloudWatch Logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] cw_log_group
    #   The name of the log group where the copies are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CwLog AWS API Documentation
    #
    class CwLog < Struct.new(
      :cw_log_enabled,
      :cw_log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about whether this app monitor
    # stores a copy of the telemetry data that RUM collects using CloudWatch
    # Logs.
    #
    # @!attribute [rw] cw_log
    #   A structure that contains the information about whether the app
    #   monitor stores copies of the data that RUM collects in CloudWatch
    #   Logs. If it does, this structure also contains the name of the log
    #   group.
    #   @return [Types::CwLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DataStorage AWS API Documentation
    #
    class DataStorage < Struct.new(
      :cw_log)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the app monitor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteAppMonitorRequest AWS API Documentation
    #
    class DeleteAppMonitorRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteAppMonitorResponse AWS API Documentation
    #
    class DeleteAppMonitorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_monitor_name
    #   The name of the app monitor that is sending metrics to the
    #   destination that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The type of destination to delete. Valid values are `CloudWatch` and
    #   `Evidently`.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter. This
    #   parameter specifies the ARN of the Evidently experiment that
    #   corresponds to the destination to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteRumMetricsDestinationRequest AWS API Documentation
    #
    class DeleteRumMetricsDestinationRequest < Struct.new(
      :app_monitor_name,
      :destination,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteRumMetricsDestinationResponse AWS API Documentation
    #
    class DeleteRumMetricsDestinationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] filters
    #   An array of structures that you can use to filter the results to
    #   those that match one or more sets of key-value pairs that you
    #   specify.
    #   @return [Array<Types::QueryFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the app monitor that collected the data that you want to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] time_range
    #   A structure that defines the time range that you want to retrieve
    #   results from.
    #   @return [Types::TimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitorDataRequest AWS API Documentation
    #
    class GetAppMonitorDataRequest < Struct.new(
      :filters,
      :max_results,
      :name,
      :next_token,
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events that RUM collected that match your request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent operation to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitorDataResponse AWS API Documentation
    #
    class GetAppMonitorDataResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The app monitor to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitorRequest AWS API Documentation
    #
    class GetAppMonitorRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor
    #   A structure containing all the configuration information for the app
    #   monitor.
    #   @return [Types::AppMonitor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitorResponse AWS API Documentation
    #
    class GetAppMonitorResponse < Struct.new(
      :app_monitor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal service exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The value of a parameter in the request caused an error.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. The
    #   default is 50. The maximum that you can specify is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListAppMonitorsRequest AWS API Documentation
    #
    class ListAppMonitorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_summaries
    #   An array of structures that contain information about the returned
    #   app monitors.
    #   @return [Array<Types::AppMonitorSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent operation to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListAppMonitorsResponse AWS API Documentation
    #
    class ListAppMonitorsResponse < Struct.new(
      :app_monitor_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_name
    #   The name of the app monitor associated with the destinations that
    #   you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. The
    #   default is 50. The maximum that you can specify is 100.
    #
    #   To retrieve the remaining results, make another call with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListRumMetricsDestinationsRequest AWS API Documentation
    #
    class ListRumMetricsDestinationsRequest < Struct.new(
      :app_monitor_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destinations
    #   The list of CloudWatch RUM extended metrics destinations associated
    #   with the app monitor that you specified.
    #   @return [Array<Types::MetricDestinationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent operation to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListRumMetricsDestinationsResponse AWS API Documentation
    #
    class ListRumMetricsDestinationsResponse < Struct.new(
      :destinations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you want to see the tags of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you are viewing.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that displays the definition of one extended metric that
    # RUM sends to CloudWatch or CloudWatch Evidently. For more information,
    # see [ Additional metrics that you can send to CloudWatch and
    # CloudWatch Evidently][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html
    #
    # @!attribute [rw] dimension_keys
    #   This field is a map of field paths to dimension names. It defines
    #   the dimensions to associate with this metric in CloudWatch The value
    #   of this field is used only if the metric destination is
    #   `CloudWatch`. If the metric destination is `Evidently`, the value of
    #   `DimensionKeys` is ignored.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] event_pattern
    #   The pattern that defines the metric. RUM checks events that happen
    #   in a user's session against the pattern, and events that match the
    #   pattern are sent to the metric destination.
    #
    #   If the metrics destination is `CloudWatch` and the event also
    #   matches a value in `DimensionKeys`, then the metric is published
    #   with the specified dimensions.
    #   @return [String]
    #
    # @!attribute [rw] metric_definition_id
    #   The ID of this metric definition.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the metric that is defined in this structure.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   If this metric definition is for a custom metric instead of an
    #   extended metric, this field displays the metric namespace that the
    #   custom metric is published to.
    #   @return [String]
    #
    # @!attribute [rw] unit_label
    #   Use this field only if you are sending this metric to CloudWatch. It
    #   defines the CloudWatch metric unit that this metric is measured in.
    #   @return [String]
    #
    # @!attribute [rw] value_key
    #   The field within the event object that the metric value is sourced
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/MetricDefinition AWS API Documentation
    #
    class MetricDefinition < Struct.new(
      :dimension_keys,
      :event_pattern,
      :metric_definition_id,
      :name,
      :namespace,
      :unit_label,
      :value_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to define one extended metric or custom metric that
    # RUM will send to CloudWatch or CloudWatch Evidently. For more
    # information, see [ Additional metrics that you can send to CloudWatch
    # and CloudWatch Evidently][1].
    #
    # This structure is validated differently for extended metrics and
    # custom metrics. For extended metrics that are sent to the `AWS/RUM`
    # namespace, the following validations apply:
    #
    # * The `Namespace` parameter must be omitted or set to `AWS/RUM`.
    #
    # * Only certain combinations of values for `Name`, `ValueKey`, and
    #   `EventPattern` are valid. In addition to what is displayed in the
    #   list below, the `EventPattern` can also include information used by
    #   the `DimensionKeys` field.
    #
    #   * If `Name` is `PerformanceNavigationDuration`, then `ValueKey`must
    #     be `event_details.duration` and the `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.performance_navigation_event"]\}`
    #
    #   * If `Name` is `PerformanceResourceDuration`, then `ValueKey`must be
    #     `event_details.duration` and the `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.performance_resource_event"]\}`
    #
    #   * If `Name` is `NavigationSatisfiedTransaction`, then `ValueKey`must
    #     be null and the `EventPattern` must include `\{ "event_type":
    #     ["com.amazon.rum.performance_navigation_event"], "event_details":
    #     \{ "duration": [\{ "numeric": [">",2000] \}] \} \}`
    #
    #   * If `Name` is `NavigationToleratedTransaction`, then `ValueKey`must
    #     be null and the `EventPattern` must include `\{ "event_type":
    #     ["com.amazon.rum.performance_navigation_event"], "event_details":
    #     \{ "duration": [\{ "numeric": [">=",2000,"<"8000] \}] \} \}`
    #
    #   * If `Name` is `NavigationFrustratedTransaction`, then
    #     `ValueKey`must be null and the `EventPattern` must include `\{
    #     "event_type": ["com.amazon.rum.performance_navigation_event"],
    #     "event_details": \{ "duration": [\{ "numeric": [">=",8000] \}] \}
    #     \}`
    #
    #   * If `Name` is `WebVitalsCumulativeLayoutShift`, then `ValueKey`must
    #     be `event_details.value` and the `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.cumulative_layout_shift_event"]\}`
    #
    #   * If `Name` is `WebVitalsFirstInputDelay`, then `ValueKey`must be
    #     `event_details.value` and the `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.first_input_delay_event"]\}`
    #
    #   * If `Name` is `WebVitalsLargestContentfulPaint`, then
    #     `ValueKey`must be `event_details.value` and the `EventPattern`
    #     must include
    #     `\{"event_type":["com.amazon.rum.largest_contentful_paint_event"]\}`
    #
    #   * If `Name` is `JsErrorCount`, then `ValueKey`must be null and the
    #     `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.js_error_event"]\}`
    #
    #   * If `Name` is `HttpErrorCount`, then `ValueKey`must be null and the
    #     `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.http_event"]\}`
    #
    #   * If `Name` is `SessionCount`, then `ValueKey`must be null and the
    #     `EventPattern` must include
    #     `\{"event_type":["com.amazon.rum.session_start_event"]\}`
    #
    # For custom metrics, the following validation rules apply:
    #
    # * The namespace can't be omitted and can't be `AWS/RUM`. You can use
    #   the `AWS/RUM` namespace only for extended metrics.
    #
    # * All dimensions listed in the `DimensionKeys` field must be present
    #   in the value of `EventPattern`.
    #
    # * The values that you specify for `ValueKey`, `EventPattern`, and
    #   `DimensionKeys` must be fields in RUM events, so all first-level
    #   keys in these fields must be one of the keys in the list later in
    #   this section.
    #
    # * If you set a value for `EventPattern`, it must be a JSON object.
    #
    # * For every non-empty `event_details`, there must be a non-empty
    #   `event_type`.
    #
    # * If `EventPattern` contains an `event_details` field, it must also
    #   contain an `event_type`. For every built-in `event_type` that you
    #   use, you must use a value for `event_details` that corresponds to
    #   that `event_type`. For information about event details that
    #   correspond to event types, see [ RUM event details][2].
    #
    # * In `EventPattern`, any JSON array must contain only one value.
    #
    # Valid key values for first-level keys in the `ValueKey`,
    # `EventPattern`, and `DimensionKeys` fields:
    #
    # * `account_id`
    #
    # * `application_Id`
    #
    # * `application_version`
    #
    # * `application_name`
    #
    # * `batch_id`
    #
    # * `event_details`
    #
    # * `event_id`
    #
    # * `event_interaction`
    #
    # * `event_timestamp`
    #
    # * `event_type`
    #
    # * `event_version`
    #
    # * `log_stream`
    #
    # * `metadata`
    #
    # * `sessionId`
    #
    # * `user_details`
    #
    # * `userId`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-datacollected.html#CloudWatch-RUM-datacollected-eventDetails
    #
    # @!attribute [rw] dimension_keys
    #   Use this field only if you are sending the metric to CloudWatch.
    #
    #   This field is a map of field paths to dimension names. It defines
    #   the dimensions to associate with this metric in CloudWatch. For
    #   extended metrics, valid values for the entries in this field are the
    #   following:
    #
    #   * `"metadata.pageId": "PageId"`
    #
    #   * `"metadata.browserName": "BrowserName"`
    #
    #   * `"metadata.deviceType": "DeviceType"`
    #
    #   * `"metadata.osName": "OSName"`
    #
    #   * `"metadata.countryCode": "CountryCode"`
    #
    #   * `"event_details.fileType": "FileType"`
    #
    #   For both extended metrics and custom metrics, all dimensions listed
    #   in this field must also be included in `EventPattern`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] event_pattern
    #   The pattern that defines the metric, specified as a JSON object. RUM
    #   checks events that happen in a user's session against the pattern,
    #   and events that match the pattern are sent to the metric
    #   destination.
    #
    #   When you define extended metrics, the metric definition is not valid
    #   if `EventPattern` is omitted.
    #
    #   Example event patterns:
    #
    #   * `'\{ "event_type": ["com.amazon.rum.js_error_event"], "metadata":
    #     \{ "browserName": [ "Chrome", "Safari" ], \} \}'`
    #
    #   * `'\{ "event_type":
    #     ["com.amazon.rum.performance_navigation_event"], "metadata": \{
    #     "browserName": [ "Chrome", "Firefox" ] \}, "event_details": \{
    #     "duration": [\{ "numeric": [ "<", 2000 ] \}] \} \}'`
    #
    #   * `'\{ "event_type":
    #     ["com.amazon.rum.performance_navigation_event"], "metadata": \{
    #     "browserName": [ "Chrome", "Safari" ], "countryCode": [ "US" ] \},
    #     "event_details": \{ "duration": [\{ "numeric": [ ">=", 2000, "<",
    #     8000 ] \}] \} \}'`
    #
    #   If the metrics destination' is `CloudWatch` and the event also
    #   matches a value in `DimensionKeys`, then the metric is published
    #   with the specified dimensions.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the metric that is defined in this structure. For
    #   custom metrics, you can specify any name that you like. For extended
    #   metrics, valid values are the following:
    #
    #   * `PerformanceNavigationDuration`
    #
    #   * `PerformanceResourceDuration `
    #
    #   * `NavigationSatisfiedTransaction`
    #
    #   * `NavigationToleratedTransaction`
    #
    #   * `NavigationFrustratedTransaction`
    #
    #   * `WebVitalsCumulativeLayoutShift`
    #
    #   * `WebVitalsFirstInputDelay`
    #
    #   * `WebVitalsLargestContentfulPaint`
    #
    #   * `JsErrorCount`
    #
    #   * `HttpErrorCount`
    #
    #   * `SessionCount`
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   If this structure is for a custom metric instead of an extended
    #   metrics, use this parameter to define the metric namespace for that
    #   custom metric. Do not specify this parameter if this structure is
    #   for an extended metric.
    #
    #   You cannot use any string that starts with `AWS/` for your
    #   namespace.
    #   @return [String]
    #
    # @!attribute [rw] unit_label
    #   The CloudWatch metric unit to use for this metric. If you omit this
    #   field, the metric is recorded with no unit.
    #   @return [String]
    #
    # @!attribute [rw] value_key
    #   The field within the event object that the metric value is sourced
    #   from.
    #
    #   If you omit this field, a hardcoded value of 1 is pushed as the
    #   metric value. This is useful if you just want to count the number of
    #   events that the filter catches.
    #
    #   If this metric is sent to CloudWatch Evidently, this field will be
    #   passed to Evidently raw and Evidently will handle data extraction
    #   from the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/MetricDefinitionRequest AWS API Documentation
    #
    class MetricDefinitionRequest < Struct.new(
      :dimension_keys,
      :event_pattern,
      :name,
      :namespace,
      :unit_label,
      :value_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that displays information about one destination that
    # CloudWatch RUM sends extended metrics to.
    #
    # @!attribute [rw] destination
    #   Specifies whether the destination is `CloudWatch` or `Evidently`.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   If the destination is `Evidently`, this specifies the ARN of the
    #   Evidently experiment that receives the metrics.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   This field appears only when the destination is `Evidently`. It
    #   specifies the ARN of the IAM role that is used to write to the
    #   Evidently experiment that receives the metrics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/MetricDestinationSummary AWS API Documentation
    #
    class MetricDestinationSummary < Struct.new(
      :destination,
      :destination_arn,
      :iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_monitor_details
    #   A structure that contains information about the app monitor that
    #   collected this telemetry information.
    #   @return [Types::AppMonitorDetails]
    #
    # @!attribute [rw] batch_id
    #   A unique identifier for this batch of RUM event data.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the app monitor that is sending this data.
    #   @return [String]
    #
    # @!attribute [rw] rum_events
    #   An array of structures that contain the telemetry event data.
    #   @return [Array<Types::RumEvent>]
    #
    # @!attribute [rw] user_details
    #   A structure that contains information about the user session that
    #   this batch of events was collected from.
    #   @return [Types::UserDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumEventsRequest AWS API Documentation
    #
    class PutRumEventsRequest < Struct.new(
      :app_monitor_details,
      :batch_id,
      :id,
      :rum_events,
      :user_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumEventsResponse AWS API Documentation
    #
    class PutRumEventsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_monitor_name
    #   The name of the CloudWatch RUM app monitor that will send the
    #   metrics.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Defines the destination to send the metrics to. Valid values are
    #   `CloudWatch` and `Evidently`. If you specify `Evidently`, you must
    #   also specify the ARN of the CloudWatchEvidently experiment that is
    #   to be the destination and an IAM role that has permission to write
    #   to the experiment.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   Use this parameter only if `Destination` is `Evidently`. This
    #   parameter specifies the ARN of the Evidently experiment that will
    #   receive the extended metrics.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of an IAM role that RUM will assume
    #   to write to the Evidently experiment that you are sending metrics
    #   to. This role must have permission to write to that experiment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumMetricsDestinationRequest AWS API Documentation
    #
    class PutRumMetricsDestinationRequest < Struct.new(
      :app_monitor_name,
      :destination,
      :destination_arn,
      :iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumMetricsDestinationResponse AWS API Documentation
    #
    class PutRumMetricsDestinationResponse < Aws::EmptyStructure; end

    # A structure that defines a key and values that you can use to filter
    # the results. The only performance events that are returned are those
    # that have values matching the ones that you specify in one of your
    # `QueryFilter` structures.
    #
    # For example, you could specify `Browser` as the `Name` and specify
    # `Chrome,Firefox` as the `Values` to return events generated only from
    # those browsers.
    #
    # Specifying `Invert` as the `Name` works as a "not equal to" filter.
    # For example, specify `Invert` as the `Name` and specify `Chrome` as
    # the value to return all events except events from user sessions with
    # the Chrome browser.
    #
    # @!attribute [rw] name
    #   The name of a key to search for. The filter returns only the events
    #   that match the `Name` and `Values` that you specify.
    #
    #   Valid values for `Name` are `Browser` \| `Device` \| `Country` \|
    #   `Page` \| `OS` \| `EventType` \| `Invert`
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the `Name` that are to be be included in the returned
    #   results.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/QueryFilter AWS API Documentation
    #
    class QueryFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the information for one performance event
    # that RUM collects from a user session with your application.
    #
    # @!attribute [rw] details
    #   A string containing details about the event.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID for this event.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata about this event, which contains a JSON serialization of
    #   the identity of the user for this session. The user information
    #   comes from information such as the HTTP user-agent request header
    #   and document interface.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The exact time that this event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The JSON schema that denotes the type of event this is, such as a
    #   page load or a new session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/RumEvent AWS API Documentation
    #
    class RumEvent < Struct.new(
      :details,
      :id,
      :metadata,
      :timestamp,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch RUM resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled because of quota limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The value of a parameter in the request caused an error.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The ID of the service that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines the time range that you want to retrieve
    # results from.
    #
    # @!attribute [rw] after
    #   The beginning of the time range to retrieve performance events from.
    #   @return [Integer]
    #
    # @!attribute [rw] before
    #   The end of the time range to retrieve performance events from. If
    #   you omit this, the time range extends to the time that this
    #   operation is performed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :after,
      :before)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch RUM resource that you're removing tags
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor. If you are using Amazon Cognito for authorization, you must
    #   include this structure in your request, and it must include the ID
    #   of the Amazon Cognito identity pool to use for authorization. If you
    #   don't include `AppMonitorConfiguration`, you must set up your own
    #   authorization method. For more information, see [Authorize your
    #   application to send data to Amazon Web Services][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html
    #   @return [Types::AppMonitorConfiguration]
    #
    # @!attribute [rw] custom_events
    #   Specifies whether this app monitor allows the web client to define
    #   and send custom events. The default is for custom events to be
    #   `DISABLED`.
    #
    #   For more information about custom events, see [Send custom
    #   events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html
    #   @return [Types::CustomEvents]
    #
    # @!attribute [rw] cw_log_enabled
    #   Data collected by RUM is kept by RUM for 30 days and then deleted.
    #   This parameter specifies whether RUM sends a copy of this telemetry
    #   data to Amazon CloudWatch Logs in your account. This enables you to
    #   keep the telemetry data for more than 30 days, but it does incur
    #   Amazon CloudWatch Logs charges.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the app monitor to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateAppMonitorRequest AWS API Documentation
    #
    class UpdateAppMonitorRequest < Struct.new(
      :app_monitor_configuration,
      :custom_events,
      :cw_log_enabled,
      :domain,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateAppMonitorResponse AWS API Documentation
    #
    class UpdateAppMonitorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_monitor_name
    #   The name of the CloudWatch RUM app monitor that sends these metrics.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination to send the metrics to. Valid values are
    #   `CloudWatch` and `Evidently`. If you specify `Evidently`, you must
    #   also specify the ARN of the CloudWatchEvidently experiment that will
    #   receive the metrics and an IAM role that has permission to write to
    #   the experiment.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that is
    #   to receive the metrics. You must have already defined this
    #   experiment as a valid destination. For more information, see
    #   [PutRumMetricsDestination][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html
    #   @return [String]
    #
    # @!attribute [rw] metric_definition
    #   A structure that contains the new definition that you want to use
    #   for this metric.
    #   @return [Types::MetricDefinitionRequest]
    #
    # @!attribute [rw] metric_definition_id
    #   The ID of the metric definition to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateRumMetricDefinitionRequest AWS API Documentation
    #
    class UpdateRumMetricDefinitionRequest < Struct.new(
      :app_monitor_name,
      :destination,
      :destination_arn,
      :metric_definition,
      :metric_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateRumMetricDefinitionResponse AWS API Documentation
    #
    class UpdateRumMetricDefinitionResponse < Aws::EmptyStructure; end

    # A structure that contains information about the user session that this
    # batch of events was collected from.
    #
    # @!attribute [rw] session_id
    #   The session ID that the performance events are from.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user for this user session. This ID is generated by
    #   RUM and does not include any personally identifiable information
    #   about the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UserDetails AWS API Documentation
    #
    class UserDetails < Struct.new(
      :session_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the arguments for the request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
