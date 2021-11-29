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
    # @note When making an API call, you may pass AppMonitorConfiguration
    #   data as a hash:
    #
    #       {
    #         allow_cookies: false,
    #         enable_x_ray: false,
    #         excluded_pages: ["Url"],
    #         favorite_pages: ["String"],
    #         guest_role_arn: "Arn",
    #         identity_pool_id: "IdentityPoolId",
    #         included_pages: ["Url"],
    #         session_sample_rate: 1.0,
    #         telemetries: ["errors"], # accepts errors, performance, http
    #       }
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
    #   A list of pages in the CloudWatch RUM console that are to be
    #   displayed with a "favorite" icon.
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
    #        <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_sample_rate
    #   Specifies the percentage of user sessions to use for RUM data
    #   collection. Choosing a higher percentage gives you more data but
    #   also incurs more costs.
    #
    #   The number you specify is the percentage of user sessions that will
    #   be used.
    #
    #   If you omit this parameter, the default of 10 is used.
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
    # @note When making an API call, you may pass AppMonitorDetails
    #   data as a hash:
    #
    #       {
    #         id: "String",
    #         name: "String",
    #         version: "String",
    #       }
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

    # @note When making an API call, you may pass CreateAppMonitorRequest
    #   data as a hash:
    #
    #       {
    #         app_monitor_configuration: {
    #           allow_cookies: false,
    #           enable_x_ray: false,
    #           excluded_pages: ["Url"],
    #           favorite_pages: ["String"],
    #           guest_role_arn: "Arn",
    #           identity_pool_id: "IdentityPoolId",
    #           included_pages: ["Url"],
    #           session_sample_rate: 1.0,
    #           telemetries: ["errors"], # accepts errors, performance, http
    #         },
    #         cw_log_enabled: false,
    #         domain: "AppMonitorDomain", # required
    #         name: "AppMonitorName", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    #        <p>You can associate as many as 50 tags with an app monitor.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CreateAppMonitorRequest AWS API Documentation
    #
    class CreateAppMonitorRequest < Struct.new(
      :app_monitor_configuration,
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

    # @note When making an API call, you may pass DeleteAppMonitorRequest
    #   data as a hash:
    #
    #       {
    #         name: "AppMonitorName", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetAppMonitorDataRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "QueryFilterKey",
    #             values: ["QueryFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         name: "AppMonitorName", # required
    #         next_token: "Token",
    #         time_range: { # required
    #           after: 1, # required
    #           before: 1,
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass GetAppMonitorRequest
    #   data as a hash:
    #
    #       {
    #         name: "AppMonitorName", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListAppMonitorsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
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

    # @note When making an API call, you may pass PutRumEventsRequest
    #   data as a hash:
    #
    #       {
    #         app_monitor_details: { # required
    #           id: "String",
    #           name: "String",
    #           version: "String",
    #         },
    #         batch_id: "String", # required
    #         id: "AppMonitorId", # required
    #         rum_events: [ # required
    #           {
    #             details: "JsonValue", # required
    #             id: "String", # required
    #             metadata: "JsonValue",
    #             timestamp: Time.now, # required
    #             type: "String", # required
    #           },
    #         ],
    #         user_details: { # required
    #           session_id: "String",
    #           user_id: "String",
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass QueryFilter
    #   data as a hash:
    #
    #       {
    #         name: "QueryFilterKey",
    #         values: ["QueryFilterValue"],
    #       }
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
    # @note When making an API call, you may pass RumEvent
    #   data as a hash:
    #
    #       {
    #         details: "JsonValue", # required
    #         id: "String", # required
    #         metadata: "JsonValue",
    #         timestamp: Time.now, # required
    #         type: "String", # required
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass TimeRange
    #   data as a hash:
    #
    #       {
    #         after: 1, # required
    #         before: 1,
    #       }
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateAppMonitorRequest
    #   data as a hash:
    #
    #       {
    #         app_monitor_configuration: {
    #           allow_cookies: false,
    #           enable_x_ray: false,
    #           excluded_pages: ["Url"],
    #           favorite_pages: ["String"],
    #           guest_role_arn: "Arn",
    #           identity_pool_id: "IdentityPoolId",
    #           included_pages: ["Url"],
    #           session_sample_rate: 1.0,
    #           telemetries: ["errors"], # accepts errors, performance, http
    #         },
    #         cw_log_enabled: false,
    #         domain: "AppMonitorDomain",
    #         name: "AppMonitorName", # required
    #       }
    #
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
      :cw_log_enabled,
      :domain,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateAppMonitorResponse AWS API Documentation
    #
    class UpdateAppMonitorResponse < Aws::EmptyStructure; end

    # A structure that contains information about the user session that this
    # batch of events was collected from.
    #
    # @note When making an API call, you may pass UserDetails
    #   data as a hash:
    #
    #       {
    #         session_id: "String",
    #         user_id: "String",
    #       }
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
