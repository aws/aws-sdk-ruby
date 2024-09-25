# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationSignals
  module Types

    # You don't have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] timestamp
    #   The date and time that you want the report to be for. It is
    #   expressed as the number of milliseconds since Jan 1, 1970 00:00:00
    #   UTC.
    #   @return [Time]
    #
    # @!attribute [rw] slo_ids
    #   An array containing the IDs of the service level objectives that you
    #   want to include in the report.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/BatchGetServiceLevelObjectiveBudgetReportInput AWS API Documentation
    #
    class BatchGetServiceLevelObjectiveBudgetReportInput < Struct.new(
      :timestamp,
      :slo_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] timestamp
    #   The date and time that the report is for. It is expressed as the
    #   number of milliseconds since Jan 1, 1970 00:00:00 UTC.
    #   @return [Time]
    #
    # @!attribute [rw] reports
    #   An array of structures, where each structure is one budget report.
    #   @return [Array<Types::ServiceLevelObjectiveBudgetReport>]
    #
    # @!attribute [rw] errors
    #   An array of structures, where each structure includes an error
    #   indicating that one of the requests in the array was not valid.
    #   @return [Array<Types::ServiceLevelObjectiveBudgetReportError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/BatchGetServiceLevelObjectiveBudgetReportOutput AWS API Documentation
    #
    class BatchGetServiceLevelObjectiveBudgetReportOutput < Struct.new(
      :timestamp,
      :reports,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the interval for this service level objective is a calendar
    # interval, this structure contains the interval specifications.
    #
    # @!attribute [rw] start_time
    #   The date and time when you want the first interval to start. Be sure
    #   to choose a time that configures the intervals the way that you
    #   want. For example, if you want weekly intervals starting on Mondays
    #   at 6 a.m., be sure to specify a start time that is a Monday at 6
    #   a.m.
    #
    #   When used in a raw HTTP Query API, it is formatted as be epoch time
    #   in seconds. For example: `1698778057`
    #
    #   As soon as one calendar interval ends, another automatically begins.
    #   @return [Time]
    #
    # @!attribute [rw] duration_unit
    #   Specifies the calendar interval unit.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Specifies the duration of each calendar interval. For example, if
    #   `Duration` is `1` and `DurationUnit` is `MONTH`, each interval is
    #   one month, aligned with the calendar.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/CalendarInterval AWS API Documentation
    #
    class CalendarInterval < Struct.new(
      :start_time,
      :duration_unit,
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation attempted to create a resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for this SLO.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for this SLO.
    #   @return [String]
    #
    # @!attribute [rw] sli_config
    #   If this SLO is a period-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    #   You can't specify both `RequestBasedSliConfig` and `SliConfig` in
    #   the same operation.
    #   @return [Types::ServiceLevelIndicatorConfig]
    #
    # @!attribute [rw] request_based_sli_config
    #   If this SLO is a request-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    #   You can't specify both `RequestBasedSliConfig` and `SliConfig` in
    #   the same operation.
    #   @return [Types::RequestBasedServiceLevelIndicatorConfig]
    #
    # @!attribute [rw] goal
    #   This structure contains the attributes that determine the goal of
    #   the SLO.
    #   @return [Types::Goal]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the SLO. You can
    #   associate as many as 50 tags with an SLO. To be able to associate
    #   tags with the SLO when you create the SLO, you must have the
    #   `cloudwatch:TagResource` permission.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/CreateServiceLevelObjectiveInput AWS API Documentation
    #
    class CreateServiceLevelObjectiveInput < Struct.new(
      :name,
      :description,
      :sli_config,
      :request_based_sli_config,
      :goal,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slo
    #   A structure that contains information about the SLO that you just
    #   created.
    #   @return [Types::ServiceLevelObjective]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/CreateServiceLevelObjectiveOutput AWS API Documentation
    #
    class CreateServiceLevelObjectiveOutput < Struct.new(
      :slo)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ARN or name of the service level objective to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/DeleteServiceLevelObjectiveInput AWS API Documentation
    #
    class DeleteServiceLevelObjectiveInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/DeleteServiceLevelObjectiveOutput AWS API Documentation
    #
    class DeleteServiceLevelObjectiveOutput < Aws::EmptyStructure; end

    # A dimension is a name/value pair that is part of the identity of a
    # metric. Because dimensions are part of the unique identifier for a
    # metric, whenever you add a unique name/value pair to one of your
    # metrics, you are creating a new variation of that metric. For example,
    # many Amazon EC2 metrics publish `InstanceId` as a dimension name, and
    # the actual instance ID as the value for that dimension.
    #
    # You can assign up to 30 dimensions to a metric.
    #
    # @!attribute [rw] name
    #   The name of the dimension. Dimension names must contain only ASCII
    #   characters, must include at least one non-whitespace character, and
    #   cannot start with a colon (`:`). ASCII control characters are not
    #   supported as part of dimension names.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension. Dimension values must contain only ASCII
    #   characters and must include at least one non-whitespace character.
    #   ASCII control characters are not supported as part of dimension
    #   values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period to retrieve information about. When
    #   used in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/GetServiceInput AWS API Documentation
    #
    class GetServiceInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ARN or name of the SLO that you want to retrieve information
    #   about. You can find the ARNs of SLOs by using the
    #   [ListServiceLevelObjectives][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListServiceLevelObjectives.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/GetServiceLevelObjectiveInput AWS API Documentation
    #
    class GetServiceLevelObjectiveInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slo
    #   A structure containing the information about the SLO.
    #   @return [Types::ServiceLevelObjective]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/GetServiceLevelObjectiveOutput AWS API Documentation
    #
    class GetServiceLevelObjectiveOutput < Struct.new(
      :slo)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A structure containing information about the service.
    #   @return [Types::Service]
    #
    # @!attribute [rw] start_time
    #   The start time of the data included in the response. In a raw HTTP
    #   Query API, it is formatted as be epoch time in seconds. For example:
    #   `1698778057`.
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the data included in the response. In a raw HTTP
    #   Query API, it is formatted as be epoch time in seconds. For example:
    #   `1698778057`.
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] log_group_references
    #   An array of string-to-string maps that each contain information
    #   about one log group associated with this service. Each
    #   string-to-string map includes the following fields:
    #
    #   * `"Type": "AWS::Resource"`
    #
    #   * `"ResourceType": "AWS::Logs::LogGroup"`
    #
    #   * `"Identifier": "name-of-log-group"`
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/GetServiceOutput AWS API Documentation
    #
    class GetServiceOutput < Struct.new(
      :service,
      :start_time,
      :end_time,
      :log_group_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the attributes that determine the goal of an
    # SLO. This includes the time period for evaluation and the attainment
    # threshold.
    #
    # @!attribute [rw] interval
    #   The time period used to evaluate the SLO. It can be either a
    #   calendar interval or rolling interval.
    #
    #   If you omit this parameter, a rolling interval of 7 days is used.
    #   @return [Types::Interval]
    #
    # @!attribute [rw] attainment_goal
    #   The threshold that determines if the goal is being met.
    #
    #   If this is a period-based SLO, the attainment goal is the percentage
    #   of good periods that meet the threshold requirements to the total
    #   periods within the interval. For example, an attainment goal of
    #   99.9% means that within your interval, you are targeting 99.9% of
    #   the periods to be in healthy state.
    #
    #   If this is a request-based SLO, the attainment goal is the
    #   percentage of requests that must be successful to meet the
    #   attainment goal.
    #
    #   If you omit this parameter, 99 is used to represent 99% as the
    #   attainment goal.
    #   @return [Float]
    #
    # @!attribute [rw] warning_threshold
    #   The percentage of remaining budget over total budget that you want
    #   to get warnings for. If you omit this parameter, the default of 50.0
    #   is used.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/Goal AWS API Documentation
    #
    class Goal < Struct.new(
      :interval,
      :attainment_goal,
      :warning_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time period used to evaluate the SLO. It can be either a calendar
    # interval or rolling interval.
    #
    # @note Interval is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Interval is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Interval corresponding to the set member.
    #
    # @!attribute [rw] rolling_interval
    #   If the interval is a rolling interval, this structure contains the
    #   interval specifications.
    #   @return [Types::RollingInterval]
    #
    # @!attribute [rw] calendar_interval
    #   If the interval is a calendar interval, this structure contains the
    #   interval specifications.
    #   @return [Types::CalendarInterval]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/Interval AWS API Documentation
    #
    class Interval < Struct.new(
      :rolling_interval,
      :calendar_interval,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RollingInterval < Interval; end
      class CalendarInterval < Interval; end
      class Unknown < Interval; end
    end

    # @!attribute [rw] start_time
    #   The start of the time period to retrieve information about. When
    #   used in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested end time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. If you
    #   omit this parameter, the default of 50 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service dependencies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceDependenciesInput AWS API Documentation
    #
    class ListServiceDependenciesInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period that the returned information applies
    #   to. When used in a raw HTTP Query API, it is formatted as be epoch
    #   time in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period that the returned information applies to.
    #   When used in a raw HTTP Query API, it is formatted as be epoch time
    #   in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] service_dependencies
    #   An array, where each object in the array contains information about
    #   one of the dependencies of this service.
    #   @return [Array<Types::ServiceDependency>]
    #
    # @!attribute [rw] next_token
    #   Include this value in your next use of this API to get next set of
    #   service dependencies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceDependenciesOutput AWS API Documentation
    #
    class ListServiceDependenciesOutput < Struct.new(
      :start_time,
      :end_time,
      :service_dependencies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period to retrieve information about. When
    #   used in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. If you
    #   omit this parameter, the default of 50 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service dependents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceDependentsInput AWS API Documentation
    #
    class ListServiceDependentsInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period that the returned information applies
    #   to. When used in a raw HTTP Query API, it is formatted as be epoch
    #   time in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period that the returned information applies to.
    #   When used in a raw HTTP Query API, it is formatted as be epoch time
    #   in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] service_dependents
    #   An array, where each object in the array contains information about
    #   one of the dependents of this service.
    #   @return [Array<Types::ServiceDependent>]
    #
    # @!attribute [rw] next_token
    #   Include this value in your next use of this API to get next set of
    #   service dependents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceDependentsOutput AWS API Documentation
    #
    class ListServiceDependentsOutput < Struct.new(
      :start_time,
      :end_time,
      :service_dependents,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_attributes
    #   You can use this optional field to specify which services you want
    #   to retrieve SLO information for.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_name
    #   The name of the operation that this SLO is associated with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. If you
    #   omit this parameter, the default of 50 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service level objectives.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceLevelObjectivesInput AWS API Documentation
    #
    class ListServiceLevelObjectivesInput < Struct.new(
      :key_attributes,
      :operation_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slo_summaries
    #   An array of structures, where each structure contains information
    #   about one SLO.
    #   @return [Array<Types::ServiceLevelObjectiveSummary>]
    #
    # @!attribute [rw] next_token
    #   Include this value in your next use of this API to get next set of
    #   service level objectives.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceLevelObjectivesOutput AWS API Documentation
    #
    class ListServiceLevelObjectivesOutput < Struct.new(
      :slo_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period to retrieve information about. When
    #   used in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested end time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. If you
    #   omit this parameter, the default of 50 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceOperationsInput AWS API Documentation
    #
    class ListServiceOperationsInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period that the returned information applies
    #   to. When used in a raw HTTP Query API, it is formatted as be epoch
    #   time in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period that the returned information applies to.
    #   When used in a raw HTTP Query API, it is formatted as be epoch time
    #   in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] service_operations
    #   An array of structures that each contain information about one
    #   operation of this service.
    #   @return [Array<Types::ServiceOperation>]
    #
    # @!attribute [rw] next_token
    #   Include this value in your next use of this API to get next set of
    #   service operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceOperationsOutput AWS API Documentation
    #
    class ListServiceOperationsOutput < Struct.new(
      :start_time,
      :end_time,
      :service_operations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period to retrieve information about. When
    #   used in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in
    #   seconds. For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. If you
    #   omit this parameter, the default of 50 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServicesInput AWS API Documentation
    #
    class ListServicesInput < Struct.new(
      :start_time,
      :end_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The start of the time period that the returned information applies
    #   to. When used in a raw HTTP Query API, it is formatted as be epoch
    #   time in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period that the returned information applies to.
    #   When used in a raw HTTP Query API, it is formatted as be epoch time
    #   in seconds. For example: `1698778057`
    #
    #   This displays the time that Application Signals used for the
    #   request. It might not match your request exactly, because it was
    #   rounded to the nearest hour.
    #   @return [Time]
    #
    # @!attribute [rw] service_summaries
    #   An array of structures, where each structure contains some
    #   information about a service. To get complete information about a
    #   service, use [GetService][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetService.html
    #   @return [Array<Types::ServiceSummary>]
    #
    # @!attribute [rw] next_token
    #   Include this value in your next use of this API to get next set of
    #   services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServicesOutput AWS API Documentation
    #
    class ListServicesOutput < Struct.new(
      :start_time,
      :end_time,
      :service_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch resource that you
    #   want to view tags for.
    #
    #   The ARN format of an Application Signals SLO is
    #   `arn:aws:cloudwatch:Region:account-id:slo:slo-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined
    #   by Amazon CloudWatch][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the metric used for a service level indicator,
    # including the metric name, namespace, and dimensions
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric. For more information, see
    #   [Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to use.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   An array of one or more dimensions to use to define the metric that
    #   you want to use. For more information, see [Dimensions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/Metric AWS API Documentation
    #
    class Metric < Struct.new(
      :namespace,
      :metric_name,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to define a metric or metric math expression that
    # you want to use as for a service level objective.
    #
    # Each `MetricDataQuery` in the `MetricDataQueries` array specifies
    # either a metric to retrieve, or a metric math expression to be
    # performed on retrieved metrics. A single `MetricDataQueries` array can
    # include as many as 20 `MetricDataQuery` structures in the array. The
    # 20 structures can include as many as 10 structures that contain a
    # `MetricStat` parameter to retrieve a metric, and as many as 10
    # structures that contain the `Expression` parameter to perform a math
    # expression. Of those `Expression` structures, exactly one must have
    # true as the value for `ReturnData`. The result of this expression used
    # for the SLO.
    #
    # For more information about metric math expressions, see [CloudWatchUse
    # metric math][1].
    #
    # Within each `MetricDataQuery` object, you must specify either
    # `Expression` or `MetricStat` but not both.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html
    #
    # @!attribute [rw] id
    #   A short name used to tie this object to the results in the response.
    #   This `Id` must be unique within a `MetricDataQueries` array. If you
    #   are performing math expressions on this set of data, this name
    #   represents that data and can serve as a variable in the metric math
    #   expression. The valid characters are letters, numbers, and
    #   underscore. The first character must be a lowercase letter.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   A metric to be used directly for the SLO, or to be used in the math
    #   expression that will be used for the SLO.
    #
    #   Within one `MetricDataQuery` object, you must specify either
    #   `Expression` or `MetricStat` but not both.
    #   @return [Types::MetricStat]
    #
    # @!attribute [rw] expression
    #   This field can contain a metric math expression to be performed on
    #   the other metrics that you are retrieving within this
    #   `MetricDataQueries` structure.
    #
    #   A math expression can use the `Id` of the other metrics or queries
    #   to refer to those metrics, and can also use the `Id` of other
    #   expressions to use the result of those expressions. For more
    #   information about metric math expressions, see [Metric Math Syntax
    #   and Functions][1] in the *Amazon CloudWatch User Guide*.
    #
    #   Within each `MetricDataQuery` object, you must specify either
    #   `Expression` or `MetricStat` but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A human-readable label for this metric or expression. This is
    #   especially useful if this is an expression, so that you know what
    #   the value represents. If the metric or expression is shown in a
    #   CloudWatch dashboard widget, the label is shown. If `Label` is
    #   omitted, CloudWatch generates a default.
    #
    #   You can put dynamic expressions into a label, so that it is more
    #   descriptive. For more information, see [Using Dynamic Labels][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html
    #   @return [String]
    #
    # @!attribute [rw] return_data
    #   Use this only if you are using a metric math expression for the SLO.
    #   Specify `true` for `ReturnData` for only the one expression result
    #   to use as the alarm. For all other metrics and expressions in the
    #   same `CreateServiceLevelObjective` operation, specify `ReturnData`
    #   as `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points for this
    #   metric. For metrics with regular resolution, a period can be as
    #   short as one minute (60 seconds) and must be a multiple of 60. For
    #   high-resolution metrics that are collected at intervals of less than
    #   one minute, the period can be 1, 5, 10, 30, 60, or any multiple of
    #   60. High-resolution metrics are those metrics stored by a
    #   `PutMetricData` call that includes a `StorageResolution` of 1
    #   second.
    #
    #   If the `StartTime` parameter specifies a time stamp that is greater
    #   than 3 hours ago, you must specify the period as follows or no data
    #   points in that time range is returned:
    #
    #   * Start time between 3 hours and 15 days ago - Use a multiple of 60
    #     seconds (1 minute).
    #
    #   * Start time between 15 and 63 days ago - Use a multiple of 300
    #     seconds (5 minutes).
    #
    #   * Start time greater than 63 days ago - Use a multiple of 3600
    #     seconds (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] account_id
    #   The ID of the account where this metric is located. If you are
    #   performing this operation in a monitoring account, use this to
    #   specify which source account to retrieve this metric from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/MetricDataQuery AWS API Documentation
    #
    class MetricDataQuery < Struct.new(
      :id,
      :metric_stat,
      :expression,
      :label,
      :return_data,
      :period,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one CloudWatch metric
    # associated with this entity discovered by Application Signals.
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric. For more information, see
    #   [CloudWatchNamespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   Used to display the appropriate statistics in the CloudWatch
    #   console.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   An array of one or more dimensions that further define the metric.
    #   For more information, see [CloudWatchDimensions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/MetricReference AWS API Documentation
    #
    class MetricReference < Struct.new(
      :namespace,
      :metric_type,
      :dimensions,
      :metric_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the metric to be used as the service level
    # indicator, along with the statistics, period, and unit.
    #
    # @!attribute [rw] metric
    #   The metric to use as the service level indicator, including the
    #   metric name, namespace, and dimensions.
    #   @return [Types::Metric]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, to be used for the metric. For metrics
    #   with regular resolution, a period can be as short as one minute (60
    #   seconds) and must be a multiple of 60. For high-resolution metrics
    #   that are collected at intervals of less than one minute, the period
    #   can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution
    #   metrics are those metrics stored by a `PutMetricData` call that
    #   includes a `StorageResolution` of 1 second.
    #   @return [Integer]
    #
    # @!attribute [rw] stat
    #   The statistic to use for comparison to the threshold. It can be any
    #   CloudWatch statistic or extended statistic. For more information
    #   about statistics, see [CloudWatch statistics definitions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   If you omit `Unit` then all data that was collected with any unit is
    #   returned, along with the corresponding units that were specified
    #   when the data was reported to CloudWatch. If you specify a unit, the
    #   operation returns only data that was collected with that unit
    #   specified. If you specify a unit that does not match the data
    #   collected, the results of the operation are null. CloudWatch does
    #   not perform unit conversions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/MetricStat AWS API Documentation
    #
    class MetricStat < Struct.new(
      :metric,
      :period,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the metric that is used as the "good request"
    # or "bad request" value for a request-based SLO. This value observed
    # for the metric defined in `TotalRequestCountMetric` is divided by the
    # number found for `MonitoredRequestCountMetric` to determine the
    # percentage of successful requests that this SLO tracks.
    #
    # @note MonitoredRequestCountMetricDataQueries is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MonitoredRequestCountMetricDataQueries is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MonitoredRequestCountMetricDataQueries corresponding to the set member.
    #
    # @!attribute [rw] good_count_metric
    #   If you want to count "good requests" to determine the percentage
    #   of successful requests for this request-based SLO, specify the
    #   metric to use as "good requests" in this structure.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] bad_count_metric
    #   If you want to count "bad requests" to determine the percentage of
    #   successful requests for this request-based SLO, specify the metric
    #   to use as "bad requests" in this structure.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/MonitoredRequestCountMetricDataQueries AWS API Documentation
    #
    class MonitoredRequestCountMetricDataQueries < Struct.new(
      :good_count_metric,
      :bad_count_metric,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GoodCountMetric < MonitoredRequestCountMetricDataQueries; end
      class BadCountMetric < MonitoredRequestCountMetricDataQueries; end
      class Unknown < MonitoredRequestCountMetricDataQueries; end
    end

    # This structure contains information about the performance metric that
    # a request-based SLO monitors.
    #
    # @!attribute [rw] request_based_sli_metric
    #   A structure that contains information about the metric that the SLO
    #   monitors.
    #   @return [Types::RequestBasedServiceLevelIndicatorMetric]
    #
    # @!attribute [rw] metric_threshold
    #   This value is the threshold that the observed metric values of the
    #   SLI metric are compared to.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation used when comparing the specified metric to
    #   the threshold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/RequestBasedServiceLevelIndicator AWS API Documentation
    #
    class RequestBasedServiceLevelIndicator < Struct.new(
      :request_based_sli_metric,
      :metric_threshold,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies the information about the service and the
    # performance metric that a request-based SLO is to monitor.
    #
    # @!attribute [rw] request_based_sli_metric_config
    #   Use this structure to specify the metric to be used for the SLO.
    #   @return [Types::RequestBasedServiceLevelIndicatorMetricConfig]
    #
    # @!attribute [rw] metric_threshold
    #   The value that the SLI metric is compared to. This parameter is
    #   required if this SLO is tracking the `Latency` metric.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified metric
    #   to the threshold. This parameter is required if this SLO is tracking
    #   the `Latency` metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/RequestBasedServiceLevelIndicatorConfig AWS API Documentation
    #
    class RequestBasedServiceLevelIndicatorConfig < Struct.new(
      :request_based_sli_metric_config,
      :metric_threshold,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the information about the metric that is used
    # for a request-based SLO.
    #
    # @!attribute [rw] key_attributes
    #   This is a string-to-string map that contains information about the
    #   type of object that this SLO is related to. It can include the
    #   following fields.
    #
    #   * `Type` designates the type of object that this SLO is related to.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_name
    #   If the SLO monitors a specific operation of the service, this field
    #   displays that operation name.
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   If the SLO monitors either the `LATENCY` or `AVAILABILITY` metric
    #   that Application Signals collects, this field displays which of
    #   those metrics is used.
    #   @return [String]
    #
    # @!attribute [rw] total_request_count_metric
    #   This structure defines the metric that is used as the "total
    #   requests" number for a request-based SLO. The number observed for
    #   this metric is divided by the number of "good requests" or "bad
    #   requests" that is observed for the metric defined in
    #   `MonitoredRequestCountMetric`.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] monitored_request_count_metric
    #   This structure defines the metric that is used as the "good
    #   request" or "bad request" value for a request-based SLO. This
    #   value observed for the metric defined in `TotalRequestCountMetric`
    #   is divided by the number found for `MonitoredRequestCountMetric` to
    #   determine the percentage of successful requests that this SLO
    #   tracks.
    #   @return [Types::MonitoredRequestCountMetricDataQueries]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/RequestBasedServiceLevelIndicatorMetric AWS API Documentation
    #
    class RequestBasedServiceLevelIndicatorMetric < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :total_request_count_metric,
      :monitored_request_count_metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to specify the information for the metric that a
    # period-based SLO will monitor.
    #
    # @!attribute [rw] key_attributes
    #   If this SLO is related to a metric collected by Application Signals,
    #   you must use this field to specify which service the SLO metric is
    #   related to. To do so, you must specify at least the `Type`, `Name`,
    #   and `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_name
    #   If the SLO is to monitor a specific operation of the service, use
    #   this field to specify the name of that operation.
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   If the SLO is to monitor either the `LATENCY` or `AVAILABILITY`
    #   metric that Application Signals collects, use this field to specify
    #   which of those metrics is used.
    #   @return [String]
    #
    # @!attribute [rw] total_request_count_metric
    #   Use this structure to define the metric that you want to use as the
    #   "total requests" number for a request-based SLO. This result will
    #   be divided by the "good request" or "bad request" value defined
    #   in `MonitoredRequestCountMetric`.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @!attribute [rw] monitored_request_count_metric
    #   Use this structure to define the metric that you want to use as the
    #   "good request" or "bad request" value for a request-based SLO.
    #   This value observed for the metric defined in
    #   `TotalRequestCountMetric` will be divided by the number found for
    #   `MonitoredRequestCountMetric` to determine the percentage of
    #   successful requests that this SLO tracks.
    #   @return [Types::MonitoredRequestCountMetricDataQueries]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/RequestBasedServiceLevelIndicatorMetricConfig AWS API Documentation
    #
    class RequestBasedServiceLevelIndicatorMetricConfig < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :total_request_count_metric,
      :monitored_request_count_metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found.
    #
    # @!attribute [rw] resource_type
    #   The resource type is not valid.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Can't find the resource id.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :resource_type,
      :resource_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the interval for this SLO is a rolling interval, this structure
    # contains the interval specifications.
    #
    # @!attribute [rw] duration_unit
    #   Specifies the rolling interval unit.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Specifies the duration of each rolling interval. For example, if
    #   `Duration` is `7` and `DurationUnit` is `DAY`, each rolling interval
    #   is seven days.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/RollingInterval AWS API Documentation
    #
    class RollingInterval < Struct.new(
      :duration_unit,
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one of your services that
    # was discovered by Application Signals.
    #
    # @!attribute [rw] key_attributes
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_maps
    #   This structure contains one or more string-to-string maps that help
    #   identify this service. It can include *platform attributes*,
    #   *application attributes*, and *telemetry attributes*.
    #
    #   Platform attributes contain information the service's platform.
    #
    #   * `PlatformType` defines the hosted-in platform.
    #
    #   * `EKS.Cluster` is the name of the Amazon EKS cluster.
    #
    #   * `K8s.Cluster` is the name of the self-hosted Kubernetes cluster.
    #
    #   * `K8s.Namespace` is the name of the Kubernetes namespace in either
    #     Amazon EKS or Kubernetes clusters.
    #
    #   * `K8s.Workload` is the name of the Kubernetes workload in either
    #     Amazon EKS or Kubernetes clusters.
    #
    #   * `K8s.Node` is the name of the Kubernetes node in either Amazon EKS
    #     or Kubernetes clusters.
    #
    #   * `K8s.Pod` is the name of the Kubernetes pod in either Amazon EKS
    #     or Kubernetes clusters.
    #
    #   * `EC2.AutoScalingGroup` is the name of the Amazon EC2 Auto Scaling
    #     group.
    #
    #   * `EC2.InstanceId` is the ID of the Amazon EC2 instance.
    #
    #   * `Host` is the name of the host, for all platform types.
    #
    #   Application attributes contain information about the application.
    #
    #   * `AWS.Application` is the application's name in Amazon Web
    #     Services Service Catalog AppRegistry.
    #
    #   * `AWS.Application.ARN` is the application's ARN in Amazon Web
    #     Services Service Catalog AppRegistry.
    #
    #   Telemetry attributes contain telemetry information.
    #
    #   * `Telemetry.SDK` is the fingerprint of the OpenTelemetry SDK
    #     version for instrumented services.
    #
    #   * `Telemetry.Agent` is the fingerprint of the agent used to collect
    #     and send telemetry data.
    #
    #   * `Telemetry.Source` Specifies the point of application where the
    #     telemetry was collected or specifies what was used for the source
    #     of telemetry data.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] metric_references
    #   An array of structures that each contain information about one
    #   metric associated with this service.
    #   @return [Array<Types::MetricReference>]
    #
    # @!attribute [rw] log_group_references
    #   An array of string-to-string maps that each contain information
    #   about one log group associated with this service. Each
    #   string-to-string map includes the following fields:
    #
    #   * `"Type": "AWS::Resource"`
    #
    #   * `"ResourceType": "AWS::Logs::LogGroup"`
    #
    #   * `"Identifier": "name-of-log-group"`
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/Service AWS API Documentation
    #
    class Service < Struct.new(
      :key_attributes,
      :attribute_maps,
      :metric_references,
      :log_group_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one dependency of this
    # service.
    #
    # @!attribute [rw] operation_name
    #   The name of the operation in this service that calls the dependency.
    #   @return [String]
    #
    # @!attribute [rw] dependency_key_attributes
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dependency_operation_name
    #   The name of the called operation in the dependency.
    #   @return [String]
    #
    # @!attribute [rw] metric_references
    #   An array of structures that each contain information about one
    #   metric associated with this service dependency that was discovered
    #   by Application Signals.
    #   @return [Array<Types::MetricReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceDependency AWS API Documentation
    #
    class ServiceDependency < Struct.new(
      :operation_name,
      :dependency_key_attributes,
      :dependency_operation_name,
      :metric_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about a service dependent that was
    # discovered by Application Signals. A dependent is an entity that
    # invoked the specified service during the provided time range.
    # Dependents include other services, CloudWatch Synthetics canaries, and
    # clients that are instrumented with CloudWatch RUM app monitors.
    #
    # @!attribute [rw] operation_name
    #   If the invoked entity is an operation on an entity, the name of that
    #   dependent operation is displayed here.
    #   @return [String]
    #
    # @!attribute [rw] dependent_key_attributes
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dependent_operation_name
    #   If the dependent invoker was a service that invoked it from an
    #   operation, the name of that dependent operation is displayed here.
    #   @return [String]
    #
    # @!attribute [rw] metric_references
    #   An array of structures that each contain information about one
    #   metric associated with this service dependent that was discovered by
    #   Application Signals.
    #   @return [Array<Types::MetricReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceDependent AWS API Documentation
    #
    class ServiceDependent < Struct.new(
      :operation_name,
      :dependent_key_attributes,
      :dependent_operation_name,
      :metric_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the performance metric that
    # a period-based SLO monitors.
    #
    # @!attribute [rw] sli_metric
    #   A structure that contains information about the metric that the SLO
    #   monitors.
    #   @return [Types::ServiceLevelIndicatorMetric]
    #
    # @!attribute [rw] metric_threshold
    #   The value that the SLI metric is compared to.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation used when comparing the specified metric to
    #   the threshold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelIndicator AWS API Documentation
    #
    class ServiceLevelIndicator < Struct.new(
      :sli_metric,
      :metric_threshold,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies the information about the service and the
    # performance metric that a period-based SLO is to monitor.
    #
    # @!attribute [rw] sli_metric_config
    #   Use this structure to specify the metric to be used for the SLO.
    #   @return [Types::ServiceLevelIndicatorMetricConfig]
    #
    # @!attribute [rw] metric_threshold
    #   This parameter is used only when a request-based SLO tracks the
    #   `Latency` metric. Specify the threshold value that the observed
    #   `Latency` metric values are to be compared to.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified metric
    #   to the threshold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelIndicatorConfig AWS API Documentation
    #
    class ServiceLevelIndicatorConfig < Struct.new(
      :sli_metric_config,
      :metric_threshold,
      :comparison_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the information about the metric that is used
    # for a period-based SLO.
    #
    # @!attribute [rw] key_attributes
    #   This is a string-to-string map that contains information about the
    #   type of object that this SLO is related to. It can include the
    #   following fields.
    #
    #   * `Type` designates the type of object that this SLO is related to.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_name
    #   If the SLO monitors a specific operation of the service, this field
    #   displays that operation name.
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   If the SLO monitors either the `LATENCY` or `AVAILABILITY` metric
    #   that Application Signals collects, this field displays which of
    #   those metrics is used.
    #   @return [String]
    #
    # @!attribute [rw] metric_data_queries
    #   If this SLO monitors a CloudWatch metric or the result of a
    #   CloudWatch metric math expression, this structure includes the
    #   information about that metric or expression.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelIndicatorMetric AWS API Documentation
    #
    class ServiceLevelIndicatorMetric < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :metric_data_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to specify the information for the metric that a
    # period-based SLO will monitor.
    #
    # @!attribute [rw] key_attributes
    #   If this SLO is related to a metric collected by Application Signals,
    #   you must use this field to specify which service the SLO metric is
    #   related to. To do so, you must specify at least the `Type`, `Name`,
    #   and `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_name
    #   If the SLO is to monitor a specific operation of the service, use
    #   this field to specify the name of that operation.
    #   @return [String]
    #
    # @!attribute [rw] metric_type
    #   If the SLO is to monitor either the `LATENCY` or `AVAILABILITY`
    #   metric that Application Signals collects, use this field to specify
    #   which of those metrics is used.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic to use for comparison to the threshold. It can be any
    #   CloudWatch statistic or extended statistic. For more information
    #   about statistics, see [CloudWatch statistics definitions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html
    #   @return [String]
    #
    # @!attribute [rw] period_seconds
    #   The number of seconds to use as the period for SLO evaluation. Your
    #   application's performance is compared to the SLI during each
    #   period. For each period, the application is determined to have
    #   either achieved or not achieved the necessary performance.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_data_queries
    #   If this SLO monitors a CloudWatch metric or the result of a
    #   CloudWatch metric math expression, use this structure to specify
    #   that metric or expression.
    #   @return [Array<Types::MetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelIndicatorMetricConfig AWS API Documentation
    #
    class ServiceLevelIndicatorMetricConfig < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :statistic,
      :period_seconds,
      :metric_data_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about one service level objective
    # (SLO) that has been created in Application Signals. Creating SLOs can
    # help you ensure your services are performing to the level that you
    # expect. SLOs help you set and track a specific target level for the
    # reliability and availability of your applications and services. Each
    # SLO uses a service level indicator (SLI), which is a key performance
    # metric, to calculate how much underperformance can be tolerated before
    # the goal that you set for the SLO is not achieved.
    #
    # @!attribute [rw] arn
    #   The ARN of this SLO.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this SLO.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description that you created for this SLO.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that this SLO was created. When used in a raw HTTP
    #   Query API, it is formatted as `yyyy-MM-dd'T'HH:mm:ss`. For example,
    #   `2019-07-01T23:59:59`.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that this SLO was most recently updated. When used in a raw
    #   HTTP Query API, it is formatted as `yyyy-MM-dd'T'HH:mm:ss`. For
    #   example, `2019-07-01T23:59:59`.
    #   @return [Time]
    #
    # @!attribute [rw] sli
    #   A structure containing information about the performance metric that
    #   this SLO monitors, if this is a period-based SLO.
    #   @return [Types::ServiceLevelIndicator]
    #
    # @!attribute [rw] request_based_sli
    #   A structure containing information about the performance metric that
    #   this SLO monitors, if this is a request-based SLO.
    #   @return [Types::RequestBasedServiceLevelIndicator]
    #
    # @!attribute [rw] evaluation_type
    #   Displays whether this is a period-based SLO or a request-based SLO.
    #   @return [String]
    #
    # @!attribute [rw] goal
    #   This structure contains the attributes that determine the goal of an
    #   SLO. This includes the time period for evaluation and the attainment
    #   threshold.
    #   @return [Types::Goal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelObjective AWS API Documentation
    #
    class ServiceLevelObjective < Struct.new(
      :arn,
      :name,
      :description,
      :created_time,
      :last_updated_time,
      :sli,
      :request_based_sli,
      :evaluation_type,
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing an SLO budget report that you have requested.
    #
    # @!attribute [rw] arn
    #   The ARN of the SLO that this report is for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the SLO that this report is for.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_type
    #   Displays whether this budget report is for a period-based SLO or a
    #   request-based SLO.
    #   @return [String]
    #
    # @!attribute [rw] budget_status
    #   The status of this SLO, as it relates to the error budget for the
    #   entire time interval.
    #
    #   * `OK` means that the SLO had remaining budget above the warning
    #     threshold, as of the time that you specified in `TimeStamp`.
    #
    #   * `WARNING` means that the SLO's remaining budget was below the
    #     warning threshold, as of the time that you specified in
    #     `TimeStamp`.
    #
    #   * `BREACHED` means that the SLO's budget was exhausted, as of the
    #     time that you specified in `TimeStamp`.
    #
    #   * `INSUFFICIENT_DATA` means that the specified start and end times
    #     were before the SLO was created, or that attainment data is
    #     missing.
    #   @return [String]
    #
    # @!attribute [rw] attainment
    #   A number between 0 and 100 that represents the success percentage of
    #   your application compared to the goal set by the SLO.
    #
    #   If this is a period-based SLO, the number is the percentage of time
    #   periods that the service has attained the SLO's attainment goal, as
    #   of the time of the request.
    #
    #   If this is a request-based SLO, the number is the number of
    #   successful requests divided by the number of total requests,
    #   multiplied by 100, during the time range that you specified in your
    #   request.
    #   @return [Float]
    #
    # @!attribute [rw] total_budget_seconds
    #   The total number of seconds in the error budget for the interval.
    #   This field is included only if the SLO is a period-based SLO.
    #   @return [Integer]
    #
    # @!attribute [rw] budget_seconds_remaining
    #   The budget amount remaining before the SLO status becomes
    #   `BREACHING`, at the time specified in the `Timestemp` parameter of
    #   the request. If this value is negative, then the SLO is already in
    #   `BREACHING` status.
    #
    #   This field is included only if the SLO is a period-based SLO.
    #   @return [Integer]
    #
    # @!attribute [rw] total_budget_requests
    #   This field is displayed only for request-based SLOs. It displays the
    #   total number of failed requests that can be tolerated during the
    #   time range between the start of the interval and the time stamp
    #   supplied in the budget report request. It is based on the total
    #   number of requests that occurred, and the percentage specified in
    #   the attainment goal. If the number of failed requests matches this
    #   number or is higher, then this SLO is currently breaching.
    #
    #   This number can go up and down between reports with different time
    #   stamps, based on both how many total requests occur.
    #   @return [Integer]
    #
    # @!attribute [rw] budget_requests_remaining
    #   This field is displayed only for request-based SLOs. It displays the
    #   number of failed requests that can be tolerated before any more
    #   successful requests occur, and still have the application meet its
    #   SLO goal.
    #
    #   This number can go up and down between different reports, based on
    #   both how many successful requests and how many failed requests occur
    #   in that time.
    #   @return [Integer]
    #
    # @!attribute [rw] sli
    #   A structure that contains information about the performance metric
    #   that this SLO monitors.
    #   @return [Types::ServiceLevelIndicator]
    #
    # @!attribute [rw] request_based_sli
    #   This structure contains information about the performance metric
    #   that a request-based SLO monitors.
    #   @return [Types::RequestBasedServiceLevelIndicator]
    #
    # @!attribute [rw] goal
    #   This structure contains the attributes that determine the goal of an
    #   SLO. This includes the time period for evaluation and the attainment
    #   threshold.
    #   @return [Types::Goal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelObjectiveBudgetReport AWS API Documentation
    #
    class ServiceLevelObjectiveBudgetReport < Struct.new(
      :arn,
      :name,
      :evaluation_type,
      :budget_status,
      :attainment,
      :total_budget_seconds,
      :budget_seconds_remaining,
      :total_budget_requests,
      :budget_requests_remaining,
      :sli,
      :request_based_sli,
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about one error that occurred
    # during a [BatchGetServiceLevelObjectiveBudgetReport][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_BatchGetServiceLevelObjectiveBudgetReport.html
    #
    # @!attribute [rw] name
    #   The name of the SLO that this error is related to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the SLO that this error is related to.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for this error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message for this error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelObjectiveBudgetReportError AWS API Documentation
    #
    class ServiceLevelObjectiveBudgetReportError < Struct.new(
      :name,
      :arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one service level
    # objective (SLO) created in Application Signals.
    #
    # @!attribute [rw] arn
    #   The ARN of this service level objective.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service level objective.
    #   @return [String]
    #
    # @!attribute [rw] key_attributes
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this service level objective
    #     is for.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] operation_name
    #   If this service level objective is specific to a single operation,
    #   this field displays the name of that operation.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that this service level objective was created. It
    #   is expressed as the number of milliseconds since Jan 1, 1970
    #   00:00:00 UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceLevelObjectiveSummary AWS API Documentation
    #
    class ServiceLevelObjectiveSummary < Struct.new(
      :arn,
      :name,
      :key_attributes,
      :operation_name,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about an operation discovered by
    # Application Signals. An operation is a specific function performed by
    # a service that was discovered by Application Signals, and is often an
    # API that is called by an upstream dependent.
    #
    # @!attribute [rw] name
    #   The name of the operation, discovered by Application Signals.
    #   @return [String]
    #
    # @!attribute [rw] metric_references
    #   An array of structures that each contain information about one
    #   metric associated with this service operation that was discovered by
    #   Application Signals.
    #   @return [Array<Types::MetricReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceOperation AWS API Documentation
    #
    class ServiceOperation < Struct.new(
      :name,
      :metric_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one of your services that
    # was discovered by Application Signals
    #
    # @!attribute [rw] key_attributes
    #   This is a string-to-string map that help identify the objects
    #   discovered by Application Signals. It can include the following
    #   fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource.
    #     This is used only if the value of the `Type` field is `Resource`
    #     or `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted,
    #     or what it belongs to.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_maps
    #   This structure contains one or more string-to-string maps that help
    #   identify this service. It can include *platform attributes*,
    #   *application attributes*, and *telemetry attributes*.
    #
    #   Platform attributes contain information the service's platform.
    #
    #   * `PlatformType` defines the hosted-in platform.
    #
    #   * `EKS.Cluster` is the name of the Amazon EKS cluster.
    #
    #   * `K8s.Cluster` is the name of the self-hosted Kubernetes cluster.
    #
    #   * `K8s.Namespace` is the name of the Kubernetes namespace in either
    #     Amazon EKS or Kubernetes clusters.
    #
    #   * `K8s.Workload` is the name of the Kubernetes workload in either
    #     Amazon EKS or Kubernetes clusters.
    #
    #   * `K8s.Node` is the name of the Kubernetes node in either Amazon EKS
    #     or Kubernetes clusters.
    #
    #   * `K8s.Pod` is the name of the Kubernetes pod in either Amazon EKS
    #     or Kubernetes clusters.
    #
    #   * `EC2.AutoScalingGroup` is the name of the Amazon EC2 Auto Scaling
    #     group.
    #
    #   * `EC2.InstanceId` is the ID of the Amazon EC2 instance.
    #
    #   * `Host` is the name of the host, for all platform types.
    #
    #   Application attributes contain information about the application.
    #
    #   * `AWS.Application` is the application's name in Amazon Web
    #     Services Service Catalog AppRegistry.
    #
    #   * `AWS.Application.ARN` is the application's ARN in Amazon Web
    #     Services Service Catalog AppRegistry.
    #
    #   Telemetry attributes contain telemetry information.
    #
    #   * `Telemetry.SDK` is the fingerprint of the OpenTelemetry SDK
    #     version for instrumented services.
    #
    #   * `Telemetry.Agent` is the fingerprint of the agent used to collect
    #     and send telemetry data.
    #
    #   * `Telemetry.Source` Specifies the point of application where the
    #     telemetry was collected or specifies what was used for the source
    #     of telemetry data.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] metric_references
    #   An array of structures that each contain information about one
    #   metric associated with this service.
    #   @return [Array<Types::MetricReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :key_attributes,
      :attribute_maps,
      :metric_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/StartDiscoveryInput AWS API Documentation
    #
    class StartDiscoveryInput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/StartDiscoveryOutput AWS API Documentation
    #
    class StartDiscoveryOutput < Aws::EmptyStructure; end

    # A key-value pair associated with a resource. Tags can help you
    # organize and categorize your resources.
    #
    # @!attribute [rw] key
    #   A string that you can use to assign a value. The combination of tag
    #   keys and values can help you organize and categorize your resources.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch resource that you
    #   want to set tags for.
    #
    #   The ARN format of an Application Signals SLO is
    #   `arn:aws:cloudwatch:Region:account-id:slo:slo-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined
    #   by Amazon CloudWatch][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the alarm.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled because of quota limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch resource that you
    #   want to delete tags from.
    #
    #   The ARN format of an Application Signals SLO is
    #   `arn:aws:cloudwatch:Region:account-id:slo:slo-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined
    #   by Amazon CloudWatch][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The Amazon Resource Name (ARN) or name of the service level
    #   objective that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the SLO.
    #   @return [String]
    #
    # @!attribute [rw] sli_config
    #   If this SLO is a period-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #   @return [Types::ServiceLevelIndicatorConfig]
    #
    # @!attribute [rw] request_based_sli_config
    #   If this SLO is a request-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    #   You can't specify both `SliConfig` and `RequestBasedSliConfig` in
    #   the same operation.
    #   @return [Types::RequestBasedServiceLevelIndicatorConfig]
    #
    # @!attribute [rw] goal
    #   A structure that contains the attributes that determine the goal of
    #   the SLO. This includes the time period for evaluation and the
    #   attainment threshold.
    #   @return [Types::Goal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/UpdateServiceLevelObjectiveInput AWS API Documentation
    #
    class UpdateServiceLevelObjectiveInput < Struct.new(
      :id,
      :description,
      :sli_config,
      :request_based_sli_config,
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slo
    #   A structure that contains information about the SLO that you just
    #   updated.
    #   @return [Types::ServiceLevelObjective]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/UpdateServiceLevelObjectiveOutput AWS API Documentation
    #
    class UpdateServiceLevelObjectiveOutput < Struct.new(
      :slo)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

