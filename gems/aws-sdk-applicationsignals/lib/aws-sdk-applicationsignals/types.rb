# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationSignals
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute timestamp
    #   <p>The date and time that you want the report to be for. It is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
    #   @return [Time]
    # @!attribute slo_ids
    #   <p>An array containing the IDs of the service level objectives that you want to include in the report.</p>
    #   @return [Array<String>]
    class BatchGetServiceLevelObjectiveBudgetReportInput < Struct.new(
      :timestamp,
      :slo_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute timestamp
    #   <p>The date and time that the report is for. It is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
    #   @return [Time]
    # @!attribute reports
    #   <p>An array of structures, where each structure is one budget report.</p>
    #   @return [Array<Types::ServiceLevelObjectiveBudgetReport>]
    # @!attribute errors
    #   <p>An array of structures, where each structure includes an error indicating that one 
    #            of the requests in the array was not valid.</p>
    #   @return [Array<Types::ServiceLevelObjectiveBudgetReportError>]
    class BatchGetServiceLevelObjectiveBudgetReportOutput < Struct.new(
      :timestamp,
      :reports,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of structures, where each structure includes an error indicating that one of the requests in the array was not valid.</p>
    # @!attribute slo_id
    #   <p>The SLO ID in the error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchUpdateExclusionWindowsError < Struct.new(
      :slo_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo_ids
    #   <p>The list of SLO IDs to add or remove exclusion windows from.</p>
    #   @return [Array<String>]
    # @!attribute add_exclusion_windows
    #   <p>A list of exclusion windows to add to the specified SLOs. You can add up to 10 exclusion windows per SLO.</p>
    #   @return [Array<Types::ExclusionWindow>]
    # @!attribute remove_exclusion_windows
    #   <p>A list of exclusion windows to remove from the specified SLOs. The window configuration must match an existing exclusion window.</p>
    #   @return [Array<Types::ExclusionWindow>]
    class BatchUpdateExclusionWindowsInput < Struct.new(
      :slo_ids,
      :add_exclusion_windows,
      :remove_exclusion_windows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo_ids
    #   <p>The list of SLO IDs that were successfully processed.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>A list of errors that occurred while processing the request.</p>
    #   @return [Array<Types::BatchUpdateExclusionWindowsError>]
    class BatchUpdateExclusionWindowsOutput < Struct.new(
      :slo_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This object defines the length of the look-back window used to calculate one burn rate metric
    #          for this SLO. The burn rate measures how fast the service is consuming the error budget, relative to the attainment goal of the SLO. A burn rate of
    #       exactly 1 indicates that the SLO goal will be met exactly.</p>
    #          <p>For example, if you specify 60 as the number of minutes in the look-back window, the burn rate is calculated as the following:</p>
    #          <p>
    #             <i>burn rate = error rate over the look-back window / (100% - attainment goal percentage)</i>
    #          </p>
    #          <p>For more information about burn rates, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-burn">Calculate burn rates</a>.</p>
    # @!attribute look_back_window_minutes
    #   <p>The number of minutes to use as the look-back window.</p>
    #   @return [Integer]
    class BurnRateConfiguration < Struct.new(
      :look_back_window_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the interval for this service level objective is a calendar interval, this structure contains the interval specifications.</p>
    # @!attribute start_time
    #   <p>The date and time when you want the first interval to start. Be sure to choose a time that configures the 
    #            intervals the way that you want. For example, if you want weekly intervals
    #            starting on Mondays at 6 a.m., be sure to specify a start time that is a Monday at 6 a.m.</p>
    #            <p>When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>As soon as one calendar interval ends, another automatically begins.</p>
    #   @return [Time]
    # @!attribute duration_unit
    #   <p>Specifies the calendar interval unit.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Specifies the duration of each calendar interval. For example, if <code>Duration</code> is <code>1</code> and
    #            <code>DurationUnit</code> is <code>MONTH</code>, each interval is one month, aligned with the calendar.</p>
    #   @return [Integer]
    class CalendarInterval < Struct.new(
      :start_time,
      :duration_unit,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This operation attempted to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for this SLO.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for this SLO.</p>
    #   @return [String]
    # @!attribute sli_config
    #   <p>If this SLO is a period-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p>
    #            <p>You can't specify both <code>RequestBasedSliConfig</code> and <code>SliConfig</code> in the same operation.</p>
    #   @return [Types::ServiceLevelIndicatorConfig]
    # @!attribute request_based_sli_config
    #   <p>If this SLO is a request-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p>
    #            <p>You can't specify both <code>RequestBasedSliConfig</code> and <code>SliConfig</code> in the same operation.</p>
    #   @return [Types::RequestBasedServiceLevelIndicatorConfig]
    # @!attribute goal
    #   <p>This structure contains the attributes that determine the goal of the SLO.</p>
    #   @return [Types::Goal]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the SLO. You can associate as many as 50 tags with an SLO.
    #         To be able to associate tags with the SLO when you create the SLO, you must
    #         have the <code>cloudwatch:TagResource</code> permission.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #         permissions by granting a user
    #         permission to access or change only resources with certain tag values.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute burn_rate_configurations
    #   <p>Use this array to create <i>burn rates</i> for this SLO. Each 
    #            burn rate is a metric that indicates how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    #   @return [Array<Types::BurnRateConfiguration>]
    class CreateServiceLevelObjectiveInput < Struct.new(
      :name,
      :description,
      :sli_config,
      :request_based_sli_config,
      :goal,
      :tags,
      :burn_rate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo
    #   <p>A structure that contains information about the SLO that you just created.</p>
    #   @return [Types::ServiceLevelObjective]
    class CreateServiceLevelObjectiveOutput < Struct.new(
      :slo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ARN or name of the service level objective to delete.</p>
    #   @return [String]
    class DeleteServiceLevelObjectiveInput < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceLevelObjectiveOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>.</p>
    #          <p>When creating a service dependency SLO, you must specify the <code>KeyAttributes</code> of the service, and the <code>DependencyConfig</code> for the dependency. You can specify the <code>OperationName</code> of the service, from which it calls the dependency. Alternatively, 
    #          you can exclude <code>OperationName</code> and the SLO will monitor all of the service's operations that call the dependency.</p>
    # @!attribute dependency_key_attributes
    #   <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute dependency_operation_name
    #   <p>The name of the called operation in the dependency.</p>
    #   @return [String]
    class DependencyConfig < Struct.new(
      :dependency_key_attributes,
      :dependency_operation_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A dimension is a name/value pair that is part of the identity of a metric. Because dimensions are part of the unique 
    #          identifier for a metric, whenever you add a unique name/value pair to one of 
    #          your metrics, you are creating a new variation of that metric. For example, many Amazon EC2 metrics publish
    #          <code>InstanceId</code> as a dimension name, and the actual instance ID as the value for that dimension.</p>
    #          <p>You 
    #          can assign up to 30 dimensions to a metric.</p>
    # @!attribute name
    #   <p>The name of the dimension. Dimension names must contain only ASCII characters, must include 
    #            at least one non-whitespace character, and cannot start with a colon (<code>:</code>).
    #            ASCII
    #            control characters are not supported as part of dimension names.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension. Dimension values must contain only ASCII characters and must include 
    #            at least one non-whitespace character. ASCII
    #            control characters are not supported as part of dimension values.</p>
    #   @return [String]
    class Dimension < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The core SLO time window exclusion object that includes Window, StartTime, RecurrenceRule, and Reason.</p>
    # @!attribute window
    #   <p>The SLO time window exclusion .</p>
    #   @return [Types::Window]
    # @!attribute start_time
    #   <p>The start of the SLO time window exclusion. Defaults to current time if not specified.</p>
    #   @return [Time]
    # @!attribute recurrence_rule
    #   <p>The recurrence rule for the SLO time window exclusion. Supports both cron and rate expressions.</p>
    #   @return [Types::RecurrenceRule]
    # @!attribute reason
    #   <p>A description explaining why this time period should be excluded from SLO calculations.</p>
    #   @return [String]
    class ExclusionWindow < Struct.new(
      :window,
      :start_time,
      :recurrence_rule,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, 
    #            <code>Name</code>, and <code>Environment</code> attributes.</p>
    #            <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class GetServiceInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ARN or name of the SLO that you want to retrieve information about. You can find the ARNs 
    #            of SLOs by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListServiceLevelObjectives.html">ListServiceLevelObjectives</a>
    #            operation.</p>
    #   @return [String]
    class GetServiceLevelObjectiveInput < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo
    #   <p>A structure containing the information about the SLO.</p>
    #   @return [Types::ServiceLevelObjective]
    class GetServiceLevelObjectiveOutput < Struct.new(
      :slo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A structure containing information about the service.</p>
    #   @return [Types::Service]
    # @!attribute start_time
    #   <p>The start time of the data included in the response. In a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>.</p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the data included in the response. In a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>.</p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute log_group_references
    #   <p>An array of string-to-string maps that each contain information about one log group associated with this service. Each 
    #            string-to-string map includes the following fields:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"Type": "AWS::Resource"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"ResourceType": "AWS::Logs::LogGroup"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Identifier": "<i>name-of-log-group</i>"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Hash<String, String>>]
    class GetServiceOutput < Struct.new(
      :service,
      :start_time,
      :end_time,
      :log_group_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the attributes that determine the goal of an SLO. This includes
    #          the time period for evaluation and the attainment threshold.</p>
    # @!attribute interval
    #   <p>The time period used to evaluate the SLO. It can be either a calendar interval or rolling interval.</p>
    #            <p>If you omit this parameter, a rolling interval of 7 days is used.</p>
    #   @return [Types::Interval]
    # @!attribute attainment_goal
    #   <p>The threshold that determines if the goal is being met.</p>
    #            <p>If this is a period-based SLO, the attainment goal is the 
    #            percentage of good periods that meet the threshold requirements to the total periods within the interval. 
    #            For example, an attainment goal of 99.9% means that within your interval, you are targeting 99.9% of the 
    #            periods to be in healthy state.</p>
    #            <p>If this is a request-based SLO, the attainment goal is the percentage of requests that must be 
    #         successful to meet the attainment goal.</p>
    #            <p>If you omit this parameter, 99 is used
    #            to represent 99% as the attainment goal.</p>
    #   @return [Float]
    # @!attribute warning_threshold
    #   <p>The percentage of remaining budget over total budget that you want to get warnings for. 
    #            If you omit this parameter, the default of 50.0 is used. </p>
    #   @return [Float]
    class Goal < Struct.new(
      :interval,
      :attainment_goal,
      :warning_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The time period used to evaluate the SLO. It can be either a calendar interval or rolling interval.</p>
    # @!attribute rolling_interval
    #   <p>If the interval is a rolling interval, this structure contains the interval specifications.</p>
    #   @return [Types::RollingInterval]
    # @!attribute calendar_interval
    #   <p>If the interval is a calendar interval, this structure contains the interval specifications.</p>
    #   @return [Types::CalendarInterval]
    class Interval < Struct.new(
      :rolling_interval,
      :calendar_interval,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RollingInterval < Interval; end
      class CalendarInterval < Interval; end
      class Unknown < Interval; end
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested end time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, 
    #            <code>Name</code>, and <code>Environment</code> attributes.</p>
    #            <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this
    #            parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service dependencies.</p>
    #   @return [String]
    class ListServiceDependenciesInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_dependencies
    #   <p>An array, where each object in the array contains information about one of the dependencies of this service.</p>
    #   @return [Array<Types::ServiceDependency>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set 
    #            of service dependencies.</p>
    #   @return [String]
    class ListServiceDependenciesOutput < Struct.new(
      :start_time,
      :end_time,
      :service_dependencies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, 
    #            <code>Name</code>, and <code>Environment</code> attributes.</p>
    #            <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this
    #            parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service dependents.</p>
    #   @return [String]
    class ListServiceDependentsInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_dependents
    #   <p>An array, where each object in the array contains information about one of the dependents of this service.</p>
    #   @return [Array<Types::ServiceDependent>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set 
    #            of service dependents.</p>
    #   @return [String]
    class ListServiceDependentsOutput < Struct.new(
      :start_time,
      :end_time,
      :service_dependents,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the SLO to list exclusion windows for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.
    #            
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives.
    #            
    #         </p>
    #   @return [String]
    class ListServiceLevelObjectiveExclusionWindowsInput < Struct.new(
      :id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exclusion_windows
    #   <p>A list of exclusion windows configured for the SLO.</p>
    #   @return [Array<Types::ExclusionWindow>]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives.
    #            
    #         </p>
    #   @return [String]
    class ListServiceLevelObjectiveExclusionWindowsOutput < Struct.new(
      :exclusion_windows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_attributes
    #   <p>You can use this optional field to specify which services you want to retrieve SLO information for.</p>
    #            <p>This is a string-to-string map. It can 
    #               include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #                  when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #                  is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #                  This is used only if the value of the <code>Type</code> field
    #                  is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>The name of the operation that this SLO is associated with.</p>
    #   @return [String]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this
    #            parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives.</p>
    #   @return [String]
    # @!attribute metric_source_types
    #   <p>Use this optional field to only include SLOs with the specified metric source types in the output. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>Service operation</p>
    #               </li>
    #               <li>
    #                  <p>Service dependency</p>
    #               </li>
    #               <li>
    #                  <p>CloudWatch metric</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include SLO from source accounts in the returned data.
    #            
    #         </p>
    #            <p>When you are monitoring an account, you can use Amazon Web Services account ID in <code>KeyAttribute</code> filter for service source account and <code>SloOwnerawsaccountID</code> for SLO source account with <code>IncludeLinkedAccounts</code> to filter the returned data to only a single source account.
    #            
    #         </p>
    #   @return [Boolean]
    # @!attribute slo_owner_aws_account_id
    #   <p>SLO's Amazon Web Services account ID.</p>
    #   @return [String]
    class ListServiceLevelObjectivesInput < Struct.new(
      :key_attributes,
      :operation_name,
      :dependency_config,
      :max_results,
      :next_token,
      :metric_source_types,
      :include_linked_accounts,
      :slo_owner_aws_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo_summaries
    #   <p>An array of structures, where each structure contains information about one SLO.</p>
    #   @return [Array<Types::ServiceLevelObjectiveSummary>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set 
    #            of service level objectives.</p>
    #   @return [String]
    class ListServiceLevelObjectivesOutput < Struct.new(
      :slo_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested end time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, 
    #            <code>Name</code>, and <code>Environment</code> attributes.</p>
    #            <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this
    #            parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service operations.</p>
    #   @return [String]
    class ListServiceOperationsInput < Struct.new(
      :start_time,
      :end_time,
      :key_attributes,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_operations
    #   <p>An array of structures that each contain information about one operation of this service.</p>
    #   @return [Array<Types::ServiceOperation>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set 
    #            of service operations.</p>
    #   @return [String]
    class ListServiceOperationsOutput < Struct.new(
      :start_time,
      :end_time,
      :service_operations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>
    #            The maximum number 
    #            of results 
    #            to return 
    #            in one operation. 
    #            If you omit this parameter, 
    #            the default of 50 is used.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of services.</p>
    #   @return [String]
    # @!attribute include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include services from source accounts in the returned data.
    #            
    #         </p>
    #   @return [Boolean]
    # @!attribute aws_account_id
    #   <p>Amazon Web Services Account ID.</p>
    #   @return [String]
    class ListServicesInput < Struct.new(
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      :include_linked_accounts,
      :aws_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as 
    #            be epoch time in seconds. For example: <code>1698778057</code>
    #            </p>
    #            <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because 
    #            it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_summaries
    #   <p>An array of structures, where each structure contains some information about a service. To
    #            get complete information about a service, use 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetService.html">GetService</a>.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set 
    #            of services.</p>
    #   @return [String]
    class ListServicesOutput < Struct.new(
      :start_time,
      :end_time,
      :service_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to view tags for.</p>
    #            <p>The ARN format of an Application Signals SLO is 
    #            <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource
    #            Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General
    #               Reference</i>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource you specified.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the metric used for a service level indicator, including the metric name, namespace, and dimensions</p>
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace">Namespaces</a>.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric to use.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>An array of one or more dimensions to use to define the metric that you want to use. 
    #            For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension">Dimensions</a>.</p>
    #   @return [Array<Types::Dimension>]
    class Metric < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to define a metric or metric math expression that you want to use as for a service level objective. </p>
    #          <p>Each <code>MetricDataQuery</code> in the <code>MetricDataQueries</code> array specifies either a metric to retrieve, or a metric math expression 
    #          to be performed on retrieved metrics. A single <code>MetricDataQueries</code> array can include as many as 20 <code>MetricDataQuery</code> structures in the array. 
    #          The 20 structures can include as many as 10 structures that contain a <code>MetricStat</code> parameter to retrieve a metric, and as many as 10 structures that 
    #          contain the <code>Expression</code> parameter to perform a math expression. Of those <code>Expression</code> structures, 
    #          exactly one must have true as the value for <code>ReturnData</code>. The result of this expression used for the SLO.</p>
    #          <p>For more information about metric math expressions, see 
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html">CloudWatchUse metric math</a>.</p>
    #          <p>Within each <code>MetricDataQuery</code> object, you must specify either 
    #          <code>Expression</code> or <code>MetricStat</code> but not both.</p>
    # @!attribute id
    #   <p>A short name used to tie this object to the results in the response. This <code>Id</code> must be unique 
    #            within a <code>MetricDataQueries</code> array. If you are performing math expressions on this set of data, 
    #            this name represents that data and can serve as a variable in the metric math expression. The valid characters 
    #            are letters, numbers, and underscore. The first character must be a lowercase letter.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>A metric to be used directly for the SLO, or to be used in the math expression that will be used for the SLO.</p>
    #            <p>Within one <code>MetricDataQuery</code> object, you must specify either 
    #            <code>Expression</code> or <code>MetricStat</code> but not both.</p>
    #   @return [Types::MetricStat]
    # @!attribute expression
    #   <p>This field can contain a metric math expression to be performed on the other metrics that
    #            you are retrieving within this <code>MetricDataQueries</code> structure. </p>
    #            <p>A math expression
    #            can use the <code>Id</code> of the other metrics or queries to refer to those metrics, and can also use 
    #            the <code>Id</code> of other 
    #            expressions to use the result of those expressions. For more information about metric math expressions, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the
    #            <i>Amazon CloudWatch User Guide</i>.</p>
    #            <p>Within each <code>MetricDataQuery</code> object, you must specify either 
    #            <code>Expression</code> or <code>MetricStat</code> but not both.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A human-readable label for this metric or expression. This is especially useful 
    #            if this is an expression, so that you know
    #            what the value represents. If the metric or expression is shown in a 
    #            CloudWatch dashboard widget, the label is shown. If <code>Label</code> is omitted, CloudWatch 
    #            generates a default.</p>
    #            <p>You can put dynamic expressions into a label, so that it is more descriptive. 
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html">Using Dynamic Labels</a>.</p>
    #   @return [String]
    # @!attribute return_data
    #   <p>Use this only if you are using a metric math expression for the SLO. 
    #            Specify <code>true</code> for <code>ReturnData</code> for only the one expression result to use as the alarm. For all 
    #            other metrics and expressions in the same <code>CreateServiceLevelObjective</code> operation, specify <code>ReturnData</code> as <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points for this metric. For metrics with regular resolution, a period can
    #            be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected
    #            at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics
    #            are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p>
    #            <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than
    #            3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p>
    #            <ul>
    #               <li>
    #                  <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p>
    #               </li>
    #               <li>
    #                  <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p>
    #               </li>
    #               <li>
    #                  <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The ID of the account where this metric is located.  If you are performing this operation in a monitoring account, 
    #            use this to specify which source account to retrieve this metric from.</p>
    #   @return [String]
    class MetricDataQuery < Struct.new(
      :id,
      :metric_stat,
      :expression,
      :label,
      :return_data,
      :period,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:return_data] = nil unless options.key?(:return_data)
        options[:period] = nil unless options.key?(:period)
        super
      end
    end

    # <p>This structure contains information about one CloudWatch metric associated with this entity discovered
    #          by Application Signals.</p>
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace">CloudWatchNamespaces</a>.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>Used to display the appropriate statistics in the CloudWatch console.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>An array of one or more dimensions that further define the metric. 
    #            For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension">CloudWatchDimensions</a>.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Amazon Web Services account ID.</p>
    #   @return [String]
    class MetricReference < Struct.new(
      :namespace,
      :metric_type,
      :dimensions,
      :metric_name,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the metric to be used as the service level indicator, along with the statistics, period, and unit.</p>
    # @!attribute metric
    #   <p>The metric to use as the service level indicator, including the metric name, namespace, and dimensions.</p>
    #   @return [Types::Metric]
    # @!attribute period
    #   <p>The granularity, in seconds, to be used for the metric. For metrics with regular resolution, a period can
    #            be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected
    #            at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics
    #            are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p>
    #   @return [Integer]
    # @!attribute stat
    #   <p>The statistic to use for comparison to the threshold. It can be any CloudWatch statistic or extended statistic. For more information about statistics, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html">CloudWatch statistics definitions</a>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>If you omit <code>Unit</code> then all data that was collected with any unit is returned, along with the corresponding units that were specified
    #            when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified.
    #            If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>
    #   @return [String]
    class MetricStat < Struct.new(
      :metric,
      :period,
      :stat,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the metric that is used as the "good request" or "bad request"
    #          value for a request-based SLO. 
    #          This value observed for the metric defined in  
    #          <code>TotalRequestCountMetric</code> is divided by the number found for 
    #          <code>MonitoredRequestCountMetric</code> to determine the percentage of successful requests that 
    #          this SLO tracks.</p>
    # @!attribute good_count_metric
    #   <p>If you want to count "good requests" to determine the percentage of successful requests for this
    #         request-based SLO, specify the metric to use as "good requests" in this structure.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute bad_count_metric
    #   <p>If you want to count "bad requests" to determine the percentage of successful requests for this
    #            request-based SLO, specify the metric to use as "bad requests" in this structure.</p>
    #   @return [Array<Types::MetricDataQuery>]
    class MonitoredRequestCountMetricDataQueries < Struct.new(
      :good_count_metric,
      :bad_count_metric,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GoodCountMetric < MonitoredRequestCountMetricDataQueries; end
      class BadCountMetric < MonitoredRequestCountMetricDataQueries; end
      class Unknown < MonitoredRequestCountMetricDataQueries; end
    end

    # <p>The recurrence rule for the SLO time window exclusion .</p>
    # @!attribute expression
    #   <p>A cron or rate expression that specifies the schedule for the exclusion window.</p>
    #   @return [String]
    class RecurrenceRule < Struct.new(
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the performance metric that a request-based SLO monitors.</p>
    # @!attribute request_based_sli_metric
    #   <p>A structure that contains information about the metric that the SLO monitors. </p>
    #   @return [Types::RequestBasedServiceLevelIndicatorMetric]
    # @!attribute metric_threshold
    #   <p>This value is the threshold that 
    #            the observed metric values of the SLI metric are compared to.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation used when comparing the specified metric to the
    #            threshold.</p>
    #   @return [String]
    class RequestBasedServiceLevelIndicator < Struct.new(
      :request_based_sli_metric,
      :metric_threshold,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure specifies the information about the service and the performance metric that a request-based SLO is to monitor.</p>
    # @!attribute request_based_sli_metric_config
    #   <p>Use this structure to specify the metric to be used for the SLO.</p>
    #   @return [Types::RequestBasedServiceLevelIndicatorMetricConfig]
    # @!attribute metric_threshold
    #   <p>The value that the SLI metric is compared to. This parameter is required if this SLO is tracking the <code>Latency</code> metric.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation to use when comparing the specified metric to the
    #            threshold. This parameter is required if this SLO is tracking the <code>Latency</code> metric.</p>
    #   @return [String]
    class RequestBasedServiceLevelIndicatorConfig < Struct.new(
      :request_based_sli_metric_config,
      :metric_threshold,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the information about the metric that is used for a request-based SLO.</p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map that contains information about the type of object that this SLO is related to. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object that this SLO is related to.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO monitors a specific operation of the service, this field displays that operation name.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO monitors either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals 
    #            collects, this field displays which of those metrics is used.</p>
    #   @return [String]
    # @!attribute total_request_count_metric
    #   <p>This structure defines the metric that is used as the "total requests" number for a request-based SLO. 
    #            The number observed for this metric is divided by the number of "good requests" or "bad requests" that is 
    #            observed for the metric defined in 
    #            <code>MonitoredRequestCountMetric</code>.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute monitored_request_count_metric
    #   <p>This structure defines the metric that is used as the "good request" or "bad request"
    #            value for a request-based SLO. 
    #            This value observed for the metric defined in  
    #            <code>TotalRequestCountMetric</code> is divided by the number found for 
    #            <code>MonitoredRequestCountMetric</code> to determine the percentage of successful requests that 
    #            this SLO tracks.</p>
    #   @return [Types::MonitoredRequestCountMetricDataQueries]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    class RequestBasedServiceLevelIndicatorMetric < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :total_request_count_metric,
      :monitored_request_count_metric,
      :dependency_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify the information for the metric that a period-based SLO will monitor.</p>
    # @!attribute key_attributes
    #   <p>If this SLO is related to a metric collected by Application Signals, you must use this field to specify which service 
    #            the SLO metric is related to. To do so, you must specify at least the <code>Type</code>, 
    #            <code>Name</code>, and <code>Environment</code> attributes.</p>
    #            <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO is to monitor a specific operation of the service, use this field to specify the name of that operation.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO is to monitor either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals 
    #            collects, use this field to specify which of those metrics is used.</p>
    #   @return [String]
    # @!attribute total_request_count_metric
    #   <p>Use this structure to define the metric that you want to use as the "total requests" number for a request-based SLO. 
    #         This result will be divided by the "good request" or "bad request" value defined in  
    #         <code>MonitoredRequestCountMetric</code>.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute monitored_request_count_metric
    #   <p>Use this structure to define the metric that you want to use as the "good request" or "bad request"
    #            value for a request-based SLO. 
    #            This value observed for the metric defined in  
    #            <code>TotalRequestCountMetric</code> will be divided by the number found for 
    #            <code>MonitoredRequestCountMetric</code> to determine the percentage of successful requests that 
    #            this SLO tracks.</p>
    #   @return [Types::MonitoredRequestCountMetricDataQueries]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    class RequestBasedServiceLevelIndicatorMetricConfig < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :total_request_count_metric,
      :monitored_request_count_metric,
      :dependency_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource not found.</p>
    # @!attribute resource_type
    #   <p>The resource type is not valid.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Can't find the resource id.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :resource_type,
      :resource_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the interval for this SLO is a rolling interval, this structure contains the interval specifications.</p>
    # @!attribute duration_unit
    #   <p>Specifies the rolling interval unit.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Specifies the duration of each rolling interval. For example, if <code>Duration</code> is <code>7</code> and
    #            <code>DurationUnit</code> is <code>DAY</code>, each rolling interval is seven days.</p>
    #   @return [Integer]
    class RollingInterval < Struct.new(
      :duration_unit,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one of your services that was discovered by Application Signals.
    #       </p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute attribute_maps
    #   <p>This structure contains one or more string-to-string maps that help identify this service. It can include <i>platform attributes</i>, <i>application attributes</i>, and <i>telemetry attributes</i>.</p>
    #            <p>Platform attributes contain information the service's platform.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformType</code> defines the hosted-in platform.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EKS.Cluster</code> is the name of the Amazon EKS cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Cluster</code> is the name of the self-hosted Kubernetes cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Namespace</code> is the name of the Kubernetes namespace in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Workload</code> is the name of the Kubernetes workload in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Node</code> is the name of the Kubernetes node in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Pod</code> is the name of the Kubernetes pod in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2.AutoScalingGroup</code> is the name of the Amazon EC2 Auto Scaling group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2.InstanceId</code> is the ID of the Amazon EC2 instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Host</code> is the name of the host, for all platform types.</p>
    #               </li>
    #            </ul>
    #            <p>Application attributes contain information about the application.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS.Application</code> is the application's name in Amazon Web Services Service Catalog AppRegistry.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS.Application.ARN</code> is the application's ARN in Amazon Web Services Service Catalog AppRegistry.</p>
    #               </li>
    #            </ul>
    #            <p>Telemetry attributes contain telemetry information.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Telemetry.SDK</code> is the fingerprint of the OpenTelemetry SDK version for instrumented services.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telemetry.Agent</code> is the fingerprint of the agent used to collect and send telemetry data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telemetry.Source</code> Specifies the point of application where the telemetry was collected or specifies what was used for the source of telemetry data.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Hash<String, String>>]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service.</p>
    #   @return [Array<Types::MetricReference>]
    # @!attribute log_group_references
    #   <p>An array of string-to-string maps that each contain information about one log group associated with this service. Each 
    #            string-to-string map includes the following fields:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"Type": "AWS::Resource"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"ResourceType": "AWS::Logs::LogGroup"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Identifier": "<i>name-of-log-group</i>"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Hash<String, String>>]
    class Service < Struct.new(
      :key_attributes,
      :attribute_maps,
      :metric_references,
      :log_group_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one dependency
    #          of this service.</p>
    # @!attribute operation_name
    #   <p>The name of the operation in this service that calls the dependency.</p>
    #   @return [String]
    # @!attribute dependency_key_attributes
    #   <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute dependency_operation_name
    #   <p>The name of the called operation in the dependency.</p>
    #   @return [String]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service dependency
    #            that was discovered by
    #            Application Signals.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceDependency < Struct.new(
      :operation_name,
      :dependency_key_attributes,
      :dependency_operation_name,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about a service dependent that was discovered by Application Signals. A 
    #          dependent is an entity that invoked the specified service during the provided time range. Dependents include 
    #          other services, CloudWatch Synthetics canaries, and clients that are instrumented with CloudWatch RUM app monitors.</p>
    # @!attribute operation_name
    #   <p>If the invoked entity is an operation on an entity, the name of that dependent operation is displayed here.</p>
    #   @return [String]
    # @!attribute dependent_key_attributes
    #   <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute dependent_operation_name
    #   <p>If the dependent invoker was a service that invoked it from an operation, the name of that dependent operation
    #            is displayed here.</p>
    #   @return [String]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service dependent
    #            that was discovered by
    #            Application Signals.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceDependent < Struct.new(
      :operation_name,
      :dependent_key_attributes,
      :dependent_operation_name,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the performance metric that a period-based SLO monitors.</p>
    # @!attribute sli_metric
    #   <p>A structure that contains information about the metric that the SLO monitors. </p>
    #   @return [Types::ServiceLevelIndicatorMetric]
    # @!attribute metric_threshold
    #   <p>The value that the SLI metric is compared to.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation used when comparing the specified metric to the
    #            threshold.</p>
    #   @return [String]
    class ServiceLevelIndicator < Struct.new(
      :sli_metric,
      :metric_threshold,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure specifies the information about the service and the performance metric that a period-based SLO is to monitor.</p>
    # @!attribute sli_metric_config
    #   <p>Use this structure to specify the metric to be used for the SLO.</p>
    #   @return [Types::ServiceLevelIndicatorMetricConfig]
    # @!attribute metric_threshold
    #   <p>This parameter is used only when a request-based SLO tracks the <code>Latency</code> metric. Specify the threshold value that the 
    #            observed <code>Latency</code> metric values are to be compared to.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation to use when comparing the specified metric to the
    #            threshold.</p>
    #   @return [String]
    class ServiceLevelIndicatorConfig < Struct.new(
      :sli_metric_config,
      :metric_threshold,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the information about the metric that is used for a period-based SLO.</p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map that contains information about the type of object that this SLO is related to. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object that this SLO is related to.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO monitors a specific operation of the service, this field displays that operation name.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO monitors either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals 
    #            collects, this field displays which of those metrics is used.</p>
    #   @return [String]
    # @!attribute metric_data_queries
    #   <p>If this SLO monitors a CloudWatch metric or the result of a CloudWatch metric math expression, 
    #            this structure includes the information about that metric or expression. </p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    class ServiceLevelIndicatorMetric < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :metric_data_queries,
      :dependency_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify the information for the metric that a period-based SLO will monitor.</p>
    # @!attribute key_attributes
    #   <p>If this SLO is related to a metric collected by Application Signals, you must use this field to specify which service 
    #            the SLO metric is related to. To do so, you must specify at least the <code>Type</code>, 
    #            <code>Name</code>, and <code>Environment</code> attributes.</p>
    #            <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO is to monitor a specific operation of the service, use this field to specify the name of that operation.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO is to monitor either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals 
    #         collects, use this field to specify which of those metrics is used.</p>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic to use for comparison to the threshold. It can be any CloudWatch statistic or extended statistic. For more information about statistics, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html">CloudWatch statistics definitions</a>.</p>
    #   @return [String]
    # @!attribute period_seconds
    #   <p>The number of seconds to use as the period for SLO evaluation. Your application's performance is compared to the 
    #            SLI during each period. For each period, the application is determined to have either achieved or not achieved the necessary performance.</p>
    #   @return [Integer]
    # @!attribute metric_data_queries
    #   <p>If this SLO monitors a CloudWatch metric or the result of a CloudWatch metric math expression, 
    #        use this structure to specify that metric or expression. </p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    class ServiceLevelIndicatorMetricConfig < Struct.new(
      :key_attributes,
      :operation_name,
      :metric_type,
      :statistic,
      :period_seconds,
      :metric_data_queries,
      :dependency_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about one service level objective (SLO) that has been created in Application Signals.
    #          Creating SLOs can help you ensure your services are 
    #          performing to the level that you expect. SLOs help you set and track a specific target level for the
    #          reliability and availability of your applications and services. Each SLO uses a service level indicator (SLI), which is 
    #          a key performance metric, to 
    #          calculate how much underperformance can be tolerated before the goal that you set for the SLO is not achieved.</p>
    # @!attribute arn
    #   <p>The ARN of this SLO.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this SLO.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description that you created for this SLO.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that this SLO was created. When used in a raw HTTP Query API, it is formatted as 
    #            <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, 
    #            <code>2019-07-01T23:59:59</code>.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time that this SLO was most recently updated. When used in a raw HTTP Query API, it is formatted as 
    #            <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, 
    #            <code>2019-07-01T23:59:59</code>.</p>
    #   @return [Time]
    # @!attribute sli
    #   <p>A structure containing information about the performance metric that this SLO monitors, if this is a period-based SLO.</p>
    #   @return [Types::ServiceLevelIndicator]
    # @!attribute request_based_sli
    #   <p>A structure containing information about the performance metric that this SLO monitors, if this is a request-based SLO.</p>
    #   @return [Types::RequestBasedServiceLevelIndicator]
    # @!attribute evaluation_type
    #   <p>Displays whether this is a period-based SLO or a request-based SLO.</p>
    #   @return [String]
    # @!attribute goal
    #   <p>This structure contains the attributes that determine the goal of an SLO. This includes
    #            the time period for evaluation and the attainment threshold.</p>
    #   @return [Types::Goal]
    # @!attribute burn_rate_configurations
    #   <p>Each object in this array defines the length of the look-back window used to calculate one burn rate metric
    #            for this SLO. The burn rate measures how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    #   @return [Array<Types::BurnRateConfiguration>]
    # @!attribute metric_source_type
    #   <p>Displays the SLI metric source type for this SLO. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>Service operation</p>
    #               </li>
    #               <li>
    #                  <p>Service dependency</p>
    #               </li>
    #               <li>
    #                  <p>CloudWatch metric</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ServiceLevelObjective < Struct.new(
      :arn,
      :name,
      :description,
      :created_time,
      :last_updated_time,
      :sli,
      :request_based_sli,
      :evaluation_type,
      :goal,
      :burn_rate_configurations,
      :metric_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing an SLO budget report that you have requested.</p>
    # @!attribute arn
    #   <p>The ARN of the SLO that this report is for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the SLO that this report is for.</p>
    #   @return [String]
    # @!attribute evaluation_type
    #   <p>Displays whether this budget report is for a period-based SLO or a request-based SLO.</p>
    #   @return [String]
    # @!attribute budget_status
    #   <p>The status of this SLO, as it relates to the error budget for the entire time interval.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OK</code> means that the SLO had remaining budget above the warning threshold,
    #               as of the time that you specified in <code>TimeStamp</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARNING</code> means that the SLO's remaining budget was below the warning threshold,
    #               as of the time that you specified in <code>TimeStamp</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BREACHED</code> means that the SLO's budget was exhausted,
    #               as of the time that you specified in <code>TimeStamp</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA</code> means that the specified start and end times were before the
    #               SLO was created, or that attainment data is missing.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute attainment
    #   <p>A number between 0 and 100 that represents the success percentage of your application compared
    #            to the goal set by the SLO.</p>
    #            <p>If this is a period-based SLO, the number is the percentage of time periods that the service has 
    #            attained the SLO's attainment goal, as of the time of the request.</p>
    #            <p>If this is a request-based SLO, the number is the number of successful requests divided
    #            by the number of total requests, multiplied by 100, during the time range that you specified in your request.</p>
    #   @return [Float]
    # @!attribute total_budget_seconds
    #   <p>The total number of seconds in the error budget for the interval. This field is included only 
    #         if the SLO is a period-based SLO.</p>
    #   @return [Integer]
    # @!attribute budget_seconds_remaining
    #   <p>The budget amount remaining before the SLO status becomes <code>BREACHING</code>, at the time specified in
    #            the 
    #            <code>Timestemp</code> parameter of the request. If this value is negative, then the SLO is already in <code>BREACHING</code>
    #            status.</p>
    #            <p> This field is included only 
    #            if the SLO is a period-based SLO.</p>
    #   @return [Integer]
    # @!attribute total_budget_requests
    #   <p>This field is displayed only for request-based SLOs. It displays the total number of failed requests that can be tolerated during the time range between the start of the 
    #            interval and the time stamp supplied in the budget report request. It is based on the total number of requests that occurred,
    #         and the percentage specified in the attainment goal. If the number of failed requests matches this number or is higher, then 
    #         this SLO is currently breaching.</p>
    #            <p>This number can go up and down between reports with different time stamps, based on both how many total requests occur.</p>
    #   @return [Integer]
    # @!attribute budget_requests_remaining
    #   <p>This field is displayed only for request-based SLOs. It displays the number of failed requests that can be tolerated before any more successful requests occur,
    #            and still have the application meet its SLO goal.</p>
    #            <p>This number can go up and down between different reports, based on both how many successful requests and how many failed 
    #            requests occur in that time.</p>
    #   @return [Integer]
    # @!attribute sli
    #   <p>A structure that contains information about the performance metric that this SLO monitors.</p>
    #   @return [Types::ServiceLevelIndicator]
    # @!attribute request_based_sli
    #   <p>This structure contains information about the performance metric that a request-based SLO monitors.</p>
    #   @return [Types::RequestBasedServiceLevelIndicator]
    # @!attribute goal
    #   <p>This structure contains the attributes that determine the goal of an SLO. This includes
    #            the time period for evaluation and the attainment threshold.</p>
    #   @return [Types::Goal]
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
      :goal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about one error that occurred during a 
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_BatchGetServiceLevelObjectiveBudgetReport.html">BatchGetServiceLevelObjectiveBudgetReport</a>
    #          operation.</p>
    # @!attribute name
    #   <p>The name of the SLO that this error is related to.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the SLO that this error is related to.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for this error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message for this error.</p>
    #   @return [String]
    class ServiceLevelObjectiveBudgetReportError < Struct.new(
      :name,
      :arn,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about one service level objective (SLO) created in Application Signals.</p>
    # @!attribute arn
    #   <p>The ARN of this service level objective.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service level objective.</p>
    #   @return [String]
    # @!attribute key_attributes
    #   <p>This is a string-to-string map. It can 
    #            include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this service level objective is for.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #               when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If this service level objective is specific to a single operation, this 
    #         field displays the name of that operation.</p>
    #   @return [String]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute created_time
    #   <p>The date and time that this service level objective was created. It is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
    #   @return [Time]
    # @!attribute evaluation_type
    #   <p>Displays whether this is a period-based SLO or a request-based SLO.</p>
    #   @return [String]
    # @!attribute metric_source_type
    #   <p>Displays the SLI metric source type for this SLO. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>Service operation</p>
    #               </li>
    #               <li>
    #                  <p>Service dependency</p>
    #               </li>
    #               <li>
    #                  <p>CloudWatch metric</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ServiceLevelObjectiveSummary < Struct.new(
      :arn,
      :name,
      :key_attributes,
      :operation_name,
      :dependency_config,
      :created_time,
      :evaluation_type,
      :metric_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about an operation discovered by Application Signals. An operation
    #          is a specific function performed by a service that was discovered by Application Signals, and is often an API 
    #          that is called by an upstream dependent.
    #       </p>
    # @!attribute name
    #   <p>The name of the operation, discovered by Application Signals.</p>
    #   @return [String]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service operation
    #            that was discovered by
    #            Application Signals.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceOperation < Struct.new(
      :name,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one of your services that
    #       was discovered by Application Signals</p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map that help identify the objects discovered by Application Signals. It can 
    #         include the following fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code> designates the type of object this is.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceType</code> specifies the type of the resource. This field is used only
    #            when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field
    #               is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Identifier</code> identifies the resource objects of this resource. 
    #               This is used only if the value of the <code>Type</code> field
    #               is <code>Resource</code> or <code>AWS::Resource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute attribute_maps
    #   <p>This structure contains one or more string-to-string maps that help identify this service. It can include <i>platform attributes</i>, <i>application attributes</i>, and <i>telemetry attributes</i>.</p>
    #            <p>Platform attributes contain information the service's platform.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformType</code> defines the hosted-in platform.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EKS.Cluster</code> is the name of the Amazon EKS cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Cluster</code> is the name of the self-hosted Kubernetes cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Namespace</code> is the name of the Kubernetes namespace in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Workload</code> is the name of the Kubernetes workload in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Node</code> is the name of the Kubernetes node in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>K8s.Pod</code> is the name of the Kubernetes pod in either Amazon EKS or Kubernetes clusters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2.AutoScalingGroup</code> is the name of the Amazon EC2 Auto Scaling group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2.InstanceId</code> is the ID of the Amazon EC2 instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Host</code> is the name of the host, for all platform types.</p>
    #               </li>
    #            </ul>
    #            <p>Application attributes contain information about the application.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS.Application</code> is the application's name in Amazon Web Services Service Catalog AppRegistry.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS.Application.ARN</code> is the application's ARN in Amazon Web Services Service Catalog AppRegistry.</p>
    #               </li>
    #            </ul>
    #            <p>Telemetry attributes contain telemetry information.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Telemetry.SDK</code> is the fingerprint of the OpenTelemetry SDK version for instrumented services.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telemetry.Agent</code> is the fingerprint of the agent used to collect and send telemetry data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Telemetry.Source</code> Specifies the point of application where the telemetry was collected or specifies what was used for the source of telemetry data.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Hash<String, String>>]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceSummary < Struct.new(
      :key_attributes,
      :attribute_maps,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartDiscoveryInput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartDiscoveryOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair associated with a resource. Tags can help you organize and categorize your resources.</p>
    # @!attribute key
    #   <p>A string that you can use to assign a value. The combination of tag keys and values can help you organize and categorize your 
    #            resources.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the specified tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to set tags for.</p>
    #            <p>The ARN format of an Application Signals SLO is 
    #            <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource
    #            Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General
    #               Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the alarm.</p>
    #   @return [Array<Types::Tag>]
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

    # <p>The request was throttled because of quota limits.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to delete tags from.</p>
    #            <p>The ARN format of an Application Signals SLO is 
    #            <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource
    #            Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General
    #               Reference</i>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # @!attribute id
    #   <p>The Amazon Resource Name (ARN) or name of the service level objective that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the SLO.</p>
    #   @return [String]
    # @!attribute sli_config
    #   <p>If this SLO is a period-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p>
    #   @return [Types::ServiceLevelIndicatorConfig]
    # @!attribute request_based_sli_config
    #   <p>If this SLO is a request-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p>
    #            <p>You can't specify both <code>SliConfig</code> and <code>RequestBasedSliConfig</code> in the same operation.</p>
    #   @return [Types::RequestBasedServiceLevelIndicatorConfig]
    # @!attribute goal
    #   <p>A structure that contains the attributes that determine the goal of the SLO. This includes
    #            the time period for evaluation and the attainment threshold.</p>
    #   @return [Types::Goal]
    # @!attribute burn_rate_configurations
    #   <p>Use this array to create <i>burn rates</i> for this SLO. Each 
    #            burn rate is a metric that indicates how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    #   @return [Array<Types::BurnRateConfiguration>]
    class UpdateServiceLevelObjectiveInput < Struct.new(
      :id,
      :description,
      :sli_config,
      :request_based_sli_config,
      :goal,
      :burn_rate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo
    #   <p>A structure that contains information about the SLO that you just updated.</p>
    #   @return [Types::ServiceLevelObjective]
    class UpdateServiceLevelObjectiveOutput < Struct.new(
      :slo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The object that defines the time length of an exclusion window.</p>
    # @!attribute duration_unit
    #   <p>The unit of time for the exclusion window duration. Valid values: MINUTE, HOUR, DAY, MONTH.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The number of time units for the exclusion window length.</p>
    #   @return [Integer]
    class Window < Struct.new(
      :duration_unit,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
