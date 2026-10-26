# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationSignals
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines a filter for narrowing down results based on specific attribute values. This can be used to filter services by platform, environment, or other service characteristics.</p>
    # @!attribute attribute_filter_name
    #   <p>The name of the attribute to filter by, such as <code>Platform</code>, <code>Environment</code>, or <code>BusinessUnit</code>.</p>
    #   @return [String]
    # @!attribute attribute_filter_values
    #   <p>An array of values to match for the specified attribute. Services that have any of these values for the attribute will be included in the results.</p>
    #   @return [Array<String>]
    class AttributeFilter < Struct.new(
      nil,
      :attribute_filter_name,
      :attribute_filter_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about an audit finding, which represents an automated analysis result about service behavior, performance issues, or potential problems identified through heuristic algorithms.</p>
    # @!attribute key_attributes
    #   <p>The key attributes that identify the service or entity this audit finding relates to. This is a string-to-string map that includes fields like Type, Name, and Environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute auditor_results
    #   <p>An array of auditor results that contain the specific findings, descriptions, and severity levels identified by different auditing algorithms.</p>
    #   @return [Array<Types::AuditorResult>]
    # @!attribute operation
    #   <p>The name of the operation associated with this audit finding, if the finding is specific to a particular service operation.</p>
    #   @return [String]
    # @!attribute metric_graph
    #   <p>A structure containing metric data queries and time range information that provides context for the audit finding through relevant performance metrics.</p>
    #   @return [Types::MetricGraph]
    # @!attribute dependency_graph
    #   <p>A structure containing nodes and edges that represent the dependency relationships relevant to this audit finding, helping to understand the context and potential impact.</p>
    #   @return [Types::DependencyGraph]
    # @!attribute type
    #   <p>The type of audit finding.</p>
    #   @return [String]
    class AuditFinding < Struct.new(
      nil,
      :key_attributes,
      :auditor_results,
      :operation,
      :metric_graph,
      :dependency_graph,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that specifies the target entity for audit analysis, such as a <code>service</code>, <code>SLO</code>, <code>service_operation</code>, or <code>canary</code>.</p>
    # @!attribute type
    #   <p>The type of entity being audited, such as <code>service</code>, <code>SLO</code>, <code>service_operation</code>, or <code>canary</code>. </p>
    #   @return [String]
    # @!attribute data
    #   <p>The specific data identifying the audit target entity.</p>
    #   @return [Types::AuditTargetEntity]
    class AuditTarget < Struct.new(
      nil,
      :type,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union structure that contains the specific entity information for different types of audit targets.</p>
    # @!attribute service
    #   <p>Service entity information when the audit target is a service.</p>
    #   @return [Types::ServiceEntity]
    # @!attribute slo
    #   <p>SLO entity information when the audit target is a service level objective.</p>
    #   @return [Types::ServiceLevelObjectiveEntity]
    # @!attribute service_operation
    #   <p>Service operation entity information when the audit target is a specific service operation.</p>
    #   @return [Types::ServiceOperationEntity]
    # @!attribute canary
    #   <p>Canary entity information when the audit target is a CloudWatch Synthetics canary.</p>
    #   @return [Types::CanaryEntity]
    class AuditTargetEntity < Struct.new(
      :service,
      :slo,
      :service_operation,
      :canary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Service < AuditTargetEntity; end
      class Slo < AuditTargetEntity; end
      class ServiceOperation < AuditTargetEntity; end
      class Canary < AuditTargetEntity; end
      class Unknown < AuditTargetEntity; end
    end

    # <p>A structure that contains the result of an automated audit analysis, including the auditor name, description of findings, additional data, and severity level.</p>
    # @!attribute auditor
    #   <p>The name of the auditor algorithm that generated this result.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the audit finding, explaining what was observed and potential implications.</p>
    #   @return [String]
    # @!attribute data
    #   <p>This is a string-to-string map. It contains additional data about the result of an automated audit analysis.</p>
    #   @return [Hash<String, String>]
    # @!attribute severity
    #   <p>The severity level of this audit finding, indicating the importance and potential impact of the issue.</p>
    #   @return [String]
    class AuditorResult < Struct.new(
      nil,
      :auditor,
      :description,
      :data,
      :severity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Parameters for targeted delete by ARN list.
    # @!attribute resource_arns
    #   List of resource ARNs to delete.
    #   @return [Array<String>]
    # @!attribute instrumentation_type
    #   Instrumentation type: BREAKPOINT or PROBE.
    #   @return [String]
    class BatchDeleteByResourceArns < Struct.new(
      nil,
      :resource_arns,
      :instrumentation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Union type for batch delete target selection.
    # Exactly one of the two modes must be specified.
    # @!attribute scope
    #   Delete all configurations matching the specified scope.
    #   @return [Types::BatchDeleteScope]
    # @!attribute resource_arns
    #   Delete specific configurations by ARN list.
    #   @return [Types::BatchDeleteByResourceArns]
    class BatchDeleteDeletionTarget < Struct.new(
      :scope,
      :resource_arns,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Scope < BatchDeleteDeletionTarget; end
      class ResourceArns < BatchDeleteDeletionTarget; end
      class Unknown < BatchDeleteDeletionTarget; end
    end

    # Represents an error that occurred when attempting to delete a configuration.
    # @!attribute resource_arn
    #   ARN of the configuration that failed to delete.
    #   @return [String]
    # @!attribute code
    #   Error code indicating the type of failure.
    #   @return [String]
    # @!attribute message
    #   Descriptive error message.
    #   @return [String]
    class BatchDeleteError < Struct.new(
      nil,
      :resource_arn,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_target
    #   The deletion target - either bulk by scope or targeted by ARN list.
    #   @return [Types::BatchDeleteDeletionTarget]
    class BatchDeleteInstrumentationConfigurationsRequest < Struct.new(
      nil,
      :deletion_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deleted_count
    #   Number of configurations successfully deleted.
    #   When deleting by scope, this is the total count of deleted items.
    #   When deleting by ARN list, this equals the length of SuccessfulDeletions.
    #   @return [Integer]
    # @!attribute successful_deletions
    #   List of successfully deleted configurations.
    #   Deleting by scope populates SignalType and LocationHash per item.
    #   Deleting by ARN list populates ResourceArn per item.
    #   @return [Array<Types::BatchDeleteSuccessfulDeletion>]
    # @!attribute errors
    #   List of configurations that failed to delete.
    #   @return [Array<Types::BatchDeleteError>]
    class BatchDeleteInstrumentationConfigurationsResponse < Struct.new(
      nil,
      :deleted_count,
      :successful_deletions,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Scope parameters for bulk delete by scope.
    # @!attribute service
    #   Service name for the instrumentation configurations.
    #   @return [String]
    # @!attribute environment
    #   Environment identifier for the instrumentation configurations.
    #   @return [String]
    # @!attribute instrumentation_type
    #   Instrumentation type: BREAKPOINT or PROBE.
    #   @return [String]
    class BatchDeleteScope < Struct.new(
      nil,
      :service,
      :environment,
      :instrumentation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Represents a successfully deleted instrumentation configuration.
    # @!attribute resource_arn
    #   ARN of the deleted configuration (populated only when deleting by ARN list).
    #   @return [String]
    # @!attribute signal_type
    #   Signal type of the deleted configuration (populated only when deleting by scope).
    #   @return [String]
    # @!attribute location_hash
    #   Location hash of the deleted configuration (populated only when deleting by scope).
    #   @return [String]
    class BatchDeleteSuccessfulDeletion < Struct.new(
      nil,
      :resource_arn,
      :signal_type,
      :location_hash,
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
      nil,
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
    #   <p>An array of structures, where each structure includes an error indicating that one of the requests in the array was not valid.</p>
    #   @return [Array<Types::ServiceLevelObjectiveBudgetReportError>]
    class BatchGetServiceLevelObjectiveBudgetReportOutput < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
      :slo_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This object defines the length of the look-back window used to calculate one burn rate metric for this SLO. The burn rate measures how fast the service is consuming the error budget, relative to the attainment goal of the SLO. A burn rate of exactly 1 indicates that the SLO goal will be met exactly.</p> <p>For example, if you specify 60 as the number of minutes in the look-back window, the burn rate is calculated as the following:</p> <p> <i>burn rate = error rate over the look-back window / (100% - attainment goal percentage)</i> </p> <p>For more information about burn rates, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-burn">Calculate burn rates</a>.</p>
    # @!attribute look_back_window_minutes
    #   <p>The number of minutes to use as the look-back window.</p>
    #   @return [Integer]
    class BurnRateConfiguration < Struct.new(
      nil,
      :look_back_window_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the interval for this service level objective is a calendar interval, this structure contains the interval specifications.</p>
    # @!attribute start_time
    #   <p>The date and time when you want the first interval to start. Be sure to choose a time that configures the intervals the way that you want. For example, if you want weekly intervals starting on Mondays at 6 a.m., be sure to specify a start time that is a Monday at 6 a.m.</p> <p>When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>As soon as one calendar interval ends, another automatically begins.</p>
    #   @return [Time]
    # @!attribute duration_unit
    #   <p>Specifies the calendar interval unit.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Specifies the duration of each calendar interval. For example, if <code>Duration</code> is <code>1</code> and <code>DurationUnit</code> is <code>MONTH</code>, each interval is one month, aligned with the calendar.</p>
    #   @return [Integer]
    class CalendarInterval < Struct.new(
      nil,
      :start_time,
      :duration_unit,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains identifying information for a CloudWatch Synthetics canary entity used in audit targeting.</p>
    # @!attribute canary_name
    #   <p>The name of the CloudWatch Synthetics canary.</p>
    #   @return [String]
    class CanaryEntity < Struct.new(
      nil,
      :canary_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union that defines what data to capture when the instrumentation point is hit. Specify <code>CodeCapture</code> for code-level capture settings.</p>
    # @!attribute code_capture
    #   <p>Capture settings for code-level instrumentation, including arguments, return values, stack traces, local variables, and safety limits.</p>
    #   @return [Types::CodeCaptureConfiguration]
    class CaptureConfiguration < Struct.new(
      :code_capture,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CodeCapture < CaptureConfiguration; end
      class Unknown < CaptureConfiguration; end
    end

    # <p>Guardrails that prevent instrumentation from impacting application performance by limiting how much data is captured.</p>
    # @!attribute max_hits
    #   <p>The maximum number of times the instrumentation point can be hit before it is automatically disabled. Defaults to 100.</p>
    #   @return [Integer]
    # @!attribute max_string_length
    #   <p>The maximum length of captured string values in characters. Strings longer than this are truncated. Defaults to 128.</p>
    #   @return [Integer]
    # @!attribute max_collection_width
    #   <p>The maximum number of items to capture from any collection to prevent large payloads. Defaults to 10.</p>
    #   @return [Integer]
    # @!attribute max_collection_depth
    #   <p>The maximum nesting depth to traverse inside collections. Defaults to 3.</p>
    #   @return [Integer]
    # @!attribute max_stack_frames
    #   <p>The maximum number of stack frames to capture in stack traces. Defaults to 2.</p>
    #   @return [Integer]
    # @!attribute max_stack_trace_size
    #   <p>The maximum total size, in bytes, of a captured stack trace. Defaults to 1000.</p>
    #   @return [Integer]
    # @!attribute max_object_depth
    #   <p>The maximum depth for nested object traversal when capturing structured data. Defaults to 3.</p>
    #   @return [Integer]
    # @!attribute max_fields_per_object
    #   <p>The maximum number of fields to capture for any object. Defaults to 10.</p>
    #   @return [Integer]
    class CaptureLimitsConfig < Struct.new(
      nil,
      :max_hits,
      :max_string_length,
      :max_collection_width,
      :max_collection_depth,
      :max_stack_frames,
      :max_stack_trace_size,
      :max_object_depth,
      :max_fields_per_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a change event that occurred for a service, such as a deployment or configuration change.</p>
    # @!attribute timestamp
    #   <p>The timestamp when this change event occurred. When used in a raw HTTP Query API, it is formatted as epoch time in seconds.</p>
    #   @return [Time]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID where this change event occurred.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services region where this change event occurred.</p>
    #   @return [String]
    # @!attribute entity
    #   <p>The entity (service or resource) that was affected by this change event, including its key attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> <li> <p> <code>AwsAccountId</code> specifies the account where this object is in.</p> </li> </ul> <p>Below is an example of a service.</p> <p> <code>{ "Type": "Service", "Name": "visits-service", "Environment": "petclinic-test" }</code> </p> <p>Below is an example of a resource.</p> <p> <code>{ "Type": "AWS::Resource", "ResourceType": "AWS::DynamoDB::Table", "Identifier": "Customers" }</code> </p>
    #   @return [Hash<String, String>]
    # @!attribute change_event_type
    #   <p>The type of change event that occurred, such as <code>DEPLOYMENT</code>.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>A unique identifier for this change event. For CloudTrail-based events, this is the CloudTrail event id. For other events, this will be <code>Unknown</code>.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user who initiated this change event, if available.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The name or description of this change event.</p>
    #   @return [String]
    class ChangeEvent < Struct.new(
      nil,
      :timestamp,
      :account_id,
      :region,
      :entity,
      :change_event_type,
      :event_id,
      :user_name,
      :event_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines what data to capture for code-level instrumentation, including arguments, return values, stack traces, local variables, and safety limits.</p>
    # @!attribute capture_arguments
    #   <p>The function arguments to capture. Omit to capture defaults, use an empty list to capture none, use <code>["*"]</code> to capture all arguments, or specify argument names to capture selectively (up to 10 entries).</p>
    #   @return [Array<String>]
    # @!attribute capture_return
    #   <p>Whether to capture the return value. Defaults to false.</p>
    #   @return [Boolean]
    # @!attribute capture_stack_trace
    #   <p>Whether to capture a stack trace when the instrumentation point is hit. Defaults to true.</p>
    #   @return [Boolean]
    # @!attribute capture_locals
    #   <p>The local variables to capture by name. Omit or pass an empty list to capture none. You can specify up to 20 names.</p>
    #   @return [Array<String>]
    # @!attribute capture_limits
    #   <p>Safety limits that bound what is captured, including hit counts, string length, collection depth, and stack trace size.</p>
    #   @return [Types::CaptureLimitsConfig]
    class CodeCaptureConfiguration < Struct.new(
      nil,
      :capture_arguments,
      :capture_return,
      :capture_stack_trace,
      :capture_locals,
      :capture_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a code location to instrument, including the programming language, code unit, class, method, file path, and optional line number.</p>
    # @!attribute language
    #   <p>The programming language for this instrumentation point, such as Java, Python, or JavaScript.</p>
    #   @return [String]
    # @!attribute code_unit
    #   <p>The package, module, or namespace that contains the target code, for example <code>com.amazon.payment</code> or <code>payment_service</code>.</p>
    #   @return [String]
    # @!attribute class_name
    #   <p>The class or type name that contains the method. This is required for Java and optional for Python module-level functions.</p>
    #   @return [String]
    # @!attribute method_name
    #   <p>The method or function name to instrument, such as <code>validateCreditCard</code> or <code>__init__</code>.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The source file path relative to the project or source root, such as <code>src/payment/PaymentProcessor.java</code> or <code>src/payment/PaymentProcessor.py</code>.</p>
    #   @return [String]
    # @!attribute line_number
    #   <p>The line number to instrument. Provide this to disambiguate overloaded methods and to target a specific line when needed.</p>
    #   @return [Integer]
    class CodeLocation < Struct.new(
      nil,
      :language,
      :code_unit,
      :class_name,
      :method_name,
      :file_path,
      :line_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a single operation to include in a composite SLI for a service-level SLO. Used as an element of the <code>Components</code> list in <code>CompositeSliConfig</code>.</p>
    # @!attribute operation_name
    #   <p>The name of the operation to include in the composite SLI.</p>
    #   @return [String]
    class CompositeSliComponent < Struct.new(
      :operation_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OperationName < CompositeSliComponent; end
      class Unknown < CompositeSliComponent; end
    end

    # <p>This structure contains the configuration for a composite service level indicator (SLI) that aggregates metrics across multiple operations of a service for service-level SLOs.</p>
    # @!attribute selection_config
    #   <p>Specifies how operations are selected for this service-level SLO. Operations can be selected explicitly by listing them, by specifying a prefix to match operation names, or by providing a regular expression pattern.</p>
    #   @return [Types::SelectionConfig]
    # @!attribute components
    #   <p>The list of operations included in this composite SLI. You must specify between 2 and 20 components. Each component is a <code>CompositeSliComponent</code> that identifies a single operation by its <code>OperationName</code>.</p>
    #   @return [Array<Types::CompositeSliComponent>]
    class CompositeSliConfig < Struct.new(
      nil,
      :selection_config,
      :components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This operation attempted to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instrumentation_type
    #   Type of instrumentation: BREAKPOINT (temporary) or PROBE (permanent)
    #   @return [String]
    # @!attribute service
    #   <p>The name of the service to instrument. This should match the <code>service.name</code> resource attribute reported by the application.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment that the service is running in, such as <code>eks:cluster-prod/namespace</code> or <code>ec2:production</code>.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type to emit for this instrumentation. The supported value is <code>SNAPSHOT</code>.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location where instrumentation should be applied. Specify a <code>CodeLocation</code> for code-level instrumentation.</p>
    #   @return [Types::Location]
    # @!attribute description
    #   <p>An optional short description (up to 50 characters) that explains the purpose of this instrumentation.</p>
    #   @return [String]
    # @!attribute expires_at
    #   For BREAKPOINT: optional, defaults to 24 hours, must be between 5 min and 24 hours.
    #   For PROBE: not supported. PROBE configurations are permanent and persist until explicitly deleted.
    #   @return [Time]
    # @!attribute attribute_filters
    #   <p>Client-side filters that target specific instances. Each object in the array is AND-matched on its keys, and multiple objects are OR-matched to decide where to apply the instrumentation.</p>
    #   @return [Array<Hash<String, String>>]
    # @!attribute capture_configuration
    #   <p>Specifies what to capture when the instrumentation point is hit. Specify <code>CodeCapture</code> for code-level capture settings.</p>
    #   @return [Types::CaptureConfiguration]
    # @!attribute tags
    #   <p>An optional list of key-value pairs to associate with the instrumentation configuration. Tags can help you organize and categorize your resources.</p>
    #   @return [Array<Types::Tag>]
    class CreateInstrumentationConfigurationRequest < Struct.new(
      nil,
      :instrumentation_type,
      :service,
      :environment,
      :signal_type,
      :location,
      :description,
      :expires_at,
      :attribute_filters,
      :capture_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instrumentation_type
    #   <p>The type of instrumentation that was created, echoed from the request.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service name for the instrumentation configuration, echoed from the request.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment for the instrumentation configuration, echoed from the request.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type for the instrumentation configuration, echoed from the request.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location where instrumentation is applied, echoed from the request.</p>
    #   @return [Types::Location]
    # @!attribute location_hash
    #   <p>A stable hash computed from the location that uniquely identifies this instrumentation point within the service, environment, and signal type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description that was stored with the instrumentation configuration.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The timestamp after which this configuration is no longer served to clients. Present only for <code>BREAKPOINT</code> configurations; <code>PROBE</code> configurations do not expire.</p>
    #   @return [Time]
    # @!attribute attribute_filters
    #   <p>The attribute filters returned with the configuration so SDKs can perform client-side targeting.</p>
    #   @return [Array<Hash<String, String>>]
    # @!attribute capture_configuration
    #   <p>The capture settings that were stored for this instrumentation configuration.</p>
    #   @return [Types::CaptureConfiguration]
    # @!attribute created_at
    #   <p>The server-generated creation timestamp for this instrumentation configuration.</p>
    #   @return [Time]
    # @!attribute arn
    #   ARN for the created instrumentation configuration
    #   @return [String]
    class CreateInstrumentationConfigurationResponse < Struct.new(
      nil,
      :instrumentation_type,
      :service,
      :environment,
      :signal_type,
      :location,
      :location_hash,
      :description,
      :expires_at,
      :attribute_filters,
      :capture_configuration,
      :created_at,
      :arn,
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
    #   <p>If this SLO is a period-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p> <p>You can't specify both <code>RequestBasedSliConfig</code> and <code>SliConfig</code> in the same operation.</p>
    #   @return [Types::ServiceLevelIndicatorConfig]
    # @!attribute request_based_sli_config
    #   <p>If this SLO is a request-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p> <p>You can't specify both <code>RequestBasedSliConfig</code> and <code>SliConfig</code> in the same operation.</p>
    #   @return [Types::RequestBasedServiceLevelIndicatorConfig]
    # @!attribute goal
    #   <p>This structure contains the attributes that determine the goal of the SLO.</p>
    #   @return [Types::Goal]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the SLO. You can associate as many as 50 tags with an SLO. To be able to associate tags with the SLO when you create the SLO, you must have the <code>cloudwatch:TagResource</code> permission.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute burn_rate_configurations
    #   <p>Use this array to create <i>burn rates</i> for this SLO. Each burn rate is a metric that indicates how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    #   @return [Array<Types::BurnRateConfiguration>]
    # @!attribute create_recommended_slo
    #   <p>Set this to <code>true</code> to create a recommended SLO out of the box. When set to <code>true</code>, you don't need to specify the <code>MetricThreshold</code> or <code>ComparisonOperator</code> in the <code>SliConfig</code> or <code>RequestBasedSliConfig</code>. The default value is <code>false</code>.</p> <p>This is supported for SLOs on a service, service operation, or a dependency.</p>
    #   @return [Boolean]
    # @!attribute auto_investigation_enabled
    #   Indicates whether DevOps Agent will automatically investigate this SLO when it is breached
    #   @return [Boolean]
    class CreateServiceLevelObjectiveInput < Struct.new(
      nil,
      :name,
      :description,
      :sli_config,
      :request_based_sli_config,
      :goal,
      :tags,
      :burn_rate_configurations,
      :create_recommended_slo,
      :auto_investigation_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo
    #   <p>A structure that contains information about the SLO that you just created.</p>
    #   @return [Types::ServiceLevelObjective]
    class CreateServiceLevelObjectiveOutput < Struct.new(
      nil,
      :slo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteGroupingConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to identify the configuration to delete.
    #   @return [String]
    # @!attribute service
    #   Service name for the instrumentation configuration.
    #   @return [String]
    # @!attribute environment
    #   Environment name for the instrumentation configuration.
    #   @return [String]
    # @!attribute signal_type
    #   Signal type for the instrumentation configuration.
    #   @return [String]
    # @!attribute location_identifier
    #   Location identifier - either full code location or a pre-computed hash.
    #   @return [Types::LocationIdentifier]
    class DeleteInstrumentationConfigurationRequest < Struct.new(
      nil,
      :instrumentation_type,
      :service,
      :environment,
      :signal_type,
      :location_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_status
    #   <p>The result of the delete request. The value is <code>DELETED</code> when the configuration has been removed.</p>
    #   @return [String]
    class DeleteInstrumentationConfigurationResponse < Struct.new(
      nil,
      :deletion_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ARN or name of the service level objective to delete.</p>
    #   @return [String]
    class DeleteServiceLevelObjectiveInput < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceLevelObjectiveOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>.</p> <p>When creating a service dependency SLO, you must specify the <code>KeyAttributes</code> of the service, and the <code>DependencyConfig</code> for the dependency. You can specify the <code>OperationName</code> of the service, from which it calls the dependency. Alternatively, you can exclude <code>OperationName</code> and the SLO will monitor all of the service's operations that call the dependency.</p>
    # @!attribute dependency_key_attributes
    #   <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute dependency_operation_name
    #   <p>The name of the called operation in the dependency.</p>
    #   @return [String]
    class DependencyConfig < Struct.new(
      nil,
      :dependency_key_attributes,
      :dependency_operation_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that represents the dependency relationships relevant to an audit finding, containing nodes and edges that show how services and resources are connected.</p>
    # @!attribute nodes
    #   <p>An array of nodes representing the services, resources, or other entities in the dependency graph.</p>
    #   @return [Array<Types::Node>]
    # @!attribute edges
    #   <p>An array of edges representing the connections and relationships between the nodes in the dependency graph.</p>
    #   @return [Array<Types::Edge>]
    class DependencyGraph < Struct.new(
      nil,
      :nodes,
      :edges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A dimension is a name/value pair that is part of the identity of a metric. Because dimensions are part of the unique identifier for a metric, whenever you add a unique name/value pair to one of your metrics, you are creating a new variation of that metric. For example, many Amazon EC2 metrics publish <code>InstanceId</code> as a dimension name, and the actual instance ID as the value for that dimension.</p> <p>You can assign up to 30 dimensions to a metric.</p>
    # @!attribute name
    #   <p>The name of the dimension. Dimension names must contain only ASCII characters, must include at least one non-whitespace character, and cannot start with a colon (<code>:</code>). ASCII control characters are not supported as part of dimension names.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension. Dimension values must contain only ASCII characters and must include at least one non-whitespace character. ASCII control characters are not supported as part of dimension values.</p>
    #   @return [String]
    class Dimension < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that represents a connection between two nodes in a dependency graph, showing the relationship and characteristics of the connection.</p>
    # @!attribute source_node_id
    #   <p>The identifier of the source node in this edge connection.</p>
    #   @return [String]
    # @!attribute destination_node_id
    #   <p>The identifier of the destination node in this edge connection.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration or latency associated with this connection, if applicable.</p>
    #   @return [Float]
    # @!attribute connection_type
    #   <p>The type of connection between the nodes, indicating the nature of the relationship.</p>
    #   @return [String]
    class Edge < Struct.new(
      nil,
      :source_node_id,
      :destination_node_id,
      :duration,
      :connection_type,
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
      nil,
      :window,
      :start_time,
      :recurrence_rule,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to identify the configuration to retrieve.
    #   @return [String]
    # @!attribute service
    #   Service name for the instrumentation configuration.
    #   @return [String]
    # @!attribute environment
    #   Environment name for the instrumentation configuration.
    #   @return [String]
    # @!attribute signal_type
    #   Signal type for the instrumentation configuration.
    #   @return [String]
    # @!attribute location_identifier
    #   Location identifier - either full code location or a pre-computed hash.
    #   @return [Types::LocationIdentifier]
    class GetInstrumentationConfigurationRequest < Struct.new(
      nil,
      :instrumentation_type,
      :service,
      :environment,
      :signal_type,
      :location_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The complete instrumentation configuration, including its location hash, capture settings, filters, expiration, and creation time.</p>
    #   @return [Types::InstrumentationConfiguration]
    class GetInstrumentationConfigurationResponse < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to identify the configuration to retrieve.
    #   @return [String]
    # @!attribute service
    #   Service name for the instrumentation configuration.
    #   @return [String]
    # @!attribute environment
    #   Environment name for the instrumentation configuration.
    #   @return [String]
    # @!attribute signal_type
    #   Signal type for the instrumentation configuration.
    #   @return [String]
    # @!attribute location_identifier
    #   Location identifier - either full code location or a pre-computed hash.
    #   @return [Types::LocationIdentifier]
    # @!attribute status
    #   <p>The single status to query for. If omitted, only <code>ACTIVE</code> status events are returned.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start of the time range to retrieve status events for. <code>StartTime</code> and <code>EndTime</code> must both be provided together or both be omitted. When both are omitted, the time range defaults to the last hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time range to retrieve status events for. <code>StartTime</code> and <code>EndTime</code> must both be provided together or both be omitted. When both are omitted, the time range defaults to the last hour.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of status events to return in one call. The default is 60.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use the token returned by a previous call to retrieve the next page of status events.</p>
    #   @return [String]
    class GetInstrumentationConfigurationStatusRequest < Struct.new(
      nil,
      :instrumentation_type,
      :service,
      :environment,
      :signal_type,
      :location_identifier,
      :status,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service name echoed from the request.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment echoed from the request.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type echoed from the request.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The code location echoed from the request.</p>
    #   @return [Types::Location]
    # @!attribute status
    #   <p>The status that was queried. If not specified in the request, this is <code>ACTIVE</code>.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The list of status events within the requested time window, sorted with the most recent first. Error events include an error cause.</p>
    #   @return [Array<Types::InstrumentationStatusEvent>]
    # @!attribute next_token
    #   <p>Pagination token to continue retrieving status events.</p>
    #   @return [String]
    class GetInstrumentationConfigurationStatusResponse < Struct.new(
      nil,
      :service,
      :environment,
      :signal_type,
      :location,
      :status,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    class GetServiceInput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :key_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ARN or name of the SLO that you want to retrieve information about. You can find the ARNs of SLOs by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListServiceLevelObjectives.html">ListServiceLevelObjectives</a> operation.</p>
    #   @return [String]
    class GetServiceLevelObjectiveInput < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo
    #   <p>A structure containing the information about the SLO.</p>
    #   @return [Types::ServiceLevelObjective]
    class GetServiceLevelObjectiveOutput < Struct.new(
      nil,
      :slo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A structure containing information about the service.</p>
    #   @return [Types::Service]
    # @!attribute start_time
    #   <p>The start time of the data included in the response. In a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code>.</p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the data included in the response. In a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code>.</p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute log_group_references
    #   <p>An array of string-to-string maps that each contain information about one log group associated with this service. Each string-to-string map includes the following fields:</p> <ul> <li> <p> <code>"Type": "AWS::Resource"</code> </p> </li> <li> <p> <code>"ResourceType": "AWS::Logs::LogGroup"</code> </p> </li> <li> <p> <code>"Identifier": "<i>name-of-log-group</i>"</code> </p> </li> </ul>
    #   @return [Array<Hash<String, String>>]
    class GetServiceOutput < Struct.new(
      nil,
      :service,
      :start_time,
      :end_time,
      :log_group_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the attributes that determine the goal of an SLO. This includes the time period for evaluation and the attainment threshold.</p>
    # @!attribute interval
    #   <p>The time period used to evaluate the SLO. It can be either a calendar interval or rolling interval.</p> <p>If you omit this parameter, a rolling interval of 7 days is used.</p>
    #   @return [Types::Interval]
    # @!attribute attainment_goal
    #   <p>The threshold that determines if the goal is being met.</p> <p>If this is a period-based SLO, the attainment goal is the percentage of good periods that meet the threshold requirements to the total periods within the interval. For example, an attainment goal of 99.9% means that within your interval, you are targeting 99.9% of the periods to be in healthy state.</p> <p>If this is a request-based SLO, the attainment goal is the percentage of requests that must be successful to meet the attainment goal.</p> <p>If you omit this parameter, 99 is used to represent 99% as the attainment goal.</p>
    #   @return [Float]
    # @!attribute warning_threshold
    #   <p>The percentage of remaining budget over total budget that you want to get warnings for. If you omit this parameter, the default of 50.0 is used. </p>
    #   @return [Float]
    class Goal < Struct.new(
      nil,
      :interval,
      :attainment_goal,
      :warning_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines how services should be grouped based on specific attributes. This includes the friendly name for the grouping, the source keys to derive values from, and an optional default value.</p>
    # @!attribute grouping_name
    #   <p>The friendly name for this grouping attribute, such as <code>BusinessUnit</code> or <code>Environment</code>. This name is used to identify the grouping in the console and APIs.</p>
    #   @return [String]
    # @!attribute grouping_source_keys
    #   <p>An array of source keys used to derive the grouping attribute value from telemetry data, Amazon Web Services tags, or other sources. For example, ["business_unit", "team"] would look for values in those fields.</p>
    #   @return [Array<String>]
    # @!attribute default_grouping_value
    #   <p>The default value to use for this grouping attribute when no value can be derived from the source keys. This ensures all services have a grouping value even if the source data is missing.</p>
    #   @return [String]
    class GroupingAttributeDefinition < Struct.new(
      nil,
      :grouping_name,
      :grouping_source_keys,
      :default_grouping_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the complete grouping configuration for an account, including all defined grouping attributes and metadata about when it was last updated.</p>
    # @!attribute grouping_attribute_definitions
    #   <p>An array of grouping attribute definitions that specify how services should be grouped based on various attributes and source keys.</p>
    #   @return [Array<Types::GroupingAttributeDefinition>]
    # @!attribute updated_at
    #   <p>The timestamp when this grouping configuration was last updated. When used in a raw HTTP Query API, it is formatted as epoch time in seconds.</p>
    #   @return [Time]
    class GroupingConfiguration < Struct.new(
      nil,
      :grouping_attribute_definitions,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The full instrumentation configuration, including the instrumentation type, service, environment, signal type, location details, stable location hash, capture settings, filters, expiration, creation time, and ARN.</p>
    # @!attribute instrumentation_type
    #   <p>The type of instrumentation for this configuration.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service that this instrumentation configuration targets.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment where the service is running.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type for this instrumentation configuration.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location where this instrumentation is applied.</p>
    #   @return [Types::Location]
    # @!attribute location_hash
    #   <p>The stable hash derived from the location that uniquely identifies this instrumentation point within the service and environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional short description of the instrumentation configuration.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The timestamp when this configuration expires.</p>
    #   @return [Time]
    # @!attribute attribute_filters
    #   <p>Client-side filters that determine which instances apply this instrumentation.</p>
    #   @return [Array<Hash<String, String>>]
    # @!attribute capture_configuration
    #   <p>The capture settings for this instrumentation configuration.</p>
    #   @return [Types::CaptureConfiguration]
    # @!attribute created_at
    #   <p>The timestamp when this instrumentation configuration was created.</p>
    #   @return [Time]
    # @!attribute arn
    #   ARN for the instrumentation configuration
    #   @return [String]
    class InstrumentationConfiguration < Struct.new(
      nil,
      :instrumentation_type,
      :service,
      :environment,
      :signal_type,
      :location,
      :location_hash,
      :description,
      :expires_at,
      :attribute_filters,
      :capture_configuration,
      :created_at,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of a single instrumentation configuration reported by an SDK instance.</p>
    # @!attribute instrumentation_type
    #   <p>The type of instrumentation configuration being reported.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type for this instrumentation configuration.</p>
    #   @return [String]
    # @!attribute location_hash
    #   <p>The stable hash of the instrumentation location that identifies the configuration being reported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the instrumentation configuration: <code>READY</code>, <code>ERROR</code>, <code>ACTIVE</code>, or <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The timestamp when the status event occurred.</p>
    #   @return [Time]
    # @!attribute error_cause
    #   <p>The error cause when the status is <code>ERROR</code>, such as the file or method not being found.</p>
    #   @return [String]
    class InstrumentationConfigurationStatusReport < Struct.new(
      nil,
      :instrumentation_type,
      :signal_type,
      :location_hash,
      :status,
      :time,
      :error_cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An instrumentation configuration that omits service and environment because they are provided at a higher level, such as in a list response.</p>
    # @!attribute instrumentation_type
    #   <p>The type of instrumentation for this configuration.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type for this instrumentation configuration.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location where this instrumentation is applied.</p>
    #   @return [Types::Location]
    # @!attribute location_hash
    #   <p>The stable hash derived from the location that identifies this instrumentation point.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional short description of the instrumentation configuration.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The timestamp when this configuration expires.</p>
    #   @return [Time]
    # @!attribute attribute_filters
    #   <p>Client-side filters that determine which instances apply this instrumentation.</p>
    #   @return [Array<Hash<String, String>>]
    # @!attribute capture_configuration
    #   <p>The capture settings for this instrumentation configuration.</p>
    #   @return [Types::CaptureConfiguration]
    # @!attribute created_at
    #   <p>The timestamp when this instrumentation configuration was created.</p>
    #   @return [Time]
    # @!attribute arn
    #   ARN for the instrumentation configuration
    #   @return [String]
    class InstrumentationConfigurationWithoutServiceEnv < Struct.new(
      nil,
      :instrumentation_type,
      :signal_type,
      :location,
      :location_hash,
      :description,
      :expires_at,
      :attribute_filters,
      :capture_configuration,
      :created_at,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service name associated with the returned configurations.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment associated with the returned configurations.</p>
    #   @return [String]
    # @!attribute changed
    #   <p>Indicates whether there are configuration changes since the provided <code>SyncedAt</code> timestamp.</p>
    #   @return [Boolean]
    # @!attribute latest_configurations
    #   <p>The current set of active instrumentation configurations for the service and environment. Items omit service and environment because they are provided in the request.</p>
    #   @return [Array<Types::InstrumentationConfigurationWithoutServiceEnv>]
    # @!attribute synced_at
    #   <p>The server timestamp to supply on the next sync call.</p>
    #   @return [Time]
    # @!attribute sync_interval
    #   <p>The suggested number of seconds to wait before the next sync request. This is at least 60 seconds to prevent excessive polling.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token to continue listing configurations when more results are available.</p>
    #   @return [String]
    class InstrumentationConfigurationsPage < Struct.new(
      nil,
      :service,
      :environment,
      :changed,
      :latest_configurations,
      :synced_at,
      :sync_interval,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A status event for an instrumentation configuration returned by <code>GetInstrumentationConfigurationStatus</code>. Events include the timestamp and, for errors, an error cause.</p>
    # @!attribute time
    #   <p>The time when the status was reported, rounded to the nearest minute.</p>
    #   @return [Time]
    # @!attribute error_cause
    #   <p>The error cause when the status is <code>ERROR</code>.</p>
    #   @return [String]
    class InstrumentationStatusEvent < Struct.new(
      nil,
      :time,
      :error_cause,
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
    #   <p>The start of the time period to retrieve audit findings for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve audit findings for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute auditors
    #   <p>A list of auditor names to filter the findings by. Only findings generated by the specified auditors will be returned.</p> <p>The following auditors are available for configuration:</p> <ul> <li> <p> <code>slo</code> - SloAuditor: Identifies SLO violations and detects breached thresholds during the Assessment phase.</p> </li> <li> <p> <code>operation_metric</code> - OperationMetricAuditor: Detects anomalies in service operation metrics from Application Signals RED metrics during the Assessment phase</p> <note> <p>Anomaly detection is not supported for sparse metrics (those missing more than 80% of datapoints within the given time period).</p> </note> </li> <li> <p> <code>service_quota</code> - ServiceQuotaAuditor: Monitors resource utilization against service quotas during the Assessment phase</p> </li> <li> <p> <code>trace</code> - TraceAuditor: Performs deep-dive analysis of distributed traces, correlating traces with breached SLOs or abnormal RED metrics during the Analysis phase</p> </li> <li> <p> <code>dependency_metric</code> - CriticalPathAuditor: Analyzes service dependency impacts and maps dependency relationships from Application Signals RED metrics during the Analysis phase</p> </li> <li> <p> <code>top_contributor</code> - TopContributorAuditor: Identifies infrastructure-level contributors to issues by analyzing EMF logs of Application Signals RED metrics during the Analysis phase</p> </li> <li> <p> <code>log</code> - LogAuditor: Extracts insights from application logs, categorizing error types and ranking severity by frequency during the Analysis phase</p> </li> <li> <p> <code>change_indicator</code> - ChangeIndicatorAuditor: Detects change events (deployments, configuration changes) that occurred within 10 minutes before and during a detected anomaly, and surfaces them as findings with deployment timestamps in the Analysis phase. When changes are detected, the <code>top_contributor</code> auditor skips its analysis to avoid redundancy.</p> </li> </ul> <note> <p> <code>InitAuditor</code> and <code>Summarizer</code> auditors are not configurable as they are automatically triggered during the audit process.</p> </note>
    #   @return [Array<String>]
    # @!attribute audit_targets
    #   <p>A list of audit targets to filter the findings by. You can specify services, SLOs, or service operations to limit the audit findings to specific entities.</p>
    #   @return [Array<Types::AuditTarget>]
    # @!attribute detail_level
    #   <p>The level of details of the audit findings. Supported values: <code>BRIEF</code>, <code>DETAILED</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of audit findings.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of audit findings to return in one operation. If you omit this parameter, the default of 10 is used.</p>
    #   @return [Integer]
    class ListAuditFindingsInput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :auditors,
      :audit_targets,
      :detail_level,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned audit findings apply to. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned audit findings apply to. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute audit_findings
    #   <p>An array of structures, where each structure contains information about one audit finding, including the auditor results, severity, and associated metric and dependency graphs.</p>
    #   @return [Array<Types::AuditFinding>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get the next set of audit findings.</p>
    #   @return [String]
    class ListAuditFindingsOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :audit_findings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>The entity for which to retrieve change events. This specifies the service, resource, or other entity whose event history you want to examine.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> <li> <p> <code>AwsAccountId</code> specifies the account where this object is in.</p> </li> </ul> <p>Below is an example of a service.</p> <p> <code>{ "Type": "Service", "Name": "visits-service", "Environment": "petclinic-test" }</code> </p> <p>Below is an example of a resource.</p> <p> <code>{ "Type": "AWS::Resource", "ResourceType": "AWS::DynamoDB::Table", "Identifier": "Customers" }</code> </p>
    #   @return [Hash<String, String>]
    # @!attribute start_time
    #   <p>The start of the time period to retrieve change events for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example: <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve change events for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example: <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of change events to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of change events.</p>
    #   @return [String]
    class ListEntityEventsInput < Struct.new(
      nil,
      :entity,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned change events apply to. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example: <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned change events apply to. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example: <code>1698778057</code> </p>
    #   @return [Time]
    # @!attribute change_events
    #   <p>An array of structures, where each structure contains information about one change event that occurred for the specified entity during the requested time period.</p>
    #   @return [Array<Types::ChangeEvent>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get the next set of change events.</p>
    #   @return [String]
    class ListEntityEventsOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :change_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of grouping attribute definitions.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID to retrieve grouping attribute definitions for. Use this when accessing grouping configurations from a different account in cross-account monitoring scenarios.</p>
    #   @return [String]
    # @!attribute include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include grouping attributes from source accounts in the returned data.</p>
    #   @return [Boolean]
    class ListGroupingAttributeDefinitionsInput < Struct.new(
      nil,
      :next_token,
      :aws_account_id,
      :include_linked_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grouping_attribute_definitions
    #   <p>An array of structures, where each structure contains information about one grouping attribute definition, including the grouping name, source keys, and default values.</p>
    #   @return [Array<Types::GroupingAttributeDefinition>]
    # @!attribute updated_at
    #   <p>The timestamp when the grouping configuration was last updated. When used in a raw HTTP Query API, it is formatted as epoch time in seconds.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get the next set of grouping attribute definitions.</p>
    #   @return [String]
    class ListGroupingAttributeDefinitionsOutput < Struct.new(
      nil,
      :grouping_attribute_definitions,
      :updated_at,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The name of the service to retrieve instrumentation configurations for.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment that the service is running in.</p>
    #   @return [String]
    # @!attribute instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to determine which backing store to query.
    #   @return [String]
    # @!attribute synced_at
    #   <p>The timestamp from the last successful sync. When provided, the response returns <code>Changed</code> as <code>false</code> if nothing is new since this time, or returns the latest configurations when changes exist.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of configurations to return in one call. The default is 50 and the maximum is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Use the token returned by a previous call to retrieve the next page of configurations.</p>
    #   @return [String]
    class ListInstrumentationConfigurationsRequest < Struct.new(
      nil,
      :service,
      :environment,
      :instrumentation_type,
      :synced_at,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested end time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service dependencies.</p>
    #   @return [String]
    class ListServiceDependenciesInput < Struct.new(
      nil,
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
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_dependencies
    #   <p>An array, where each object in the array contains information about one of the dependencies of this service.</p>
    #   @return [Array<Types::ServiceDependency>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set of service dependencies.</p>
    #   @return [String]
    class ListServiceDependenciesOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :service_dependencies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service dependents.</p>
    #   @return [String]
    class ListServiceDependentsInput < Struct.new(
      nil,
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
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_dependents
    #   <p>An array, where each object in the array contains information about one of the dependents of this service.</p>
    #   @return [Array<Types::ServiceDependent>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set of service dependents.</p>
    #   @return [String]
    class ListServiceDependentsOutput < Struct.new(
      nil,
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
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives. </p>
    #   @return [String]
    class ListServiceLevelObjectiveExclusionWindowsInput < Struct.new(
      nil,
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
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives. </p>
    #   @return [String]
    class ListServiceLevelObjectiveExclusionWindowsOutput < Struct.new(
      nil,
      :exclusion_windows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_attributes
    #   <p>You can use this optional field to specify which services you want to retrieve SLO information for.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>The name of the operation that this SLO is associated with.</p>
    #   @return [String]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives.</p>
    #   @return [String]
    # @!attribute metric_source_types
    #   <p>Use this optional field to only include SLOs with the specified metric source types in the output. Supported types are:</p> <ul> <li> <p>Service operation</p> </li> <li> <p>Service dependency</p> </li> <li> <p>Service</p> </li> <li> <p>CloudWatch metric</p> </li> <li> <p>AppMonitor</p> </li> <li> <p>Canary</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include SLO from source accounts in the returned data. </p> <p>When you are monitoring an account, you can use Amazon Web Services account ID in <code>KeyAttribute</code> filter for service source account and <code>SloOwnerawsaccountID</code> for SLO source account with <code>IncludeLinkedAccounts</code> to filter the returned data to only a single source account. </p>
    #   @return [Boolean]
    # @!attribute slo_owner_aws_account_id
    #   <p>SLO's Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute metric_source
    #   <p>Identifies the metric source to filter SLOs by.</p>
    #   @return [Types::MetricSource]
    class ListServiceLevelObjectivesInput < Struct.new(
      nil,
      :key_attributes,
      :operation_name,
      :dependency_config,
      :max_results,
      :next_token,
      :metric_source_types,
      :include_linked_accounts,
      :slo_owner_aws_account_id,
      :metric_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo_summaries
    #   <p>An array of structures, where each structure contains information about one SLO.</p>
    #   @return [Array<Types::ServiceLevelObjectiveSummary>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set of service level objectives.</p>
    #   @return [String]
    class ListServiceLevelObjectivesOutput < Struct.new(
      nil,
      :slo_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested end time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service operations.</p>
    #   @return [String]
    class ListServiceOperationsInput < Struct.new(
      nil,
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
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_operations
    #   <p>An array of structures that each contain information about one operation of this service.</p>
    #   @return [Array<Types::ServiceOperation>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set of service operations.</p>
    #   @return [String]
    class ListServiceOperationsOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :service_operations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve service state information for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve service state information for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code>.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of service states to return in one operation. If you omit this parameter, the default of 20 is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service states.</p>
    #   @return [String]
    # @!attribute include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include service states from source accounts in the returned data.</p>
    #   @return [Boolean]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID to filter service states by. Use this to limit results to services from a specific account.</p>
    #   @return [String]
    # @!attribute attribute_filters
    #   <p>A list of attribute filters to narrow down the services. You can filter by platform, environment, or other service attributes.</p>
    #   @return [Array<Types::AttributeFilter>]
    class ListServiceStatesInput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      :include_linked_accounts,
      :aws_account_id,
      :attribute_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code>.</p>
    #   @return [Time]
    # @!attribute service_states
    #   <p>An array of structures, where each structure contains information about the state of one service, including its latest change events such as deployments.</p>
    #   @return [Array<Types::ServiceState>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get the next set of service states.</p>
    #   @return [String]
    class ListServiceStatesOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :service_states,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p> The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of services.</p>
    #   @return [String]
    # @!attribute include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include services from source accounts in the returned data. </p>
    #   @return [Boolean]
    # @!attribute aws_account_id
    #   <p>Amazon Web Services Account ID.</p>
    #   @return [String]
    class ListServicesInput < Struct.new(
      nil,
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
    #   <p>The start of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period that the returned information applies to. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>This displays the time that Application Signals used for the request. It might not match your request exactly, because it was rounded to the nearest hour.</p>
    #   @return [Time]
    # @!attribute service_summaries
    #   <p>An array of structures, where each structure contains some information about a service. To get complete information about a service, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetService.html">GetService</a>.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>Include this value in your next use of this API to get next set of services.</p>
    #   @return [String]
    class ListServicesOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      :service_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to view tags for.</p> <p>The ARN format of an Application Signals SLO is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource you specified.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union that identifies the location to instrument. Specify a <code>CodeLocation</code> for code-level instrumentation.</p>
    # @!attribute code_location
    #   <p>A code location for code-level instrumentation, including language, code unit, class, method, file path, and optional line number.</p>
    #   @return [Types::CodeLocation]
    class Location < Struct.new(
      :code_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CodeLocation < Location; end
      class Unknown < Location; end
    end

    # Union type for identifying an instrumentation configuration by code location or locationHash.
    # Used in Get/Delete/GetStatus operations to allow flexible identification.
    # @!attribute code_location
    #   The full code location specification (will be hashed internally)
    #   @return [Types::CodeLocation]
    # @!attribute location_hash
    #   The pre-computed location hash (16-character hex string)
    #   @return [String]
    class LocationIdentifier < Struct.new(
      :code_location,
      :location_hash,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CodeLocation < LocationIdentifier; end
      class LocationHash < LocationIdentifier; end
      class Unknown < LocationIdentifier; end
    end

    # <p>This structure defines the metric used for a service level indicator, including the metric name, namespace, and dimensions</p>
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace">Namespaces</a>.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric to use.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>An array of one or more dimensions to use to define the metric that you want to use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension">Dimensions</a>.</p>
    #   @return [Array<Types::Dimension>]
    class Metric < Struct.new(
      nil,
      :namespace,
      :metric_name,
      :dimensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to define a metric or metric math expression that you want to use as for a service level objective. </p> <p>Each <code>MetricDataQuery</code> in the <code>MetricDataQueries</code> array specifies either a metric to retrieve, or a metric math expression to be performed on retrieved metrics. A single <code>MetricDataQueries</code> array can include as many as 20 <code>MetricDataQuery</code> structures in the array. The 20 structures can include as many as 10 structures that contain a <code>MetricStat</code> parameter to retrieve a metric, and as many as 10 structures that contain the <code>Expression</code> parameter to perform a math expression. Of those <code>Expression</code> structures, exactly one must have true as the value for <code>ReturnData</code>. The result of this expression used for the SLO.</p> <p>For more information about metric math expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html">CloudWatchUse metric math</a>.</p> <p>Within each <code>MetricDataQuery</code> object, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>
    # @!attribute id
    #   <p>A short name used to tie this object to the results in the response. This <code>Id</code> must be unique within a <code>MetricDataQueries</code> array. If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the metric math expression. The valid characters are letters, numbers, and underscore. The first character must be a lowercase letter.</p>
    #   @return [String]
    # @!attribute metric_stat
    #   <p>A metric to be used directly for the SLO, or to be used in the math expression that will be used for the SLO.</p> <p>Within one <code>MetricDataQuery</code> object, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>
    #   @return [Types::MetricStat]
    # @!attribute expression
    #   <p>This field can contain a metric math expression to be performed on the other metrics that you are retrieving within this <code>MetricDataQueries</code> structure. </p> <p>A math expression can use the <code>Id</code> of the other metrics or queries to refer to those metrics, and can also use the <code>Id</code> of other expressions to use the result of those expressions. For more information about metric math expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Within each <code>MetricDataQuery</code> object, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents. If the metric or expression is shown in a CloudWatch dashboard widget, the label is shown. If <code>Label</code> is omitted, CloudWatch generates a default.</p> <p>You can put dynamic expressions into a label, so that it is more descriptive. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html">Using Dynamic Labels</a>.</p>
    #   @return [String]
    # @!attribute return_data
    #   <p>Use this only if you are using a metric math expression for the SLO. Specify <code>true</code> for <code>ReturnData</code> for only the one expression result to use as the alarm. For all other metrics and expressions in the same <code>CreateServiceLevelObjective</code> operation, specify <code>ReturnData</code> as <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points for this metric. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p> <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p> <ul> <li> <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p> </li> <li> <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p> </li> <li> <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p> </li> </ul>
    #   @return [Integer]
    # @!attribute account_id
    #   <p>The ID of the account where this metric is located. If you are performing this operation in a monitoring account, use this to specify which source account to retrieve this metric from.</p>
    #   @return [String]
    class MetricDataQuery < Struct.new(
      nil,
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

    # <p>A structure that contains metric data queries and time range information that provides context for audit findings through relevant performance metrics.</p>
    # @!attribute metric_data_queries
    #   <p>An array of metric data queries that define the metrics to be retrieved and analyzed as part of the audit finding context.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute start_time
    #   <p>The start time for the metric data included in this graph. When used in a raw HTTP Query API, it is formatted as epoch time in seconds.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the metric data included in this graph. When used in a raw HTTP Query API, it is formatted as epoch time in seconds.</p>
    #   @return [Time]
    class MetricGraph < Struct.new(
      nil,
      :metric_data_queries,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one CloudWatch metric associated with this entity discovered by Application Signals.</p>
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace">CloudWatchNamespaces</a>.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>Used to display the appropriate statistics in the CloudWatch console.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>An array of one or more dimensions that further define the metric. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension">CloudWatchDimensions</a>.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Amazon Web Services account ID.</p>
    #   @return [String]
    class MetricReference < Struct.new(
      nil,
      :namespace,
      :metric_type,
      :dimensions,
      :metric_name,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the metric source for SLOs on resources other than Application Signals services.</p>
    # @!attribute metric_source_key_attributes
    #   <p>Key attributes that identify the metric source.</p>
    #   @return [Hash<String, String>]
    # @!attribute metric_source_attributes
    #   <p>Additional attributes for the metric source.</p>
    #   @return [Hash<String, String>]
    class MetricSource < Struct.new(
      nil,
      :metric_source_key_attributes,
      :metric_source_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the metric to be used as the service level indicator, along with the statistics, period, and unit.</p>
    # @!attribute metric
    #   <p>The metric to use as the service level indicator, including the metric name, namespace, and dimensions.</p>
    #   @return [Types::Metric]
    # @!attribute period
    #   <p>The granularity, in seconds, to be used for the metric. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p>
    #   @return [Integer]
    # @!attribute stat
    #   <p>The statistic to use for comparison to the threshold. It can be any CloudWatch statistic or extended statistic. For more information about statistics, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html">CloudWatch statistics definitions</a>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>If you omit <code>Unit</code> then all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>
    #   @return [String]
    class MetricStat < Struct.new(
      nil,
      :metric,
      :period,
      :stat,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines the metric that is used as the "good request" or "bad request" value for a request-based SLO. This value observed for the metric defined in <code>TotalRequestCountMetric</code> is divided by the number found for <code>MonitoredRequestCountMetric</code> to determine the percentage of successful requests that this SLO tracks.</p>
    # @!attribute good_count_metric
    #   <p>If you want to count "good requests" to determine the percentage of successful requests for this request-based SLO, specify the metric to use as "good requests" in this structure.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute bad_count_metric
    #   <p>If you want to count "bad requests" to determine the percentage of successful requests for this request-based SLO, specify the metric to use as "bad requests" in this structure.</p>
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

    # <p>A structure that represents a node in a dependency graph, containing information about a service, resource, or other entity and its characteristics.</p>
    # @!attribute key_attributes
    #   <p>The key attributes that identify this node, including Type, Name, and Environment information.</p>
    #   @return [Hash<String, String>]
    # @!attribute name
    #   <p>The name of the entity represented by this node.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>A unique identifier for this node within the dependency graph.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The operation associated with this node, if applicable.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of entity represented by this node, such as <code>Service</code> or <code>Resource</code>.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration or processing time associated with this node, if applicable.</p>
    #   @return [Float]
    # @!attribute status
    #   <p>The status of the entity represented by this node.</p>
    #   @return [String]
    class Node < Struct.new(
      nil,
      :key_attributes,
      :name,
      :node_id,
      :operation,
      :type,
      :duration,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grouping_attribute_definitions
    #   <p>An array of grouping attribute definitions that specify how services should be grouped. Each definition includes a friendly name, source keys to derive the grouping value from, and an optional default value.</p>
    #   @return [Array<Types::GroupingAttributeDefinition>]
    class PutGroupingConfigurationInput < Struct.new(
      nil,
      :grouping_attribute_definitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute grouping_configuration
    #   <p>A structure containing the updated grouping configuration, including all grouping attribute definitions and the timestamp when it was last updated.</p>
    #   @return [Types::GroupingConfiguration]
    class PutGroupingConfigurationOutput < Struct.new(
      nil,
      :grouping_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The recurrence rule for the SLO time window exclusion .</p>
    # @!attribute expression
    #   <p>A cron or rate expression that specifies the schedule for the exclusion window.</p>
    #   @return [String]
    class RecurrenceRule < Struct.new(
      nil,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service that the reported configurations belong to.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment that the service is running in.</p>
    #   @return [String]
    # @!attribute configurations
    #   <p>An array of configuration status reports (up to 100) that include the instrumentation type, signal type, location hash, status, timestamp, and optional error cause.</p>
    #   @return [Array<Types::InstrumentationConfigurationStatusReport>]
    class ReportInstrumentationConfigurationStatusRequest < Struct.new(
      nil,
      :service,
      :environment,
      :configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service name echoed from the request.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment echoed from the request.</p>
    #   @return [String]
    # @!attribute unprocessed_status_events
    #   <p>Status events that failed to be processed. Each entry includes the configuration identifiers, status, timestamp, and a reason for the failure.</p>
    #   @return [Array<Types::UnprocessedStatusEvent>]
    class ReportInstrumentationConfigurationStatusResponse < Struct.new(
      nil,
      :service,
      :environment,
      :unprocessed_status_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the performance metric that a request-based SLO monitors.</p>
    # @!attribute request_based_sli_metric
    #   <p>A structure that contains information about the metric that the SLO monitors. </p>
    #   @return [Types::RequestBasedServiceLevelIndicatorMetric]
    # @!attribute metric_threshold
    #   <p>This value is the threshold that the observed metric values of the SLI metric are compared to.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation used when comparing the specified metric to the threshold.</p>
    #   @return [String]
    class RequestBasedServiceLevelIndicator < Struct.new(
      nil,
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
    #   <p>The arithmetic operation to use when comparing the specified metric to the threshold. This parameter is required if this SLO is tracking the <code>Latency</code> metric.</p>
    #   @return [String]
    class RequestBasedServiceLevelIndicatorConfig < Struct.new(
      nil,
      :request_based_sli_metric_config,
      :metric_threshold,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the information about the metric that is used for a request-based SLO.</p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map that contains information about the type of object that this SLO is related to. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object that this SLO is related to.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO monitors a specific operation of the service, this field displays that operation name.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO monitors either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals collects, this field displays which of those metrics is used.</p>
    #   @return [String]
    # @!attribute total_request_count_metric
    #   <p>This structure defines the metric that is used as the "total requests" number for a request-based SLO. The number observed for this metric is divided by the number of "good requests" or "bad requests" that is observed for the metric defined in <code>MonitoredRequestCountMetric</code>.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute monitored_request_count_metric
    #   <p>This structure defines the metric that is used as the "good request" or "bad request" value for a request-based SLO. This value observed for the metric defined in <code>TotalRequestCountMetric</code> is divided by the number found for <code>MonitoredRequestCountMetric</code> to determine the percentage of successful requests that this SLO tracks.</p>
    #   @return [Types::MonitoredRequestCountMetricDataQueries]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute metric_source
    #   <p>Identifies the metric source for SLOs on resources other than Application Signals services.</p>
    #   @return [Types::MetricSource]
    # @!attribute composite_sli_config
    #   <p>The composite SLI configuration for service-level SLOs that monitor multiple operations of a service.</p>
    #   @return [Types::CompositeSliConfig]
    class RequestBasedServiceLevelIndicatorMetric < Struct.new(
      nil,
      :key_attributes,
      :operation_name,
      :metric_type,
      :total_request_count_metric,
      :monitored_request_count_metric,
      :dependency_config,
      :metric_source,
      :composite_sli_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify the information for the metric that a period-based SLO will monitor.</p>
    # @!attribute key_attributes
    #   <p>If this SLO is related to a metric collected by Application Signals, you must use this field to specify which service the SLO metric is related to. To do so, you must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO is to monitor a specific operation of the service, use this field to specify the name of that operation.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO is to monitor either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals collects, use this field to specify which of those metrics is used.</p>
    #   @return [String]
    # @!attribute total_request_count_metric
    #   <p>Use this structure to define the metric that you want to use as the "total requests" number for a request-based SLO. This result will be divided by the "good request" or "bad request" value defined in <code>MonitoredRequestCountMetric</code>.</p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute monitored_request_count_metric
    #   <p>Use this structure to define the metric that you want to use as the "good request" or "bad request" value for a request-based SLO. This value observed for the metric defined in <code>TotalRequestCountMetric</code> will be divided by the number found for <code>MonitoredRequestCountMetric</code> to determine the percentage of successful requests that this SLO tracks.</p>
    #   @return [Types::MonitoredRequestCountMetricDataQueries]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute metric_source
    #   <p>Identifies the metric source for SLOs on resources other than Application Signals services.</p>
    #   @return [Types::MetricSource]
    # @!attribute metric_name
    #   <p>The name of the metric for SLOs on resources other than Application Signals services.</p>
    #   @return [String]
    # @!attribute composite_sli_config
    #   <p>The composite SLI configuration for service-level SLOs that monitor multiple operations of a service.</p>
    #   @return [Types::CompositeSliConfig]
    class RequestBasedServiceLevelIndicatorMetricConfig < Struct.new(
      nil,
      :key_attributes,
      :operation_name,
      :metric_type,
      :total_request_count_metric,
      :monitored_request_count_metric,
      :dependency_config,
      :metric_source,
      :metric_name,
      :composite_sli_config,
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
      nil,
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
    #   <p>Specifies the duration of each rolling interval. For example, if <code>Duration</code> is <code>7</code> and <code>DurationUnit</code> is <code>DAY</code>, each rolling interval is seven days.</p>
    #   @return [Integer]
    class RollingInterval < Struct.new(
      nil,
      :duration_unit,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how operations are selected for a service-level SLO.</p>
    # @!attribute type
    #   <p>The strategy for selecting operations to include in a service-level SLO.</p> <ul> <li> <p> <code>EXPLICIT</code> — You provide a specific list of operations in the <code>Components</code> field of <code>CompositeSliConfig</code>.</p> </li> <li> <p> <code>PREFIX</code> — You provide a prefix string in the <code>Pattern</code> field of <code>SelectionConfig</code>, and all operations whose names start with the prefix are included.</p> </li> <li> <p> <code>REGEX</code> — You provide a regular expression in the <code>Pattern</code> field of <code>SelectionConfig</code>, and all operations whose names match the pattern are included.</p> </li> </ul>
    #   @return [String]
    # @!attribute pattern
    #   <p>A prefix string or regular expression that specifies which operations to include in a service-level SLO. When <code>SelectionType</code> is <code>PREFIX</code>, this value is a prefix string that matches the beginning of operation names. When <code>SelectionType</code> is <code>REGEX</code>, this value is a regular expression that matches operation names.</p>
    #   @return [String]
    class SelectionConfig < Struct.new(
      nil,
      :type,
      :pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one of your services that was discovered by Application Signals. </p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute attribute_maps
    #   <p>This structure contains one or more string-to-string maps that help identify this service. It can include <i>platform attributes</i>, <i>application attributes</i>, and <i>telemetry attributes</i>.</p> <p>Platform attributes contain information the service's platform.</p> <ul> <li> <p> <code>PlatformType</code> defines the hosted-in platform.</p> </li> <li> <p> <code>EKS.Cluster</code> is the name of the Amazon EKS cluster.</p> </li> <li> <p> <code>K8s.Cluster</code> is the name of the self-hosted Kubernetes cluster.</p> </li> <li> <p> <code>K8s.Namespace</code> is the name of the Kubernetes namespace in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>K8s.Workload</code> is the name of the Kubernetes workload in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>K8s.Node</code> is the name of the Kubernetes node in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>K8s.Pod</code> is the name of the Kubernetes pod in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>EC2.AutoScalingGroup</code> is the name of the Amazon EC2 Auto Scaling group.</p> </li> <li> <p> <code>EC2.InstanceId</code> is the ID of the Amazon EC2 instance.</p> </li> <li> <p> <code>Host</code> is the name of the host, for all platform types.</p> </li> </ul> <p>Application attributes contain information about the application.</p> <ul> <li> <p> <code>AWS.Application</code> is the application's name in Amazon Web Services Service Catalog AppRegistry.</p> </li> <li> <p> <code>AWS.Application.ARN</code> is the application's ARN in Amazon Web Services Service Catalog AppRegistry.</p> </li> </ul> <p>Telemetry attributes contain telemetry information.</p> <ul> <li> <p> <code>Telemetry.SDK</code> is the fingerprint of the OpenTelemetry SDK version for instrumented services.</p> </li> <li> <p> <code>Telemetry.Agent</code> is the fingerprint of the agent used to collect and send telemetry data.</p> </li> <li> <p> <code>Telemetry.Source</code> Specifies the point of application where the telemetry was collected or specifies what was used for the source of telemetry data.</p> </li> </ul>
    #   @return [Array<Hash<String, String>>]
    # @!attribute service_groups
    #   <p>An array of service groups that this service belongs to, based on the configured grouping attributes.</p>
    #   @return [Array<Types::ServiceGroup>]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service.</p>
    #   @return [Array<Types::MetricReference>]
    # @!attribute log_group_references
    #   <p>An array of string-to-string maps that each contain information about one log group associated with this service. Each string-to-string map includes the following fields:</p> <ul> <li> <p> <code>"Type": "AWS::Resource"</code> </p> </li> <li> <p> <code>"ResourceType": "AWS::Logs::LogGroup"</code> </p> </li> <li> <p> <code>"Identifier": "<i>name-of-log-group</i>"</code> </p> </li> </ul>
    #   @return [Array<Hash<String, String>>]
    class Service < Struct.new(
      nil,
      :key_attributes,
      :attribute_maps,
      :service_groups,
      :metric_references,
      :log_group_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one dependency of this service.</p>
    # @!attribute operation_name
    #   <p>The name of the operation in this service that calls the dependency.</p>
    #   @return [String]
    # @!attribute dependency_key_attributes
    #   <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute dependency_operation_name
    #   <p>The name of the called operation in the dependency.</p>
    #   @return [String]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service dependency that was discovered by Application Signals.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceDependency < Struct.new(
      nil,
      :operation_name,
      :dependency_key_attributes,
      :dependency_operation_name,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about a service dependent that was discovered by Application Signals. A dependent is an entity that invoked the specified service during the provided time range. Dependents include other services, CloudWatch Synthetics canaries, and clients that are instrumented with CloudWatch RUM app monitors.</p>
    # @!attribute operation_name
    #   <p>If the invoked entity is an operation on an entity, the name of that dependent operation is displayed here.</p>
    #   @return [String]
    # @!attribute dependent_key_attributes
    #   <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute dependent_operation_name
    #   <p>If the dependent invoker was a service that invoked it from an operation, the name of that dependent operation is displayed here.</p>
    #   @return [String]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service dependent that was discovered by Application Signals.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceDependent < Struct.new(
      nil,
      :operation_name,
      :dependent_key_attributes,
      :dependent_operation_name,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains identifying information for a service entity.</p>
    # @!attribute type
    #   <p>The type of the service entity.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The environment where the service is deployed.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID where the service is located. Provide this value only for cross-account access.</p>
    #   @return [String]
    class ServiceEntity < Struct.new(
      nil,
      :type,
      :name,
      :environment,
      :aws_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that represents a logical grouping of services based on shared attributes such as business unit, environment, or entry point.</p>
    # @!attribute group_name
    #   <p>The name of the grouping attribute, such as <code>BusinessUnit</code> or <code>Environment</code>.</p>
    #   @return [String]
    # @!attribute group_value
    #   <p>The value of the grouping attribute for this service, such as <code>Payments</code> or <code>Production</code>.</p>
    #   @return [String]
    # @!attribute group_source
    #   <p>The source of the grouping attribute, such as <code>TAG</code>, <code>OTEL</code>, or <code>DEFAULT</code>.</p>
    #   @return [String]
    # @!attribute group_identifier
    #   <p>A unique identifier for this grouping attribute value, used for filtering and API operations.</p>
    #   @return [String]
    class ServiceGroup < Struct.new(
      nil,
      :group_name,
      :group_value,
      :group_source,
      :group_identifier,
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
    #   <p>The arithmetic operation used when comparing the specified metric to the threshold.</p>
    #   @return [String]
    class ServiceLevelIndicator < Struct.new(
      nil,
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
    #   <p>This parameter is used only when a request-based SLO tracks the <code>Latency</code> metric. Specify the threshold value that the observed <code>Latency</code> metric values are to be compared to.</p> <p>This is not required if <code>CreateRecommendedSlo</code> is set to <code>true</code>.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation to use when comparing the specified metric to the threshold.</p> <p>This is not required if <code>CreateRecommendedSlo</code> is set to <code>true</code>.</p>
    #   @return [String]
    class ServiceLevelIndicatorConfig < Struct.new(
      nil,
      :sli_metric_config,
      :metric_threshold,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:metric_threshold] = 0 unless options.key?(:metric_threshold)
        options[:comparison_operator] = 'LessThan' unless options.key?(:comparison_operator)
        super
      end
    end

    # <p>This structure contains the information about the metric that is used for a period-based SLO.</p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map that contains information about the type of object that this SLO is related to. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object that this SLO is related to.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO monitors a specific operation of the service, this field displays that operation name.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO monitors either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals collects, this field displays which of those metrics is used.</p>
    #   @return [String]
    # @!attribute metric_data_queries
    #   <p>If this SLO monitors a CloudWatch metric or the result of a CloudWatch metric math expression, this structure includes the information about that metric or expression. </p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute metric_source
    #   <p>Identifies the metric source for SLOs on resources other than Application Signals services.</p>
    #   @return [Types::MetricSource]
    # @!attribute composite_sli_config
    #   <p>The composite SLI configuration for service-level SLOs that monitor multiple operations of a service.</p>
    #   @return [Types::CompositeSliConfig]
    class ServiceLevelIndicatorMetric < Struct.new(
      nil,
      :key_attributes,
      :operation_name,
      :metric_type,
      :metric_data_queries,
      :dependency_config,
      :metric_source,
      :composite_sli_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify the information for the metric that a period-based SLO will monitor.</p>
    # @!attribute key_attributes
    #   <p>If this SLO is related to a metric collected by Application Signals, you must use this field to specify which service the SLO metric is related to. To do so, you must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If the SLO is to monitor a specific operation of the service, use this field to specify the name of that operation.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>If the SLO is to monitor either the <code>LATENCY</code> or <code>AVAILABILITY</code> metric that Application Signals collects, use this field to specify which of those metrics is used.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the CloudWatch metric to use for the SLO, when using a custom metric rather than Application Signals standard metrics.</p>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic to use for comparison to the threshold. It can be any CloudWatch statistic or extended statistic. For more information about statistics, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html">CloudWatch statistics definitions</a>.</p>
    #   @return [String]
    # @!attribute period_seconds
    #   <p>The number of seconds to use as the period for SLO evaluation. Your application's performance is compared to the SLI during each period. For each period, the application is determined to have either achieved or not achieved the necessary performance.</p>
    #   @return [Integer]
    # @!attribute metric_source
    #   <p>Identifies the metric source for SLOs on resources other than Application Signals services.</p>
    #   @return [Types::MetricSource]
    # @!attribute metric_data_queries
    #   <p>If this SLO monitors a CloudWatch metric or the result of a CloudWatch metric math expression, use this structure to specify that metric or expression. </p>
    #   @return [Array<Types::MetricDataQuery>]
    # @!attribute dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    #   @return [Types::DependencyConfig]
    # @!attribute composite_sli_config
    #   <p>The composite SLI configuration for service-level SLOs that monitor multiple operations of a service.</p>
    #   @return [Types::CompositeSliConfig]
    class ServiceLevelIndicatorMetricConfig < Struct.new(
      nil,
      :key_attributes,
      :operation_name,
      :metric_type,
      :metric_name,
      :statistic,
      :period_seconds,
      :metric_source,
      :metric_data_queries,
      :dependency_config,
      :composite_sli_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about one service level objective (SLO) that has been created in Application Signals. Creating SLOs can help you ensure your services are performing to the level that you expect. SLOs help you set and track a specific target level for the reliability and availability of your applications and services. Each SLO uses a service level indicator (SLI), which is a key performance metric, to calculate how much underperformance can be tolerated before the goal that you set for the SLO is not achieved.</p>
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
    #   <p>The date and time that this SLO was created. When used in a raw HTTP Query API, it is formatted as <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, <code>2019-07-01T23:59:59</code>.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time that this SLO was most recently updated. When used in a raw HTTP Query API, it is formatted as <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, <code>2019-07-01T23:59:59</code>.</p>
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
    #   <p>This structure contains the attributes that determine the goal of an SLO. This includes the time period for evaluation and the attainment threshold.</p>
    #   @return [Types::Goal]
    # @!attribute burn_rate_configurations
    #   <p>Each object in this array defines the length of the look-back window used to calculate one burn rate metric for this SLO. The burn rate measures how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    #   @return [Array<Types::BurnRateConfiguration>]
    # @!attribute metric_source_type
    #   <p>Displays the SLI metric source type for this SLO. Supported types are:</p> <ul> <li> <p>Service operation</p> </li> <li> <p>Service dependency</p> </li> <li> <p>Service</p> </li> <li> <p>CloudWatch metric</p> </li> <li> <p>AppMonitor</p> </li> <li> <p>Canary</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_investigation_enabled
    #   Indicates whether DevOps Agent will automatically investigate this SLO when it is breached
    #   @return [Boolean]
    class ServiceLevelObjective < Struct.new(
      nil,
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
      :auto_investigation_enabled,
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
    #   <p>The status of this SLO, as it relates to the error budget for the entire time interval.</p> <ul> <li> <p> <code>OK</code> means that the SLO had remaining budget above the warning threshold, as of the time that you specified in <code>TimeStamp</code>.</p> </li> <li> <p> <code>WARNING</code> means that the SLO's remaining budget was below the warning threshold, as of the time that you specified in <code>TimeStamp</code>.</p> </li> <li> <p> <code>BREACHED</code> means that the SLO's budget was exhausted, as of the time that you specified in <code>TimeStamp</code>.</p> </li> <li> <p> <code>INSUFFICIENT_DATA</code> means that the specified start and end times were before the SLO was created, or that attainment data is missing.</p> </li> </ul>
    #   @return [String]
    # @!attribute attainment
    #   <p>A number between 0 and 100 that represents the success percentage of your application compared to the goal set by the SLO.</p> <p>If this is a period-based SLO, the number is the percentage of time periods that the service has attained the SLO's attainment goal, as of the time of the request.</p> <p>If this is a request-based SLO, the number is the number of successful requests divided by the number of total requests, multiplied by 100, during the time range that you specified in your request.</p>
    #   @return [Float]
    # @!attribute total_budget_seconds
    #   <p>The total number of seconds in the error budget for the interval. This field is included only if the SLO is a period-based SLO.</p>
    #   @return [Integer]
    # @!attribute budget_seconds_remaining
    #   <p>The budget amount remaining before the SLO status becomes <code>BREACHING</code>, at the time specified in the <code>Timestemp</code> parameter of the request. If this value is negative, then the SLO is already in <code>BREACHING</code> status.</p> <p> This field is included only if the SLO is a period-based SLO.</p>
    #   @return [Integer]
    # @!attribute total_budget_requests
    #   <p>This field is displayed only for request-based SLOs. It displays the total number of failed requests that can be tolerated during the time range between the start of the interval and the time stamp supplied in the budget report request. It is based on the total number of requests that occurred, and the percentage specified in the attainment goal. If the number of failed requests matches this number or is higher, then this SLO is currently breaching.</p> <p>This number can go up and down between reports with different time stamps, based on both how many total requests occur.</p>
    #   @return [Integer]
    # @!attribute budget_requests_remaining
    #   <p>This field is displayed only for request-based SLOs. It displays the number of failed requests that can be tolerated before any more successful requests occur, and still have the application meet its SLO goal.</p> <p>This number can go up and down between different reports, based on both how many successful requests and how many failed requests occur in that time.</p>
    #   @return [Integer]
    # @!attribute sli
    #   <p>A structure that contains information about the performance metric that this SLO monitors.</p>
    #   @return [Types::ServiceLevelIndicator]
    # @!attribute request_based_sli
    #   <p>This structure contains information about the performance metric that a request-based SLO monitors.</p>
    #   @return [Types::RequestBasedServiceLevelIndicator]
    # @!attribute goal
    #   <p>This structure contains the attributes that determine the goal of an SLO. This includes the time period for evaluation and the attainment threshold.</p>
    #   @return [Types::Goal]
    class ServiceLevelObjectiveBudgetReport < Struct.new(
      nil,
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

    # <p>A structure containing information about one error that occurred during a <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_BatchGetServiceLevelObjectiveBudgetReport.html">BatchGetServiceLevelObjectiveBudgetReport</a> operation.</p>
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
      nil,
      :name,
      :arn,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains identifying information for a service level objective entity.</p>
    # @!attribute slo_name
    #   <p>The name of the service level objective.</p>
    #   @return [String]
    # @!attribute slo_arn
    #   <p>The ARN of the service level objective. The SLO must be provided with ARN for cross-account access.</p>
    #   @return [String]
    class ServiceLevelObjectiveEntity < Struct.new(
      nil,
      :slo_name,
      :slo_arn,
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
    #   <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this service level objective is for.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute operation_name
    #   <p>If this service level objective is specific to a single operation, this field displays the name of that operation.</p>
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
    #   <p>Displays the SLI metric source type for this SLO. Supported types are:</p> <ul> <li> <p>Service operation</p> </li> <li> <p>Service dependency</p> </li> <li> <p>Service</p> </li> <li> <p>CloudWatch metric</p> </li> <li> <p>AppMonitor</p> </li> <li> <p>Canary</p> </li> </ul>
    #   @return [String]
    # @!attribute metric_source
    #   <p>Identifies the metric source for SLOs on resources other than Application Signals services.</p>
    #   @return [Types::MetricSource]
    # @!attribute composite_sli_config
    #   <p>The composite SLI configuration for service-level SLOs that monitor multiple operations of a service.</p>
    #   @return [Types::CompositeSliConfig]
    class ServiceLevelObjectiveSummary < Struct.new(
      nil,
      :arn,
      :name,
      :key_attributes,
      :operation_name,
      :dependency_config,
      :created_time,
      :evaluation_type,
      :metric_source_type,
      :metric_source,
      :composite_sli_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about an operation discovered by Application Signals. An operation is a specific function performed by a service that was discovered by Application Signals, and is often an API that is called by an upstream dependent. </p>
    # @!attribute name
    #   <p>The name of the operation, discovered by Application Signals.</p>
    #   @return [String]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service operation that was discovered by Application Signals.</p>
    #   @return [Array<Types::MetricReference>]
    class ServiceOperation < Struct.new(
      nil,
      :name,
      :metric_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains identifying information for a service operation entity.</p>
    # @!attribute service
    #   <p>The service entity that contains this operation.</p>
    #   @return [Types::ServiceEntity]
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p>The type of metric associated with this service operation.</p>
    #   @return [String]
    class ServiceOperationEntity < Struct.new(
      nil,
      :service,
      :operation,
      :metric_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about the current state of a service, including its latest change events such as deployments and other state-changing activities.</p>
    # @!attribute attribute_filters
    #   <p>The attribute filters that were applied when retrieving this service state information.</p>
    #   @return [Array<Types::AttributeFilter>]
    # @!attribute service
    #   <p>The key attributes that identify this service, including Type, Name, and Environment information.</p>
    #   @return [Hash<String, String>]
    # @!attribute latest_change_events
    #   <p>An array containing the most recent change events for this service, such as deployments, with information about when they occurred and who initiated them.</p>
    #   @return [Array<Types::ChangeEvent>]
    class ServiceState < Struct.new(
      nil,
      :attribute_filters,
      :service,
      :latest_change_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one of your services that was discovered by Application Signals</p>
    # @!attribute key_attributes
    #   <p>This is a string-to-string map that help identify the objects discovered by Application Signals. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute attribute_maps
    #   <p>This structure contains one or more string-to-string maps that help identify this service. It can include <i>platform attributes</i>, <i>application attributes</i>, and <i>telemetry attributes</i>.</p> <p>Platform attributes contain information the service's platform.</p> <ul> <li> <p> <code>PlatformType</code> defines the hosted-in platform.</p> </li> <li> <p> <code>EKS.Cluster</code> is the name of the Amazon EKS cluster.</p> </li> <li> <p> <code>K8s.Cluster</code> is the name of the self-hosted Kubernetes cluster.</p> </li> <li> <p> <code>K8s.Namespace</code> is the name of the Kubernetes namespace in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>K8s.Workload</code> is the name of the Kubernetes workload in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>K8s.Node</code> is the name of the Kubernetes node in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>K8s.Pod</code> is the name of the Kubernetes pod in either Amazon EKS or Kubernetes clusters.</p> </li> <li> <p> <code>EC2.AutoScalingGroup</code> is the name of the Amazon EC2 Auto Scaling group.</p> </li> <li> <p> <code>EC2.InstanceId</code> is the ID of the Amazon EC2 instance.</p> </li> <li> <p> <code>Host</code> is the name of the host, for all platform types.</p> </li> </ul> <p>Application attributes contain information about the application.</p> <ul> <li> <p> <code>AWS.Application</code> is the application's name in Amazon Web Services Service Catalog AppRegistry.</p> </li> <li> <p> <code>AWS.Application.ARN</code> is the application's ARN in Amazon Web Services Service Catalog AppRegistry.</p> </li> </ul> <p>Telemetry attributes contain telemetry information.</p> <ul> <li> <p> <code>Telemetry.SDK</code> is the fingerprint of the OpenTelemetry SDK version for instrumented services.</p> </li> <li> <p> <code>Telemetry.Agent</code> is the fingerprint of the agent used to collect and send telemetry data.</p> </li> <li> <p> <code>Telemetry.Source</code> Specifies the point of application where the telemetry was collected or specifies what was used for the source of telemetry data.</p> </li> </ul>
    #   @return [Array<Hash<String, String>>]
    # @!attribute metric_references
    #   <p>An array of structures that each contain information about one metric associated with this service.</p>
    #   @return [Array<Types::MetricReference>]
    # @!attribute service_groups
    #   <p>An array of service groups that this service belongs to, based on the configured grouping attributes.</p>
    #   @return [Array<Types::ServiceGroup>]
    class ServiceSummary < Struct.new(
      nil,
      :key_attributes,
      :attribute_maps,
      :metric_references,
      :service_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartDiscoveryInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartDiscoveryOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair associated with a resource. Tags can help you organize and categorize your resources.</p>
    # @!attribute key
    #   <p>A string that you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the specified tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to set tags for.</p> <p>The ARN format of an Application Signals SLO is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the alarm.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled because of quota limits.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A status event that could not be processed by the service.</p>
    # @!attribute instrumentation_type
    #   <p>The type of instrumentation configuration for the unprocessed status event.</p>
    #   @return [String]
    # @!attribute signal_type
    #   <p>The telemetry signal type for the unprocessed status event.</p>
    #   @return [String]
    # @!attribute location_hash
    #   <p>The stable hash of the instrumentation location for the unprocessed event.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status that failed to be processed.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The timestamp of the status event that failed to be processed.</p>
    #   @return [Time]
    # @!attribute failed_reason
    #   <p>The reason why this status event could not be processed, such as throttling or validation errors.</p>
    #   @return [String]
    class UnprocessedStatusEvent < Struct.new(
      nil,
      :instrumentation_type,
      :signal_type,
      :location_hash,
      :status,
      :time,
      :failed_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to delete tags from.</p> <p>The ARN format of an Application Signals SLO is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
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
    #   <p>If this SLO is a request-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p> <p>You can't specify both <code>SliConfig</code> and <code>RequestBasedSliConfig</code> in the same operation.</p>
    #   @return [Types::RequestBasedServiceLevelIndicatorConfig]
    # @!attribute goal
    #   <p>A structure that contains the attributes that determine the goal of the SLO. This includes the time period for evaluation and the attainment threshold.</p>
    #   @return [Types::Goal]
    # @!attribute burn_rate_configurations
    #   <p>Use this array to create <i>burn rates</i> for this SLO. Each burn rate is a metric that indicates how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    #   @return [Array<Types::BurnRateConfiguration>]
    # @!attribute auto_investigation_enabled
    #   Indicates whether DevOps Agent will automatically investigate this SLO when it is breached
    #   @return [Boolean]
    class UpdateServiceLevelObjectiveInput < Struct.new(
      nil,
      :id,
      :description,
      :sli_config,
      :request_based_sli_config,
      :goal,
      :burn_rate_configurations,
      :auto_investigation_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute slo
    #   <p>A structure that contains information about the SLO that you just updated.</p>
    #   @return [Types::ServiceLevelObjective]
    class UpdateServiceLevelObjectiveOutput < Struct.new(
      nil,
      :slo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
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
      nil,
      :duration_unit,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
