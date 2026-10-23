# frozen_string_literal: true

# This is generated code!

module Aws::IoT
  # This module contains the types returned by client operations.
  module Types

    # <p>The criteria that determine when and how a job abort takes place.</p>
    # @!attribute criteria_list
    #   <p>The list of criteria that determine when and how to abort the job.</p>
    #   @return [Array<Types::AbortCriteria>]
    class AbortConfig < Struct.new(
      nil,
      :criteria_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria that determine when and how a job abort takes place.</p>
    # @!attribute failure_type
    #   <p>The type of job execution failures that can initiate a job abort.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The type of job action to take to initiate the job abort.</p>
    #   @return [String]
    # @!attribute threshold_percentage
    #   <p>The minimum percentage of job execution failures that must occur to initiate the
    #               job abort.</p>
    #            <p>Amazon Web Services IoT Core supports up to two digits after the decimal (for example, 10.9 and 10.99,
    #               but not 10.999).</p>
    #   @return [Float]
    # @!attribute min_number_of_executed_things
    #   <p>The minimum number of things which must receive job execution notifications before
    #               the job can be aborted.</p>
    #   @return [Integer]
    class AbortCriteria < Struct.new(
      nil,
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the AcceptCertificateTransfer operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    # @!attribute set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    #   @return [Boolean]
    class AcceptCertificateTransferRequest < Struct.new(
      nil,
      :certificate_id,
      :set_as_active,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the actions associated with a rule.</p>
    # @!attribute dynamo_db
    #   <p>Write to a DynamoDB table.</p>
    #   @return [Types::DynamoDBAction]
    # @!attribute dynamo_d_bv2
    #   <p>Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows
    #            you to write each attribute in an MQTT message payload into a separate DynamoDB
    #            column.</p>
    #   @return [Types::DynamoDBv2Action]
    # @!attribute lambda
    #   <p>Invoke a Lambda function.</p>
    #   @return [Types::LambdaAction]
    # @!attribute sns
    #   <p>Publish to an Amazon SNS topic.</p>
    #   @return [Types::SnsAction]
    # @!attribute sqs
    #   <p>Publish to an Amazon SQS queue.</p>
    #   @return [Types::SqsAction]
    # @!attribute kinesis
    #   <p>Write data to an Amazon Kinesis stream.</p>
    #   @return [Types::KinesisAction]
    # @!attribute republish
    #   <p>Publish to another MQTT topic.</p>
    #   @return [Types::RepublishAction]
    # @!attribute s3
    #   <p>Write to an Amazon S3 bucket.</p>
    #   @return [Types::S3Action]
    # @!attribute firehose
    #   <p>Write to an Amazon Kinesis Firehose stream.</p>
    #   @return [Types::FirehoseAction]
    # @!attribute cloudwatch_metric
    #   <p>Capture a CloudWatch metric.</p>
    #   @return [Types::CloudwatchMetricAction]
    # @!attribute cloudwatch_alarm
    #   <p>Change the state of a CloudWatch alarm.</p>
    #   @return [Types::CloudwatchAlarmAction]
    # @!attribute cloudwatch_logs
    #   <p>Send data to CloudWatch Logs.</p>
    #   @return [Types::CloudwatchLogsAction]
    # @!attribute elasticsearch
    #   <p>Write data to an Amazon OpenSearch Service domain.</p>
    #            <note>
    #               <p>The <code>Elasticsearch</code> action can only be used by existing rule actions. 
    #               To create a new rule action or to update an existing rule action, use the
    #               <code>OpenSearch</code> rule action instead. For more information, see 
    #               <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_OpenSearchAction.html">OpenSearchAction</a>.</p>
    #            </note>
    #   @return [Types::ElasticsearchAction]
    # @!attribute salesforce
    #   <p>Send a message to a Salesforce IoT Cloud Input Stream.</p>
    #   @return [Types::SalesforceAction]
    # @!attribute iot_analytics
    #   <p>Sends message data to an IoT Analytics channel.</p>
    #   @return [Types::IotAnalyticsAction]
    # @!attribute iot_events
    #   <p>Sends an input to an IoT Events detector.</p>
    #   @return [Types::IotEventsAction]
    # @!attribute iot_site_wise
    #   <p>Sends data from the MQTT message that triggered the rule to IoT SiteWise asset
    #         properties.</p>
    #   @return [Types::IotSiteWiseAction]
    # @!attribute step_functions
    #   <p>Starts execution of a Step Functions state machine.</p>
    #   @return [Types::StepFunctionsAction]
    # @!attribute timestream
    #   <p>The Timestream rule action writes attributes (measures) from an MQTT message
    #            into an Amazon Timestream table. For more information, see the <a href="https://docs.aws.amazon.com/iot/latest/developerguide/timestream-rule-action.html">Timestream</a>
    #               topic rule action documentation.</p>
    #   @return [Types::TimestreamAction]
    # @!attribute http
    #   <p>Send data to an HTTPS endpoint.</p>
    #   @return [Types::HttpAction]
    # @!attribute kafka
    #   <p>Send messages to an Amazon Managed Streaming for Apache Kafka (Amazon MSK) or self-managed Apache Kafka cluster.</p>
    #   @return [Types::KafkaAction]
    # @!attribute open_search
    #   <p>Write data to an Amazon OpenSearch Service domain.</p>
    #   @return [Types::OpenSearchAction]
    # @!attribute location
    #   <p>The Amazon Location Service rule action sends device location updates from
    #            an MQTT message to an Amazon Location tracker resource.</p>
    #   @return [Types::LocationAction]
    class Action < Struct.new(
      nil,
      :dynamo_db,
      :dynamo_d_bv2,
      :lambda,
      :sns,
      :sqs,
      :kinesis,
      :republish,
      :s3,
      :firehose,
      :cloudwatch_metric,
      :cloudwatch_alarm,
      :cloudwatch_logs,
      :elasticsearch,
      :salesforce,
      :iot_analytics,
      :iot_events,
      :iot_site_wise,
      :step_functions,
      :timestream,
      :http,
      :kafka,
      :open_search,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an active Device Defender security profile behavior violation.</p>
    # @!attribute violation_id
    #   <p>The ID of the active violation.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing responsible for the active violation.</p>
    #   @return [String]
    # @!attribute security_profile_name
    #   <p>The security profile with the behavior is in violation.</p>
    #   @return [String]
    # @!attribute behavior
    #   <p>The behavior that is being violated.</p>
    #   @return [Types::Behavior]
    # @!attribute last_violation_value
    #   <p>The value of the metric (the measurement) that caused the most recent violation.</p>
    #   @return [Types::MetricValue]
    # @!attribute violation_event_additional_info
    #   <p>
    #               The details of a violation event.
    #           </p>
    #   @return [Types::ViolationEventAdditionalInfo]
    # @!attribute verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    #   @return [String]
    # @!attribute verification_state_description
    #   <p>The description of the verification state of the violation.</p>
    #   @return [String]
    # @!attribute last_violation_time
    #   <p>The time the most recent violation occurred.</p>
    #   @return [Time]
    # @!attribute violation_start_time
    #   <p>The time the violation started.</p>
    #   @return [Time]
    class ActiveViolation < Struct.new(
      nil,
      :violation_id,
      :thing_name,
      :security_profile_name,
      :behavior,
      :last_violation_value,
      :violation_event_additional_info,
      :verification_state,
      :verification_state_description,
      :last_violation_time,
      :violation_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #            <note>
    #               <p>This call is asynchronous. It might take several seconds for the detachment to propagate.</p>
    #            </note>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The ARN of the billing group.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing to be added to the billing group.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to be added to the billing group.</p>
    #   @return [String]
    class AddThingToBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      :billing_group_arn,
      :thing_name,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AddThingToBillingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The name of the group to which you are adding a thing.</p>
    #   @return [String]
    # @!attribute thing_group_arn
    #   <p>The ARN of the group to which you are adding a thing.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing to add to a group.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to add to a group.</p>
    #   @return [String]
    # @!attribute override_dynamic_groups
    #   <p>Override dynamic thing groups with static thing groups when 10-group limit is
    #   			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
    #   			dynamic thing groups, adding a thing to a static group removes the thing from the last
    #   			dynamic group.</p>
    #   @return [Boolean]
    class AddThingToThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_arn,
      :thing_name,
      :thing_arn,
      :override_dynamic_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AddThingToThingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters used when defining a mitigation action that move a set of things to a thing group.</p>
    # @!attribute thing_group_names
    #   <p>The list of groups to which you want to add the things that triggered the mitigation action. You can add a thing to a maximum of 10 groups, but you can't add a thing to more than one group in the same hierarchy.</p>
    #   @return [Array<String>]
    # @!attribute override_dynamic_groups
    #   <p>Specifies if this mitigation action can move the things that triggered the mitigation action even if they are part of one or more dynamic thing groups.</p>
    #   @return [Boolean]
    class AddThingsToThingGroupParams < Struct.new(
      nil,
      :thing_group_names,
      :override_dynamic_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The type of aggregation queries.</p>
    # @!attribute name
    #   <p>The name of the aggregation type.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of the values of aggregation types.</p>
    #   @return [Array<String>]
    class AggregationType < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the alert target ARN and the role ARN.</p>
    # @!attribute alert_target_arn
    #   <p>The Amazon Resource Name (ARN) of the notification target to which alerts are sent.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to send alerts to the 
    #           notification target.</p>
    #   @return [String]
    class AlertTarget < Struct.new(
      nil,
      :alert_target_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information that allowed the authorization.</p>
    # @!attribute policies
    #   <p>A list of policies that allowed the authentication.</p>
    #   @return [Array<Types::Policy>]
    class Allowed < Struct.new(
      nil,
      :policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An asset property timestamp entry containing the following information.</p>
    # @!attribute time_in_seconds
    #   <p>A string that contains the time in seconds since epoch. Accepts substitution
    #         templates.</p>
    #   @return [String]
    # @!attribute offset_in_nanos
    #   <p>Optional. A string that contains the nanosecond time offset. Accepts substitution
    #         templates.</p>
    #   @return [String]
    class AssetPropertyTimestamp < Struct.new(
      nil,
      :time_in_seconds,
      :offset_in_nanos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An asset property value entry containing the following information.</p>
    # @!attribute value
    #   <p>The value of the asset property.</p>
    #   @return [Types::AssetPropertyVariant]
    # @!attribute timestamp
    #   <p>The asset property value timestamp.</p>
    #   @return [Types::AssetPropertyTimestamp]
    # @!attribute quality
    #   <p>Optional. A string that describes the quality of the value. Accepts substitution
    #         templates. Must be <code>GOOD</code>, <code>BAD</code>, or <code>UNCERTAIN</code>.</p>
    #   @return [String]
    class AssetPropertyValue < Struct.new(
      nil,
      :value,
      :timestamp,
      :quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset property value (of a single type).</p>
    # @!attribute string_value
    #   <p>Optional. The string value of the value entry. Accepts substitution templates.</p>
    #   @return [String]
    # @!attribute integer_value
    #   <p>Optional. A string that contains the integer value of the value entry. Accepts
    #         substitution templates.</p>
    #   @return [String]
    # @!attribute double_value
    #   <p>Optional. A string that contains the double value of the value entry. Accepts substitution
    #         templates.</p>
    #   @return [String]
    # @!attribute boolean_value
    #   <p>Optional. A string that contains the boolean value (<code>true</code> or
    #           <code>false</code>) of the value entry. Accepts substitution templates.</p>
    #   @return [String]
    class AssetPropertyVariant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < AssetPropertyVariant; end
      class IntegerValue < AssetPropertyVariant; end
      class DoubleValue < AssetPropertyVariant; end
      class BooleanValue < AssetPropertyVariant; end
      class Unknown < AssetPropertyVariant; end
    end

    # @!attribute package_name
    #   <p>The name of the new software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the new package version.</p>
    #   @return [String]
    # @!attribute sbom
    #   <p>A specific software bill of matrerials associated with a software
    #            package version.</p>
    #   @return [Types::Sbom]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class AssociateSbomWithPackageVersionRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      :sbom,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the new software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the new package version.</p>
    #   @return [String]
    # @!attribute sbom
    #   <p>A specific software bill of matrerials associated with a software
    #            package version.</p>
    #   @return [Types::Sbom]
    # @!attribute sbom_validation_status
    #   <p>The status of the initial validation for the software bill of materials against the Software Package Data Exchange (SPDX) and CycloneDX industry standard formats.</p>
    #   @return [String]
    class AssociateSbomWithPackageVersionResponse < Struct.new(
      nil,
      :package_name,
      :version_name,
      :sbom,
      :sbom_validation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>A list of thing group ARNs that define the targets of the job.</p>
    #   @return [Array<String>]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment string describing why the job was associated with the
    #               targets.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    class AssociateTargetsWithJobRequest < Struct.new(
      nil,
      :targets,
      :job_id,
      :comment,
      :namespace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>An ARN identifying the job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text description of the job.</p>
    #   @return [String]
    class AssociateTargetsWithJobResponse < Struct.new(
      nil,
      :job_arn,
      :job_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The name of the policy to attach.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The <a href="https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html">identity</a> to which the policy is attached. For example, a thing group or a certificate.</p>
    #   @return [String]
    class AttachPolicyRequest < Struct.new(
      nil,
      :policy_name,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the AttachPrincipalPolicy operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal, which can be a certificate ARN (as returned from the CreateCertificate
    #            operation) or an Amazon Cognito ID.</p>
    #   @return [String]
    class AttachPrincipalPolicyRequest < Struct.new(
      nil,
      :policy_name,
      :principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The security profile that is attached.</p>
    #   @return [String]
    # @!attribute security_profile_target_arn
    #   <p>The ARN of the target (thing group) to which the security profile is attached.</p>
    #   @return [String]
    class AttachSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AttachSecurityProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the AttachThingPrincipal operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal, which can be a certificate ARN (as returned from the
    #   			CreateCertificate operation) or an Amazon Cognito ID.</p>
    #   @return [String]
    # @!attribute thing_principal_type
    #   <p>The type of the relation you want to specify when you attach a principal to a thing.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AttachThingPrincipalRequest < Struct.new(
      nil,
      :thing_name,
      :principal,
      :thing_principal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the AttachThingPrincipal operation.</p>
    class AttachThingPrincipalResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attribute payload.</p>
    # @!attribute attributes
    #   <p>A JSON string containing up to three key-value pair in JSON format. For example:</p>
    #            <p>
    #               <code>{\"attributes\":{\"string1\":\"string2\"}}</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute merge
    #   <p>Specifies whether the list of attributes provided in the <code>AttributePayload</code> is merged with
    #   			the attributes stored in the registry, instead of overwriting them.</p>
    #            <p>To remove an attribute, call <code>UpdateThing</code> with an empty attribute value.</p>
    #            <note>
    #               <p>The <code>merge</code> attribute is only valid when calling <code>UpdateThing</code> or <code>UpdateThingGroup</code>.</p>
    #            </note>
    #   @return [Boolean]
    class AttributePayload < Struct.new(
      nil,
      :attributes,
      :merge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:merge] = false unless options.key?(:merge)
        super
      end
    end

    # <p>Which audit checks are enabled and disabled for this account.</p>
    # @!attribute enabled
    #   <p>True if this audit check is enabled for this account.</p>
    #   @return [Boolean]
    # @!attribute configuration
    #   <p>A structure containing the configName and corresponding configValue for configuring audit checks.</p>
    #   @return [Hash<String, String>]
    class AuditCheckConfiguration < Struct.new(
      nil,
      :enabled,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Information about the audit check.</p>
    # @!attribute check_run_status
    #   <p>The completion status of this check. One of "IN_PROGRESS", "WAITING_FOR_DATA_COLLECTION",
    #           "CANCELED", "COMPLETED_COMPLIANT", "COMPLETED_NON_COMPLIANT", or "FAILED".</p>
    #   @return [String]
    # @!attribute check_compliant
    #   <p>True if the check is complete and found all resources compliant.</p>
    #   @return [Boolean]
    # @!attribute total_resources_count
    #   <p>The number of resources on which the check was performed.</p>
    #   @return [Integer]
    # @!attribute non_compliant_resources_count
    #   <p>The number of resources that were found noncompliant during the check.</p>
    #   @return [Integer]
    # @!attribute suppressed_non_compliant_resources_count
    #   <p>
    #               Describes how many of the non-compliant resources created during the evaluation of an audit check were marked as suppressed.
    #           </p>
    #   @return [Integer]
    # @!attribute error_code
    #   <p>The code of any error encountered when this check is performed during this audit.
    #             One of "INSUFFICIENT_PERMISSIONS" or "AUDIT_CHECK_DISABLED".</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with any error encountered when this check is performed during this audit.</p>
    #   @return [String]
    class AuditCheckDetails < Struct.new(
      nil,
      :check_run_status,
      :check_compliant,
      :total_resources_count,
      :non_compliant_resources_count,
      :suppressed_non_compliant_resources_count,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The findings (results) of the audit.</p>
    # @!attribute finding_id
    #   <p>A unique identifier for this set of audit findings. This identifier is used to apply
    #         mitigation tasks to one or more sets of findings.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The ID of the audit that generated this result (finding).</p>
    #   @return [String]
    # @!attribute check_name
    #   <p>The audit check that generated this result.</p>
    #   @return [String]
    # @!attribute task_start_time
    #   <p>The time the audit started.</p>
    #   @return [Time]
    # @!attribute finding_time
    #   <p>The time the result (finding) was discovered.</p>
    #   @return [Time]
    # @!attribute severity
    #   <p>The severity of the result (finding).</p>
    #   @return [String]
    # @!attribute non_compliant_resource
    #   <p>The resource that was found to be noncompliant with the
    #           audit check.</p>
    #   @return [Types::NonCompliantResource]
    # @!attribute related_resources
    #   <p>The list of related resources.</p>
    #   @return [Array<Types::RelatedResource>]
    # @!attribute reason_for_non_compliance
    #   <p>The reason the resource was noncompliant.</p>
    #   @return [String]
    # @!attribute reason_for_non_compliance_code
    #   <p>A code that indicates the reason that the resource was noncompliant.</p>
    #   @return [String]
    # @!attribute is_suppressed
    #   <p>
    #               Indicates whether the audit finding was suppressed or not during reporting.
    #           </p>
    #   @return [Boolean]
    class AuditFinding < Struct.new(
      nil,
      :finding_id,
      :task_id,
      :check_name,
      :task_start_time,
      :finding_time,
      :severity,
      :non_compliant_resource,
      :related_resources,
      :reason_for_non_compliance,
      :reason_for_non_compliance_code,
      :is_suppressed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned by ListAuditMitigationActionsTask, this object contains information that describes a mitigation action that has been started.</p>
    # @!attribute task_id
    #   <p>The unique identifier for the task that applies the mitigation action.</p>
    #   @return [String]
    # @!attribute finding_id
    #   <p>The unique identifier for the findings to which the task and associated mitigation action are applied.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The friendly name of the mitigation action being applied by the task.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>The unique identifier for the mitigation action being applied by the task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the task being executed.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the task was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the task was completed or canceled. Blank if the task is still running.</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>If an error occurred, the code that indicates which type of error occurred.</p>
    #   @return [String]
    # @!attribute message
    #   <p>If an error occurred, a message that describes the error.</p>
    #   @return [String]
    class AuditMitigationActionExecutionMetadata < Struct.new(
      nil,
      :task_id,
      :finding_id,
      :action_name,
      :action_id,
      :status,
      :start_time,
      :end_time,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an audit mitigation actions task that is returned by <code>ListAuditMitigationActionsTasks</code>.</p>
    # @!attribute task_id
    #   <p>The unique identifier for the task.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the audit mitigation actions task was started.</p>
    #   @return [Time]
    # @!attribute task_status
    #   <p>The current state of the audit mitigation actions task.</p>
    #   @return [String]
    class AuditMitigationActionsTaskMetadata < Struct.new(
      nil,
      :task_id,
      :start_time,
      :task_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used in MitigationActionParams, this information identifies the target findings to which the mitigation actions are applied. Only one entry appears.</p>
    # @!attribute audit_task_id
    #   <p>If the task will apply a mitigation action to findings from a specific audit, this value uniquely identifies the audit.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>If the task will apply a mitigation action to one or more listed findings, this value uniquely identifies those findings.</p>
    #   @return [Array<String>]
    # @!attribute audit_check_to_reason_code_filter
    #   <p>Specifies a filter in the form of an audit check and set of reason codes that identify the findings from the audit to which the audit mitigation actions task apply.</p>
    #   @return [Hash<String, Array<String>>]
    class AuditMitigationActionsTaskTarget < Struct.new(
      nil,
      :audit_task_id,
      :finding_ids,
      :audit_check_to_reason_code_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the targets to which audit notifications are sent.</p>
    # @!attribute target_arn
    #   <p>The ARN of the target (SNS topic) to which audit notifications are sent.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to send notifications to the target.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>True if notifications to the target are enabled.</p>
    #   @return [Boolean]
    class AuditNotificationTarget < Struct.new(
      nil,
      :target_arn,
      :role_arn,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p> Filters out specific findings of a Device Defender audit. </p>
    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute expiration_date
    #   <p>
    #               The expiration date (epoch timestamp in seconds) that you want the suppression to adhere to.
    #           </p>
    #   @return [Time]
    # @!attribute suppress_indefinitely
    #   <p>
    #               Indicates whether a suppression should exist indefinitely or not.
    #           </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>
    #               The description of the audit suppression.
    #           </p>
    #   @return [String]
    class AuditSuppression < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The audits that were performed.</p>
    # @!attribute task_id
    #   <p>The ID of this audit.</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>The status of this audit. One of "IN_PROGRESS", "COMPLETED",
    #           "FAILED", or "CANCELED".</p>
    #   @return [String]
    # @!attribute task_type
    #   <p>The type of this audit. One of "ON_DEMAND_AUDIT_TASK" or "SCHEDULED_AUDIT_TASK".</p>
    #   @return [String]
    class AuditTaskMetadata < Struct.new(
      nil,
      :task_id,
      :task_status,
      :task_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of authorization information.</p>
    # @!attribute action_type
    #   <p>The type of action for which the principal is being authorized.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources for which the principal is being authorized to perform the specified
    #            action.</p>
    #   @return [Array<String>]
    class AuthInfo < Struct.new(
      nil,
      :action_type,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authorizer result.</p>
    # @!attribute auth_info
    #   <p>Authorization information.</p>
    #   @return [Types::AuthInfo]
    # @!attribute allowed
    #   <p>The policies and statements that allowed the specified action.</p>
    #   @return [Types::Allowed]
    # @!attribute denied
    #   <p>The policies and statements that denied the specified action.</p>
    #   @return [Types::Denied]
    # @!attribute auth_decision
    #   <p>The final authorization decision of this scenario. Multiple statements are taken into
    #            account when determining the authorization decision. An explicit deny statement can
    #            override multiple allow statements.</p>
    #   @return [String]
    # @!attribute missing_context_values
    #   <p>Contains any missing context values found while evaluating policy.</p>
    #   @return [Array<String>]
    class AuthResult < Struct.new(
      nil,
      :auth_info,
      :allowed,
      :denied,
      :auth_decision,
      :missing_context_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies the authorization service for a domain.</p>
    # @!attribute default_authorizer_name
    #   <p>The name of the authorization service for a domain configuration.</p>
    #   @return [String]
    # @!attribute allow_authorizer_override
    #   <p>A Boolean that specifies whether the domain configuration's authorization service can be overridden.</p>
    #   @return [Boolean]
    class AuthorizerConfig < Struct.new(
      nil,
      :default_authorizer_name,
      :allow_authorizer_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_authorizer_override] = nil unless options.key?(:allow_authorizer_override)
        super
      end
    end

    # <p>The authorizer description.</p>
    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    # @!attribute authorizer_arn
    #   <p>The authorizer ARN.</p>
    #   @return [String]
    # @!attribute authorizer_function_arn
    #   <p>The authorizer's Lambda function ARN.</p>
    #   @return [String]
    # @!attribute token_key_name
    #   <p>The key used to extract the token from the HTTP headers.</p>
    #   @return [String]
    # @!attribute token_signing_public_keys
    #   <p>The public keys used to validate the token signature returned by your custom
    #            authentication service.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the authorizer.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The UNIX timestamp of when the authorizer was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The UNIX timestamp of when the authorizer was last updated.</p>
    #   @return [Time]
    # @!attribute signing_disabled
    #   <p>Specifies whether IoT validates the token signature in an authorization request.</p>
    #   @return [Boolean]
    # @!attribute enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for the time specified in <code>refreshAfterInSeconds</code>. The cached
    #   	  result is used while the device reuses the same HTTP connection.</p>
    #   @return [Boolean]
    class AuthorizerDescription < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_arn,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status,
      :creation_date,
      :last_modified_date,
      :signing_disabled,
      :enable_caching_for_http,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authorizer summary.</p>
    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    # @!attribute authorizer_arn
    #   <p>The authorizer ARN.</p>
    #   @return [String]
    class AuthorizerSummary < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria that determine when and how a job abort takes place.</p>
    # @!attribute abort_criteria_list
    #   <p>The list of criteria that determine when and how to abort the job.</p>
    #   @return [Array<Types::AwsJobAbortCriteria>]
    class AwsJobAbortConfig < Struct.new(
      nil,
      :abort_criteria_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria that determine when and how a job abort takes place.</p>
    # @!attribute failure_type
    #   <p>The type of job execution failures that can initiate a job abort.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The type of job action to take to initiate the job abort.</p>
    #   @return [String]
    # @!attribute threshold_percentage
    #   <p>The minimum percentage of job execution failures that must occur to initiate the job abort.</p>
    #            <p>Amazon Web Services IoT Core supports up to two digits after the decimal (for example, 10.9 and 10.99, but not 10.999).</p>
    #   @return [Float]
    # @!attribute min_number_of_executed_things
    #   <p>The minimum number of things which must receive job execution notifications before the job 
    #             can be aborted.</p>
    #   @return [Integer]
    class AwsJobAbortCriteria < Struct.new(
      nil,
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the rollout of OTA updates.</p>
    # @!attribute maximum_per_minute
    #   <p>The maximum number of OTA update job executions started per minute.</p>
    #   @return [Integer]
    # @!attribute exponential_rate
    #   <p>The rate of increase for a job rollout. This parameter allows you to define an exponential rate 
    #               increase for a job rollout.</p>
    #   @return [Types::AwsJobExponentialRolloutRate]
    class AwsJobExecutionsRolloutConfig < Struct.new(
      nil,
      :maximum_per_minute,
      :exponential_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate of increase for a job rollout. This parameter allows you to define an exponential rate 
    #             increase for a job rollout.</p>
    # @!attribute base_rate_per_minute
    #   <p>The minimum number of things that will be notified of a pending job, per minute, at the start 
    #               of the job rollout. This is the initial rate of the rollout.</p>
    #   @return [Integer]
    # @!attribute increment_factor
    #   <p>The rate of increase for a job rollout. The number of things notified is multiplied by this 
    #               factor.</p>
    #   @return [Float]
    # @!attribute rate_increase_criteria
    #   <p>The criteria to initiate the increase in rate of rollout for a job.</p>
    #            <p>Amazon Web Services IoT Core supports up to one digit after the decimal (for example, 1.5, but not 1.55).</p>
    #   @return [Types::AwsJobRateIncreaseCriteria]
    class AwsJobExponentialRolloutRate < Struct.new(
      nil,
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:increment_factor] = 0 unless options.key?(:increment_factor)
        super
      end
    end

    # <p>Configuration information for pre-signed URLs. Valid when <code>protocols</code>
    #            contains HTTP.</p>
    # @!attribute expires_in_sec
    #   <p>How long (in seconds) pre-signed URLs are valid. Valid values are 60 - 3600, the default value is 1800
    #               seconds. Pre-signed URLs are generated when a request for the job document is received.</p>
    #   @return [Integer]
    class AwsJobPresignedUrlConfig < Struct.new(
      nil,
      :expires_in_sec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria to initiate the increase in rate of rollout for a job.</p>
    # @!attribute number_of_notified_things
    #   <p>When this number of things have been notified, it will initiate an increase in the rollout
    #               rate.</p>
    #   @return [Integer]
    # @!attribute number_of_succeeded_things
    #   <p>When this number of things have succeeded in their job execution, it will initiate an 
    #               increase in the rollout rate.</p>
    #   @return [Integer]
    class AwsJobRateIncreaseCriteria < Struct.new(
      nil,
      :number_of_notified_things,
      :number_of_succeeded_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the amount of time each device has to finish its execution of the job.  A timer is 
    #             started when the job execution status is set to <code>IN_PROGRESS</code>. If the job execution 
    #             status is not set to another terminal state before the timer expires, it will be automatically 
    #             set to <code>TIMED_OUT</code>.</p>
    # @!attribute in_progress_timeout_in_minutes
    #   <p>Specifies the amount of time, in minutes, this device has to finish execution of this job. The 
    #               timeout interval can be anywhere between 1 minute and 7 days (1 to 10080 minutes). The in progress 
    #               timer can't be updated and will apply to all job executions for the job. Whenever a job execution 
    #               remains in the IN_PROGRESS status for longer than this interval, the job execution will fail and 
    #               switch to the terminal <code>TIMED_OUT</code> status.</p>
    #   @return [Integer]
    class AwsJobTimeoutConfig < Struct.new(
      nil,
      :in_progress_timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Device Defender security profile behavior.</p>
    # @!attribute name
    #   <p>The name
    #         you've given to the behavior.</p>
    #   @return [String]
    # @!attribute metric
    #   <p>What is measured by the behavior.</p>
    #   @return [String]
    # @!attribute metric_dimension
    #   <p>The dimension for a metric in your behavior. For example, using a
    #                   <code>TOPIC_FILTER</code> dimension, you can narrow down the scope of the metric to only MQTT topics where the name matches the pattern specified in the dimension. This can't be used with custom metrics.</p>
    #   @return [Types::MetricDimension]
    # @!attribute criteria
    #   <p>The criteria that determine if a device is behaving normally in regard to the <code>metric</code>.</p>
    #            <note>
    #               <p>In the IoT console, you can choose to be sent an alert through Amazon SNS when IoT Device Defender detects that a device is behaving anomalously.</p>
    #            </note>
    #   @return [Types::BehaviorCriteria]
    # @!attribute suppress_alerts
    #   <p>
    #               Suppresses alerts.
    #           </p>
    #   @return [Boolean]
    # @!attribute export_metric
    #   <p>Value indicates exporting metrics related to the behavior when it is true.</p>
    #   @return [Boolean]
    class Behavior < Struct.new(
      nil,
      :name,
      :metric,
      :metric_dimension,
      :criteria,
      :suppress_alerts,
      :export_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria by which the behavior is determined to be normal.</p>
    # @!attribute comparison_operator
    #   <p>The operator that relates the thing measured (<code>metric</code>) to the criteria 
    #             (containing a <code>value</code> or <code>statisticalThreshold</code>). Valid operators include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>string-list</code>: <code>in-set</code> and <code>not-in-set</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>number-list</code>: <code>in-set</code> and <code>not-in-set</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ip-address-list</code>: <code>in-cidr-set</code> and <code>not-in-cidr-set</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>number</code>: <code>less-than</code>, <code>less-than-equals</code>, <code>greater-than</code>, and <code>greater-than-equals</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value to be compared with the <code>metric</code>.</p>
    #   @return [Types::MetricValue]
    # @!attribute duration_seconds
    #   <p>Use this to specify the time duration over which the behavior is evaluated, for those criteria that
    #         have a time dimension (for example, <code>NUM_MESSAGES_SENT</code>). For a
    #           <code>statisticalThreshhold</code> metric comparison, measurements from all devices are
    #         accumulated over this time duration before being used to calculate percentiles, and later,
    #         measurements from an individual device are also accumulated over this time duration before
    #         being given a percentile rank. Cannot be used with list-based metric datatypes.</p>
    #   @return [Integer]
    # @!attribute consecutive_datapoints_to_alarm
    #   <p>If a device is in violation of the behavior for the specified number of consecutive 
    #             datapoints, an alarm occurs. If not specified, the default is 1.</p>
    #   @return [Integer]
    # @!attribute consecutive_datapoints_to_clear
    #   <p>If an alarm has occurred and the offending device is no longer in violation of the behavior 
    #             for the specified number of consecutive datapoints, the alarm is cleared. If not specified,
    #             the default is 1.</p>
    #   @return [Integer]
    # @!attribute statistical_threshold
    #   <p>A statistical ranking (percentile)that
    #         indicates a threshold value by which a behavior is determined to be in compliance or in
    #         violation of the behavior.</p>
    #   @return [Types::StatisticalThreshold]
    # @!attribute ml_detection_config
    #   <p>
    #               The configuration of an ML Detect 
    #           </p>
    #   @return [Types::MachineLearningDetectionConfig]
    class BehaviorCriteria < Struct.new(
      nil,
      :comparison_operator,
      :value,
      :duration_seconds,
      :consecutive_datapoints_to_alarm,
      :consecutive_datapoints_to_clear,
      :statistical_threshold,
      :ml_detection_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The summary of an ML Detect behavior model.
    #         </p>
    # @!attribute security_profile_name
    #   <p>
    #               The name of the security profile.
    #           </p>
    #   @return [String]
    # @!attribute behavior_name
    #   <p>
    #               The name of the behavior.
    #           </p>
    #   @return [String]
    # @!attribute training_data_collection_start_date
    #   <p>
    #               The date a training model started collecting data.
    #           </p>
    #   @return [Time]
    # @!attribute model_status
    #   <p>
    #               The status of the behavior model.
    #           </p>
    #   @return [String]
    # @!attribute datapoints_collection_percentage
    #   <p>
    #               The percentage of datapoints collected.
    #           </p>
    #   @return [Float]
    # @!attribute last_model_refresh_date
    #   <p>
    #               The date the model was last refreshed.
    #           </p>
    #   @return [Time]
    class BehaviorModelTrainingSummary < Struct.new(
      nil,
      :security_profile_name,
      :behavior_name,
      :training_data_collection_start_date,
      :model_status,
      :datapoints_collection_percentage,
      :last_model_refresh_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information about the billing group.</p>
    # @!attribute creation_date
    #   <p>The date the billing group was created.</p>
    #   @return [Time]
    class BillingGroupMetadata < Struct.new(
      nil,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a billing group.</p>
    # @!attribute billing_group_description
    #   <p>The description of the billing group.</p>
    #   @return [String]
    class BillingGroupProperties < Struct.new(
      nil,
      :billing_group_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A count of documents that meets a specific aggregation criteria.</p>
    # @!attribute key_value
    #   <p>The value counted for the particular bucket.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of documents that have the value counted for the particular bucket.</p>
    #   @return [Integer]
    class Bucket < Struct.new(
      nil,
      :key_value,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>The type of bucketed aggregation performed.</p>
    # @!attribute terms_aggregation
    #   <p>Performs an aggregation that will return a list of buckets. The list of buckets is a ranked list of the number of occurrences of an aggregation field value.</p>
    #   @return [Types::TermsAggregation]
    class BucketsAggregationType < Struct.new(
      nil,
      :terms_aggregation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A CA certificate.</p>
    # @!attribute certificate_arn
    #   <p>The ARN of the CA certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the CA certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the CA certificate.</p>
    #            <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the CA certificate was created.</p>
    #   @return [Time]
    class CACertificate < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :status,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a CA certificate.</p>
    # @!attribute certificate_arn
    #   <p>The CA certificate ARN.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The CA certificate ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a CA certificate.</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The CA certificate data, in PEM format.</p>
    #   @return [String]
    # @!attribute owned_by
    #   <p>The owner of the CA certificate.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the CA certificate was created.</p>
    #   @return [Time]
    # @!attribute auto_registration_status
    #   <p>Whether the CA certificate configured for auto registration of device certificates.
    #            Valid values are "ENABLE" and "DISABLE"</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date the CA certificate was last modified.</p>
    #   @return [Time]
    # @!attribute customer_version
    #   <p>The customer version of the CA certificate.</p>
    #   @return [Integer]
    # @!attribute generation_id
    #   <p>The generation ID of the CA certificate.</p>
    #   @return [String]
    # @!attribute validity
    #   <p>When the CA certificate is valid.</p>
    #   @return [Types::CertificateValidity]
    # @!attribute certificate_mode
    #   <p>The mode of the CA. </p>
    #            <p>All the device certificates that are registered using this CA will be registered 
    #            in the same mode as the CA. For more information about certificate mode for device certificates, see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode">certificate mode</a>.</p>
    #   @return [String]
    class CACertificateDescription < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :status,
      :certificate_pem,
      :owned_by,
      :creation_date,
      :auto_registration_status,
      :last_modified_date,
      :customer_version,
      :generation_id,
      :validity,
      :certificate_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier for the task that you want to cancel. </p>
    #   @return [String]
    class CancelAuditMitigationActionsTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelAuditMitigationActionsTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the audit you want to cancel. You can only cancel an
    #                 audit that is "IN_PROGRESS".</p>
    #   @return [String]
    class CancelAuditTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelAuditTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CancelCertificateTransfer operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    class CancelCertificateTransferRequest < Struct.new(
      nil,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #   @return [String]
    class CancelDetectMitigationActionsTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelDetectMitigationActionsTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job to be canceled.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing whose execution of the job will be canceled.</p>
    #   @return [String]
    # @!attribute force
    #   <p>(Optional) If <code>true</code> the job execution will be canceled if it has status
    #               IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has
    #               status QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do
    #               not set <code>force</code> to <code>true</code>, then an
    #                   <code>InvalidStateTransitionException</code> will be thrown. The default is
    #                   <code>false</code>.</p>
    #            <p>Canceling a job execution which is "IN_PROGRESS", will cause the device to be
    #               unable to update the job execution status. Use caution and ensure that the device is
    #               able to recover to a valid state.</p>
    #   @return [Boolean]
    # @!attribute expected_version
    #   <p>(Optional) The expected current version of the job execution. Each time you update
    #               the job execution, its version is incremented. If the version of the job execution
    #               stored in Jobs does not match, the update is rejected with a VersionMismatch error, and
    #               an ErrorResponse that contains the current job execution status data is returned. (This
    #               makes it unnecessary to perform a separate DescribeJobExecution request in order to
    #               obtain the job execution status data.)</p>
    #   @return [Integer]
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If
    #               not specified, the statusDetails are unchanged. You can specify at most 10 name/value
    #               pairs.</p>
    #   @return [Hash<String, String>]
    class CancelJobExecutionRequest < Struct.new(
      nil,
      :job_id,
      :thing_name,
      :force,
      :expected_version,
      :status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>(Optional)A reason code string that explains why the job was canceled.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment string describing why the job was canceled.</p>
    #   @return [String]
    # @!attribute force
    #   <p>(Optional) If <code>true</code> job executions with status "IN_PROGRESS" and
    #               "QUEUED" are canceled, otherwise only job executions with status "QUEUED" are canceled.
    #               The default is <code>false</code>.</p>
    #            <p>Canceling a job which is "IN_PROGRESS", will cause a device which is executing the
    #               job to be unable to update the job execution status. Use caution and ensure that each
    #               device executing a job which is canceled is able to recover to a valid state.</p>
    #   @return [Boolean]
    class CancelJobRequest < Struct.new(
      nil,
      :job_id,
      :reason_code,
      :comment,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The job ARN.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text description of the job.</p>
    #   @return [String]
    class CancelJobResponse < Struct.new(
      nil,
      :job_arn,
      :job_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a certificate.</p>
    # @!attribute certificate_arn
    #   <p>The ARN of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate.</p>
    #            <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
    #   @return [String]
    # @!attribute certificate_mode
    #   <p>The mode of the certificate.</p>
    #            <p>
    #               <code>DEFAULT</code>: A certificate in <code>DEFAULT</code> mode is either generated by
    #            Amazon Web Services IoT Core or registered with an issuer certificate authority (CA) in <code>DEFAULT</code> mode. Devices with
    #            certificates in <code>DEFAULT</code> mode aren't required to send the Server Name
    #            Indication (SNI) extension when connecting to Amazon Web Services IoT Core. However, to use features such as
    #            custom domains and VPC endpoints, we recommend that you use the SNI extension when
    #            connecting to Amazon Web Services IoT Core.</p>
    #            <p>
    #               <code>SNI_ONLY</code>: A certificate in <code>SNI_ONLY</code> mode is registered without an issuer CA. Devices with certificates 
    #            in <code>SNI_ONLY</code> mode must send the SNI extension when connecting to Amazon Web Services IoT Core. </p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time the certificate was created.</p>
    #   @return [Time]
    class Certificate < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :status,
      :certificate_mode,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to verify the CA certificate used to sign the device certificate you are
    #          attempting to register. This is happens when you have registered more than one CA
    #          certificate that has the same subject field and public key.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class CertificateConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a certificate.</p>
    # @!attribute certificate_arn
    #   <p>The ARN of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the certificate.</p>
    #   @return [String]
    # @!attribute ca_certificate_id
    #   <p>The certificate ID of the CA certificate used to sign this certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #   @return [String]
    # @!attribute owned_by
    #   <p>The ID of the Amazon Web Services account that owns the certificate.</p>
    #   @return [String]
    # @!attribute previous_owned_by
    #   <p>The ID of the Amazon Web Services account of the previous owner of the certificate.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time the certificate was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time the certificate was last modified.</p>
    #   @return [Time]
    # @!attribute customer_version
    #   <p>The customer version of the certificate.</p>
    #   @return [Integer]
    # @!attribute transfer_data
    #   <p>The transfer data.</p>
    #   @return [Types::TransferData]
    # @!attribute generation_id
    #   <p>The generation ID of the certificate.</p>
    #   @return [String]
    # @!attribute validity
    #   <p>When the certificate is valid.</p>
    #   @return [Types::CertificateValidity]
    # @!attribute certificate_mode
    #   <p>The mode of the certificate.</p>
    #            <p>
    #               <code>DEFAULT</code>: A certificate in <code>DEFAULT</code> mode is either generated by
    #            Amazon Web Services IoT Core or registered with an issuer certificate authority (CA) in <code>DEFAULT</code> mode. Devices with
    #            certificates in <code>DEFAULT</code> mode aren't required to send the Server Name
    #            Indication (SNI) extension when connecting to Amazon Web Services IoT Core. However, to use features such as
    #            custom domains and VPC endpoints, we recommend that you use the SNI extension when
    #            connecting to Amazon Web Services IoT Core.</p>
    #            <p>
    #               <code>SNI_ONLY</code>: A certificate in <code>SNI_ONLY</code> mode is registered without an issuer CA. Devices with certificates 
    #            in <code>SNI_ONLY</code> mode must send the SNI extension when connecting to Amazon Web Services IoT Core. </p>
    #            <p>For more information about the value for SNI extension, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/transport-security.html">Transport security in IoT</a>.</p>
    #   @return [String]
    class CertificateDescription < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :ca_certificate_id,
      :status,
      :certificate_pem,
      :owned_by,
      :previous_owned_by,
      :creation_date,
      :last_modified_date,
      :customer_version,
      :transfer_data,
      :generation_id,
      :validity,
      :certificate_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate provider summary.</p>
    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    # @!attribute certificate_provider_arn
    #   <p>The ARN of the certificate provider.</p>
    #   @return [String]
    class CertificateProviderSummary < Struct.new(
      nil,
      :certificate_provider_name,
      :certificate_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate operation is not allowed.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class CertificateStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate is invalid.</p>
    # @!attribute message
    #   <p>Additional information about the exception.</p>
    #   @return [String]
    class CertificateValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When the certificate is valid.</p>
    # @!attribute not_before
    #   <p>The certificate is not valid before this date.</p>
    #   @return [Time]
    # @!attribute not_after
    #   <p>The certificate is not valid after this date.</p>
    #   @return [Time]
    class CertificateValidity < Struct.new(
      nil,
      :not_before,
      :not_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ClearDefaultAuthorizerRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ClearDefaultAuthorizerResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that speciﬁes the client certificate conﬁguration for a domain.</p>
    # @!attribute client_certificate_callback_arn
    #   <p>The ARN of the Lambda function that IoT invokes after mutual TLS authentication during the connection.</p>
    #   @return [String]
    class ClientCertificateConfig < Struct.new(
      nil,
      :client_certificate_callback_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that updates a CloudWatch alarm.</p>
    # @!attribute role_arn
    #   <p>The IAM role that allows access to the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute alarm_name
    #   <p>The CloudWatch alarm name.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the alarm change.</p>
    #   @return [String]
    # @!attribute state_value
    #   <p>The value of the alarm state. Acceptable values are: OK, ALARM,
    #            INSUFFICIENT_DATA.</p>
    #   @return [String]
    class CloudwatchAlarmAction < Struct.new(
      nil,
      :role_arn,
      :alarm_name,
      :state_reason,
      :state_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that sends data to CloudWatch Logs.</p>
    # @!attribute role_arn
    #   <p>The IAM role that allows access to the CloudWatch log.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The CloudWatch log group to which the action sends data.</p>
    #   @return [String]
    # @!attribute batch_mode
    #   <p>Indicates whether batches of log records will be extracted and uploaded into CloudWatch. Values include <code>true</code> or <code>false</code>
    #               <i>(default)</i>.</p>
    #   @return [Boolean]
    class CloudwatchLogsAction < Struct.new(
      nil,
      :role_arn,
      :log_group_name,
      :batch_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that captures a CloudWatch metric.</p>
    # @!attribute role_arn
    #   <p>The IAM role that allows access to the CloudWatch metric.</p>
    #   @return [String]
    # @!attribute metric_namespace
    #   <p>The CloudWatch metric namespace name.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The CloudWatch metric name.</p>
    #   @return [String]
    # @!attribute metric_value
    #   <p>The CloudWatch metric value.</p>
    #   @return [String]
    # @!attribute metric_unit
    #   <p>The <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit">metric
    #               unit</a> supported by CloudWatch.</p>
    #   @return [String]
    # @!attribute metric_timestamp
    #   <p>An optional <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp">Unix timestamp</a>.</p>
    #   @return [String]
    class CloudwatchMetricAction < Struct.new(
      nil,
      :role_arn,
      :metric_namespace,
      :metric_name,
      :metric_value,
      :metric_unit,
      :metric_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the method to use when code signing a file.</p>
    # @!attribute aws_signer_job_id
    #   <p>The ID of the <code>AWSSignerJob</code> which was created to sign the file.</p>
    #   @return [String]
    # @!attribute start_signing_job_parameter
    #   <p>Describes the code-signing job.</p>
    #   @return [Types::StartSigningJobParameter]
    # @!attribute custom_code_signing
    #   <p>A custom method for code signing a file.</p>
    #   @return [Types::CustomCodeSigning]
    class CodeSigning < Struct.new(
      nil,
      :aws_signer_job_id,
      :start_signing_job_parameter,
      :custom_code_signing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the certificate chain being used when code signing a file.</p>
    # @!attribute certificate_name
    #   <p>The name of the certificate.</p>
    #   @return [String]
    # @!attribute inline_document
    #   <p>A base64 encoded binary representation of the code signing certificate chain.</p>
    #   @return [String]
    class CodeSigningCertificateChain < Struct.new(
      nil,
      :certificate_name,
      :inline_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the signature for a file.</p>
    # @!attribute inline_document
    #   <p>A base64 encoded binary representation of the code signing signature.</p>
    #   @return [String]
    class CodeSigningSignature < Struct.new(
      nil,
      :inline_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result value of the command execution. The device can use the result field to
    #             share additional details about the execution such as a return value of a remote function
    #             call.</p>
    #          <note>
    #             <p>This field is not applicable if you use the <code>AWS-IoT-FleetWise</code>
    #                 namespace.</p>
    #          </note>
    # @!attribute s
    #   <p>An attribute of type String. For example:</p>
    #            <p>
    #               <code>"S": "Hello"</code>
    #            </p>
    #   @return [String]
    # @!attribute b
    #   <p>An attribute of type Boolean. For example:</p>
    #            <p>
    #               <code>"BOOL": true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute bin
    #   <p>An attribute of type Binary.</p>
    #   @return [String]
    class CommandExecutionResult < Struct.new(
      nil,
      :s,
      :b,
      :bin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a particular command execution.</p>
    # @!attribute command_arn
    #   <p>The Amazon Resource Name (ARN) of the command execution.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the command execution.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target device for which the command is being
    #               executed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the command executions.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time at which the command execution was created for the target device.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The date and time at which the command started executing on the target device.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The date and time at which the command completed executing on the target
    #               device.</p>
    #   @return [Time]
    class CommandExecutionSummary < Struct.new(
      nil,
      :command_arn,
      :execution_id,
      :target_arn,
      :status,
      :created_at,
      :started_at,
      :completed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of key-value pairs that describe the command.</p>
    # @!attribute name
    #   <p>The name of a specific parameter used in a command and command execution.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value used to describe the command. When you assign a value to a parameter, it
    #               will override any default value that you had already specified.</p>
    #   @return [Types::CommandParameterValue]
    # @!attribute default_value
    #   <p>The default value used to describe the command. This is the value assumed by the
    #               parameter if no other value is assigned to it.</p>
    #   @return [Types::CommandParameterValue]
    # @!attribute description
    #   <p>The description of the command parameter.</p>
    #   @return [String]
    class CommandParameter < Struct.new(
      nil,
      :name,
      :value,
      :default_value,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The range of possible values that's used to describe a specific command
    #             parameter.</p>
    #          <note>
    #             <p>The <code>commandParameterValue</code> can only have one of the below fields
    #                 listed.</p>
    #          </note>
    # @!attribute s
    #   <p>An attribute of type String. For example:</p>
    #            <p>
    #               <code>"S": "Hello"</code>
    #            </p>
    #   @return [String]
    # @!attribute b
    #   <p>An attribute of type Boolean. For example:</p>
    #            <p>
    #               <code>"BOOL": true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute i
    #   <p>An attribute of type Integer (Thirty-Two Bits).</p>
    #   @return [Integer]
    # @!attribute l
    #   <p>An attribute of type Long.</p>
    #   @return [Integer]
    # @!attribute d
    #   <p>An attribute of type Double (Sixty-Four Bits).</p>
    #   @return [Float]
    # @!attribute bin
    #   <p>An attribute of type Binary. For example:</p>
    #            <p>
    #               <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code>
    #            </p>
    #   @return [String]
    # @!attribute ul
    #   <p>An attribute of type unsigned long.</p>
    #   @return [String]
    class CommandParameterValue < Struct.new(
      nil,
      :s,
      :b,
      :i,
      :l,
      :d,
      :bin,
      :ul,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The command payload object that contains the instructions for the device
    #         to process.</p>
    # @!attribute content
    #   <p>The static payload file for the command.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type that specifies the format type of the payload file. This
    #           field must use a type/subtype format, such as <code>application/json</code>.
    #           For information about various content types, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types/Common_types">Common MIME types</a>.</p>
    #   @return [String]
    class CommandPayload < Struct.new(
      nil,
      :content,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a particular command resource.</p>
    # @!attribute command_arn
    #   <p>The Amazon Resource Name (ARN) of the command.</p>
    #   @return [String]
    # @!attribute command_id
    #   <p>The unique identifier of the command.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the command.</p>
    #   @return [String]
    # @!attribute deprecated
    #   <p>Indicates whether the command has been deprecated.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The timestamp, when the command was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp, when the command was last updated.</p>
    #   @return [Time]
    # @!attribute pending_deletion
    #   <p>Indicates whether the command is pending deletion.</p>
    #   @return [Boolean]
    class CommandSummary < Struct.new(
      nil,
      :command_arn,
      :command_id,
      :display_name,
      :deprecated,
      :created_at,
      :last_updated_at,
      :pending_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration.</p>
    # @!attribute enabled
    #   <p>True to enable the configuration.</p>
    #   @return [Boolean]
    class Configuration < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The encryption configuration details that include the status information of the Amazon Web Services Key Management Service (KMS) key and the KMS access role.</p>
    # @!attribute configuration_status
    #   <p>The health status of KMS key and KMS access role. If either KMS key or KMS access role
    #            is <code>UNHEALTHY</code>, the return value will be <code>UNHEALTHY</code>. To use a
    #            customer-managed KMS key, the value of <code>configurationStatus</code> must be
    #               <code>HEALTHY</code>. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code that indicates either the KMS key or the KMS access role is <code>UNHEALTHY</code>. 
    #            Valid values: <code>KMS_KEY_VALIDATION_ERROR</code> and <code>ROLE_VALIDATION_ERROR</code>.
    #         </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The detailed error message that corresponds to the <code>errorCode</code>.</p>
    #   @return [String]
    class ConfigurationDetails < Struct.new(
      nil,
      :configuration_status,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute confirmation_token
    #   <p>The token used to confirm ownership or access to the topic rule confirmation URL.</p>
    #   @return [String]
    class ConfirmTopicRuleDestinationRequest < Struct.new(
      nil,
      :confirmation_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ConfirmTopicRuleDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>A resource with the same name already exists.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conflicting resource update exception. This exception is thrown when two pending
    #          updates cause a conflict.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ConflictingResourceUpdateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute expiration_date
    #   <p>
    #         The epoch timestamp in seconds at which this suppression expires.
    #       </p>
    #   @return [Time]
    # @!attribute suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>
    #         Each audit supression must have a unique client request token. If you try to create a new audit
    #         suppression with the same token as one that already exists, an exception occurs. If you omit this
    #         value, Amazon Web Services SDKs will automatically generate a unique client request.</p>
    #   @return [String]
    class CreateAuditSuppressionRequest < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateAuditSuppressionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    # @!attribute authorizer_function_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    #   @return [String]
    # @!attribute token_key_name
    #   <p>The name of the token key used to extract the token from the HTTP headers.</p>
    #   @return [String]
    # @!attribute token_signing_public_keys
    #   <p>The public keys used to verify the digital signature returned by your custom
    #            authentication service.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the create authorizer request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the custom authorizer.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute signing_disabled
    #   <p>Specifies whether IoT validates the token signature in an authorization request.</p>
    #   @return [Boolean]
    # @!attribute enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for clients that use persistent HTTP connections. The results are cached for the time
    #   	  specified by the Lambda function in <code>refreshAfterInSeconds</code>. This value
    #        does not affect authorization of clients that use MQTT connections.</p>
    #            <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class CreateAuthorizerRequest < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status,
      :tags,
      :signing_disabled,
      :enable_caching_for_http,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The authorizer's name.</p>
    #   @return [String]
    # @!attribute authorizer_arn
    #   <p>The authorizer ARN.</p>
    #   @return [String]
    class CreateAuthorizerResponse < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name you wish to give to the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_properties
    #   <p>The properties of the billing group.</p>
    #   @return [Types::BillingGroupProperties]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the billing group.</p>
    #   @return [Array<Types::Tag>]
    class CreateBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      :billing_group_properties,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name you gave to the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The ARN of the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_id
    #   <p>The ID of the billing group.</p>
    #   @return [String]
    class CreateBillingGroupResponse < Struct.new(
      nil,
      :billing_group_name,
      :billing_group_arn,
      :billing_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreateCertificateFromCsr operation.</p>
    # @!attribute certificate_signing_request
    #   <p>The certificate signing request (CSR).</p>
    #   @return [String]
    # @!attribute set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    #   @return [Boolean]
    class CreateCertificateFromCsrRequest < Struct.new(
      nil,
      :certificate_signing_request,
      :set_as_active,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the CreateCertificateFromCsr operation.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. You can use the ARN as a principal
    #            for policy operations.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the certificate. Certificate management operations only take a
    #            certificateId.</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #   @return [String]
    class CreateCertificateFromCsrResponse < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :certificate_pem,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Lambda function that defines the authentication logic.</p>
    #   @return [String]
    # @!attribute account_default_for_operations
    #   <p>A list of the operations that the certificate provider will use to generate certificates. 
    #            Valid value: <code>CreateCertificateFromCsr</code>.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A string that you can optionally pass in the <code>CreateCertificateProvider</code> request to make sure 
    #            the request is idempotent.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the certificate provider.</p>
    #   @return [Array<Types::Tag>]
    class CreateCertificateProviderRequest < Struct.new(
      nil,
      :certificate_provider_name,
      :lambda_function_arn,
      :account_default_for_operations,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    # @!attribute certificate_provider_arn
    #   <p>The ARN of the certificate provider.</p>
    #   @return [String]
    class CreateCertificateProviderResponse < Struct.new(
      nil,
      :certificate_provider_name,
      :certificate_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>A unique identifier for the command. We recommend using UUID. Alpha-numeric
    #               characters, hyphens, and underscores are valid for use here.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the command. The MQTT reserved topics and validations will be used
    #               for command executions according to the namespace setting.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The user-friendly name in the console for the command. This name doesn't have to be
    #               unique. You can update the user-friendly name after you define it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text decription of the command.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The payload object for the command. You must specify this information when using
    #           the <code>AWS-IoT</code> namespace.</p>
    #            <p>You can upload a static payload file from your local storage that contains the 
    #           instructions for the device to process. The payload file can use any format. To
    #           make sure that the device correctly interprets the payload, we recommend you to
    #           specify the payload content type.</p>
    #   @return [Types::CommandPayload]
    # @!attribute mandatory_parameters
    #   <p>A list of parameters that are required by the <code>StartCommandExecution</code> API.
    #               These parameters need to be specified only when using the <code>AWS-IoT-FleetWise</code>
    #               namespace. You can either specify them here or when running the command using the
    #                   <code>StartCommandExecution</code> API.</p>
    #   @return [Array<Types::CommandParameter>]
    # @!attribute role_arn
    #   <p>The IAM role that you must provide when using the <code>AWS-IoT-FleetWise</code> namespace.
    #           The role grants IoT Device Management the permission to access IoT FleetWise resources 
    #           for generating the payload for the command. This field is not required when you use the
    #           <code>AWS-IoT</code> namespace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Name-value pairs that are used as metadata to manage a command.</p>
    #   @return [Array<Types::Tag>]
    class CreateCommandRequest < Struct.new(
      nil,
      :command_id,
      :namespace,
      :display_name,
      :description,
      :payload,
      :mandatory_parameters,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>The unique identifier for the command.</p>
    #   @return [String]
    # @!attribute command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. For example,
    #                   <code>arn:aws:iot:<region>:<accountid>:command/<commandId></code>
    #            </p>
    #   @return [String]
    class CreateCommandResponse < Struct.new(
      nil,
      :command_id,
      :command_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p> The name of the custom metric. This will be used in the metric report submitted from the
    #         device/thing. The name can't begin with <code>aws:</code>. You can't change the name after you
    #         define it.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The friendly name in the console for the custom metric. This name doesn't have to be
    #         unique. Don't use this name as the metric identifier in the device metric report. You can
    #         update the friendly name after you define it.</p>
    #   @return [String]
    # @!attribute metric_type
    #   <p> The type of the custom metric. </p>
    #            <important>
    #               <p>The type <code>number</code> only takes a single metric value as an input, but when you
    #           submit the metrics value in the DeviceMetrics report, you must pass it as an array with a
    #           single value.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #         Metadata that can be used to manage the custom metric.
    #       </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each custom
    #         metric must have a unique client request token. If you try to create a new custom metric that
    #         already exists with a different token,
    #         an exception
    #         occurs. If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request. </p>
    #   @return [String]
    class CreateCustomMetricRequest < Struct.new(
      nil,
      :metric_name,
      :display_name,
      :metric_type,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>
    #         The name of the custom metric to be used in the metric report.
    #       </p>
    #   @return [String]
    # @!attribute metric_arn
    #   <p> The Amazon Resource Number (ARN) of the custom metric. For example,
    #             <code>arn:<i>aws-partition</i>:iot:<i>region</i>:<i>accountId</i>:custommetric/<i>metricName</i>
    #               </code>
    #            </p>
    #   @return [String]
    class CreateCustomMetricResponse < Struct.new(
      nil,
      :metric_name,
      :metric_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of dimension. Supported types: <code>TOPIC_FILTER.</code>
    #            </p>
    #   @return [String]
    # @!attribute string_values
    #   <p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the dimension.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each dimension must have a unique client request token. If you try to create a new dimension with the same token as a dimension that already exists, an exception occurs. 
    #         If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request.</p>
    #   @return [String]
    class CreateDimensionRequest < Struct.new(
      nil,
      :name,
      :type,
      :string_values,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the dimension.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name
    #         (ARN)
    #         of
    #         the created dimension.</p>
    #   @return [String]
    class CreateDimensionResponse < Struct.new(
      nil,
      :name,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration. This value must be unique to a region.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute server_certificate_arns
    #   <p>The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. 
    #         This value is not required for Amazon Web Services-managed domains.</p>
    #   @return [Array<String>]
    # @!attribute validation_certificate_arn
    #   <p>The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. 
    #            This value is not required for Amazon Web Services-managed domains.</p>
    #   @return [String]
    # @!attribute authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    #   @return [Types::AuthorizerConfig]
    # @!attribute service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #            <note>
    #               <p>Amazon Web Services IoT Core currently supports only the <code>DATA</code> service type.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the domain configuration.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute tls_config
    #   <p>An object that specifies the TLS configuration for a domain.</p>
    #   @return [Types::TlsConfig]
    # @!attribute server_certificate_config
    #   <p>The server certificate configuration.</p>
    #   @return [Types::ServerCertificateConfig]
    # @!attribute authentication_type
    #   <p>An enumerated string that speciﬁes the authentication type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH_X509</code> - Use custom authentication and authorization with additional details from the X.509 client certificate.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH</code> - Use custom authentication and authorization. For more
    #                  information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">Custom authentication and authorization</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_X509</code> - Use X.509 client certificates without custom authentication and authorization. For more information,
    #                  see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html">X.509 client certificates</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_SIGV4</code> - Use Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">IAM users, groups, and roles</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify authentication type.
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute application_protocol
    #   <p>An enumerated string that speciﬁes the application-layer protocol.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SECURE_MQTT</code> - MQTT over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MQTT_WSS</code> - MQTT over WebSocket.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTPS</code> - HTTP over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify application_layer protocol. 
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute client_certificate_config
    #   <p>An object that speciﬁes the client certificate conﬁguration for a domain.</p>
    #   @return [Types::ClientCertificateConfig]
    class CreateDomainConfigurationRequest < Struct.new(
      nil,
      :domain_configuration_name,
      :domain_name,
      :server_certificate_arns,
      :validation_certificate_arn,
      :authorizer_config,
      :service_type,
      :tags,
      :tls_config,
      :server_certificate_config,
      :authentication_type,
      :application_protocol,
      :client_certificate_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration.</p>
    #   @return [String]
    # @!attribute domain_configuration_arn
    #   <p>The ARN of the domain configuration.</p>
    #   @return [String]
    class CreateDomainConfigurationResponse < Struct.new(
      nil,
      :domain_configuration_name,
      :domain_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The dynamic thing group name to create.</p>
    #   @return [String]
    # @!attribute thing_group_properties
    #   <p>The dynamic thing group properties.</p>
    #   @return [Types::ThingGroupProperties]
    # @!attribute index_name
    #   <p>The dynamic thing group index name.</p>
    #            <note>
    #               <p>Currently one index is supported: <code>AWS_Things</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute query_string
    #   <p>The dynamic thing group search query string.</p>
    #            <p>See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html">Query Syntax</a> for information about query string syntax.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The dynamic thing group query version.</p>
    #            <note>
    #               <p>Currently one query version is supported: "2017-09-30". If not specified, the
    #   				query version defaults to this value.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the dynamic thing group.</p>
    #   @return [Array<Types::Tag>]
    class CreateDynamicThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_properties,
      :index_name,
      :query_string,
      :query_version,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The dynamic thing group name.</p>
    #   @return [String]
    # @!attribute thing_group_arn
    #   <p>The dynamic thing group ARN.</p>
    #   @return [String]
    # @!attribute thing_group_id
    #   <p>The dynamic thing group ID.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The dynamic thing group index name.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The dynamic thing group search query string.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The dynamic thing group query version.</p>
    #   @return [String]
    class CreateDynamicThingGroupResponse < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_arn,
      :thing_group_id,
      :index_name,
      :query_string,
      :query_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the fleet metric to create.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string.</p>
    #   @return [String]
    # @!attribute aggregation_type
    #   <p>The type of the aggregation query.</p>
    #   @return [Types::AggregationType]
    # @!attribute period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    #   @return [Integer]
    # @!attribute aggregation_field
    #   <p>The field to aggregate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The fleet metric description.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The query version.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to search.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>. Default to null.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata, which can be used to manage the fleet metric.</p>
    #   @return [Array<Types::Tag>]
    class CreateFleetMetricRequest < Struct.new(
      nil,
      :metric_name,
      :query_string,
      :aggregation_type,
      :period,
      :aggregation_field,
      :description,
      :query_version,
      :index_name,
      :unit,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the fleet metric to create.</p>
    #   @return [String]
    # @!attribute metric_arn
    #   <p>The Amazon Resource Name (ARN) of the new fleet metric.</p>
    #   @return [String]
    class CreateFleetMetricResponse < Struct.new(
      nil,
      :metric_name,
      :metric_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>A job identifier which must be unique for your account. We recommend using a UUID.
    #               Alpha-numeric characters, "-" and "_" are valid for use here.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>A list of things and thing groups to which the job should be sent.</p>
    #   @return [Array<String>]
    # @!attribute document_source
    #   <p>An S3 link, or S3 object URL, to the job document. The link is an Amazon S3 object URL
    #               and is required if you don't specify a value for <code>document</code>.</p>
    #            <p>For example, <code>--document-source
    #                   https://s3.<i>region-code</i>.amazonaws.com/example-firmware/device-firmware.1.0</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html">Methods for accessing a
    #                   bucket</a>.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The job document. Required if you don't specify a value for
    #                   <code>documentSource</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text description of the job.</p>
    #   @return [String]
    # @!attribute presigned_url_config
    #   <p>Configuration information for pre-signed S3 URLs.</p>
    #   @return [Types::PresignedUrlConfig]
    # @!attribute target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete
    #               after all those things specified as targets have completed the job (SNAPSHOT). If
    #               continuous, the job may also be run on a thing when a change is detected in a target.
    #               For example, a job will run on a thing when the thing is added to a target group, even
    #               after the job was completed by all things originally in the group.</p>
    #            <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic
    #                   thing group targets. By using continuous jobs, devices that join the group receive
    #                   the job execution even after the job has been created.</p>
    #            </note>
    #   @return [String]
    # @!attribute job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of the job.</p>
    #   @return [Types::JobExecutionsRolloutConfig]
    # @!attribute abort_config
    #   <p>Allows you to create the criteria to abort a job.</p>
    #   @return [Types::AbortConfig]
    # @!attribute timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. The
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the time expires,
    #               it will be automatically set to <code>TIMED_OUT</code>.</p>
    #   @return [Types::TimeoutConfig]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the job.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute job_template_arn
    #   <p>The ARN of the job template used to create the job.</p>
    #   @return [String]
    # @!attribute job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    #   @return [Types::JobExecutionsRetryConfig]
    # @!attribute document_parameters
    #   <p>Parameters of an Amazon Web Services managed template that you can specify to create the job
    #               document.</p>
    #            <note>
    #               <p>
    #                  <code>documentParameters</code> can only be used when creating jobs from Amazon Web Services
    #                   managed templates. This parameter can't be used with custom job templates or to
    #                   create jobs from them.</p>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute scheduling_config
    #   <p>The configuration that allows you to schedule a job for a future date and time in
    #               addition to specifying the end behavior for each job execution.</p>
    #   @return [Types::SchedulingConfig]
    # @!attribute destination_package_versions
    #   <p>The package version Amazon Resource Names (ARNs) that are installed on the device when the job
    #               successfully completes. The package version must be in either the Published or
    #               Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>. </p>
    #            <p>
    #               <b>Note:</b>The following Length Constraints relates to a
    #               single ARN. Up to 25 package version ARNs are allowed.</p>
    #   @return [Array<String>]
    class CreateJobRequest < Struct.new(
      nil,
      :job_id,
      :targets,
      :document_source,
      :document,
      :description,
      :presigned_url_config,
      :target_selection,
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      :tags,
      :namespace_id,
      :job_template_arn,
      :job_executions_retry_config,
      :document_parameters,
      :scheduling_config,
      :destination_package_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The job ARN.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The job description.</p>
    #   @return [String]
    class CreateJobResponse < Struct.new(
      nil,
      :job_arn,
      :job_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_template_id
    #   <p>A unique identifier for the job template. We recommend using a UUID. Alpha-numeric
    #               characters, "-", and "_" are valid for use here.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The ARN of the job to use as the basis for the job template.</p>
    #   @return [String]
    # @!attribute document_source
    #   <p>An S3 link, or S3 object URL, to the job document. The link is an Amazon S3 object URL
    #               and is required if you don't specify a value for <code>document</code>.</p>
    #            <p>For example, <code>--document-source
    #                   https://s3.<i>region-code</i>.amazonaws.com/example-firmware/device-firmware.1.0</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html">Methods for accessing a
    #                   bucket</a>.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The job document. Required if you don't specify a value for
    #                   <code>documentSource</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the job document.</p>
    #   @return [String]
    # @!attribute presigned_url_config
    #   <p>Configuration for pre-signed S3 URLs.</p>
    #   @return [Types::PresignedUrlConfig]
    # @!attribute job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of a job.</p>
    #   @return [Types::JobExecutionsRolloutConfig]
    # @!attribute abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    #   @return [Types::AbortConfig]
    # @!attribute timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. A
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the timer expires,
    #               it will be automatically set to <code>TIMED_OUT</code>.</p>
    #   @return [Types::TimeoutConfig]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the job template.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    #   @return [Types::JobExecutionsRetryConfig]
    # @!attribute maintenance_windows
    #   <p>Allows you to configure an optional maintenance window for the rollout of a job
    #               document to all devices in the target group for a job.</p>
    #   @return [Array<Types::MaintenanceWindow>]
    # @!attribute destination_package_versions
    #   <p>The package version Amazon Resource Names (ARNs) that are installed on the device when the job
    #               successfully completes. The package version must be in either the Published or
    #               Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #            <p>
    #               <b>Note:</b>The following Length Constraints relates to a
    #               single ARN. Up to 25 package version ARNs are allowed.</p>
    #   @return [Array<String>]
    class CreateJobTemplateRequest < Struct.new(
      nil,
      :job_template_id,
      :job_arn,
      :document_source,
      :document,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      :tags,
      :job_executions_retry_config,
      :maintenance_windows,
      :destination_package_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_template_arn
    #   <p>The ARN of the job template.</p>
    #   @return [String]
    # @!attribute job_template_id
    #   <p>The unique identifier of the job template.</p>
    #   @return [String]
    class CreateJobTemplateResponse < Struct.new(
      nil,
      :job_template_arn,
      :job_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreateKeysAndCertificate operation.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateKeysAndCertificateRequest</a> action.</p>
    # @!attribute set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    #   @return [Boolean]
    class CreateKeysAndCertificateRequest < Struct.new(
      nil,
      :set_as_active,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the CreateKeysAndCertificate operation.</p>
    # @!attribute certificate_arn
    #   <p>The ARN of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the certificate. IoT issues a default subject name for the certificate
    #            (for example, IoT Certificate).</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #   @return [String]
    # @!attribute key_pair
    #   <p>The generated key pair.</p>
    #   @return [Types::KeyPair]
    class CreateKeysAndCertificateResponse < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :certificate_pem,
      :key_pair,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_name
    #   <p>A friendly name for the action. Choose a friendly name that accurately describes the action (for example, <code>EnableLoggingAction</code>).</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that is used to apply the mitigation action.</p>
    #   @return [String]
    # @!attribute action_params
    #   <p>Defines the type of action and the parameters for that action.</p>
    #   @return [Types::MitigationActionParams]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the mitigation action.</p>
    #   @return [Array<Types::Tag>]
    class CreateMitigationActionRequest < Struct.new(
      nil,
      :action_name,
      :role_arn,
      :action_params,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_arn
    #   <p>The ARN for the new mitigation action.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>A unique identifier for the new mitigation action.</p>
    #   @return [String]
    class CreateMitigationActionResponse < Struct.new(
      nil,
      :action_arn,
      :action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ota_update_id
    #   <p>The ID of the OTA update to be created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the OTA update.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The devices targeted to receive OTA updates.</p>
    #   @return [Array<String>]
    # @!attribute protocols
    #   <p>The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both
    #              HTTP and MQTT are specified, the target device can choose the protocol.</p>
    #   @return [Array<String>]
    # @!attribute target_selection
    #   <p>Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things
    #               specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a
    #               thing when a change is detected in a target. For example, an update will run on a thing when the thing is
    #               added to a target group, even after the update was completed by all things originally in the group. Valid
    #               values: CONTINUOUS | SNAPSHOT.</p>
    #   @return [String]
    # @!attribute aws_job_executions_rollout_config
    #   <p>Configuration for the rollout of OTA updates.</p>
    #   @return [Types::AwsJobExecutionsRolloutConfig]
    # @!attribute aws_job_presigned_url_config
    #   <p>Configuration information for pre-signed URLs.</p>
    #   @return [Types::AwsJobPresignedUrlConfig]
    # @!attribute aws_job_abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    #   @return [Types::AwsJobAbortConfig]
    # @!attribute aws_job_timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job.  A timer is 
    #               started when the job execution status is set to <code>IN_PROGRESS</code>. If the job execution 
    #               status is not set to another terminal state before the timer expires, it will be automatically 
    #               set to <code>TIMED_OUT</code>.</p>
    #   @return [Types::AwsJobTimeoutConfig]
    # @!attribute files
    #   <p>The files to be streamed by the OTA update.</p>
    #   @return [Array<Types::OTAUpdateFile>]
    # @!attribute role_arn
    #   <p>The IAM role that grants Amazon Web Services IoT Core access to the Amazon S3, IoT jobs and Amazon Web Services Code Signing resources 
    #               to create an OTA update job.</p>
    #   @return [String]
    # @!attribute additional_parameters
    #   <p>A list of additional OTA update parameters, which are name-value pairs. 
    #               They won't be sent to devices as a part of the Job document.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Metadata which can be used to manage updates.</p>
    #   @return [Array<Types::Tag>]
    class CreateOTAUpdateRequest < Struct.new(
      nil,
      :ota_update_id,
      :description,
      :targets,
      :protocols,
      :target_selection,
      :aws_job_executions_rollout_config,
      :aws_job_presigned_url_config,
      :aws_job_abort_config,
      :aws_job_timeout_config,
      :files,
      :role_arn,
      :additional_parameters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ota_update_id
    #   <p>The OTA update ID.</p>
    #   @return [String]
    # @!attribute aws_iot_job_id
    #   <p>The IoT job ID associated with the OTA update.</p>
    #   @return [String]
    # @!attribute ota_update_arn
    #   <p>The OTA update ARN.</p>
    #   @return [String]
    # @!attribute aws_iot_job_arn
    #   <p>The IoT job ARN associated with the OTA update.</p>
    #   @return [String]
    # @!attribute ota_update_status
    #   <p>The OTA update status.</p>
    #   @return [String]
    class CreateOTAUpdateResponse < Struct.new(
      nil,
      :ota_update_id,
      :aws_iot_job_id,
      :ota_update_arn,
      :aws_iot_job_arn,
      :ota_update_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the new software package.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary of the package being created. This can be used to outline the package's contents or purpose.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the package.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class CreatePackageRequest < Struct.new(
      nil,
      :package_name,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the software package.</p>
    #   @return [String]
    # @!attribute package_arn
    #   <p>The Amazon Resource Name (ARN) for the package.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The package description.</p>
    #   @return [String]
    class CreatePackageResponse < Struct.new(
      nil,
      :package_name,
      :package_arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the associated software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the new package version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary of the package version being created. This can be used to outline the package's contents or purpose.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Metadata that can be used to define a package version’s configuration. For example, the S3 file location, configuration options that are being sent to the device or fleet.</p>
    #            <p>The combined size of all the attributes on a package version is limited to 3KB.</p>
    #   @return [Hash<String, String>]
    # @!attribute artifact
    #   <p>The various build components created during the build process such as libraries and
    #            configuration files that make up a software package version.</p>
    #   @return [Types::PackageVersionArtifact]
    # @!attribute recipe
    #   <p>The inline job document associated with a software package version used for a quick job
    #            deployment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the package version.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class CreatePackageVersionRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      :description,
      :attributes,
      :artifact,
      :recipe,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_version_arn
    #   <p>The Amazon Resource Name (ARN) for the package.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The name of the associated software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the new package version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The package version description.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Metadata that were added to the package version that can be used to define a package version’s configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the package version. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #   @return [String]
    # @!attribute error_reason
    #   <p>Error reason for a package version failure during creation or update.</p>
    #   @return [String]
    class CreatePackageVersionResponse < Struct.new(
      nil,
      :package_version_arn,
      :package_name,
      :version_name,
      :description,
      :attributes,
      :status,
      :error_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreatePolicy operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of
    #            2048, excluding whitespace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the policy.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreatePolicyRequest < Struct.new(
      nil,
      :policy_name,
      :policy_document,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the CreatePolicy operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The policy ARN.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON document that describes the policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    class CreatePolicyResponse < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      :policy_document,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreatePolicyVersion operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON document that describes the policy. Minimum length of 1. Maximum length of
    #            2048, excluding whitespace.</p>
    #   @return [String]
    # @!attribute set_as_default
    #   <p>Specifies whether the policy version is set as the default. When this parameter is
    #            true, the new policy version becomes the operative version (that is, the version that is in
    #            effect for the certificates to which the policy is attached).</p>
    #   @return [Boolean]
    class CreatePolicyVersionRequest < Struct.new(
      nil,
      :policy_name,
      :policy_document,
      :set_as_default,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the CreatePolicyVersion operation.</p>
    # @!attribute policy_arn
    #   <p>The policy ARN.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON document that describes the policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>Specifies whether the policy version is the default.</p>
    #   @return [Boolean]
    class CreatePolicyVersionResponse < Struct.new(
      nil,
      :policy_arn,
      :policy_document,
      :policy_version_id,
      :is_default_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template to use.</p>
    #   @return [String]
    class CreateProvisioningClaimRequest < Struct.new(
      nil,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_id
    #   <p>The ID of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The provisioning claim certificate.</p>
    #   @return [String]
    # @!attribute key_pair
    #   <p>The provisioning claim key pair.</p>
    #   @return [Types::KeyPair]
    # @!attribute expiration
    #   <p>The provisioning claim expiration time.</p>
    #   @return [Time]
    class CreateProvisioningClaimResponse < Struct.new(
      nil,
      :certificate_id,
      :certificate_pem,
      :key_pair,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning template.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The JSON formatted contents of the provisioning template.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>True to enable the provisioning template, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute provisioning_role_arn
    #   <p>The role ARN for the role associated with the provisioning template. This IoT role
    #            grants permission to provision a device.</p>
    #   @return [String]
    # @!attribute pre_provisioning_hook
    #   <p>Creates a pre-provisioning hook template. Only supports template of type
    #               <code>FLEET_PROVISIONING</code>. For more information about provisioning template types,
    #            see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type">type</a>.</p>
    #   @return [Types::ProvisioningHook]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the provisioning template.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute type
    #   <p>The type you define in a provisioning template. You can create a template with only one type.
    #            You can't change the template type after its creation. The default value is <code>FLEET_PROVISIONING</code>.
    #            For more information about provisioning template, see: <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning template</a>.
    #         </p>
    #   @return [String]
    class CreateProvisioningTemplateRequest < Struct.new(
      nil,
      :template_name,
      :description,
      :template_body,
      :enabled,
      :provisioning_role_arn,
      :pre_provisioning_hook,
      :tags,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The ARN that identifies the provisioning template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute default_version_id
    #   <p>The default version of the provisioning template.</p>
    #   @return [Integer]
    class CreateProvisioningTemplateResponse < Struct.new(
      nil,
      :template_arn,
      :template_name,
      :default_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The JSON formatted contents of the provisioning template.</p>
    #   @return [String]
    # @!attribute set_as_default
    #   <p>Sets a fleet provision template version as the default version.</p>
    #   @return [Boolean]
    class CreateProvisioningTemplateVersionRequest < Struct.new(
      nil,
      :template_name,
      :template_body,
      :set_as_default,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The ARN that identifies the provisioning template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version of the provisioning template.</p>
    #   @return [Integer]
    # @!attribute is_default_version
    #   <p>True if the provisioning template version is the default version, otherwise
    #            false.</p>
    #   @return [Boolean]
    class CreateProvisioningTemplateVersionResponse < Struct.new(
      nil,
      :template_arn,
      :template_name,
      :version_id,
      :is_default_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # @!attribute role_alias
    #   <p>The role alias that points to a role ARN. This allows you to change the role without
    #            having to update the device.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN.</p>
    #   @return [String]
    # @!attribute credential_duration_seconds
    #   <p>How long (in seconds) the credentials will be valid. The default value is 3,600 seconds.</p>
    #            <p>This value must be less than or equal to the maximum session duration of the IAM role
    #         that the role alias references.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the role alias.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateRoleAliasRequest < Struct.new(
      nil,
      :role_alias,
      :role_arn,
      :credential_duration_seconds,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_alias
    #   <p>The role alias.</p>
    #   @return [String]
    # @!attribute role_alias_arn
    #   <p>The role alias ARN.</p>
    #   @return [String]
    class CreateRoleAliasResponse < Struct.new(
      nil,
      :role_alias,
      :role_alias_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute frequency
    #   <p>How often the scheduled audit takes
    #         place, either
    #         <code>DAILY</code>,
    #         <code>WEEKLY</code>, <code>BIWEEKLY</code> or <code>MONTHLY</code>. The start time of each audit is
    #         determined by the system.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This
    #         can be "1" through "31" or "LAST". This field is required if the "frequency"
    #         parameter is set to <code>MONTHLY</code>. If days
    #         29
    #         to 31 are specified, and the month
    #         doesn't
    #         have that many days, the audit takes place on the <code>LAST</code> day of the month.</p>
    #   @return [String]
    # @!attribute day_of_week
    #   <p>The day of the week on which the scheduled audit takes
    #         place,
    #         either
    #         <code>SUN</code>,
    #         <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the <code>frequency</code>
    #         parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>
    #   @return [String]
    # @!attribute target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be enabled 
    #               for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #               to select which checks are enabled.)</p>
    #   @return [Array<String>]
    # @!attribute scheduled_audit_name
    #   <p>The name you want to give to the scheduled audit. (Max. 128 chars)</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the scheduled audit.</p>
    #   @return [Array<Types::Tag>]
    class CreateScheduledAuditRequest < Struct.new(
      nil,
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_audit_arn
    #   <p>The ARN of the scheduled audit.</p>
    #   @return [String]
    class CreateScheduledAuditResponse < Struct.new(
      nil,
      :scheduled_audit_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name you are giving to the security profile.</p>
    #   @return [String]
    # @!attribute security_profile_description
    #   <p>A description of the security profile.</p>
    #   @return [String]
    # @!attribute behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #   @return [Array<Types::Behavior>]
    # @!attribute alert_targets
    #   <p>Specifies the destinations to which alerts are sent. (Alerts are always sent to the 
    #           console.) Alerts are generated when a device (thing) violates a behavior.</p>
    #   @return [Hash<String, Types::AlertTarget>]
    # @!attribute additional_metrics_to_retain
    #   <p>
    #               <i>Please use <a>CreateSecurityProfileRequest$additionalMetricsToRetainV2</a> instead.</i>
    #            </p>
    #            <p>A list of metrics whose data is retained (stored). By default, data is retained 
    #           for any metric used in the profile's <code>behaviors</code>, but it is also retained for 
    #           any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #   @deprecated
    #     Use additionalMetricsToRetainV2.
    #   @return [Array<String>]
    # @!attribute additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's <code>behaviors</code>, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #   @return [Array<Types::MetricToRetain>]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the security profile.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute metrics_export_config
    #   <p>Specifies the MQTT topic and role ARN required for metric export.</p>
    #   @return [Types::MetricsExportConfig]
    class CreateSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :tags,
      :metrics_export_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name you gave to the security profile.</p>
    #   @return [String]
    # @!attribute security_profile_arn
    #   <p>The ARN of the security profile.</p>
    #   @return [String]
    class CreateSecurityProfileResponse < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the stream.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files to stream.</p>
    #   @return [Array<Types::StreamFile>]
    # @!attribute role_arn
    #   <p>An IAM role that allows the IoT service principal to access your S3 files.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage streams.</p>
    #   @return [Array<Types::Tag>]
    class CreateStreamRequest < Struct.new(
      nil,
      :stream_id,
      :description,
      :files,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The stream ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the stream.</p>
    #   @return [String]
    # @!attribute stream_version
    #   <p>The version of the stream.</p>
    #   @return [Integer]
    class CreateStreamResponse < Struct.new(
      nil,
      :stream_id,
      :stream_arn,
      :description,
      :stream_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The thing group name to create.</p>
    #   @return [String]
    # @!attribute parent_group_name
    #   <p>The name of the parent thing group.</p>
    #   @return [String]
    # @!attribute thing_group_properties
    #   <p>The thing group properties.</p>
    #   @return [Types::ThingGroupProperties]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the thing group.</p>
    #   @return [Array<Types::Tag>]
    class CreateThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :parent_group_name,
      :thing_group_properties,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The thing group name.</p>
    #   @return [String]
    # @!attribute thing_group_arn
    #   <p>The thing group ARN.</p>
    #   @return [String]
    # @!attribute thing_group_id
    #   <p>The thing group ID.</p>
    #   @return [String]
    class CreateThingGroupResponse < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_arn,
      :thing_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreateThing operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing to create.</p>
    #            <p>You can't change a thing's name after you create it. To change a thing's name, you must create a
    #   			new thing, give it the new name, and then delete the old thing.</p>
    #   @return [String]
    # @!attribute thing_type_name
    #   <p>The name of the thing type associated with the new thing.</p>
    #   @return [String]
    # @!attribute attribute_payload
    #   <p>The attribute payload, which consists of up to three name/value pairs in a JSON
    #   			document. For example:</p>
    #            <p>
    #               <code>{\"attributes\":{\"string1\":\"string2\"}}</code>
    #            </p>
    #   @return [Types::AttributePayload]
    # @!attribute billing_group_name
    #   <p>The name of the billing group the thing will be added to.</p>
    #   @return [String]
    class CreateThingRequest < Struct.new(
      nil,
      :thing_name,
      :thing_type_name,
      :attribute_payload,
      :billing_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the CreateThing operation.</p>
    # @!attribute thing_name
    #   <p>The name of the new thing.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the new thing.</p>
    #   @return [String]
    # @!attribute thing_id
    #   <p>The thing ID.</p>
    #   @return [String]
    class CreateThingResponse < Struct.new(
      nil,
      :thing_name,
      :thing_arn,
      :thing_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreateThingType operation.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    # @!attribute thing_type_properties
    #   <p>The ThingTypeProperties for the thing type to create. It contains information about
    #   			the new thing type including a description, and a list of searchable thing attribute
    #   			names.</p>
    #   @return [Types::ThingTypeProperties]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the thing type.</p>
    #   @return [Array<Types::Tag>]
    class CreateThingTypeRequest < Struct.new(
      nil,
      :thing_type_name,
      :thing_type_properties,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the CreateThingType operation.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    # @!attribute thing_type_arn
    #   <p>The Amazon Resource Name (ARN) of the thing type.</p>
    #   @return [String]
    # @!attribute thing_type_id
    #   <p>The thing type ID.</p>
    #   @return [String]
    class CreateThingTypeResponse < Struct.new(
      nil,
      :thing_type_name,
      :thing_type_arn,
      :thing_type_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_configuration
    #   <p>The topic rule destination configuration.</p>
    #   @return [Types::TopicRuleDestinationConfiguration]
    class CreateTopicRuleDestinationRequest < Struct.new(
      nil,
      :destination_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topic_rule_destination
    #   <p>The topic rule destination.</p>
    #   @return [Types::TopicRuleDestination]
    class CreateTopicRuleDestinationResponse < Struct.new(
      nil,
      :topic_rule_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the CreateTopicRule operation.</p>
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute topic_rule_payload
    #   <p>The rule payload.</p>
    #   @return [Types::TopicRulePayload]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the topic rule.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: --tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [String]
    class CreateTopicRuleRequest < Struct.new(
      nil,
      :rule_name,
      :topic_rule_payload,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom method used to code sign a file.</p>
    # @!attribute signature
    #   <p>The signature for the file.</p>
    #   @return [Types::CodeSigningSignature]
    # @!attribute certificate_chain
    #   <p>The certificate chain.</p>
    #   @return [Types::CodeSigningCertificateChain]
    # @!attribute hash_algorithm
    #   <p>The hash algorithm used to code sign the file. You can use a string as the algorithm name if the target over-the-air (OTA) update devices are able to verify the signature that was generated using the same signature algorithm. For example, FreeRTOS uses <code>SHA256</code> or <code>SHA1</code>, so you can pass either of them based on which was used for generating the signature.</p>
    #   @return [String]
    # @!attribute signature_algorithm
    #   <p>The signature algorithm used to code sign the file. You can use a string as the algorithm name if the target over-the-air (OTA) update devices are able to verify the signature that was generated using the same signature algorithm. For example, FreeRTOS uses <code>ECDSA</code> or <code>RSA</code>, so you can pass either of them based on which was used for generating the signature.</p>
    #   @return [String]
    class CustomCodeSigning < Struct.new(
      nil,
      :signature,
      :certificate_chain,
      :hash_algorithm,
      :signature_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_scheduled_audits
    #   <p>If true, all scheduled audits are deleted.</p>
    #   @return [Boolean]
    class DeleteAccountAuditConfigurationRequest < Struct.new(
      nil,
      :delete_scheduled_audits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccountAuditConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    class DeleteAuditSuppressionRequest < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAuditSuppressionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The name of the authorizer to delete.</p>
    #   @return [String]
    class DeleteAuthorizerRequest < Struct.new(
      nil,
      :authorizer_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAuthorizerResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the billing group. If the version of the billing group does
    #   			not match the expected version specified in the request, the
    #   				<code>DeleteBillingGroup</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #   @return [Integer]
    class DeleteBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBillingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the DeleteCACertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate to delete. (The last part of the certificate ARN contains
    #            the certificate ID.)</p>
    #   @return [String]
    class DeleteCACertificateRequest < Struct.new(
      nil,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the DeleteCACertificate operation.</p>
    class DeleteCACertificateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    class DeleteCertificateProviderRequest < Struct.new(
      nil,
      :certificate_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCertificateProviderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeleteCertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>Forces the deletion of a certificate if it is inactive and is not attached to an IoT
    #            thing.</p>
    #   @return [Boolean]
    class DeleteCertificateRequest < Struct.new(
      nil,
      :certificate_id,
      :force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The unique identifier of the command execution that you want to delete from your
    #         account.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Number (ARN) of the target device for which you want to delete
    #         command executions.</p>
    #   @return [String]
    class DeleteCommandExecutionRequest < Struct.new(
      nil,
      :execution_id,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCommandExecutionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>The unique identifier of the command to be deleted.</p>
    #   @return [String]
    class DeleteCommandRequest < Struct.new(
      nil,
      :command_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The status code for the command deletion request. The status code is in the 200 range
    #           for a successful request.</p>
    #            <ul>
    #               <li>
    #                  <p>If the command hasn't been deprecated, or has been deprecated for a duration that 
    #               is shorter than the maximum time out duration of 12 hours, when calling the
    #               <code>DeleteCommand</code> request, the deletion will be scheduled and a 202 status code
    #               will be returned. While the command is being deleted, it will be in a 
    #               <code>pendingDeletion</code> state. Once the time out duration has been reached,
    #               the command will be permanently removed from your account.</p>
    #               </li>
    #               <li>
    #                  <p>If the command has been deprecated for a duration that is longer than the 
    #               maximum time out duration of 12 hours, when calling the <code>DeleteCommand</code> request,
    #               the command will be deleted immediately and a 204 status code will be returned.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class DeleteCommandResponse < Struct.new(
      nil,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # <p>You can't delete the resource because it is attached to one or more
    #          resources.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class DeleteConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #   @return [String]
    class DeleteCustomMetricRequest < Struct.new(
      nil,
      :metric_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCustomMetricResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier for the dimension that you want to delete.</p>
    #   @return [String]
    class DeleteDimensionRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDimensionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration to be deleted.</p>
    #   @return [String]
    class DeleteDomainConfigurationRequest < Struct.new(
      nil,
      :domain_configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The name of the dynamic thing group to delete.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the dynamic thing group to delete.</p>
    #   @return [Integer]
    class DeleteDynamicThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDynamicThingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the fleet metric to delete.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the fleet metric to delete.</p>
    #   @return [Integer]
    class DeleteFleetMetricRequest < Struct.new(
      nil,
      :metric_name,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job whose execution on a particular device will be deleted.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing whose job execution will be deleted.</p>
    #   @return [String]
    # @!attribute execution_number
    #   <p>The ID of the job execution to be deleted. The <code>executionNumber</code> refers
    #               to the execution of a particular job on a particular device.</p>
    #            <p>Note that once a job execution is deleted, the <code>executionNumber</code> may be
    #               reused by IoT, so be sure you get and use the correct value here.</p>
    #   @return [Integer]
    # @!attribute force
    #   <p>(Optional) When true, you can delete a job execution which is "IN_PROGRESS".
    #               Otherwise, you can only delete a job execution which is in a terminal state
    #               ("SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or "CANCELED") or an exception will occur.
    #               The default is false.</p>
    #            <note>
    #               <p>Deleting a job execution which is "IN_PROGRESS", will cause the device to be
    #                   unable to access job information or update the job execution status. Use caution and
    #                   ensure that the device is able to recover to a valid state.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    class DeleteJobExecutionRequest < Struct.new(
      nil,
      :job_id,
      :thing_name,
      :execution_number,
      :force,
      :namespace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job to be deleted.</p>
    #            <p>After a job deletion is completed, you may reuse this jobId when you create a new
    #               job. However, this is not recommended, and you must ensure that your devices are not
    #               using the jobId to refer to the deleted job.</p>
    #   @return [String]
    # @!attribute force
    #   <p>(Optional) When true, you can delete a job which is "IN_PROGRESS". Otherwise, you
    #               can only delete a job which is in a terminal state ("COMPLETED" or "CANCELED") or an
    #               exception will occur. The default is false.</p>
    #            <note>
    #               <p>Deleting a job which is "IN_PROGRESS", will cause a device which is executing
    #                   the job to be unable to access job information or update the job execution status.
    #                   Use caution and ensure that each device executing a job which is deleted is able to
    #                   recover to a valid state.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    class DeleteJobRequest < Struct.new(
      nil,
      :job_id,
      :force,
      :namespace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_template_id
    #   <p>The unique identifier of the job template to delete.</p>
    #   @return [String]
    class DeleteJobTemplateRequest < Struct.new(
      nil,
      :job_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_name
    #   <p>The name of the mitigation action that you want to delete.</p>
    #   @return [String]
    class DeleteMitigationActionRequest < Struct.new(
      nil,
      :action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMitigationActionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ota_update_id
    #   <p>The ID of the OTA update to delete.</p>
    #   @return [String]
    # @!attribute delete_stream
    #   <p>When true, the stream created by the OTAUpdate process is deleted when the OTA update is deleted.
    #               Ignored if the stream specified in the OTAUpdate is supplied by the user.</p>
    #   @return [Boolean]
    # @!attribute force_delete_aws_job
    #   <p>When true, deletes the IoT job created by the OTAUpdate process even if it is "IN_PROGRESS". Otherwise, if the 
    #               job is not in a terminal state ("COMPLETED" or "CANCELED") an exception will occur. The default is false.</p>
    #   @return [Boolean]
    class DeleteOTAUpdateRequest < Struct.new(
      nil,
      :ota_update_id,
      :delete_stream,
      :force_delete_aws_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteOTAUpdateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the target software package.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeletePackageRequest < Struct.new(
      nil,
      :package_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePackageResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the associated software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the target package version.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeletePackageVersionRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePackageVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeletePolicy operation.</p>
    # @!attribute policy_name
    #   <p>The name of the policy to delete.</p>
    #   @return [String]
    class DeletePolicyRequest < Struct.new(
      nil,
      :policy_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeletePolicyVersion operation.</p>
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    class DeletePolicyVersionRequest < Struct.new(
      nil,
      :policy_name,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the fleet provision template to delete.</p>
    #   @return [String]
    class DeleteProvisioningTemplateRequest < Struct.new(
      nil,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteProvisioningTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template version to delete.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The provisioning template version ID to delete.</p>
    #   @return [Integer]
    class DeleteProvisioningTemplateVersionRequest < Struct.new(
      nil,
      :template_name,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteProvisioningTemplateVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeleteRegistrationCode operation.</p>
    class DeleteRegistrationCodeRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the DeleteRegistrationCode operation.</p>
    class DeleteRegistrationCodeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_alias
    #   <p>The role alias to delete.</p>
    #   @return [String]
    class DeleteRoleAliasRequest < Struct.new(
      nil,
      :role_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRoleAliasResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_audit_name
    #   <p>The name of the scheduled audit you want to delete.</p>
    #   @return [String]
    class DeleteScheduledAuditRequest < Struct.new(
      nil,
      :scheduled_audit_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteScheduledAuditResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile to be deleted.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the security profile. A new version is generated whenever
    #           the security profile is updated. If you specify a value that is different from the actual
    #           version, a <code>VersionConflictException</code> is thrown.</p>
    #   @return [Integer]
    class DeleteSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSecurityProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    class DeleteStreamRequest < Struct.new(
      nil,
      :stream_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStreamResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The name of the thing group to delete.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the thing group to delete.</p>
    #   @return [Integer]
    class DeleteThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteThingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeleteThing operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing to delete.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the thing record in the registry. If the version of the
    #   			record in the registry does not match the expected version specified in the request, the
    #   				<code>DeleteThing</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #   @return [Integer]
    class DeleteThingRequest < Struct.new(
      nil,
      :thing_name,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the DeleteThing operation.</p>
    class DeleteThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeleteThingType operation.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    class DeleteThingTypeRequest < Struct.new(
      nil,
      :thing_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the DeleteThingType operation.</p>
    class DeleteThingTypeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the topic rule destination to delete.</p>
    #   @return [String]
    class DeleteTopicRuleDestinationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTopicRuleDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeleteTopicRule operation.</p>
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    class DeleteTopicRuleRequest < Struct.new(
      nil,
      :rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_type
    #   <p>The type of resource for which you are configuring logging. Must be
    #               <code>THING_Group</code>.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the resource for which you are configuring logging.</p>
    #   @return [String]
    class DeleteV2LoggingLevelRequest < Struct.new(
      nil,
      :target_type,
      :target_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information that denied the authorization.</p>
    # @!attribute implicit_deny
    #   <p>Information that implicitly denies the authorization. When a policy doesn't
    #            explicitly deny or allow an action on a resource it is considered an implicit
    #            deny.</p>
    #   @return [Types::ImplicitDeny]
    # @!attribute explicit_deny
    #   <p>Information that explicitly denies the authorization. </p>
    #   @return [Types::ExplicitDeny]
    class Denied < Struct.new(
      nil,
      :implicit_deny,
      :explicit_deny,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DeprecateThingType operation.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type to deprecate.</p>
    #   @return [String]
    # @!attribute undo_deprecate
    #   <p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can
    #   			associate it with things.</p>
    #   @return [Boolean]
    class DeprecateThingTypeRequest < Struct.new(
      nil,
      :thing_type_name,
      :undo_deprecate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the DeprecateThingType operation.</p>
    class DeprecateThingTypeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeAccountAuditConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to IoT to access information
    #               about your devices, policies, certificates, and other items as required when 
    #               performing an audit.</p>
    #            <p>On the first call to <code>UpdateAccountAuditConfiguration</code>,
    #               this parameter is required.</p>
    #   @return [String]
    # @!attribute audit_notification_target_configurations
    #   <p>Information about the targets to which audit notifications are sent for 
    #               this account.</p>
    #   @return [Hash<String, Types::AuditNotificationTarget>]
    # @!attribute audit_check_configurations
    #   <p>Which audit checks are enabled and disabled for this account.</p>
    #   @return [Hash<String, Types::AuditCheckConfiguration>]
    class DescribeAccountAuditConfigurationResponse < Struct.new(
      nil,
      :role_arn,
      :audit_notification_target_configurations,
      :audit_check_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_id
    #   <p>A unique identifier for a single audit finding. You can use this identifier to apply mitigation actions to the finding.</p>
    #   @return [String]
    class DescribeAuditFindingRequest < Struct.new(
      nil,
      :finding_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding
    #   <p>The findings (results) of the audit.</p>
    #   @return [Types::AuditFinding]
    class DescribeAuditFindingResponse < Struct.new(
      nil,
      :finding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier for the audit mitigation task.</p>
    #   @return [String]
    class DescribeAuditMitigationActionsTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_status
    #   <p>The current status of the task.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when the task was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time when the task was completed or canceled.</p>
    #   @return [Time]
    # @!attribute task_statistics
    #   <p>Aggregate counts of the results when the mitigation tasks were applied to the findings for this audit mitigation actions task.</p>
    #   @return [Hash<String, Types::TaskStatisticsForAuditCheck>]
    # @!attribute target
    #   <p>Identifies the findings to which the mitigation actions are applied. This can be by audit checks, by audit task, or a set of findings.</p>
    #   @return [Types::AuditMitigationActionsTaskTarget]
    # @!attribute audit_check_to_actions_mapping
    #   <p>Specifies the mitigation actions that should be applied to specific audit checks.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute actions_definition
    #   <p>Specifies the mitigation actions and their parameters that are applied as part of this task.</p>
    #   @return [Array<Types::MitigationAction>]
    class DescribeAuditMitigationActionsTaskResponse < Struct.new(
      nil,
      :task_status,
      :start_time,
      :end_time,
      :task_statistics,
      :target,
      :audit_check_to_actions_mapping,
      :actions_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    class DescribeAuditSuppressionRequest < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute expiration_date
    #   <p>
    #         The epoch timestamp in seconds at which this suppression expires.
    #       </p>
    #   @return [Time]
    # @!attribute suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    #   @return [String]
    class DescribeAuditSuppressionResponse < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the audit whose information you want to get.</p>
    #   @return [String]
    class DescribeAuditTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_status
    #   <p>The status of the audit: one of "IN_PROGRESS", "COMPLETED",
    #               "FAILED", or "CANCELED".</p>
    #   @return [String]
    # @!attribute task_type
    #   <p>The type of audit: "ON_DEMAND_AUDIT_TASK" or "SCHEDULED_AUDIT_TASK".</p>
    #   @return [String]
    # @!attribute task_start_time
    #   <p>The time the audit started.</p>
    #   @return [Time]
    # @!attribute task_statistics
    #   <p>Statistical information about the audit.</p>
    #   @return [Types::TaskStatistics]
    # @!attribute scheduled_audit_name
    #   <p>The name of the scheduled audit (only if the audit was a scheduled audit).</p>
    #   @return [String]
    # @!attribute audit_details
    #   <p>Detailed information about each check performed during this audit.</p>
    #   @return [Hash<String, Types::AuditCheckDetails>]
    class DescribeAuditTaskResponse < Struct.new(
      nil,
      :task_status,
      :task_type,
      :task_start_time,
      :task_statistics,
      :scheduled_audit_name,
      :audit_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The name of the authorizer to describe.</p>
    #   @return [String]
    class DescribeAuthorizerRequest < Struct.new(
      nil,
      :authorizer_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_description
    #   <p>The authorizer description.</p>
    #   @return [Types::AuthorizerDescription]
    class DescribeAuthorizerResponse < Struct.new(
      nil,
      :authorizer_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    class DescribeBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_id
    #   <p>The ID of the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The ARN of the billing group.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the billing group.</p>
    #   @return [Integer]
    # @!attribute billing_group_properties
    #   <p>The properties of the billing group.</p>
    #   @return [Types::BillingGroupProperties]
    # @!attribute billing_group_metadata
    #   <p>Additional information about the billing group.</p>
    #   @return [Types::BillingGroupMetadata]
    class DescribeBillingGroupResponse < Struct.new(
      nil,
      :billing_group_name,
      :billing_group_id,
      :billing_group_arn,
      :version,
      :billing_group_properties,
      :billing_group_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>The input for the DescribeCACertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The CA certificate identifier.</p>
    #   @return [String]
    class DescribeCACertificateRequest < Struct.new(
      nil,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the DescribeCACertificate operation.</p>
    # @!attribute certificate_description
    #   <p>The CA certificate description.</p>
    #   @return [Types::CACertificateDescription]
    # @!attribute registration_config
    #   <p>Information about the registration configuration.</p>
    #   @return [Types::RegistrationConfig]
    class DescribeCACertificateResponse < Struct.new(
      nil,
      :certificate_description,
      :registration_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    class DescribeCertificateProviderRequest < Struct.new(
      nil,
      :certificate_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    # @!attribute certificate_provider_arn
    #   <p>The ARN of the certificate provider.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>The Lambda function ARN that's associated with the certificate provider.</p>
    #   @return [String]
    # @!attribute account_default_for_operations
    #   <p>A list of the operations that the certificate provider will use to generate certificates. 
    #            Valid value: <code>CreateCertificateFromCsr</code>.</p>
    #   @return [Array<String>]
    # @!attribute creation_date
    #   <p>The date-time string that indicates when the certificate provider was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date-time string that indicates when the certificate provider was last updated.</p>
    #   @return [Time]
    class DescribeCertificateProviderResponse < Struct.new(
      nil,
      :certificate_provider_name,
      :certificate_provider_arn,
      :lambda_function_arn,
      :account_default_for_operations,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DescribeCertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    class DescribeCertificateRequest < Struct.new(
      nil,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the DescribeCertificate operation.</p>
    # @!attribute certificate_description
    #   <p>The description of the certificate.</p>
    #   @return [Types::CertificateDescription]
    class DescribeCertificateResponse < Struct.new(
      nil,
      :certificate_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #   @return [String]
    class DescribeCustomMetricRequest < Struct.new(
      nil,
      :metric_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #   @return [String]
    # @!attribute metric_arn
    #   <p>
    #         The Amazon Resource Number (ARN) of the custom metric.
    #       </p>
    #   @return [String]
    # @!attribute metric_type
    #   <p> The type of the custom metric. </p>
    #            <important>
    #               <p>The type <code>number</code> only takes a single metric value as an input, but while submitting the metrics value in the DeviceMetrics report, it must be passed as an array with a single value.</p>
    #            </important>
    #   @return [String]
    # @!attribute display_name
    #   <p>
    #         Field represents a friendly name in the console for the custom metric; doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated.
    #       </p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>
    #         The creation date of the custom metric in milliseconds since epoch.
    #       </p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>
    #         The time the custom metric was last modified in milliseconds since epoch.
    #       </p>
    #   @return [Time]
    class DescribeCustomMetricResponse < Struct.new(
      nil,
      :metric_name,
      :metric_arn,
      :metric_type,
      :display_name,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeDefaultAuthorizerRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_description
    #   <p>The default authorizer's description.</p>
    #   @return [Types::AuthorizerDescription]
    class DescribeDefaultAuthorizerResponse < Struct.new(
      nil,
      :authorizer_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #   @return [String]
    class DescribeDetectMitigationActionsTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_summary
    #   <p>
    #         The description of a task.
    #       </p>
    #   @return [Types::DetectMitigationActionsTaskSummary]
    class DescribeDetectMitigationActionsTaskResponse < Struct.new(
      nil,
      :task_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier for the dimension.</p>
    #   @return [String]
    class DescribeDimensionRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier for the dimension.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name
    #         (ARN)
    #         for
    #         the dimension.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the dimension.</p>
    #   @return [String]
    # @!attribute string_values
    #   <p>The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.</p>
    #   @return [Array<String>]
    # @!attribute creation_date
    #   <p>The date the dimension was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date the dimension was last modified.</p>
    #   @return [Time]
    class DescribeDimensionResponse < Struct.new(
      nil,
      :name,
      :arn,
      :type,
      :string_values,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration.</p>
    #   @return [String]
    class DescribeDomainConfigurationRequest < Struct.new(
      nil,
      :domain_configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration.</p>
    #   @return [String]
    # @!attribute domain_configuration_arn
    #   <p>The ARN of the domain configuration.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute server_certificates
    #   <p>A list containing summary information about the server certificate included in the domain configuration.</p>
    #   @return [Array<Types::ServerCertificateSummary>]
    # @!attribute authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    #   @return [Types::AuthorizerConfig]
    # @!attribute domain_configuration_status
    #   <p>A Boolean value that specifies the current state of the domain configuration.</p>
    #   @return [String]
    # @!attribute service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #   @return [String]
    # @!attribute domain_type
    #   <p>The type of the domain.</p>
    #   @return [String]
    # @!attribute last_status_change_date
    #   <p>The date and time the domain configuration's status was last changed.</p>
    #   @return [Time]
    # @!attribute tls_config
    #   <p>An object that specifies the TLS configuration for a domain.</p>
    #   @return [Types::TlsConfig]
    # @!attribute server_certificate_config
    #   <p>The server certificate configuration.</p>
    #   @return [Types::ServerCertificateConfig]
    # @!attribute authentication_type
    #   <p>An enumerated string that speciﬁes the authentication type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH_X509</code> - Use custom authentication and authorization with additional details from the X.509 client certificate.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH</code> - Use custom authentication and authorization. For more
    #                  information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">Custom authentication and authorization</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_X509</code> - Use X.509 client certificates without custom authentication and authorization. For more information,
    #                  see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html">X.509 client certificates</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_SIGV4</code> - Use Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">IAM users, groups, and roles</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify authentication type.
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute application_protocol
    #   <p>An enumerated string that speciﬁes the application-layer protocol.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SECURE_MQTT</code> - MQTT over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MQTT_WSS</code> - MQTT over WebSocket.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTPS</code> - HTTP over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify application_layer protocol. 
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute client_certificate_config
    #   <p>An object that speciﬁes the client certificate conﬁguration for a domain.</p>
    #   @return [Types::ClientCertificateConfig]
    class DescribeDomainConfigurationResponse < Struct.new(
      nil,
      :domain_configuration_name,
      :domain_configuration_arn,
      :domain_name,
      :server_certificates,
      :authorizer_config,
      :domain_configuration_status,
      :service_type,
      :domain_type,
      :last_status_change_date,
      :tls_config,
      :server_certificate_config,
      :authentication_type,
      :application_protocol,
      :client_certificate_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeEncryptionConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of the Amazon Web Services Key Management Service (KMS) key.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role assumed by Amazon Web Services IoT Core to call KMS on
    #            behalf of the customer.</p>
    #   @return [String]
    # @!attribute kms_access_role_arn
    #   <p>The ARN of the customer-managed KMS key.</p>
    #   @return [String]
    # @!attribute configuration_details
    #   <p>The encryption configuration details that include the status information of the KMS key
    #            and the KMS access role.</p>
    #   @return [Types::ConfigurationDetails]
    # @!attribute last_modified_date
    #   <p>The date when encryption configuration is last updated.</p>
    #   @return [Time]
    class DescribeEncryptionConfigurationResponse < Struct.new(
      nil,
      :encryption_type,
      :kms_key_arn,
      :kms_access_role_arn,
      :configuration_details,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DescribeEndpoint operation.</p>
    # @!attribute endpoint_type
    #   <p>The endpoint type. Valid endpoint types include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Data</code> - Returns a VeriSign signed data endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Data-ATS</code> - Returns an ATS signed data endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:CredentialProvider</code> - Returns an IoT credentials provider API
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Jobs</code> - Returns an IoT device management Jobs API
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #            <p>We strongly recommend that customers use the newer <code>iot:Data-ATS</code> endpoint type to avoid 
    #            issues related to the widespread distrust of Symantec certificate authorities. ATS Signed Certificates
    #            are more secure and are trusted by most popular browsers.</p>
    #   @return [String]
    class DescribeEndpointRequest < Struct.new(
      nil,
      :endpoint_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the DescribeEndpoint operation.</p>
    # @!attribute endpoint_address
    #   <p>The endpoint. The format of the endpoint is as follows:
    #               <i>identifier</i>.iot.<i>region</i>.amazonaws.com.</p>
    #   @return [String]
    class DescribeEndpointResponse < Struct.new(
      nil,
      :endpoint_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeEventConfigurationsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_configurations
    #   <p>The event configurations.</p>
    #   @return [Hash<String, Types::Configuration>]
    # @!attribute creation_date
    #   <p>The creation date of the event configuration.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date the event configurations were last modified.</p>
    #   @return [Time]
    class DescribeEventConfigurationsResponse < Struct.new(
      nil,
      :event_configurations,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the fleet metric to describe.</p>
    #   @return [String]
    class DescribeFleetMetricRequest < Struct.new(
      nil,
      :metric_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the fleet metric to describe.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string.</p>
    #   @return [String]
    # @!attribute aggregation_type
    #   <p>The type of the aggregation query.</p>
    #   @return [Types::AggregationType]
    # @!attribute period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    #   @return [Integer]
    # @!attribute aggregation_field
    #   <p>The field to aggregate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The fleet metric description.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The query version.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to search.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the fleet metric is created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the fleet metric is last modified.</p>
    #   @return [Time]
    # @!attribute unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the fleet metric.</p>
    #   @return [Integer]
    # @!attribute metric_arn
    #   <p>The ARN of the fleet metric to describe.</p>
    #   @return [String]
    class DescribeFleetMetricResponse < Struct.new(
      nil,
      :metric_name,
      :query_string,
      :aggregation_type,
      :period,
      :aggregation_field,
      :description,
      :query_version,
      :index_name,
      :creation_date,
      :last_modified_date,
      :unit,
      :version,
      :metric_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute index_name
    #   <p>The index name.</p>
    #   @return [String]
    class DescribeIndexRequest < Struct.new(
      nil,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The index name.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>The index status.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>Contains a value that specifies the type of indexing performed. Valid values
    #         are:</p>
    #            <ul>
    #               <li>
    #                  <p>REGISTRY – Your thing index contains only registry data.</p>
    #               </li>
    #               <li>
    #                  <p>REGISTRY_AND_SHADOW - Your thing index contains registry data and shadow data.</p>
    #               </li>
    #               <li>
    #                  <p>REGISTRY_AND_CONNECTIVITY_STATUS - Your thing index contains registry data and
    #             thing connectivity status data.</p>
    #               </li>
    #               <li>
    #                  <p>REGISTRY_AND_SHADOW_AND_CONNECTIVITY_STATUS - Your thing index contains registry
    #             data, shadow data, and thing connectivity status data.</p>
    #               </li>
    #               <li>
    #                  <p>MULTI_INDEXING_MODE - Your thing index contains multiple data sources. For more information, see 
    #             <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_GetIndexingConfiguration.html">GetIndexingConfiguration</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeIndexResponse < Struct.new(
      nil,
      :index_name,
      :index_status,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing on which the job execution is running.</p>
    #   @return [String]
    # @!attribute execution_number
    #   <p>A string (consisting of the digits "0" through "9" which is used to specify a
    #               particular job execution on a particular device.</p>
    #   @return [Integer]
    class DescribeJobExecutionRequest < Struct.new(
      nil,
      :job_id,
      :thing_name,
      :execution_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution
    #   <p>Information about the job execution.</p>
    #   @return [Types::JobExecution]
    class DescribeJobExecutionResponse < Struct.new(
      nil,
      :execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute before_substitution
    #   <p>Provides a view of the job document before and after the substitution parameters have been resolved with their exact values.</p>
    #   @return [Boolean]
    class DescribeJobRequest < Struct.new(
      nil,
      :job_id,
      :before_substitution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_source
    #   <p>An S3 link to the job document.</p>
    #   @return [String]
    # @!attribute job
    #   <p>Information about the job.</p>
    #   @return [Types::Job]
    class DescribeJobResponse < Struct.new(
      nil,
      :document_source,
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_template_id
    #   <p>The unique identifier of the job template.</p>
    #   @return [String]
    class DescribeJobTemplateRequest < Struct.new(
      nil,
      :job_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_template_arn
    #   <p>The ARN of the job template.</p>
    #   @return [String]
    # @!attribute job_template_id
    #   <p>The unique identifier of the job template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the job template.</p>
    #   @return [String]
    # @!attribute document_source
    #   <p>An S3 link to the job document.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The job document.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time, in seconds since the epoch, when the job template was created.</p>
    #   @return [Time]
    # @!attribute presigned_url_config
    #   <p>Configuration for pre-signed S3 URLs.</p>
    #   @return [Types::PresignedUrlConfig]
    # @!attribute job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of a job.</p>
    #   @return [Types::JobExecutionsRolloutConfig]
    # @!attribute abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    #   @return [Types::AbortConfig]
    # @!attribute timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. A
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the timer expires,
    #               it will be automatically set to <code>TIMED_OUT</code>.</p>
    #   @return [Types::TimeoutConfig]
    # @!attribute job_executions_retry_config
    #   <p>The configuration that determines how many retries are allowed for each failure type
    #               for a job.</p>
    #   @return [Types::JobExecutionsRetryConfig]
    # @!attribute maintenance_windows
    #   <p>Allows you to configure an optional maintenance window for the rollout of a job
    #               document to all devices in the target group for a job.</p>
    #   @return [Array<Types::MaintenanceWindow>]
    # @!attribute destination_package_versions
    #   <p>The package version Amazon Resource Names (ARNs) that are installed on the device when the job
    #               successfully completes. The package version must be in either the Published or
    #               Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #            <p>
    #               <b>Note:</b>The following Length Constraints relates to a
    #               single ARN. Up to 25 package version ARNs are allowed.</p>
    #   @return [Array<String>]
    class DescribeJobTemplateResponse < Struct.new(
      nil,
      :job_template_arn,
      :job_template_id,
      :description,
      :document_source,
      :document,
      :created_at,
      :presigned_url_config,
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      :job_executions_retry_config,
      :maintenance_windows,
      :destination_package_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The unique name of a managed job template, which is required.</p>
    #   @return [String]
    # @!attribute template_version
    #   <p>An optional parameter to specify version of a managed template. If not specified, the
    #               pre-defined default version is returned.</p>
    #   @return [String]
    class DescribeManagedJobTemplateRequest < Struct.new(
      nil,
      :template_name,
      :template_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The unique name of a managed template, such as <code>AWS-Reboot</code>.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The unique Amazon Resource Name (ARN) of the managed template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The unique description of a managed template.</p>
    #   @return [String]
    # @!attribute template_version
    #   <p>The version for a managed template.</p>
    #   @return [String]
    # @!attribute environments
    #   <p>A list of environments that are supported with the managed job template.</p>
    #   @return [Array<String>]
    # @!attribute document_parameters
    #   <p>A map of key-value pairs that you can use as guidance to specify the inputs for
    #               creating a job from a managed template.</p>
    #            <note>
    #               <p>
    #                  <code>documentParameters</code> can only be used when creating jobs from Amazon Web Services
    #                   managed templates. This parameter can't be used with custom job templates or to
    #                   create jobs from them.</p>
    #            </note>
    #   @return [Array<Types::DocumentParameter>]
    # @!attribute document
    #   <p>The document schema for a managed job template.</p>
    #   @return [String]
    class DescribeManagedJobTemplateResponse < Struct.new(
      nil,
      :template_name,
      :template_arn,
      :description,
      :template_version,
      :environments,
      :document_parameters,
      :document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_name
    #   <p>The friendly name that uniquely identifies the mitigation action.</p>
    #   @return [String]
    class DescribeMitigationActionRequest < Struct.new(
      nil,
      :action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_name
    #   <p>The friendly name that uniquely identifies the mitigation action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of mitigation action.</p>
    #   @return [String]
    # @!attribute action_arn
    #   <p>The ARN that identifies this migration action.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>A unique identifier for this action.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role used to apply this action.</p>
    #   @return [String]
    # @!attribute action_params
    #   <p>Parameters that control how the mitigation action is applied, specific to the type of mitigation action.</p>
    #   @return [Types::MitigationActionParams]
    # @!attribute creation_date
    #   <p>The date and time when the mitigation action was added to your Amazon Web Services accounts.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time when the mitigation action was last changed.</p>
    #   @return [Time]
    class DescribeMitigationActionResponse < Struct.new(
      nil,
      :action_name,
      :action_type,
      :action_arn,
      :action_id,
      :role_arn,
      :action_params,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    class DescribeProvisioningTemplateRequest < Struct.new(
      nil,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_arn
    #   <p>The ARN of the provisioning template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning template.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the provisioning template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the provisioning template was last modified.</p>
    #   @return [Time]
    # @!attribute default_version_id
    #   <p>The default fleet template version ID.</p>
    #   @return [Integer]
    # @!attribute template_body
    #   <p>The JSON formatted contents of the provisioning template.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>True if the provisioning template is enabled, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute provisioning_role_arn
    #   <p>The ARN of the role associated with the provisioning template. This IoT role grants
    #            permission to provision a device.</p>
    #   @return [String]
    # @!attribute pre_provisioning_hook
    #   <p>Gets information about a pre-provisioned hook.</p>
    #   @return [Types::ProvisioningHook]
    # @!attribute type
    #   <p>The type you define in a provisioning template. You can create a template with only one type.
    #            You can't change the template type after its creation. The default value is <code>FLEET_PROVISIONING</code>.
    #            For more information about provisioning template, see: <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning template</a>.
    #         </p>
    #   @return [String]
    class DescribeProvisioningTemplateResponse < Struct.new(
      nil,
      :template_arn,
      :template_name,
      :description,
      :creation_date,
      :last_modified_date,
      :default_version_id,
      :template_body,
      :enabled,
      :provisioning_role_arn,
      :pre_provisioning_hook,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The provisioning template version ID.</p>
    #   @return [Integer]
    class DescribeProvisioningTemplateVersionRequest < Struct.new(
      nil,
      :template_name,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_id
    #   <p>The provisioning template version ID.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The date when the provisioning template version was created.</p>
    #   @return [Time]
    # @!attribute template_body
    #   <p>The JSON formatted contents of the provisioning template version.</p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>True if the provisioning template version is the default version.</p>
    #   @return [Boolean]
    class DescribeProvisioningTemplateVersionResponse < Struct.new(
      nil,
      :version_id,
      :creation_date,
      :template_body,
      :is_default_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # @!attribute role_alias
    #   <p>The role alias to describe.</p>
    #   @return [String]
    class DescribeRoleAliasRequest < Struct.new(
      nil,
      :role_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_alias_description
    #   <p>The role alias description.</p>
    #   @return [Types::RoleAliasDescription]
    class DescribeRoleAliasResponse < Struct.new(
      nil,
      :role_alias_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_audit_name
    #   <p>The name of the scheduled audit whose information you want to get.</p>
    #   @return [String]
    class DescribeScheduledAuditRequest < Struct.new(
      nil,
      :scheduled_audit_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute frequency
    #   <p>How often the scheduled audit takes
    #         place, either
    #         one of <code>DAILY</code>,
    #               <code>WEEKLY</code>, <code>BIWEEKLY</code>, or <code>MONTHLY</code>. The start time of each audit is determined by the
    #         system.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This is
    #         will be <code>1</code>
    #               through <code>31</code> or <code>LAST</code>. If days
    #         <code>29</code>-<code>31</code>
    #         are specified, and the month does not have that many days, the audit takes place on the <code>LAST</code>
    #         day of the month.</p>
    #   @return [String]
    # @!attribute day_of_week
    #   <p>The day of the week on which the scheduled audit takes
    #         place,
    #         either one of
    #               <code>SUN</code>, <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>.</p>
    #   @return [String]
    # @!attribute target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be 
    #               enabled for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #               to select which checks are enabled.)</p>
    #   @return [Array<String>]
    # @!attribute scheduled_audit_name
    #   <p>The name of the scheduled audit.</p>
    #   @return [String]
    # @!attribute scheduled_audit_arn
    #   <p>The ARN of the scheduled audit.</p>
    #   @return [String]
    class DescribeScheduledAuditResponse < Struct.new(
      nil,
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name,
      :scheduled_audit_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile
    #         whose information you want to get.</p>
    #   @return [String]
    class DescribeSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile.</p>
    #   @return [String]
    # @!attribute security_profile_arn
    #   <p>The ARN of the security profile.</p>
    #   @return [String]
    # @!attribute security_profile_description
    #   <p>A description of the security profile (associated with the security profile
    #           when it was created or updated).</p>
    #   @return [String]
    # @!attribute behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #   @return [Array<Types::Behavior>]
    # @!attribute alert_targets
    #   <p>Where the alerts are sent. (Alerts are always sent to the console.)</p>
    #   @return [Hash<String, Types::AlertTarget>]
    # @!attribute additional_metrics_to_retain
    #   <p>
    #               <i>Please use
    #             <a>DescribeSecurityProfileResponse$additionalMetricsToRetainV2</a>
    #           instead.</i>
    #            </p>
    #            <p>A list of metrics
    #         whose data is retained (stored). By default, data is retained for any metric
    #         used in the profile's <code>behaviors</code>, but
    #         it is
    #         also retained for any metric specified here.</p>
    #   @deprecated
    #     Use additionalMetricsToRetainV2.
    #   @return [Array<String>]
    # @!attribute additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any
    #         metric used in the profile's behaviors, but
    #         it is
    #         also retained for any metric specified here.</p>
    #   @return [Array<Types::MetricToRetain>]
    # @!attribute version
    #   <p>The version of the security profile. A new version is generated whenever the
    #           security profile is updated.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The time the security profile was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The time the security profile was last modified.</p>
    #   @return [Time]
    # @!attribute metrics_export_config
    #   <p>Specifies the MQTT topic and role ARN required for metric export.</p>
    #   @return [Types::MetricsExportConfig]
    class DescribeSecurityProfileResponse < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_arn,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :version,
      :creation_date,
      :last_modified_date,
      :metrics_export_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    class DescribeStreamRequest < Struct.new(
      nil,
      :stream_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_info
    #   <p>Information about the stream.</p>
    #   @return [Types::StreamInfo]
    class DescribeStreamResponse < Struct.new(
      nil,
      :stream_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The name of the thing group.</p>
    #   @return [String]
    class DescribeThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The name of the thing group.</p>
    #   @return [String]
    # @!attribute thing_group_id
    #   <p>The thing group ID.</p>
    #   @return [String]
    # @!attribute thing_group_arn
    #   <p>The thing group ARN.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the thing group.</p>
    #   @return [Integer]
    # @!attribute thing_group_properties
    #   <p>The thing group properties.</p>
    #   @return [Types::ThingGroupProperties]
    # @!attribute thing_group_metadata
    #   <p>Thing group metadata.</p>
    #   @return [Types::ThingGroupMetadata]
    # @!attribute index_name
    #   <p>The dynamic thing group index name.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The dynamic thing group search query string.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The dynamic thing group query version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The dynamic thing group status.</p>
    #   @return [String]
    class DescribeThingGroupResponse < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_id,
      :thing_group_arn,
      :version,
      :thing_group_properties,
      :thing_group_metadata,
      :index_name,
      :query_string,
      :query_version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    class DescribeThingRegistrationTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The task creation date.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the task was last modified.</p>
    #   @return [Time]
    # @!attribute template_body
    #   <p>The task's template.</p>
    #   @return [String]
    # @!attribute input_file_bucket
    #   <p>The S3 bucket that contains the input file.</p>
    #   @return [String]
    # @!attribute input_file_key
    #   <p>The input file key.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN that grants access to the input file bucket.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the bulk thing provisioning task.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message.</p>
    #   @return [String]
    # @!attribute success_count
    #   <p>The number of things successfully provisioned.</p>
    #   @return [Integer]
    # @!attribute failure_count
    #   <p>The number of things that failed to be provisioned.</p>
    #   @return [Integer]
    # @!attribute percentage_progress
    #   <p>The progress of the bulk provisioning task expressed as a percentage.</p>
    #   @return [Integer]
    class DescribeThingRegistrationTaskResponse < Struct.new(
      nil,
      :task_id,
      :creation_date,
      :last_modified_date,
      :template_body,
      :input_file_bucket,
      :input_file_key,
      :role_arn,
      :status,
      :message,
      :success_count,
      :failure_count,
      :percentage_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:success_count] = 0 unless options.key?(:success_count)
        options[:failure_count] = 0 unless options.key?(:failure_count)
        options[:percentage_progress] = 0 unless options.key?(:percentage_progress)
        super
      end
    end

    # <p>The input for the DescribeThing operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    class DescribeThingRequest < Struct.new(
      nil,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the DescribeThing operation.</p>
    # @!attribute default_client_id
    #   <p>The default MQTT client ID. For a typical device, the thing name is also used as the default MQTT client ID.  
    #   			Although we don’t require a mapping between a thing's registry name and its use of MQTT client IDs, certificates, or 
    #   			shadow state, we recommend that you choose a thing name and use it as the MQTT client ID for the registry and the Device Shadow service.</p>
    #            <p>This lets you better organize your IoT fleet without removing the flexibility of the underlying device certificate model or shadows.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute thing_id
    #   <p>The ID of the thing to describe.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to describe.</p>
    #   @return [String]
    # @!attribute thing_type_name
    #   <p>The thing type name.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The thing attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>The current version of the thing record in the registry.</p>
    #            <note>
    #               <p>To avoid unintentional changes to the information in the registry, you can pass
    #   				the version information in the <code>expectedVersion</code> parameter of the
    #   					<code>UpdateThing</code> and <code>DeleteThing</code> calls.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute billing_group_name
    #   <p>The name of the billing group the thing belongs to.</p>
    #   @return [String]
    class DescribeThingResponse < Struct.new(
      nil,
      :default_client_id,
      :thing_name,
      :thing_id,
      :thing_arn,
      :thing_type_name,
      :attributes,
      :version,
      :billing_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>The input for the DescribeThingType operation.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    class DescribeThingTypeRequest < Struct.new(
      nil,
      :thing_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the DescribeThingType operation.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    # @!attribute thing_type_id
    #   <p>The thing type ID.</p>
    #   @return [String]
    # @!attribute thing_type_arn
    #   <p>The thing type ARN.</p>
    #   @return [String]
    # @!attribute thing_type_properties
    #   <p>The ThingTypeProperties contains information about the thing type including
    #   			description, a list of searchable thing attribute names, and MQTT5 configuration.</p>
    #   @return [Types::ThingTypeProperties]
    # @!attribute thing_type_metadata
    #   <p>The ThingTypeMetadata contains additional information about the thing type
    #   			including: creation date and time, a value indicating whether the thing type is
    #   			deprecated, and a date and time when it was deprecated.</p>
    #   @return [Types::ThingTypeMetadata]
    class DescribeThingTypeResponse < Struct.new(
      nil,
      :thing_type_name,
      :thing_type_id,
      :thing_type_arn,
      :thing_type_properties,
      :thing_type_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the location of the updated firmware.</p>
    # @!attribute s3_destination
    #   <p>Describes the location in S3 of the updated firmware.</p>
    #   @return [Types::S3Destination]
    class Destination < Struct.new(
      nil,
      :s3_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The policy to detach.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target from which the policy will be detached.</p>
    #   @return [String]
    class DetachPolicyRequest < Struct.new(
      nil,
      :policy_name,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DetachPrincipalPolicy operation.</p>
    # @!attribute policy_name
    #   <p>The name of the policy to detach.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal.</p>
    #            <p>Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #   @return [String]
    class DetachPrincipalPolicyRequest < Struct.new(
      nil,
      :policy_name,
      :principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The security profile that is detached.</p>
    #   @return [String]
    # @!attribute security_profile_target_arn
    #   <p>The ARN of the thing group from which the security profile is detached.</p>
    #   @return [String]
    class DetachSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DetachSecurityProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DetachThingPrincipal operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>If the principal is a certificate, this value must be ARN of the certificate. If
    #   			the principal is an Amazon Cognito identity, this value must be the ID of the Amazon
    #   			Cognito identity.</p>
    #   @return [String]
    class DetachThingPrincipalRequest < Struct.new(
      nil,
      :thing_name,
      :principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the DetachThingPrincipal operation.</p>
    class DetachThingPrincipalResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes which mitigation actions should be executed.
    #         </p>
    # @!attribute task_id
    #   <p>
    #               The unique identifier of the task.
    #           </p>
    #   @return [String]
    # @!attribute violation_id
    #   <p>
    #               The unique identifier of the violation.
    #           </p>
    #   @return [String]
    # @!attribute action_name
    #   <p>
    #               The friendly name that uniquely identifies the mitigation action.
    #           </p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>
    #               The name of the thing.
    #           </p>
    #   @return [String]
    # @!attribute execution_start_date
    #   <p>
    #               The date a mitigation action was started.
    #           </p>
    #   @return [Time]
    # @!attribute execution_end_date
    #   <p>
    #               The date a mitigation action ended.
    #           </p>
    #   @return [Time]
    # @!attribute status
    #   <p>
    #               The status of a mitigation action.
    #           </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>
    #               The error code of a mitigation action.
    #           </p>
    #   @return [String]
    # @!attribute message
    #   <p>
    #               The message of a mitigation action.
    #           </p>
    #   @return [String]
    class DetectMitigationActionExecution < Struct.new(
      nil,
      :task_id,
      :violation_id,
      :action_name,
      :thing_name,
      :execution_start_date,
      :execution_end_date,
      :status,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The statistics of a mitigation action task.
    #         </p>
    # @!attribute actions_executed
    #   <p>
    #               The actions that were performed.
    #           </p>
    #   @return [Integer]
    # @!attribute actions_skipped
    #   <p>
    #               The actions that were skipped.
    #           </p>
    #   @return [Integer]
    # @!attribute actions_failed
    #   <p>
    #               The actions that failed.
    #           </p>
    #   @return [Integer]
    class DetectMitigationActionsTaskStatistics < Struct.new(
      nil,
      :actions_executed,
      :actions_skipped,
      :actions_failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The summary of the mitigation action tasks.
    #         </p>
    # @!attribute task_id
    #   <p>
    #               The unique identifier of the task.
    #           </p>
    #   @return [String]
    # @!attribute task_status
    #   <p>
    #               The status of the task.
    #           </p>
    #   @return [String]
    # @!attribute task_start_time
    #   <p>
    #               The date the task started.
    #           </p>
    #   @return [Time]
    # @!attribute task_end_time
    #   <p>
    #               The date the task ended.
    #           </p>
    #   @return [Time]
    # @!attribute target
    #   <p>
    #               Specifies the ML Detect findings to which the mitigation actions are applied.
    #           </p>
    #   @return [Types::DetectMitigationActionsTaskTarget]
    # @!attribute violation_event_occurrence_range
    #   <p>
    #               Specifies the time period of which violation events occurred between.
    #           </p>
    #   @return [Types::ViolationEventOccurrenceRange]
    # @!attribute only_active_violations_included
    #   <p>
    #               Includes only active violations.
    #           </p>
    #   @return [Boolean]
    # @!attribute suppressed_alerts_included
    #   <p>
    #               Includes suppressed alerts.
    #           </p>
    #   @return [Boolean]
    # @!attribute actions_definition
    #   <p>
    #               The definition of the actions.
    #           </p>
    #   @return [Array<Types::MitigationAction>]
    # @!attribute task_statistics
    #   <p>
    #               The statistics of a mitigation action task.
    #           </p>
    #   @return [Types::DetectMitigationActionsTaskStatistics]
    class DetectMitigationActionsTaskSummary < Struct.new(
      nil,
      :task_id,
      :task_status,
      :task_start_time,
      :task_end_time,
      :target,
      :violation_event_occurrence_range,
      :only_active_violations_included,
      :suppressed_alerts_included,
      :actions_definition,
      :task_statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:only_active_violations_included] = false unless options.key?(:only_active_violations_included)
        options[:suppressed_alerts_included] = false unless options.key?(:suppressed_alerts_included)
        super
      end
    end

    # <p>
    #             The target of a mitigation action task.
    #         </p>
    # @!attribute violation_ids
    #   <p>
    #               The unique identifiers of the violations.
    #           </p>
    #   @return [Array<String>]
    # @!attribute security_profile_name
    #   <p>
    #               The name of the security profile.
    #           </p>
    #   @return [String]
    # @!attribute behavior_name
    #   <p>
    #               The name of the behavior.
    #           </p>
    #   @return [String]
    class DetectMitigationActionsTaskTarget < Struct.new(
      nil,
      :violation_ids,
      :security_profile_name,
      :behavior_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DisableTopicRuleRequest operation.</p>
    # @!attribute rule_name
    #   <p>The name of the rule to disable.</p>
    #   @return [String]
    class DisableTopicRuleRequest < Struct.new(
      nil,
      :rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the new software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the new package version.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DisassociateSbomFromPackageVersionRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateSbomFromPackageVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of key-value pairs containing the patterns that need to be replaced in a managed
    #             template job document schema. You can use the description of each key as a guidance to
    #             specify the inputs during runtime when creating a job.</p>
    #          <note>
    #             <p>
    #                <code>documentParameters</code> can only be used when creating jobs from Amazon Web Services
    #                 managed templates. This parameter can't be used with custom job templates or to
    #                 create jobs from them.</p>
    #          </note>
    # @!attribute key
    #   <p>Key of the map field containing the patterns that need to be replaced in a managed
    #               template job document schema.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the map field containing the patterns that need to be replaced in a
    #               managed template job document schema.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>A regular expression of the patterns that need to be replaced in a managed template
    #               job document schema.</p>
    #   @return [String]
    # @!attribute example
    #   <p>An example illustrating a pattern that need to be replaced in a managed template job
    #               document schema.</p>
    #   @return [String]
    # @!attribute optional
    #   <p>Specifies whether a pattern that needs to be replaced in a managed template job
    #               document schema is optional or required.</p>
    #   @return [Boolean]
    class DocumentParameter < Struct.new(
      nil,
      :key,
      :description,
      :regex,
      :example,
      :optional,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:optional] = false unless options.key?(:optional)
        super
      end
    end

    # <p>The summary of a domain configuration. A domain configuration specifies custom IoT-specific information about a domain. 
    #          A domain configuration can be associated with an Amazon Web Services-managed domain 
    #          (for example, dbc123defghijk.iot.us-west-2.amazonaws.com), a customer managed domain, or a default endpoint.</p>
    #          <ul>
    #             <li>
    #                <p>Data</p>
    #             </li>
    #             <li>
    #                <p>Jobs</p>
    #             </li>
    #             <li>
    #                <p>CredentialProvider</p>
    #             </li>
    #          </ul>
    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration. This value must be unique to a region.</p>
    #   @return [String]
    # @!attribute domain_configuration_arn
    #   <p>The ARN of the domain configuration.</p>
    #   @return [String]
    # @!attribute service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #   @return [String]
    class DomainConfigurationSummary < Struct.new(
      nil,
      :domain_configuration_name,
      :domain_configuration_arn,
      :service_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to write to a DynamoDB table.</p>
    #          <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code>
    #          values must match the values used when you created the table.</p>
    #          <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a
    #          substitution template syntax. These templates provide data at runtime. The syntax is as
    #          follows: ${<i>sql-expression</i>}.</p>
    #          <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON
    #          properties, comparisons, calculations, and functions. For example, the following field uses
    #          the third level of the topic:</p>
    #          <p>
    #             <code>"hashKeyValue": "${topic(3)}"</code>
    #          </p>
    #          <p>The following field uses the timestamp:</p>
    #          <p>
    #             <code>"rangeKeyValue": "${timestamp()}"</code>
    #          </p>
    # @!attribute table_name
    #   <p>The name of the DynamoDB table.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The type of operation to be performed. This follows the substitution template, so it
    #            can be <code>${operation}</code>, but the substitution must result in one of the following:
    #               <code>INSERT</code>, <code>UPDATE</code>, or <code>DELETE</code>.</p>
    #   @return [String]
    # @!attribute hash_key_field
    #   <p>The hash key name.</p>
    #   @return [String]
    # @!attribute hash_key_value
    #   <p>The hash key value.</p>
    #   @return [String]
    # @!attribute hash_key_type
    #   <p>The hash key type. Valid values are "STRING" or "NUMBER"</p>
    #   @return [String]
    # @!attribute range_key_field
    #   <p>The range key name.</p>
    #   @return [String]
    # @!attribute range_key_value
    #   <p>The range key value.</p>
    #   @return [String]
    # @!attribute range_key_type
    #   <p>The range key type. Valid values are "STRING" or "NUMBER"</p>
    #   @return [String]
    # @!attribute payload_field
    #   <p>The action payload. This name can be customized.</p>
    #   @return [String]
    class DynamoDBAction < Struct.new(
      nil,
      :table_name,
      :role_arn,
      :operation,
      :hash_key_field,
      :hash_key_value,
      :hash_key_type,
      :range_key_field,
      :range_key_value,
      :range_key_type,
      :payload_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to write to a DynamoDB table.</p>
    #          <p>This DynamoDB action writes each attribute in the message payload into it's own
    #          column in the DynamoDB table.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
    #   @return [String]
    # @!attribute put_item
    #   <p>Specifies the DynamoDB table to which the message data will be written. For
    #            example:</p>
    #            <p>
    #               <code>{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName":
    #               "my-table" } } }</code>
    #            </p>
    #            <p>Each attribute in the message payload will be written to a separate column in the
    #            DynamoDB database.</p>
    #   @return [Types::PutItemInput]
    class DynamoDBv2Action < Struct.new(
      nil,
      :role_arn,
      :put_item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The policy that has the effect on the authorization results.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The policy ARN.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The IAM policy document.</p>
    #   @return [String]
    class EffectivePolicy < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      :policy_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that writes data to an Amazon OpenSearch Service
    #          domain.</p>
    #          <note>
    #             <p>The <code>Elasticsearch</code> action can only be used by existing rule actions. To create a
    #          new rule action or to update an existing rule action, use the
    #          <code>OpenSearch</code> rule action instead. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_OpenSearchAction.html">OpenSearchAction</a>.</p>
    #          </note>
    # @!attribute role_arn
    #   <p>The IAM role ARN that has access to OpenSearch.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint of your OpenSearch domain.</p>
    #   @return [String]
    # @!attribute index
    #   <p>The index where you want to store your data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of document you are storing.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the document you are storing.</p>
    #   @return [String]
    class ElasticsearchAction < Struct.new(
      nil,
      :role_arn,
      :endpoint,
      :index,
      :type,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters used when defining a mitigation action that enable Amazon Web Services IoT Core logging.</p>
    # @!attribute role_arn_for_logging
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for logging.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>Specifies the type of information to be logged.</p>
    #   @return [String]
    class EnableIoTLoggingParams < Struct.new(
      nil,
      :role_arn_for_logging,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the EnableTopicRuleRequest operation.</p>
    # @!attribute rule_name
    #   <p>The name of the topic rule to enable.</p>
    #   @return [String]
    class EnableTopicRuleRequest < Struct.new(
      nil,
      :rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error information.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ErrorInfo < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information that explicitly denies authorization.</p>
    # @!attribute policies
    #   <p>The policies that denied the authorization.</p>
    #   @return [Array<Types::Policy>]
    class ExplicitDeny < Struct.new(
      nil,
      :policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to create an exponential rate of rollout for a job.</p>
    # @!attribute base_rate_per_minute
    #   <p>The minimum number of things that will be notified of a pending job, per minute at
    #               the start of job rollout. This parameter allows you to define the initial rate of
    #               rollout.</p>
    #   @return [Integer]
    # @!attribute increment_factor
    #   <p>The exponential factor to increase the rate of rollout for a job.</p>
    #            <p>Amazon Web Services IoT Core supports up to one digit after the decimal (for example, 1.5, but not
    #               1.55).</p>
    #   @return [Float]
    # @!attribute rate_increase_criteria
    #   <p>The criteria to initiate the increase in rate of rollout for a job.</p>
    #   @return [Types::RateIncreaseCriteria]
    class ExponentialRolloutRate < Struct.new(
      nil,
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the name and data type at a field.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the field.</p>
    #   @return [String]
    class Field < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of the OTA update.</p>
    # @!attribute stream
    #   <p>The stream that contains the OTA update.</p>
    #   @return [Types::Stream]
    # @!attribute s3_location
    #   <p>The location of the updated firmware in S3.</p>
    #   @return [Types::S3Location]
    class FileLocation < Struct.new(
      nil,
      :stream,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>
    # @!attribute role_arn
    #   <p>The IAM role that grants access to the Amazon Kinesis Firehose stream.</p>
    #   @return [String]
    # @!attribute delivery_stream_name
    #   <p>The delivery stream name.</p>
    #   @return [String]
    # @!attribute separator
    #   <p>A character separator that will be used to separate records written to the Firehose
    #            stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ','
    #            (comma).</p>
    #   @return [String]
    # @!attribute batch_mode
    #   <p>Whether to deliver the Kinesis Data Firehose stream as a batch by using <a href="https://docs.aws.amazon.com/firehose/latest/APIReference/API_PutRecordBatch.html">
    #                  <code>PutRecordBatch</code>
    #               </a>.  The default value is
    #            <code>false</code>.</p>
    #            <p>When <code>batchMode</code> is <code>true</code> and the rule's SQL statement
    #            evaluates to an Array, each Array element forms one record in the <a href="https://docs.aws.amazon.com/firehose/latest/APIReference/API_PutRecordBatch.html">
    #                  <code>PutRecordBatch</code>
    #               </a> request. The resulting array can't have more
    #            than 500 records.</p>
    #   @return [Boolean]
    class FirehoseAction < Struct.new(
      nil,
      :role_arn,
      :delivery_stream_name,
      :separator,
      :batch_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name and ARN of a fleet metric.</p>
    # @!attribute metric_name
    #   <p>The fleet metric name.</p>
    #   @return [String]
    # @!attribute metric_arn
    #   <p>The fleet metric ARN.</p>
    #   @return [String]
    class FleetMetricNameAndArn < Struct.new(
      nil,
      :metric_name,
      :metric_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A geolocation target that you select to index. Each geolocation target contains a
    #         <code>name</code> and <code>order</code> key-value pair that specifies the geolocation
    #       target fields.</p>
    # @!attribute name
    #   <p>The <code>name</code> of the geolocation target field. If the target field is part of a
    #         named shadow, you must select the named shadow using the <code>namedShadow</code> filter.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The <code>order</code> of the geolocation target field. This field is optional. The
    #         default value is <code>LatLon</code>.</p>
    #   @return [String]
    class GeoLocationTarget < Struct.new(
      nil,
      :name,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>
    #         The name of the security profile.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 10.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #   @return [String]
    class GetBehaviorModelTrainingSummariesRequest < Struct.new(
      nil,
      :security_profile_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>
    #         A list of all ML Detect behaviors and their model status for a given Security Profile.
    #       </p>
    #   @return [Array<Types::BehaviorModelTrainingSummary>]
    # @!attribute next_token
    #   <p>
    #         A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    #       </p>
    #   @return [String]
    class GetBehaviorModelTrainingSummariesResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the index to search.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string.</p>
    #   @return [String]
    # @!attribute aggregation_field
    #   <p>The aggregation field.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The version of the query.</p>
    #   @return [String]
    # @!attribute buckets_aggregation_type
    #   <p>The basic control of the response shape and the bucket aggregation type to perform. </p>
    #   @return [Types::BucketsAggregationType]
    class GetBucketsAggregationRequest < Struct.new(
      nil,
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version,
      :buckets_aggregation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute total_count
    #   <p>The total number of things that fit the query string criteria.</p>
    #   @return [Integer]
    # @!attribute buckets
    #   <p>The main part of the response with a list of buckets. Each bucket contains a <code>keyValue</code> and a <code>count</code>.</p>
    #            <p>
    #               <code>keyValue</code>: The aggregation field value counted for the particular bucket.</p>
    #            <p>
    #               <code>count</code>: The number of documents that have that value.</p>
    #   @return [Array<Types::Bucket>]
    class GetBucketsAggregationResponse < Struct.new(
      nil,
      :total_count,
      :buckets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_count] = 0 unless options.key?(:total_count)
        super
      end
    end

    # @!attribute index_name
    #   <p>The name of the index to search.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string.</p>
    #   @return [String]
    # @!attribute aggregation_field
    #   <p>The field to aggregate.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The query version.</p>
    #   @return [String]
    class GetCardinalityRequest < Struct.new(
      nil,
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cardinality
    #   <p>The approximate count of unique values that match the query.</p>
    #   @return [Integer]
    class GetCardinalityResponse < Struct.new(
      nil,
      :cardinality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cardinality] = 0 unless options.key?(:cardinality)
        super
      end
    end

    # @!attribute execution_id
    #   <p>The unique identifier for the command execution. This information is returned as a
    #               response of the <code>StartCommandExecution</code> API request.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Number (ARN) of the device on which the command execution is being
    #               performed.</p>
    #   @return [String]
    # @!attribute include_result
    #   <p>Can be used to specify whether to include the result of the command execution
    #               in the <code>GetCommandExecution</code> API response. Your device can use this
    #               field to provide additional information about the command execution. You only
    #               need to specify this field when using the <code>AWS-IoT</code> namespace.</p>
    #   @return [Boolean]
    class GetCommandExecutionRequest < Struct.new(
      nil,
      :execution_id,
      :target_arn,
      :include_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The unique identifier of the command execution.</p>
    #   @return [String]
    # @!attribute command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. For example,
    #               <code></code>arn:aws:iot:<region>:<accountid>:command/<commandId></p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Number (ARN) of the device on which the command execution is being
    #               performed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the command execution. After your devices receive the command and start
    #               performing the operations specified in the command, it can use the
    #                   <code>UpdateCommandExecution</code> MQTT API to update the status
    #               information.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Your devices can use this parameter to provide additional context about the status of
    #               a command execution using a reason code and description.</p>
    #   @return [Types::StatusReason]
    # @!attribute result
    #   <p>The result value for the current state of the command execution. The status provides
    #               information about the progress of the command execution. The device can use the result
    #               field to share additional details about the execution such as a return value of a remote
    #               function call.</p>
    #            <note>
    #               <p>If you use the <code>AWS-IoT-FleetWise</code> namespace, then this field is not
    #                   applicable in the API response.</p>
    #            </note>
    #   @return [Hash<String, Types::CommandExecutionResult>]
    # @!attribute parameters
    #   <p>The list of parameters that the <code>StartCommandExecution</code> API used when
    #               performing the command on the device.</p>
    #   @return [Hash<String, Types::CommandParameterValue>]
    # @!attribute execution_timeout_seconds
    #   <p>Specifies the amount of time in seconds that the device can take to finish a command
    #               execution. A timer starts when the command execution is created. If the command
    #               execution status is not set to another terminal state before the timer expires, it will
    #               automatically update to <code>TIMED_OUT</code>.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The timestamp, when the command execution was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp, when the command execution was last updated.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The timestamp, when the command execution was started.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp, when the command execution was completed.</p>
    #   @return [Time]
    # @!attribute time_to_live
    #   <p>The time to live (TTL) parameter that indicates the duration for which executions will
    #           be retained in your account. The default value is six months.</p>
    #   @return [Time]
    class GetCommandExecutionResponse < Struct.new(
      nil,
      :execution_id,
      :command_arn,
      :target_arn,
      :status,
      :status_reason,
      :result,
      :parameters,
      :execution_timeout_seconds,
      :created_at,
      :last_updated_at,
      :started_at,
      :completed_at,
      :time_to_live,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>The unique identifier of the command for which you want to retrieve
    #               information.</p>
    #   @return [String]
    class GetCommandRequest < Struct.new(
      nil,
      :command_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>The unique identifier of the command.</p>
    #   @return [String]
    # @!attribute command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. For example,
    #                   <code>arn:aws:iot:<region>:<accountid>:command/<commandId></code>
    #            </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the command.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The user-friendly name in the console for the command.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text description of the command.</p>
    #   @return [String]
    # @!attribute mandatory_parameters
    #   <p>A list of parameters for the command created.</p>
    #   @return [Array<Types::CommandParameter>]
    # @!attribute payload
    #   <p>The payload object that you provided for the command.</p>
    #   @return [Types::CommandPayload]
    # @!attribute role_arn
    #   <p>The IAM role that you provided when creating the command with <code>AWS-IoT-FleetWise</code>
    #           as the namespace.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp, when the command was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp, when the command was last updated.</p>
    #   @return [Time]
    # @!attribute deprecated
    #   <p>Indicates whether the command has been deprecated.</p>
    #   @return [Boolean]
    # @!attribute pending_deletion
    #   <p>Indicates whether the command is being deleted.</p>
    #   @return [Boolean]
    class GetCommandResponse < Struct.new(
      nil,
      :command_id,
      :command_arn,
      :namespace,
      :display_name,
      :description,
      :mandatory_parameters,
      :payload,
      :role_arn,
      :created_at,
      :last_updated_at,
      :deprecated,
      :pending_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #   @return [String]
    # @!attribute cognito_identity_pool_id
    #   <p>The Cognito identity pool ID.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The thing name.</p>
    #   @return [String]
    class GetEffectivePoliciesRequest < Struct.new(
      nil,
      :principal,
      :cognito_identity_pool_id,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute effective_policies
    #   <p>The effective policies.</p>
    #   @return [Array<Types::EffectivePolicy>]
    class GetEffectivePoliciesResponse < Struct.new(
      nil,
      :effective_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetIndexingConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_indexing_configuration
    #   <p>Thing indexing configuration.</p>
    #   @return [Types::ThingIndexingConfiguration]
    # @!attribute thing_group_indexing_configuration
    #   <p>The index configuration.</p>
    #   @return [Types::ThingGroupIndexingConfiguration]
    class GetIndexingConfigurationResponse < Struct.new(
      nil,
      :thing_indexing_configuration,
      :thing_group_indexing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute before_substitution
    #   <p>Provides a view of the job document before and after the substitution parameters have been resolved with their exact values.</p>
    #   @return [Boolean]
    class GetJobDocumentRequest < Struct.new(
      nil,
      :job_id,
      :before_substitution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document
    #   <p>The job document content.</p>
    #   @return [String]
    class GetJobDocumentResponse < Struct.new(
      nil,
      :document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the GetLoggingOptions operation.</p>
    class GetLoggingOptionsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetLoggingOptions operation.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The logging level.</p>
    #   @return [String]
    class GetLoggingOptionsResponse < Struct.new(
      nil,
      :role_arn,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ota_update_id
    #   <p>The OTA update ID.</p>
    #   @return [String]
    class GetOTAUpdateRequest < Struct.new(
      nil,
      :ota_update_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ota_update_info
    #   <p>The OTA update info.</p>
    #   @return [Types::OTAUpdateInfo]
    class GetOTAUpdateResponse < Struct.new(
      nil,
      :ota_update_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetPackageConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_update_by_jobs_config
    #   <p>The version that is associated to a specific job.</p>
    #   @return [Types::VersionUpdateByJobsConfig]
    class GetPackageConfigurationResponse < Struct.new(
      nil,
      :version_update_by_jobs_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the target software package.</p>
    #   @return [String]
    class GetPackageRequest < Struct.new(
      nil,
      :package_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the software package.</p>
    #   @return [String]
    # @!attribute package_arn
    #   <p>The ARN for the package.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The package description.</p>
    #   @return [String]
    # @!attribute default_version_name
    #   <p>The name of the default package version.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the package was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the package was last updated.</p>
    #   @return [Time]
    class GetPackageResponse < Struct.new(
      nil,
      :package_name,
      :package_arn,
      :description,
      :default_version_name,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the associated package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the target package version.</p>
    #   @return [String]
    class GetPackageVersionRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_version_arn
    #   <p>The ARN for the package version.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The name of the software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the package version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The package version description.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Metadata that were added to the package version that can be used to define a package version’s configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute artifact
    #   <p>The various components that make up a software package version.</p>
    #   @return [Types::PackageVersionArtifact]
    # @!attribute status
    #   <p>The status associated to the package version. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #   @return [String]
    # @!attribute error_reason
    #   <p>Error reason for a package version failure during creation or update.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the package version was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the package version was last updated.</p>
    #   @return [Time]
    # @!attribute sbom
    #   <p>The software bill of materials for a software package version.</p>
    #   @return [Types::Sbom]
    # @!attribute sbom_validation_status
    #   <p>The status of the validation for a new software bill of materials added to a software
    #            package version.</p>
    #   @return [String]
    # @!attribute recipe
    #   <p>The inline job document associated with a software package version used for a quick job
    #            deployment.</p>
    #   @return [String]
    class GetPackageVersionResponse < Struct.new(
      nil,
      :package_version_arn,
      :package_name,
      :version_name,
      :description,
      :attributes,
      :artifact,
      :status,
      :error_reason,
      :creation_date,
      :last_modified_date,
      :sbom,
      :sbom_validation_status,
      :recipe,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the index to search.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string.</p>
    #   @return [String]
    # @!attribute aggregation_field
    #   <p>The field to aggregate.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The query version.</p>
    #   @return [String]
    # @!attribute percents
    #   <p>The percentile groups returned.</p>
    #   @return [Array<Float>]
    class GetPercentilesRequest < Struct.new(
      nil,
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version,
      :percents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute percentiles
    #   <p>The percentile values of the aggregated fields.</p>
    #   @return [Array<Types::PercentPair>]
    class GetPercentilesResponse < Struct.new(
      nil,
      :percentiles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the GetPolicy operation.</p>
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      nil,
      :policy_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetPolicy operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The policy ARN.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON document that describes the policy.</p>
    #   @return [String]
    # @!attribute default_version_id
    #   <p>The default policy version ID.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the policy was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date the policy was last modified.</p>
    #   @return [Time]
    # @!attribute generation_id
    #   <p>The generation ID of the policy.</p>
    #   @return [String]
    class GetPolicyResponse < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      :policy_document,
      :default_version_id,
      :creation_date,
      :last_modified_date,
      :generation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the GetPolicyVersion operation.</p>
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    class GetPolicyVersionRequest < Struct.new(
      nil,
      :policy_name,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetPolicyVersion operation.</p>
    # @!attribute policy_arn
    #   <p>The policy ARN.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON document that describes the policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>Specifies whether the policy version is the default.</p>
    #   @return [Boolean]
    # @!attribute creation_date
    #   <p>The date the policy was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date the policy was last modified.</p>
    #   @return [Time]
    # @!attribute generation_id
    #   <p>The generation ID of the policy version.</p>
    #   @return [String]
    class GetPolicyVersionResponse < Struct.new(
      nil,
      :policy_arn,
      :policy_name,
      :policy_document,
      :policy_version_id,
      :is_default_version,
      :creation_date,
      :last_modified_date,
      :generation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # <p>The input to the GetRegistrationCode operation.</p>
    class GetRegistrationCodeRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetRegistrationCode operation.</p>
    # @!attribute registration_code
    #   <p>The CA certificate registration code.</p>
    #   @return [String]
    class GetRegistrationCodeResponse < Struct.new(
      nil,
      :registration_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the index to search. The default value is <code>AWS_Things</code>.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The query used to search. You can specify "*" for the query string to get the count of all
    #         indexed things in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute aggregation_field
    #   <p>The aggregation field name.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The version of the query used to search.</p>
    #   @return [String]
    class GetStatisticsRequest < Struct.new(
      nil,
      :index_name,
      :query_string,
      :aggregation_field,
      :query_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistics
    #   <p>The statistics returned by the Fleet Indexing service based on the query and aggregation
    #         field.</p>
    #   @return [Types::Statistics]
    class GetStatisticsResponse < Struct.new(
      nil,
      :statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of your IoT thing.</p>
    #   @return [String]
    class GetThingConnectivityDataRequest < Struct.new(
      nil,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of your IoT thing.</p>
    #   @return [String]
    # @!attribute connected
    #   <p>A Boolean that indicates the connectivity status.</p>
    #   @return [Boolean]
    # @!attribute timestamp
    #   <p>The timestamp of when the event occurred.</p>
    #   @return [Time]
    # @!attribute disconnect_reason
    #   <p>The reason why the client is disconnecting.</p>
    #   @return [String]
    class GetThingConnectivityDataResponse < Struct.new(
      nil,
      :thing_name,
      :connected,
      :timestamp,
      :disconnect_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the topic rule destination.</p>
    #   @return [String]
    class GetTopicRuleDestinationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topic_rule_destination
    #   <p>The topic rule destination.</p>
    #   @return [Types::TopicRuleDestination]
    class GetTopicRuleDestinationResponse < Struct.new(
      nil,
      :topic_rule_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the GetTopicRule operation.</p>
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    class GetTopicRuleRequest < Struct.new(
      nil,
      :rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the GetTopicRule operation.</p>
    # @!attribute rule_arn
    #   <p>The rule ARN.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>The rule.</p>
    #   @return [Types::TopicRule]
    class GetTopicRuleResponse < Struct.new(
      nil,
      :rule_arn,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetV2LoggingOptionsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The IAM role ARN IoT uses to write to your CloudWatch logs.</p>
    #   @return [String]
    # @!attribute default_log_level
    #   <p>The default log level.</p>
    #   @return [String]
    # @!attribute disable_all_logs
    #   <p>Disables all logs.</p>
    #   @return [Boolean]
    class GetV2LoggingOptionsResponse < Struct.new(
      nil,
      :role_arn,
      :default_log_level,
      :disable_all_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_all_logs] = false unless options.key?(:disable_all_logs)
        super
      end
    end

    # <p>The name and ARN of a group.</p>
    # @!attribute group_name
    #   <p>The group name.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The group ARN.</p>
    #   @return [String]
    class GroupNameAndArn < Struct.new(
      nil,
      :group_name,
      :group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Send data to an HTTPS endpoint.</p>
    # @!attribute url
    #   <p>The endpoint URL. If substitution templates are used in the URL, you must also specify a
    #               <code>confirmationUrl</code>. If this is a new destination, a new
    #               <code>TopicRuleDestination</code> is created if possible.</p>
    #   @return [String]
    # @!attribute confirmation_url
    #   <p>The URL to which IoT sends a confirmation message. The value of the confirmation URL
    #            must be a prefix of the endpoint URL. If you do not specify a confirmation URL IoT uses
    #            the endpoint URL as the confirmation URL. If you use substitution templates in the
    #            confirmationUrl, you must create and enable topic rule destinations that match each
    #            possible value of the substitution template before traffic is allowed to your endpoint
    #            URL.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>The HTTP headers to send with the message data.</p>
    #   @return [Array<Types::HttpActionHeader>]
    # @!attribute auth
    #   <p>The authentication method to use when sending data to an HTTPS endpoint.</p>
    #   @return [Types::HttpAuthorization]
    class HttpAction < Struct.new(
      nil,
      :url,
      :confirmation_url,
      :headers,
      :auth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP action header.</p>
    # @!attribute key
    #   <p>The HTTP header key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The HTTP header value. Substitution templates are supported.</p>
    #   @return [String]
    class HttpActionHeader < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authorization method used to send messages.</p>
    # @!attribute sigv4
    #   <p>Use Sig V4 authorization. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
    #               Version 4 Signing Process</a>.</p>
    #   @return [Types::SigV4Authorization]
    class HttpAuthorization < Struct.new(
      nil,
      :sigv4,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the HTTP context to use for the test authorizer request.</p>
    # @!attribute headers
    #   <p>The header keys and values in an HTTP authorization request.</p>
    #   @return [Hash<String, String>]
    # @!attribute query_string
    #   <p>The query string keys and values in an HTTP authorization request.</p>
    #   @return [String]
    class HttpContext < Struct.new(
      nil,
      :headers,
      :query_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP URL destination configuration used by the topic rule's HTTP action.</p>
    # @!attribute confirmation_url
    #   <p>The URL IoT uses to confirm ownership of or access to the topic rule destination
    #            URL.</p>
    #   @return [String]
    class HttpUrlDestinationConfiguration < Struct.new(
      nil,
      :confirmation_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP URL destination properties.</p>
    # @!attribute confirmation_url
    #   <p>The URL used to confirm the HTTP topic rule destination URL.</p>
    #   @return [String]
    class HttpUrlDestinationProperties < Struct.new(
      nil,
      :confirmation_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an HTTP URL destination.</p>
    # @!attribute confirmation_url
    #   <p>The URL used to confirm ownership of or access to the HTTP topic rule destination
    #            URL.</p>
    #   @return [String]
    class HttpUrlDestinationSummary < Struct.new(
      nil,
      :confirmation_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information that implicitly denies authorization. When policy doesn't explicitly deny
    #          or allow an action on a resource it is considered an implicit deny.</p>
    # @!attribute policies
    #   <p>Policies that don't contain a matching allow or deny statement for the specified
    #            action on the specified resource. </p>
    #   @return [Array<Types::Policy>]
    class ImplicitDeny < Struct.new(
      nil,
      :policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The index is not ready.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class IndexNotReadyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional selections for named shadows and geolocation data. </p>
    #          <p>To add named shadows to your fleet indexing configuration, set <code>namedShadowIndexingMode</code> to
    #       be ON and specify your shadow names in <code>namedShadowNames</code> filter.</p>
    #          <p>To add geolocation data to your fleet indexing configuration: </p>
    #          <ul>
    #             <li>
    #                <p>If you store geolocation data in a class/unnamed shadow, set
    #             <code>thingIndexingMode</code> to be <code>REGISTRY_AND_SHADOW</code> and specify your
    #           geolocation data in <code>geoLocations</code> filter. </p>
    #             </li>
    #             <li>
    #                <p>If you store geolocation data in a named shadow, set
    #             <code>namedShadowIndexingMode</code> to be <code>ON</code>, add the shadow name in
    #             <code>namedShadowNames</code> filter, and specify your geolocation data in
    #             <code>geoLocations</code> filter. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/managing-fleet-index.html">Managing fleet
    #             indexing</a>.</p>
    #             </li>
    #          </ul>
    # @!attribute named_shadow_names
    #   <p>The shadow names that you select to index. The default maximum number of shadow names for indexing is 10. To increase 
    #         the limit, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot_device_management.html#fleet-indexing-limits">Amazon Web Services IoT Device Management 
    #           Quotas</a> in the <i>Amazon Web Services General Reference</i>.
    #       </p>
    #   @return [Array<String>]
    # @!attribute geo_locations
    #   <p>The list of geolocation targets that you select to index. The default maximum number of
    #         geolocation targets for indexing is <code>1</code>. To increase the limit, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot_device_management.html#fleet-indexing-limits">Amazon Web Services IoT Device
    #           Management Quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::GeoLocationTarget>]
    class IndexingFilter < Struct.new(
      nil,
      :named_shadow_names,
      :geo_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error has occurred.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InternalException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error has occurred.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Internal error from the service that indicates an unexpected error or that the service
    #             is unavailable.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The aggregation is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidAggregationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The query is invalid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidQueryException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response is invalid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidResponseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attempt was made to change to an invalid state, for example by deleting a job or a
    #          job execution which is "IN_PROGRESS" without setting the <code>force</code>
    #          parameter.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidStateTransitionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sends message data to an IoT Analytics channel.</p>
    # @!attribute channel_arn
    #   <p>(deprecated) The ARN of the IoT Analytics channel to which message data will be
    #            sent.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the IoT Analytics channel to which message data will be sent.</p>
    #   @return [String]
    # @!attribute batch_mode
    #   <p>Whether to process the action as a batch. The default value is
    #            <code>false</code>.</p>
    #            <p>When <code>batchMode</code> is <code>true</code> and the rule SQL statement evaluates
    #            to an Array, each Array element is delivered as a separate message when passed by <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_BatchPutMessage.html">
    #                  <code>BatchPutMessage</code>
    #               </a> to the IoT Analytics channel. The resulting array can't have more
    #            than 100 messages.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The ARN of the role which has a policy that grants IoT Analytics permission to send
    #            message data via IoT Analytics (iotanalytics:BatchPutMessage).</p>
    #   @return [String]
    class IotAnalyticsAction < Struct.new(
      nil,
      :channel_arn,
      :channel_name,
      :batch_mode,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sends an input to an IoT Events detector.</p>
    # @!attribute input_name
    #   <p>The name of the IoT Events input.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of the message. The default <code>messageId</code> is a new UUID value.</p>
    #            <p>When <code>batchMode</code> is <code>true</code>, you can't specify a
    #           <code>messageId</code>--a new UUID value will be assigned.</p>
    #            <p>Assign a value to this property to ensure that only one input (message) with a given
    #               <code>messageId</code> will be processed by an IoT Events detector.</p>
    #   @return [String]
    # @!attribute batch_mode
    #   <p>Whether to process the event actions as a batch. The default value is
    #               <code>false</code>.</p>
    #            <p>When <code>batchMode</code> is <code>true</code>, you can't specify a
    #               <code>messageId</code>. </p>
    #            <p>When <code>batchMode</code> is <code>true</code> and the rule SQL statement evaluates
    #            to an Array, each Array element is treated as a separate message when it's sent to IoT
    #            Events by calling <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchPutMessage.html">
    #                  <code>BatchPutMessage</code>
    #               </a>.  The resulting array can't have more
    #            than 10 messages.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT permission to send an input to an IoT
    #         Events detector. ("Action":"iotevents:BatchPutMessage").</p>
    #   @return [String]
    class IotEventsAction < Struct.new(
      nil,
      :input_name,
      :message_id,
      :batch_mode,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to send data from an MQTT message that triggered the rule to IoT
    #       SiteWise asset properties.</p>
    # @!attribute put_asset_property_value_entries
    #   <p>A list of asset property value entries.</p>
    #   @return [Array<Types::PutAssetPropertyValueEntry>]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT permission to send an asset property value to IoT SiteWise. (<code>"Action": "iotsitewise:BatchPutAssetPropertyValue"</code>). The trust
    #         policy can restrict access to specific asset hierarchy paths.</p>
    #   @return [String]
    class IotSiteWiseAction < Struct.new(
      nil,
      :put_asset_property_value_entries,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate issuer indentifier.</p>
    # @!attribute issuer_certificate_subject
    #   <p>The subject of the issuer certificate.</p>
    #   @return [String]
    # @!attribute issuer_id
    #   <p>The issuer ID.</p>
    #   @return [String]
    # @!attribute issuer_certificate_serial_number
    #   <p>The issuer certificate serial number.</p>
    #   @return [String]
    class IssuerCertificateIdentifier < Struct.new(
      nil,
      :issuer_certificate_subject,
      :issuer_id,
      :issuer_certificate_serial_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Job</code> object contains details about a job.</p>
    # @!attribute job_arn
    #   <p>An ARN identifying the job with format
    #               "arn:aws:iot:region:account:job/jobId".</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete
    #               after all those things specified as targets have completed the job (SNAPSHOT). If
    #               continuous, the job may also be run on a thing when a change is detected in a target.
    #               For example, a job will run on a device when the thing representing the device is added
    #               to a target group, even after the job was completed by all things originally in the
    #               group. </p>
    #            <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic
    #                   thing group targets. By using continuous jobs, devices that join the group receive
    #                   the job execution even after the job has been created.</p>
    #            </note>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the job, one of <code>IN_PROGRESS</code>, <code>CANCELED</code>,
    #                   <code>DELETION_IN_PROGRESS</code> or <code>COMPLETED</code>. </p>
    #   @return [String]
    # @!attribute force_canceled
    #   <p>Will be <code>true</code> if the job was canceled with the optional
    #                   <code>force</code> parameter set to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute reason_code
    #   <p>If the job was updated, provides the reason code for the update.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>If the job was updated, describes the reason for the update.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>A list of IoT things and thing groups to which the job should be sent.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>A short text description of the job.</p>
    #   @return [String]
    # @!attribute presigned_url_config
    #   <p>Configuration for pre-signed S3 URLs.</p>
    #   @return [Types::PresignedUrlConfig]
    # @!attribute job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of a job.</p>
    #   @return [Types::JobExecutionsRolloutConfig]
    # @!attribute abort_config
    #   <p>Configuration for criteria to abort the job.</p>
    #   @return [Types::AbortConfig]
    # @!attribute created_at
    #   <p>The time, in seconds since the epoch, when the job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time, in seconds since the epoch, when the job was last updated.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The time, in seconds since the epoch, when the job was completed.</p>
    #   @return [Time]
    # @!attribute job_process_details
    #   <p>Details about the job process.</p>
    #   @return [Types::JobProcessDetails]
    # @!attribute timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. A
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the timer expires,
    #               it will be automatically set to <code>TIMED_OUT</code>.</p>
    #   @return [Types::TimeoutConfig]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute job_template_arn
    #   <p>The ARN of the job template used to create the job.</p>
    #   @return [String]
    # @!attribute job_executions_retry_config
    #   <p>The configuration for the criteria to retry the job.</p>
    #   @return [Types::JobExecutionsRetryConfig]
    # @!attribute document_parameters
    #   <p>A key-value map that pairs the patterns that need to be replaced in a managed
    #               template job document schema. You can use the description of each key as a guidance to
    #               specify the inputs during runtime when creating a job.</p>
    #            <note>
    #               <p>
    #                  <code>documentParameters</code> can only be used when creating jobs from Amazon Web Services
    #                   managed templates. This parameter can't be used with custom job templates or to
    #                   create jobs from them.</p>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute is_concurrent
    #   <p>Indicates whether a job is concurrent. Will be true when a job is rolling out new job
    #               executions or canceling previously created executions, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute scheduling_config
    #   <p>The configuration that allows you to schedule a job for a future date and time in
    #               addition to specifying the end behavior for each job execution.</p>
    #   @return [Types::SchedulingConfig]
    # @!attribute scheduled_job_rollouts
    #   <p>Displays the next seven maintenance window occurrences and their start times.</p>
    #   @return [Array<Types::ScheduledJobRollout>]
    # @!attribute destination_package_versions
    #   <p>The package version Amazon Resource Names (ARNs) that are installed on the device when the job
    #               successfully completes. The package version must be in either the Published or
    #               Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.The package version must be in either the
    #               Published or Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #            <p>
    #               <b>Note:</b>The following Length Constraints relates to a
    #               single ARN. Up to 25 package version ARNs are allowed.</p>
    #   @return [Array<String>]
    class Job < Struct.new(
      nil,
      :job_arn,
      :job_id,
      :target_selection,
      :status,
      :force_canceled,
      :reason_code,
      :comment,
      :targets,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :abort_config,
      :created_at,
      :last_updated_at,
      :completed_at,
      :job_process_details,
      :timeout_config,
      :namespace_id,
      :job_template_arn,
      :job_executions_retry_config,
      :document_parameters,
      :is_concurrent,
      :scheduling_config,
      :scheduled_job_rollouts,
      :destination_package_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job execution object represents the execution of a job on a particular
    #             device.</p>
    # @!attribute job_id
    #   <p>The unique identifier you assigned to the job when it was created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the job execution (IN_PROGRESS, QUEUED, FAILED, SUCCEEDED, TIMED_OUT,
    #               CANCELED, or REJECTED).</p>
    #   @return [String]
    # @!attribute force_canceled
    #   <p>Will be <code>true</code> if the job execution was canceled with the optional
    #                   <code>force</code> parameter set to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job
    #               execution.</p>
    #   @return [Types::JobExecutionStatusDetails]
    # @!attribute thing_arn
    #   <p>The ARN of the thing on which the job execution is running.</p>
    #   @return [String]
    # @!attribute queued_at
    #   <p>The time, in seconds since the epoch, when the job execution was queued.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The time, in seconds since the epoch, when the job execution started.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time, in seconds since the epoch, when the job execution was last
    #               updated.</p>
    #   @return [Time]
    # @!attribute execution_number
    #   <p>A string (consisting of the digits "0" through "9") which identifies this
    #               particular job execution on this particular device. It can be used in commands which
    #               return or update job execution information. </p>
    #   @return [Integer]
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time
    #               they are updated by a device.</p>
    #   @return [Integer]
    # @!attribute approximate_seconds_before_timed_out
    #   <p>The estimated number of seconds that remain before the job execution status will be
    #               changed to <code>TIMED_OUT</code>. The timeout interval can be anywhere between 1 minute
    #               and 7 days (1 to 10080 minutes). The actual job execution timeout can occur up to 60
    #               seconds later than the estimated duration. This value will not be included if the job
    #               execution has reached a terminal status.</p>
    #   @return [Integer]
    class JobExecution < Struct.new(
      nil,
      :job_id,
      :status,
      :force_canceled,
      :status_details,
      :thing_arn,
      :queued_at,
      :started_at,
      :last_updated_at,
      :execution_number,
      :version_number,
      :approximate_seconds_before_timed_out,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>Details of the job execution status.</p>
    # @!attribute details_map
    #   <p>The job execution status.</p>
    #   @return [Hash<String, String>]
    class JobExecutionStatusDetails < Struct.new(
      nil,
      :details_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job execution summary.</p>
    # @!attribute status
    #   <p>The status of the job execution.</p>
    #   @return [String]
    # @!attribute queued_at
    #   <p>The time, in seconds since the epoch, when the job execution was queued.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The time, in seconds since the epoch, when the job execution started.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time, in seconds since the epoch, when the job execution was last
    #               updated.</p>
    #   @return [Time]
    # @!attribute execution_number
    #   <p>A string (consisting of the digits "0" through "9") which identifies this
    #               particular job execution on this particular device. It can be used later in commands
    #               which return or update job execution information.</p>
    #   @return [Integer]
    # @!attribute retry_attempt
    #   <p>The number that indicates how many retry attempts have been completed for this job on
    #               this device.</p>
    #   @return [Integer]
    class JobExecutionSummary < Struct.new(
      nil,
      :status,
      :queued_at,
      :started_at,
      :last_updated_at,
      :execution_number,
      :retry_attempt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of information about job executions for a specific
    #             job.</p>
    # @!attribute thing_arn
    #   <p>The ARN of the thing on which the job execution is running.</p>
    #   @return [String]
    # @!attribute job_execution_summary
    #   <p>Contains a subset of information about a job execution.</p>
    #   @return [Types::JobExecutionSummary]
    class JobExecutionSummaryForJob < Struct.new(
      nil,
      :thing_arn,
      :job_execution_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job execution summary for a thing.</p>
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute job_execution_summary
    #   <p>Contains a subset of information about a job execution.</p>
    #   @return [Types::JobExecutionSummary]
    class JobExecutionSummaryForThing < Struct.new(
      nil,
      :job_id,
      :job_execution_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that determines how many retries are allowed for each failure type
    #             for a job.</p>
    # @!attribute criteria_list
    #   <p>The list of criteria that determines how many retries are allowed for each failure
    #               type for a job.</p>
    #   @return [Array<Types::RetryCriteria>]
    class JobExecutionsRetryConfig < Struct.new(
      nil,
      :criteria_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to create a staged rollout of a job.</p>
    # @!attribute maximum_per_minute
    #   <p>The maximum number of things that will be notified of a pending job, per minute.
    #               This parameter allows you to create a staged rollout.</p>
    #   @return [Integer]
    # @!attribute exponential_rate
    #   <p>The rate of increase for a job rollout. This parameter allows you to define an
    #               exponential rate for a job rollout.</p>
    #   @return [Types::ExponentialRolloutRate]
    class JobExecutionsRolloutConfig < Struct.new(
      nil,
      :maximum_per_minute,
      :exponential_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job process details.</p>
    # @!attribute processing_targets
    #   <p>The target devices to which the job execution is being rolled out. This value will
    #               be null after the job execution has finished rolling out to all the target
    #               devices.</p>
    #   @return [Array<String>]
    # @!attribute number_of_canceled_things
    #   <p>The number of things that cancelled the job.</p>
    #   @return [Integer]
    # @!attribute number_of_succeeded_things
    #   <p>The number of things which successfully completed the job.</p>
    #   @return [Integer]
    # @!attribute number_of_failed_things
    #   <p>The number of things that failed executing the job.</p>
    #   @return [Integer]
    # @!attribute number_of_rejected_things
    #   <p>The number of things that rejected the job.</p>
    #   @return [Integer]
    # @!attribute number_of_queued_things
    #   <p>The number of things that are awaiting execution of the job.</p>
    #   @return [Integer]
    # @!attribute number_of_in_progress_things
    #   <p>The number of things currently executing the job.</p>
    #   @return [Integer]
    # @!attribute number_of_removed_things
    #   <p>The number of things that are no longer scheduled to execute the job because they
    #               have been deleted or have been removed from the group that was a target of the
    #               job.</p>
    #   @return [Integer]
    # @!attribute number_of_timed_out_things
    #   <p>The number of things whose job execution status is <code>TIMED_OUT</code>.</p>
    #   @return [Integer]
    class JobProcessDetails < Struct.new(
      nil,
      :processing_targets,
      :number_of_canceled_things,
      :number_of_succeeded_things,
      :number_of_failed_things,
      :number_of_rejected_things,
      :number_of_queued_things,
      :number_of_in_progress_things,
      :number_of_removed_things,
      :number_of_timed_out_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job summary.</p>
    # @!attribute job_arn
    #   <p>The job ARN.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute thing_group_id
    #   <p>The ID of the thing group.</p>
    #   @return [String]
    # @!attribute target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete
    #               after all those things specified as targets have completed the job (SNAPSHOT). If
    #               continuous, the job may also be run on a thing when a change is detected in a target.
    #               For example, a job will run on a thing when the thing is added to a target group, even
    #               after the job was completed by all things originally in the group.</p>
    #            <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic
    #                   thing group targets. By using continuous jobs, devices that join the group receive
    #                   the job execution even after the job has been created.</p>
    #            </note>
    #   @return [String]
    # @!attribute status
    #   <p>The job summary status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time, in seconds since the epoch, when the job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time, in seconds since the epoch, when the job was last updated.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The time, in seconds since the epoch, when the job completed.</p>
    #   @return [Time]
    # @!attribute is_concurrent
    #   <p>Indicates whether a job is concurrent. Will be true when a job is rolling out new job
    #               executions or canceling previously created executions, otherwise false.</p>
    #   @return [Boolean]
    class JobSummary < Struct.new(
      nil,
      :job_arn,
      :job_id,
      :thing_group_id,
      :target_selection,
      :status,
      :created_at,
      :last_updated_at,
      :completed_at,
      :is_concurrent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the job template.</p>
    # @!attribute job_template_arn
    #   <p>The ARN of the job template.</p>
    #   @return [String]
    # @!attribute job_template_id
    #   <p>The unique identifier of the job template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the job template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time, in seconds since the epoch, when the job template was created.</p>
    #   @return [Time]
    class JobTemplateSummary < Struct.new(
      nil,
      :job_template_arn,
      :job_template_id,
      :description,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Send messages to an Amazon Managed Streaming for Apache Kafka (Amazon MSK) or self-managed Apache Kafka cluster.</p>
    # @!attribute destination_arn
    #   <p>The ARN of Kafka action's VPC <code>TopicRuleDestination</code>.</p>
    #   @return [String]
    # @!attribute topic
    #   <p>The Kafka topic for messages to be sent to the Kafka broker.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The Kafka message key.</p>
    #   @return [String]
    # @!attribute partition
    #   <p>The Kafka message partition.</p>
    #   @return [String]
    # @!attribute client_properties
    #   <p>Properties of the Apache Kafka producer client.</p>
    #   @return [Hash<String, String>]
    # @!attribute headers
    #   <p>The list of Kafka headers that you specify.</p>
    #   @return [Array<Types::KafkaActionHeader>]
    class KafkaAction < Struct.new(
      nil,
      :destination_arn,
      :topic,
      :key,
      :partition,
      :client_properties,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a Kafka header using key-value pairs when you create a Rule’s Kafka Action.
    #          You can use these headers to route data from IoT clients to downstream Kafka clusters
    #          without modifying your message payload.</p>
    #          <p>For more information about Rule's Kafka action, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html">Apache Kafka</a>.
    #       </p>
    # @!attribute key
    #   <p>The key of the Kafka header.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the Kafka header.</p>
    #   @return [String]
    class KafkaActionHeader < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a key pair.</p>
    # @!attribute public_key
    #   <p>The public key.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key.</p>
    #   @return [String]
    class KeyPair < Struct.new(
      nil,
      :public_key,
      :private_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to write data to an Amazon Kinesis stream.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access to the Amazon Kinesis stream.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the Amazon Kinesis stream.</p>
    #   @return [String]
    # @!attribute partition_key
    #   <p>The partition key.</p>
    #   @return [String]
    class KinesisAction < Struct.new(
      nil,
      :role_arn,
      :stream_name,
      :partition_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to invoke a Lambda function.</p>
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    class LambdaAction < Struct.new(
      nil,
      :function_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A limit has been exceeded.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing whose active violations are listed.</p>
    #   @return [String]
    # @!attribute security_profile_name
    #   <p>The name of the Device Defender security profile for which violations are listed.</p>
    #   @return [String]
    # @!attribute behavior_criteria_type
    #   <p>
    #         The criteria for a behavior.
    #       </p>
    #   @return [String]
    # @!attribute list_suppressed_alerts
    #   <p>
    #         A list of all suppressed alerts.
    #       </p>
    #   @return [Boolean]
    # @!attribute verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListActiveViolationsRequest < Struct.new(
      nil,
      :thing_name,
      :security_profile_name,
      :behavior_criteria_type,
      :list_suppressed_alerts,
      :verification_state,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute active_violations
    #   <p>The list of active violations.</p>
    #   @return [Array<Types::ActiveViolation>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, 
    #               or <code>null</code> if there are no additional results.</p>
    #   @return [String]
    class ListActiveViolationsResponse < Struct.new(
      nil,
      :active_violations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target
    #   <p>The group or principal for which the policies will be listed. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #   @return [String]
    # @!attribute recursive
    #   <p>When true, recursively list attached policies.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListAttachedPoliciesRequest < Struct.new(
      nil,
      :target,
      :recursive,
      :marker,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policies
    #   <p>The policies.</p>
    #   @return [Array<Types::Policy>]
    # @!attribute next_marker
    #   <p>The token to retrieve the next set of results, or ``null`` if there are no more
    #            results.</p>
    #   @return [String]
    class ListAttachedPoliciesResponse < Struct.new(
      nil,
      :policies,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>A filter to limit results to the audit with the specified ID. You must
    #               specify either the taskId or the startTime and endTime, but not both.</p>
    #   @return [String]
    # @!attribute check_name
    #   <p>A filter to limit results to the findings for the specified audit check.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information identifying the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>A filter to limit results to those found after the specified time. You must
    #               specify either the startTime and endTime or the taskId, but not both.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>A filter to limit results to those found before the specified time. You must
    #               specify either the startTime and endTime or the taskId, but not both.</p>
    #   @return [Time]
    # @!attribute list_suppressed_findings
    #   <p>
    #         Boolean flag indicating whether only the suppressed findings or the unsuppressed findings should be listed. If this parameter isn't provided, the response will list both suppressed and unsuppressed findings.
    #       </p>
    #   @return [Boolean]
    class ListAuditFindingsRequest < Struct.new(
      nil,
      :task_id,
      :check_name,
      :resource_identifier,
      :max_results,
      :next_token,
      :start_time,
      :end_time,
      :list_suppressed_findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings
    #   <p>The findings (results) of the audit.</p>
    #   @return [Array<Types::AuditFinding>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> 
    #               if there are no additional results.</p>
    #   @return [String]
    class ListAuditFindingsResponse < Struct.new(
      nil,
      :findings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>Specify this filter to limit results to actions for a specific audit mitigation actions task.</p>
    #   @return [String]
    # @!attribute action_status
    #   <p>Specify this filter to limit results to those with a specific status.</p>
    #   @return [String]
    # @!attribute finding_id
    #   <p>Specify this filter to limit results to those that were applied to a specific audit finding.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListAuditMitigationActionsExecutionsRequest < Struct.new(
      nil,
      :task_id,
      :action_status,
      :finding_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute actions_executions
    #   <p>A set of task execution results based on the input parameters. Details include the mitigation action applied, start time, and task status.</p>
    #   @return [Array<Types::AuditMitigationActionExecutionMetadata>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListAuditMitigationActionsExecutionsResponse < Struct.new(
      nil,
      :actions_executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute audit_task_id
    #   <p>Specify this filter to limit results to tasks that were applied to results for a specific audit.</p>
    #   @return [String]
    # @!attribute finding_id
    #   <p>Specify this filter to limit results to tasks that were applied to a specific audit finding.</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>Specify this filter to limit results to tasks that are in a specific state.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Specify this filter to limit results to tasks that began on or after a specific date and time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Specify this filter to limit results to tasks that were completed or canceled on or before a specific date and time.</p>
    #   @return [Time]
    class ListAuditMitigationActionsTasksRequest < Struct.new(
      nil,
      :audit_task_id,
      :finding_id,
      :task_status,
      :max_results,
      :next_token,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>The collection of audit mitigation tasks that matched the filter criteria.</p>
    #   @return [Array<Types::AuditMitigationActionsTaskMetadata>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListAuditMitigationActionsTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute ascending_order
    #   <p>
    #         Determines whether suppressions are listed in ascending order by expiration date or not. If parameter isn't provided, <code>ascendingOrder=true</code>.
    #       </p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #   @return [Integer]
    class ListAuditSuppressionsRequest < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      :ascending_order,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute suppressions
    #   <p>
    #         List of audit suppressions.
    #       </p>
    #   @return [Array<Types::AuditSuppression>]
    # @!attribute next_token
    #   <p>
    #         A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    #       </p>
    #   @return [String]
    class ListAuditSuppressionsResponse < Struct.new(
      nil,
      :suppressions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The beginning of the time period. Audit information is retained for a 
    #                 limited time (90 days). Requesting a start time prior to what is retained 
    #                 results in an "InvalidRequestException".</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period.</p>
    #   @return [Time]
    # @!attribute task_type
    #   <p>A filter to limit the output to the specified type of audit: can be one of
    #               "ON_DEMAND_AUDIT_TASK" or "SCHEDULED__AUDIT_TASK".</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>A filter to limit the output to audits with the specified completion
    #               status: can be one of "IN_PROGRESS", "COMPLETED", "FAILED", or "CANCELED".</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    class ListAuditTasksRequest < Struct.new(
      nil,
      :start_time,
      :end_time,
      :task_type,
      :task_status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>The audits that were performed during the specified time period.</p>
    #   @return [Array<Types::AuditTaskMetadata>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> 
    #               if there are no additional results.</p>
    #   @return [String]
    class ListAuditTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_size
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>A marker used to get the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Return the list of authorizers in ascending alphabetical order.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the list authorizers request.</p>
    #   @return [String]
    class ListAuthorizersRequest < Struct.new(
      nil,
      :page_size,
      :marker,
      :ascending_order,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizers
    #   <p>The authorizers.</p>
    #   @return [Array<Types::AuthorizerSummary>]
    # @!attribute next_marker
    #   <p>A marker used to get the next set of results.</p>
    #   @return [String]
    class ListAuthorizersResponse < Struct.new(
      nil,
      :authorizers,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per request.</p>
    #   @return [Integer]
    # @!attribute name_prefix_filter
    #   <p>Limit the results to billing groups whose names have the given prefix.</p>
    #   @return [String]
    class ListBillingGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :name_prefix_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_groups
    #   <p>The list of billing groups.</p>
    #   @return [Array<Types::GroupNameAndArn>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListBillingGroupsResponse < Struct.new(
      nil,
      :billing_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the ListCACertificates operation.</p>
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Determines the order of the results.</p>
    #   @return [Boolean]
    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    class ListCACertificatesRequest < Struct.new(
      nil,
      :page_size,
      :marker,
      :ascending_order,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListCACertificates operation.</p>
    # @!attribute certificates
    #   <p>The CA certificates registered in your Amazon Web Services account.</p>
    #   @return [Array<Types::CACertificate>]
    # @!attribute next_marker
    #   <p>The current position within the list of CA certificates.</p>
    #   @return [String]
    class ListCACertificatesResponse < Struct.new(
      nil,
      :certificates,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> if there are no more results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Returns the list of certificate providers in ascending alphabetical order.</p>
    #   @return [Boolean]
    class ListCertificateProvidersRequest < Struct.new(
      nil,
      :next_token,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_providers
    #   <p>The list of certificate providers in your Amazon Web Services account.</p>
    #   @return [Array<Types::CertificateProviderSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListCertificateProvidersResponse < Struct.new(
      nil,
      :certificate_providers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input to the ListCertificatesByCA operation.</p>
    # @!attribute ca_certificate_id
    #   <p>The ID of the CA certificate. This operation will list all registered device
    #            certificate that were signed by this CA certificate.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    #   @return [Boolean]
    class ListCertificatesByCARequest < Struct.new(
      nil,
      :ca_certificate_id,
      :page_size,
      :marker,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the ListCertificatesByCA operation.</p>
    # @!attribute certificates
    #   <p>The device certificates signed by the specified CA certificate.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results, or null if there are no additional
    #            results.</p>
    #   @return [String]
    class ListCertificatesByCAResponse < Struct.new(
      nil,
      :certificates,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListCertificates operation.</p>
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    #   @return [Boolean]
    class ListCertificatesRequest < Struct.new(
      nil,
      :page_size,
      :marker,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of the ListCertificates operation.</p>
    # @!attribute certificates
    #   <p>The descriptions of the certificates.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results, or null if there are no additional
    #            results.</p>
    #   @return [String]
    class ListCertificatesResponse < Struct.new(
      nil,
      :certificates,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the command.</p>
    #   @return [String]
    # @!attribute status
    #   <p>List all command executions for the device that have a particular status. For example,
    #               you can filter the list to display only command executions that have failed or timed
    #               out.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specify whether to list the command executions that were created in the
    #               ascending or descending order. By default, the API returns all commands in the
    #               descending order based on the start time or completion time of the executions, that are
    #               determined by the <code>startTimeFilter</code> and <code>completeTimeFilter</code>
    #               parameters.</p>
    #   @return [String]
    # @!attribute started_time_filter
    #   <p>List all command executions that started any time before or after the
    #               date and time that you specify. The date and time uses the format
    #                   <code>yyyy-MM-dd'T'HH:mm</code>.</p>
    #   @return [Types::TimeFilter]
    # @!attribute completed_time_filter
    #   <p>List all command executions that completed any time before or after the
    #               date and time that you specify. The date and time uses the format
    #                   <code>yyyy-MM-dd'T'HH:mm</code>.</p>
    #   @return [Types::TimeFilter]
    # @!attribute target_arn
    #   <p>The Amazon Resource Number (ARN) of the target device. You can use this information to
    #               list all command executions for a particular device.</p>
    #   @return [String]
    # @!attribute command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. You can use this information to
    #               list all command executions for a particular command.</p>
    #   @return [String]
    class ListCommandExecutionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :namespace,
      :status,
      :sort_order,
      :started_time_filter,
      :completed_time_filter,
      :target_arn,
      :command_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_executions
    #   <p>The list of command executions.</p>
    #   @return [Array<Types::CommandExecutionSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <code>null</code> if there are no
    #               additional results.</p>
    #   @return [String]
    class ListCommandExecutionsResponse < Struct.new(
      nil,
      :command_executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation. By default, the API returns
    #               up to a maximum of 25 results. You can override this default value to return up to a
    #               maximum of 100 results for this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the command. By default, the API returns all commands that have been
    #               created for both <code>AWS-IoT</code> and <code>AWS-IoT-FleetWise</code> namespaces. You
    #               can override this default value if you want to return all commands that have been
    #               created only for a specific namespace.</p>
    #   @return [String]
    # @!attribute command_parameter_name
    #   <p>A filter that can be used to display the list of commands that have a specific command
    #               parameter name.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specify whether to list the commands that you have created in the ascending or
    #               descending order. By default, the API returns all commands in the descending order based
    #               on the time that they were created.</p>
    #   @return [String]
    class ListCommandsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :namespace,
      :command_parameter_name,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commands
    #   <p>The list of commands.</p>
    #   @return [Array<Types::CommandSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <code>null</code> if there are no
    #               additional results.</p>
    #   @return [String]
    class ListCommandsResponse < Struct.new(
      nil,
      :commands,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #   @return [Integer]
    class ListCustomMetricsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_names
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #         A token that can be used to retrieve the next set of results, 
    #         or <code>null</code> if there are no additional results.
    #       </p>
    #   @return [String]
    class ListCustomMetricsResponse < Struct.new(
      nil,
      :metric_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #   @return [String]
    # @!attribute violation_id
    #   <p>
    #         The unique identifier of the violation.
    #       </p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>
    #         The name of the thing whose mitigation actions are listed.
    #       </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #         A filter to limit results to those found after the specified time. You must
    #         specify either the startTime and endTime or the taskId, but not both.
    #       </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #         The end of the time period for which ML Detect mitigation actions executions are returned.
    #       </p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #   @return [String]
    class ListDetectMitigationActionsExecutionsRequest < Struct.new(
      nil,
      :task_id,
      :violation_id,
      :thing_name,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute actions_executions
    #   <p>
    #         List of actions executions.
    #       </p>
    #   @return [Array<Types::DetectMitigationActionExecution>]
    # @!attribute next_token
    #   <p>
    #         A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    #       </p>
    #   @return [String]
    class ListDetectMitigationActionsExecutionsResponse < Struct.new(
      nil,
      :actions_executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #         A filter to limit results to those found after the specified time. You must
    #         specify either the startTime and endTime or the taskId, but not both.
    #       </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #         The end of the time period for which ML Detect mitigation actions tasks are returned.
    #       </p>
    #   @return [Time]
    class ListDetectMitigationActionsTasksRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>
    #         The collection of ML Detect mitigation tasks that matched the filter criteria.
    #       </p>
    #   @return [Array<Types::DetectMitigationActionsTaskSummary>]
    # @!attribute next_token
    #   <p>
    #         A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    #       </p>
    #   @return [String]
    class ListDetectMitigationActionsTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve at one time.</p>
    #   @return [Integer]
    class ListDimensionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dimension_names
    #   <p>A list of the names of the defined dimensions. Use <code>DescribeDimension</code> to get details for a dimension.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.</p>
    #   @return [String]
    class ListDimensionsResponse < Struct.new(
      nil,
      :dimension_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #   @return [String]
    class ListDomainConfigurationsRequest < Struct.new(
      nil,
      :marker,
      :page_size,
      :service_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configurations
    #   <p>A list of objects that contain summary information about the user's domain configurations.</p>
    #   @return [Array<Types::DomainConfigurationSummary>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    class ListDomainConfigurationsResponse < Struct.new(
      nil,
      :domain_configurations,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; 
    #          otherwise <code>null</code> to receive the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListFleetMetricsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_metrics
    #   <p>The list of fleet metrics objects.</p>
    #   @return [Array<Types::FleetMetricNameAndArn>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Will not be returned if the operation has returned
    #         all results.</p>
    #   @return [String]
    class ListFleetMetricsResponse < Struct.new(
      nil,
      :fleet_metrics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListIndicesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_names
    #   <p>The index names.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    #   @return [String]
    class ListIndicesResponse < Struct.new(
      nil,
      :index_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListJobExecutionsForJobRequest < Struct.new(
      nil,
      :job_id,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_summaries
    #   <p>A list of job execution summaries.</p>
    #   @return [Array<Types::JobExecutionSummaryForJob>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <b>null</b> if
    #               there are no additional results.</p>
    #   @return [String]
    class ListJobExecutionsForJobResponse < Struct.new(
      nil,
      :execution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The thing name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional filter that lets you search for jobs that have the specified
    #               status.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    class ListJobExecutionsForThingRequest < Struct.new(
      nil,
      :thing_name,
      :status,
      :namespace_id,
      :max_results,
      :next_token,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_summaries
    #   <p>A list of job execution summaries.</p>
    #   @return [Array<Types::JobExecutionSummaryForThing>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <b>null</b> if
    #               there are no additional results.</p>
    #   @return [String]
    class ListJobExecutionsForThingResponse < Struct.new(
      nil,
      :execution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to return the next set of results in the list.</p>
    #   @return [String]
    class ListJobTemplatesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_templates
    #   <p>A list of objects that contain information about the job templates.</p>
    #   @return [Array<Types::JobTemplateSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <b>null</b> if
    #               there are no additional results.</p>
    #   @return [String]
    class ListJobTemplatesResponse < Struct.new(
      nil,
      :job_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>An optional filter that lets you search for jobs that have the specified
    #               status.</p>
    #   @return [String]
    # @!attribute target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete
    #               after all those things specified as targets have completed the job (SNAPSHOT). If
    #               continuous, the job may also be run on a thing when a change is detected in a target.
    #               For example, a job will run on a thing when the thing is added to a target group, even
    #               after the job was completed by all things originally in the group. </p>
    #            <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic
    #                   thing group targets. By using continuous jobs, devices that join the group receive
    #                   the job execution even after the job has been created.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute thing_group_name
    #   <p>A filter that limits the returned jobs to those for the specified group.</p>
    #   @return [String]
    # @!attribute thing_group_id
    #   <p>A filter that limits the returned jobs to those for the specified group.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    class ListJobsRequest < Struct.new(
      nil,
      :status,
      :target_selection,
      :max_results,
      :next_token,
      :thing_group_name,
      :thing_group_id,
      :namespace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <b>null</b> if
    #               there are no additional results.</p>
    #   @return [String]
    class ListJobsResponse < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>An optional parameter for template name. If specified, only the versions of the
    #               managed job templates that have the specified template name will be returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of entries that can be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListManagedJobTemplatesRequest < Struct.new(
      nil,
      :template_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_job_templates
    #   <p>A list of managed job templates that are returned.</p>
    #   @return [Array<Types::ManagedJobTemplateSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListManagedJobTemplatesResponse < Struct.new(
      nil,
      :managed_job_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing for which security profile metric values are returned.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the security profile metric for which values are returned.</p>
    #   @return [String]
    # @!attribute dimension_name
    #   <p>The dimension name.</p>
    #   @return [String]
    # @!attribute dimension_value_operator
    #   <p>The dimension value operator.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start of the time period for which metric values are returned.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period for which metric values are returned.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListMetricValuesRequest < Struct.new(
      nil,
      :thing_name,
      :metric_name,
      :dimension_name,
      :dimension_value_operator,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_datum_list
    #   <p>The data the thing reports for the metric during the specified time period.</p>
    #   @return [Array<Types::MetricDatum>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> 
    #           if there are no additional results.</p>
    #   @return [String]
    class ListMetricValuesResponse < Struct.new(
      nil,
      :metric_datum_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_type
    #   <p>Specify a value to limit the result to mitigation actions with a specific action type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListMitigationActionsRequest < Struct.new(
      nil,
      :action_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_identifiers
    #   <p>A set of actions that matched the specified filter criteria.</p>
    #   @return [Array<Types::MitigationActionIdentifier>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListMitigationActionsResponse < Struct.new(
      nil,
      :action_identifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute ota_update_status
    #   <p>The OTA update job status.</p>
    #   @return [String]
    class ListOTAUpdatesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :ota_update_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ota_updates
    #   <p>A list of OTA update jobs.</p>
    #   @return [Array<Types::OTAUpdateSummary>]
    # @!attribute next_token
    #   <p>A token to use to get the next set of results.</p>
    #   @return [String]
    class ListOTAUpdatesResponse < Struct.new(
      nil,
      :ota_updates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input to the ListOutgoingCertificates operation.</p>
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    #   @return [Boolean]
    class ListOutgoingCertificatesRequest < Struct.new(
      nil,
      :page_size,
      :marker,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListOutgoingCertificates operation.</p>
    # @!attribute outgoing_certificates
    #   <p>The certificates that are being transferred but not yet accepted.</p>
    #   @return [Array<Types::OutgoingCertificate>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    class ListOutgoingCertificatesResponse < Struct.new(
      nil,
      :outgoing_certificates,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the target software package.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the package version. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListPackageVersionsRequest < Struct.new(
      nil,
      :package_name,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_version_summaries
    #   <p>Lists the package versions associated to the package.</p>
    #   @return [Array<Types::PackageVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListPackageVersionsResponse < Struct.new(
      nil,
      :package_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results returned at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListPackagesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_summaries
    #   <p>The software package summary.</p>
    #   @return [Array<Types::PackageSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListPackagesResponse < Struct.new(
      nil,
      :package_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListPolicies operation.</p>
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute ascending_order
    #   <p>Specifies the order for results. If true, the results are returned in ascending
    #            creation order.</p>
    #   @return [Boolean]
    class ListPoliciesRequest < Struct.new(
      nil,
      :marker,
      :page_size,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListPolicies operation.</p>
    # @!attribute policies
    #   <p>The descriptions of the policies.</p>
    #   @return [Array<Types::Policy>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results, or null if there are no additional
    #            results.</p>
    #   @return [String]
    class ListPoliciesResponse < Struct.new(
      nil,
      :policies,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListPolicyPrincipals operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute ascending_order
    #   <p>Specifies the order for results. If true, the results are returned in ascending
    #            creation order.</p>
    #   @return [Boolean]
    class ListPolicyPrincipalsRequest < Struct.new(
      nil,
      :policy_name,
      :marker,
      :page_size,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListPolicyPrincipals operation.</p>
    # @!attribute principals
    #   <p>The descriptions of the principals.</p>
    #   @return [Array<String>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results, or null if there are no additional
    #            results.</p>
    #   @return [String]
    class ListPolicyPrincipalsResponse < Struct.new(
      nil,
      :principals,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListPolicyVersions operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    class ListPolicyVersionsRequest < Struct.new(
      nil,
      :policy_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListPolicyVersions operation.</p>
    # @!attribute policy_versions
    #   <p>The policy versions.</p>
    #   @return [Array<Types::PolicyVersion>]
    class ListPolicyVersionsResponse < Struct.new(
      nil,
      :policy_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListPrincipalPolicies operation.</p>
    # @!attribute principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The result page size.</p>
    #   @return [Integer]
    # @!attribute ascending_order
    #   <p>Specifies the order for results. If true, results are returned in ascending creation
    #            order.</p>
    #   @return [Boolean]
    class ListPrincipalPoliciesRequest < Struct.new(
      nil,
      :principal,
      :marker,
      :page_size,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListPrincipalPolicies operation.</p>
    # @!attribute policies
    #   <p>The policies.</p>
    #   @return [Array<Types::Policy>]
    # @!attribute next_marker
    #   <p>The marker for the next set of results, or null if there are no additional
    #            results.</p>
    #   @return [String]
    class ListPrincipalPoliciesResponse < Struct.new(
      nil,
      :policies,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListPrincipalThings operation.</p>
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute principal
    #   <p>The principal.</p>
    #   @return [String]
    class ListPrincipalThingsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListPrincipalThings operation.</p>
    # @!attribute things
    #   <p>The things.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListPrincipalThingsResponse < Struct.new(
      nil,
      :things,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   				value from a previous response; otherwise <b>null</b> to receive
    #   				the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute principal
    #   <p>The principal. A principal can be an X.509 certificate or an Amazon Cognito ID.</p>
    #   @return [String]
    # @!attribute thing_principal_type
    #   <p>The type of the relation you want to filter in the response. If no value is provided in
    #   			this field, the response will list all things, including both the
    #   				<code>EXCLUSIVE_THING</code> and <code>NON_EXCLUSIVE_THING</code> attachment
    #   			types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListPrincipalThingsV2Request < Struct.new(
      nil,
      :next_token,
      :max_results,
      :principal,
      :thing_principal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute principal_thing_objects
    #   <p>A list of <code>thingPrincipalObject</code> that represents the principal and the type of relation it has with the thing.</p>
    #   @return [Array<Types::PrincipalThingObject>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListPrincipalThingsV2Response < Struct.new(
      nil,
      :principal_thing_objects,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #   @return [String]
    class ListProvisioningTemplateVersionsRequest < Struct.new(
      nil,
      :template_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute versions
    #   <p>The list of provisioning template versions.</p>
    #   @return [Array<Types::ProvisioningTemplateVersionSummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #   @return [String]
    class ListProvisioningTemplateVersionsResponse < Struct.new(
      nil,
      :versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #   @return [String]
    class ListProvisioningTemplatesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute templates
    #   <p>A list of provisioning templates</p>
    #   @return [Array<Types::ProvisioningTemplateSummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #   @return [String]
    class ListProvisioningTemplatesResponse < Struct.new(
      nil,
      :templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_id
    #   <p>The finding Id.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, 
    #         or <code>null</code> if there are no additional results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListRelatedResourcesForAuditFindingRequest < Struct.new(
      nil,
      :finding_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute related_resources
    #   <p>The related resources.</p>
    #   @return [Array<Types::RelatedResource>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, 
    #         or <code>null</code> for the first API call.</p>
    #   @return [String]
    class ListRelatedResourcesForAuditFindingResponse < Struct.new(
      nil,
      :related_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_size
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>A marker used to get the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Return the list of role aliases in ascending alphabetical order.</p>
    #   @return [Boolean]
    class ListRoleAliasesRequest < Struct.new(
      nil,
      :page_size,
      :marker,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_aliases
    #   <p>The role aliases.</p>
    #   @return [Array<String>]
    # @!attribute next_marker
    #   <p>A marker used to get the next set of results.</p>
    #   @return [String]
    class ListRoleAliasesResponse < Struct.new(
      nil,
      :role_aliases,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the new software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the new package version.</p>
    #   @return [String]
    # @!attribute validation_result
    #   <p>The end result of the </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListSbomValidationResultsRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      :validation_result,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute validation_result_summaries
    #   <p>A summary of the validation results for each software bill of materials attached to a software package version.</p>
    #   @return [Array<Types::SbomValidationResultSummary>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListSbomValidationResultsResponse < Struct.new(
      nil,
      :validation_result_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #   @return [Integer]
    class ListScheduledAuditsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_audits
    #   <p>The list of scheduled audits.</p>
    #   @return [Array<Types::ScheduledAuditMetadata>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, 
    #               or <code>null</code> if there are no additional results.</p>
    #   @return [String]
    class ListScheduledAuditsResponse < Struct.new(
      nil,
      :scheduled_audits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute recursive
    #   <p>If true, return child groups too.</p>
    #   @return [Boolean]
    # @!attribute security_profile_target_arn
    #   <p>The ARN of the target (thing group) whose attached security profiles you want to get.</p>
    #   @return [String]
    class ListSecurityProfilesForTargetRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :recursive,
      :security_profile_target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_target_mappings
    #   <p>A list of security profiles and their associated targets.</p>
    #   @return [Array<Types::SecurityProfileTargetMapping>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
    #           additional results.</p>
    #   @return [String]
    class ListSecurityProfilesForTargetResponse < Struct.new(
      nil,
      :security_profile_target_mappings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute dimension_name
    #   <p>A filter to limit results to the security profiles that use the defined dimension.
    #         Cannot be used with <code>metricName</code>
    #            </p>
    #   @return [String]
    # @!attribute metric_name
    #   <p> The name of the custom metric.
    #         Cannot be used with <code>dimensionName</code>. </p>
    #   @return [String]
    class ListSecurityProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :dimension_name,
      :metric_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_identifiers
    #   <p>A list of security profile identifiers (names and ARNs).</p>
    #   @return [Array<Types::SecurityProfileIdentifier>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
    #           additional results.</p>
    #   @return [String]
    class ListSecurityProfilesResponse < Struct.new(
      nil,
      :security_profile_identifiers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at a time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #   @return [String]
    # @!attribute ascending_order
    #   <p>Set to true to return the list of streams in ascending order.</p>
    #   @return [Boolean]
    class ListStreamsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :ascending_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streams
    #   <p>A list of streams.</p>
    #   @return [Array<Types::StreamSummary>]
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #   @return [String]
    class ListStreamsResponse < Struct.new(
      nil,
      :streams,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>A marker used to get the next set of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListTargetsForPolicyRequest < Struct.new(
      nil,
      :policy_name,
      :marker,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>The policy targets.</p>
    #   @return [Array<String>]
    # @!attribute next_marker
    #   <p>A marker used to get the next set of results.</p>
    #   @return [String]
    class ListTargetsForPolicyResponse < Struct.new(
      nil,
      :targets,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The security profile.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListTargetsForSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_targets
    #   <p>The thing groups to which the security profile is attached.</p>
    #   @return [Array<Types::SecurityProfileTarget>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
    #           additional results.</p>
    #   @return [String]
    class ListTargetsForSecurityProfileResponse < Struct.new(
      nil,
      :security_profile_targets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The thing name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListThingGroupsForThingRequest < Struct.new(
      nil,
      :thing_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_groups
    #   <p>The thing groups.</p>
    #   @return [Array<Types::GroupNameAndArn>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListThingGroupsForThingResponse < Struct.new(
      nil,
      :thing_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute parent_group
    #   <p>A filter that limits the results to those with the specified parent group.</p>
    #   @return [String]
    # @!attribute name_prefix_filter
    #   <p>A filter that limits the results to those with the specified name prefix.</p>
    #   @return [String]
    # @!attribute recursive
    #   <p>If true, return child groups as well.</p>
    #   @return [Boolean]
    class ListThingGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :parent_group,
      :name_prefix_filter,
      :recursive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_groups
    #   <p>The thing groups.</p>
    #   @return [Array<Types::GroupNameAndArn>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results. Will not be returned if operation has returned all results.</p>
    #   @return [String]
    class ListThingGroupsResponse < Struct.new(
      nil,
      :thing_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListThingPrincipal operation.</p>
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    class ListThingPrincipalsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListThingPrincipals operation.</p>
    # @!attribute principals
    #   <p>The principals associated with the thing.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListThingPrincipalsResponse < Struct.new(
      nil,
      :principals,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   				value from a previous response; otherwise <b>null</b> to receive
    #   				the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute thing_principal_type
    #   <p>The type of the relation you want to filter in the response. If no value is provided in
    #   			this field, the response will list all principals, including both the
    #   				<code>EXCLUSIVE_THING</code> and <code>NON_EXCLUSIVE_THING</code> attachment
    #   			types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListThingPrincipalsV2Request < Struct.new(
      nil,
      :next_token,
      :max_results,
      :thing_name,
      :thing_principal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_principal_objects
    #   <p>A list of <code>thingPrincipalObject</code> that represents the principal and the type of relation it has 
    #   				with the thing.</p>
    #   @return [Array<Types::ThingPrincipalObject>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListThingPrincipalsV2Response < Struct.new(
      nil,
      :thing_principal_objects,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The id of the task.</p>
    #   @return [String]
    # @!attribute report_type
    #   <p>The type of task report.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   		the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per request.</p>
    #   @return [Integer]
    class ListThingRegistrationTaskReportsRequest < Struct.new(
      nil,
      :task_id,
      :report_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_links
    #   <p>Links to the task resources.</p>
    #   @return [Array<String>]
    # @!attribute report_type
    #   <p>The type of task report.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListThingRegistrationTaskReportsResponse < Struct.new(
      nil,
      :resource_links,
      :report_type,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the bulk thing provisioning task.</p>
    #   @return [String]
    class ListThingRegistrationTasksRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_ids
    #   <p>A list of bulk thing provisioning task IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListThingRegistrationTasksResponse < Struct.new(
      nil,
      :task_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListThingTypes operation.</p>
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    class ListThingTypesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :thing_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the ListThingTypes operation.</p>
    # @!attribute thing_types
    #   <p>The thing types.</p>
    #   @return [Array<Types::ThingTypeDefinition>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Will not be returned if operation has returned all results.</p>
    #   @return [String]
    class ListThingTypesResponse < Struct.new(
      nil,
      :thing_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per request.</p>
    #   @return [Integer]
    class ListThingsInBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute things
    #   <p>A list of things in the billing group.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results. Will not be returned if operation has returned all results.</p>
    #   @return [String]
    class ListThingsInBillingGroupResponse < Struct.new(
      nil,
      :things,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The thing group name.</p>
    #   @return [String]
    # @!attribute recursive
    #   <p>When true, list things in this thing group and in all child groups as
    #   			well.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListThingsInThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :recursive,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute things
    #   <p>The things in the specified thing group.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListThingsInThingGroupResponse < Struct.new(
      nil,
      :things,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListThings operation.</p>
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute attribute_name
    #   <p>The attribute name used to search for things.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The attribute value used to search for things.</p>
    #   @return [String]
    # @!attribute thing_type_name
    #   <p>The name of the thing type used to search for things.</p>
    #   @return [String]
    # @!attribute use_prefix_attribute_value
    #   <p>When <code>true</code>, the action returns the thing resources with attribute values
    #                        that start with the <code>attributeValue</code> provided.</p>
    #            <p>When <code>false</code>, or not present, the action returns only the thing
    #   			resources with attribute values that match the entire <code>attributeValue</code>
    #   			provided. </p>
    #   @return [Boolean]
    class ListThingsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :attribute_name,
      :attribute_value,
      :thing_type_name,
      :use_prefix_attribute_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListThings operation.</p>
    # @!attribute things
    #   <p>The things.</p>
    #   @return [Array<Types::ThingAttribute>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results. Will not be returned if operation has returned all results.</p>
    #   @return [String]
    class ListThingsResponse < Struct.new(
      nil,
      :things,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    #   @return [String]
    class ListTopicRuleDestinationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_summaries
    #   <p>Information about a topic rule destination.</p>
    #   @return [Array<Types::TopicRuleDestinationSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListTopicRuleDestinationsResponse < Struct.new(
      nil,
      :destination_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ListTopicRules operation.</p>
    # @!attribute topic
    #   <p>The topic.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    #   @return [String]
    # @!attribute rule_disabled
    #   <p>Specifies whether the rule is disabled.</p>
    #   @return [Boolean]
    class ListTopicRulesRequest < Struct.new(
      nil,
      :topic,
      :max_results,
      :next_token,
      :rule_disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the ListTopicRules operation.</p>
    # @!attribute rules
    #   <p>The rules.</p>
    #   @return [Array<Types::TopicRuleListItem>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListTopicRulesResponse < Struct.new(
      nil,
      :rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_type
    #   <p>The type of resource for which you are configuring logging. Must be
    #               <code>THING_Group</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListV2LoggingLevelsRequest < Struct.new(
      nil,
      :target_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_target_configurations
    #   <p>The logging configuration for a target.</p>
    #   @return [Array<Types::LogTargetConfiguration>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListV2LoggingLevelsResponse < Struct.new(
      nil,
      :log_target_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>The start time for the alerts to be listed.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the alerts to be listed.</p>
    #   @return [Time]
    # @!attribute thing_name
    #   <p>A filter to limit results to those alerts caused by the specified thing.</p>
    #   @return [String]
    # @!attribute security_profile_name
    #   <p>A filter to limit results to those alerts generated by the specified security profile.</p>
    #   @return [String]
    # @!attribute behavior_criteria_type
    #   <p>
    #         The criteria for a behavior.
    #       </p>
    #   @return [String]
    # @!attribute list_suppressed_alerts
    #   <p>
    #         A list of all suppressed alerts.
    #       </p>
    #   @return [Boolean]
    # @!attribute verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListViolationEventsRequest < Struct.new(
      nil,
      :start_time,
      :end_time,
      :thing_name,
      :security_profile_name,
      :behavior_criteria_type,
      :list_suppressed_alerts,
      :verification_state,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute violation_events
    #   <p>The security profile violation alerts issued for this account during the given time period, 
    #         potentially filtered by security profile, behavior violated, or thing (device) violating.</p>
    #   @return [Array<Types::ViolationEvent>]
    # @!attribute next_token
    #   <p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
    #           additional results.</p>
    #   @return [String]
    class ListViolationEventsResponse < Struct.new(
      nil,
      :violation_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Location rule action sends device location updates from
    #          an MQTT message to an Amazon Location tracker resource.</p>
    # @!attribute role_arn
    #   <p>The IAM role that grants permission to write to the Amazon Location resource.</p>
    #   @return [String]
    # @!attribute tracker_name
    #   <p>The name of the tracker resource in Amazon Location in which the location is updated.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The unique ID of the device providing the location data.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time that the location data was sampled. The default value is 
    #         the time the MQTT message was processed.</p>
    #   @return [Types::LocationTimestamp]
    # @!attribute latitude
    #   <p>A string that evaluates to a double value that represents the
    #            latitude of the device's location.</p>
    #   @return [String]
    # @!attribute longitude
    #   <p>A string that evaluates to a double value that represents the
    #            longitude of the device's location.</p>
    #   @return [String]
    class LocationAction < Struct.new(
      nil,
      :role_arn,
      :tracker_name,
      :device_id,
      :timestamp,
      :latitude,
      :longitude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how to interpret an application-defined timestamp value from an MQTT message
    #          payload and the precision of that value.</p>
    # @!attribute value
    #   <p>An expression that returns a long epoch time value.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The precision of the timestamp value that results from the expression
    #            described in <code>value</code>.</p>
    #            <p>Valid values:  <code>SECONDS</code> | <code>MILLISECONDS</code> |
    #            <code>MICROSECONDS</code> | <code>NANOSECONDS</code>. The default is
    #            <code>MILLISECONDS</code>.</p>
    #   @return [String]
    class LocationTimestamp < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A log target.</p>
    # @!attribute target_type
    #   <p>The target type.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The target name.</p>
    #   @return [String]
    class LogTarget < Struct.new(
      nil,
      :target_type,
      :target_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target configuration.</p>
    # @!attribute log_target
    #   <p>A log target</p>
    #   @return [Types::LogTarget]
    # @!attribute log_level
    #   <p>The logging level.</p>
    #   @return [String]
    class LogTargetConfiguration < Struct.new(
      nil,
      :log_target,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the logging options payload.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level.</p>
    #   @return [String]
    class LoggingOptionsPayload < Struct.new(
      nil,
      :role_arn,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The configuration of an ML Detect Security Profile.
    #         </p>
    # @!attribute confidence_level
    #   <p>
    #               The sensitivity of anomalous behavior evaluation. Can be <code>Low</code>, <code>Medium</code>, or <code>High</code>.
    #           </p>
    #   @return [String]
    class MachineLearningDetectionConfig < Struct.new(
      nil,
      :confidence_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional configuration within the <code>SchedulingConfig</code> to setup a
    #             recurring maintenance window with a predetermined start time and duration for the
    #             rollout of a job document to all devices in a target group for a job.</p>
    # @!attribute start_time
    #   <p>Displays the start time of the next maintenance window.</p>
    #   @return [String]
    # @!attribute duration_in_minutes
    #   <p>Displays the duration of the next maintenance window.</p>
    #   @return [Integer]
    class MaintenanceWindow < Struct.new(
      nil,
      :start_time,
      :duration_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The policy documentation is not valid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class MalformedPolicyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the managed template.</p>
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) for a managed template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The unique Name for a managed template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for a managed template.</p>
    #   @return [String]
    # @!attribute environments
    #   <p>A list of environments that are supported with the managed job template.</p>
    #   @return [Array<String>]
    # @!attribute template_version
    #   <p>The version for a managed template.</p>
    #   @return [String]
    class ManagedJobTemplateSummary < Struct.new(
      nil,
      :template_arn,
      :template_name,
      :description,
      :environments,
      :template_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A metric.</p>
    # @!attribute timestamp
    #   <p>The time the metric value was reported.</p>
    #   @return [Time]
    # @!attribute value
    #   <p>The value reported for the metric.</p>
    #   @return [Types::MetricValue]
    class MetricDatum < Struct.new(
      nil,
      :timestamp,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The dimension of a metric.</p>
    # @!attribute dimension_name
    #   <p>A unique identifier for the dimension.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>Defines how the <code>dimensionValues</code> of a dimension are interpreted. For example, for dimension type TOPIC_FILTER, the <code>IN</code> operator, a message will be counted only if its topic matches one of the topic filters. With <code>NOT_IN</code> operator, a message will be counted only if it doesn't match any of the topic filters. The operator is optional: if it's not provided (is <code>null</code>), it will be interpreted as <code>IN</code>.</p>
    #   @return [String]
    class MetricDimension < Struct.new(
      nil,
      :dimension_name,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metric you want to retain. Dimensions are optional.</p>
    # @!attribute metric
    #   <p>What is measured by the behavior.</p>
    #   @return [String]
    # @!attribute metric_dimension
    #   <p>The dimension of a metric. This can't be used with custom metrics.</p>
    #   @return [Types::MetricDimension]
    # @!attribute export_metric
    #   <p>The value indicates exporting metrics related to the <code>MetricToRetain </code> when it's true.</p>
    #   @return [Boolean]
    class MetricToRetain < Struct.new(
      nil,
      :metric,
      :metric_dimension,
      :export_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value to be compared with the <code>metric</code>.</p>
    # @!attribute count
    #   <p>If the <code>comparisonOperator</code> calls for a numeric value, use this 
    #             to specify that numeric value to be compared with the <code>metric</code>.</p>
    #   @return [Integer]
    # @!attribute cidrs
    #   <p>If the <code>comparisonOperator</code> calls for a set of CIDRs, use this
    #             to specify that set to be compared with the <code>metric</code>.</p>
    #   @return [Array<String>]
    # @!attribute ports
    #   <p>If the <code>comparisonOperator</code> calls for a set of ports, use this
    #             to specify that set to be compared with the <code>metric</code>.</p>
    #   @return [Array<Integer>]
    # @!attribute number
    #   <p>
    #               The numeral value of a metric.
    #           </p>
    #   @return [Float]
    # @!attribute numbers
    #   <p>
    #               The numeral values of a metric.
    #           </p>
    #   @return [Array<Float>]
    # @!attribute strings
    #   <p>
    #               The string values of a metric.
    #           </p>
    #   @return [Array<String>]
    class MetricValue < Struct.new(
      nil,
      :count,
      :cidrs,
      :ports,
      :number,
      :numbers,
      :strings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Set configurations for metrics export.</p>
    # @!attribute mqtt_topic
    #   <p>The MQTT topic that Device Defender Detect should publish messages to for metrics
    #         export.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>This role ARN has permission to publish MQTT messages, after which Device Defender Detect
    #         can assume the role and publish messages on your behalf.</p>
    #   @return [String]
    class MetricsExportConfig < Struct.new(
      nil,
      :mqtt_topic,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes which changes should be applied as part of a mitigation action.</p>
    # @!attribute name
    #   <p>A user-friendly name for the mitigation action.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the mitigation action.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role ARN used to apply this mitigation action.</p>
    #   @return [String]
    # @!attribute action_params
    #   <p>The set of parameters for this mitigation action. The parameters vary, depending on the kind of action you apply.</p>
    #   @return [Types::MitigationActionParams]
    class MitigationAction < Struct.new(
      nil,
      :name,
      :id,
      :role_arn,
      :action_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information that identifies a mitigation action. This information is returned by ListMitigationActions.</p>
    # @!attribute action_name
    #   <p>The friendly name of the mitigation action.</p>
    #   @return [String]
    # @!attribute action_arn
    #   <p>The IAM role ARN used to apply this mitigation action.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when this mitigation action was created.</p>
    #   @return [Time]
    class MitigationActionIdentifier < Struct.new(
      nil,
      :action_name,
      :action_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of parameters for this mitigation action. You can specify only one type of parameter (in other words, you can apply only one action for each defined mitigation action).</p>
    # @!attribute update_device_certificate_params
    #   <p>Parameters to define a mitigation action that changes the state of the device certificate to inactive.</p>
    #   @return [Types::UpdateDeviceCertificateParams]
    # @!attribute update_ca_certificate_params
    #   <p>Parameters to define a mitigation action that changes the state of the CA certificate to inactive.</p>
    #   @return [Types::UpdateCACertificateParams]
    # @!attribute add_things_to_thing_group_params
    #   <p>Parameters to define a mitigation action that moves devices associated with a certificate to one or more specified thing groups, typically for quarantine.</p>
    #   @return [Types::AddThingsToThingGroupParams]
    # @!attribute replace_default_policy_version_params
    #   <p>Parameters to define a mitigation action that adds a blank policy to restrict permissions.</p>
    #   @return [Types::ReplaceDefaultPolicyVersionParams]
    # @!attribute enable_io_t_logging_params
    #   <p>Parameters to define a mitigation action that enables Amazon Web Services IoT Core logging at a specified level of detail.</p>
    #   @return [Types::EnableIoTLoggingParams]
    # @!attribute publish_finding_to_sns_params
    #   <p>Parameters to define a mitigation action that publishes findings to Amazon Simple Notification Service (Amazon SNS. You can implement your own custom actions in response to the Amazon SNS messages.</p>
    #   @return [Types::PublishFindingToSnsParams]
    class MitigationActionParams < Struct.new(
      nil,
      :update_device_certificate_params,
      :update_ca_certificate_params,
      :add_things_to_thing_group_params,
      :replace_default_policy_version_params,
      :enable_io_t_logging_params,
      :publish_finding_to_sns_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to add user-defined properties to enrich MQTT 5 messages.</p>
    # @!attribute propagating_attributes
    #   <p>An object that represents the propagating thing attributes and the connection attributes.</p>
    #   @return [Array<Types::PropagatingAttribute>]
    class Mqtt5Configuration < Struct.new(
      nil,
      :propagating_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the MQTT context to use for the test authorizer request</p>
    # @!attribute username
    #   <p>The value of the <code>username</code> key in an MQTT authorization request.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The value of the <code>password</code> key in an MQTT authorization request.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The value of the <code>clientId</code> key in an MQTT authorization request.</p>
    #   @return [String]
    class MqttContext < Struct.new(
      nil,
      :username,
      :password,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies MQTT Version 5.0 headers information. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html"> MQTT</a> from
    #          Amazon Web Services IoT Core Developer Guide.</p>
    # @!attribute payload_format_indicator
    #   <p>An <code>Enum</code> string value that indicates whether the payload is formatted as
    #            UTF-8.</p>
    #            <p>Valid values are <code>UNSPECIFIED_BYTES</code> and <code>UTF8_DATA</code>.</p>
    #            <p>For more information, see <a href="https://docs.oasis-open.org/mqtt/mqtt/v5.0/os/mqtt-v5.0-os.html#_Toc3901111">
    #            Payload Format Indicator</a> from the MQTT Version 5.0 specification.</p>
    #            <p>Supports <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-substitution-templates.html">substitution
    #            templates</a>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A UTF-8 encoded string that describes the content of the publishing message.</p>
    #            <p>For more information, see <a href="https://docs.oasis-open.org/mqtt/mqtt/v5.0/os/mqtt-v5.0-os.html#_Toc3901118">
    #            Content Type</a> from the MQTT Version 5.0 specification.</p>
    #            <p>Supports <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-substitution-templates.html">substitution
    #            templates</a>.</p>
    #   @return [String]
    # @!attribute response_topic
    #   <p>A UTF-8 encoded string that's used as the topic name for a response message. The response topic is used to describe 
    #            the topic which the receiver should publish to as part of the request-response flow. The topic must not contain wildcard 
    #            characters.</p>
    #            <p>For more information, see <a href="https://docs.oasis-open.org/mqtt/mqtt/v5.0/os/mqtt-v5.0-os.html#_Toc3901114">
    #            Response Topic</a> from the MQTT Version 5.0 specification.</p>
    #            <p>Supports <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-substitution-templates.html">substitution
    #            templates</a>.</p>
    #   @return [String]
    # @!attribute correlation_data
    #   <p>The base64-encoded binary data used by the sender of the request message to identify which request the response message is
    #            for when it's received.</p>
    #            <p>For more information, see <a href="https://docs.oasis-open.org/mqtt/mqtt/v5.0/os/mqtt-v5.0-os.html#_Toc3901115">
    #            Correlation Data</a> from the MQTT Version 5.0 specification.</p>
    #            <note>
    #               <p>
    #            This binary data must be based64-encoded.
    #         </p>
    #            </note>
    #            <p>Supports <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-substitution-templates.html">substitution
    #            templates</a>.</p>
    #   @return [String]
    # @!attribute message_expiry
    #   <p>A user-defined integer value that will persist a message at the message broker for a
    #            specified amount of time to ensure that the message will expire if it's no longer relevant to
    #            the subscriber. The value of <code>messageExpiry</code> represents the number of seconds
    #            before it expires. For more information about the limits of <code>messageExpiry</code>, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html">Amazon Web Services IoT Core message broker and protocol
    #               limits and quotas </a> from the Amazon Web Services Reference Guide.</p>
    #            <p>Supports <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-substitution-templates.html">substitution
    #            templates</a>.</p>
    #   @return [String]
    # @!attribute user_properties
    #   <p>An array of key-value pairs that you define in the MQTT5 header.</p>
    #   @return [Array<Types::UserProperty>]
    class MqttHeaders < Struct.new(
      nil,
      :payload_format_indicator,
      :content_type,
      :response_topic,
      :correlation_data,
      :message_expiry,
      :user_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the resource that was noncompliant with the audit check.</p>
    # @!attribute resource_type
    #   <p>The type of the noncompliant resource.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute additional_info
    #   <p>Other information about the noncompliant resource.</p>
    #   @return [Hash<String, String>]
    class NonCompliantResource < Struct.new(
      nil,
      :resource_type,
      :resource_identifier,
      :additional_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is not configured.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class NotConfiguredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a file to be associated with an OTA update.</p>
    # @!attribute file_name
    #   <p>The name of the file.</p>
    #   @return [String]
    # @!attribute file_type
    #   <p>An integer value you can include in the job document to allow your devices to identify the type of file received 
    #               from the cloud.</p>
    #   @return [Integer]
    # @!attribute file_version
    #   <p>The file version.</p>
    #   @return [String]
    # @!attribute file_location
    #   <p>The location of the updated firmware.</p>
    #   @return [Types::FileLocation]
    # @!attribute code_signing
    #   <p>The code signing method of the file.</p>
    #   @return [Types::CodeSigning]
    # @!attribute attributes
    #   <p>A list of name-attribute pairs. They won't be sent to devices as a part of the Job document.</p>
    #   @return [Hash<String, String>]
    class OTAUpdateFile < Struct.new(
      nil,
      :file_name,
      :file_type,
      :file_version,
      :file_location,
      :code_signing,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an OTA update.</p>
    # @!attribute ota_update_id
    #   <p>The OTA update ID.</p>
    #   @return [String]
    # @!attribute ota_update_arn
    #   <p>The OTA update ARN.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the OTA update was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the OTA update was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the OTA update.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets of the OTA update.</p>
    #   @return [Array<String>]
    # @!attribute protocols
    #   <p>The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both
    #                HTTP and MQTT are specified, the target device can choose the protocol.</p>
    #   @return [Array<String>]
    # @!attribute aws_job_executions_rollout_config
    #   <p>Configuration for the rollout of OTA updates.</p>
    #   @return [Types::AwsJobExecutionsRolloutConfig]
    # @!attribute aws_job_presigned_url_config
    #   <p>Configuration information for pre-signed URLs. Valid when <code>protocols</code>
    #                contains HTTP.</p>
    #   @return [Types::AwsJobPresignedUrlConfig]
    # @!attribute target_selection
    #   <p>Specifies whether the OTA update will continue to run (CONTINUOUS), or will be complete after all those
    #               things specified as targets have completed the OTA update (SNAPSHOT). If continuous, the OTA update may also
    #               be run on a thing when a change is detected in a target. For example, an OTA update will run on a thing when
    #               the thing is added to a target group, even after the OTA update was completed by all things originally in
    #               the group. </p>
    #   @return [String]
    # @!attribute ota_update_files
    #   <p>A list of files associated with the OTA update.</p>
    #   @return [Array<Types::OTAUpdateFile>]
    # @!attribute ota_update_status
    #   <p>The status of the OTA update.</p>
    #   @return [String]
    # @!attribute aws_iot_job_id
    #   <p>The IoT job ID associated with the OTA update.</p>
    #   @return [String]
    # @!attribute aws_iot_job_arn
    #   <p>The IoT job ARN associated with the OTA update.</p>
    #   @return [String]
    # @!attribute error_info
    #   <p>Error information associated with the OTA update.</p>
    #   @return [Types::ErrorInfo]
    # @!attribute additional_parameters
    #   <p>A collection of name/value pairs</p>
    #   @return [Hash<String, String>]
    class OTAUpdateInfo < Struct.new(
      nil,
      :ota_update_id,
      :ota_update_arn,
      :creation_date,
      :last_modified_date,
      :description,
      :targets,
      :protocols,
      :aws_job_executions_rollout_config,
      :aws_job_presigned_url_config,
      :target_selection,
      :ota_update_files,
      :ota_update_status,
      :aws_iot_job_id,
      :aws_iot_job_arn,
      :error_info,
      :additional_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An OTA update summary.</p>
    # @!attribute ota_update_id
    #   <p>The OTA update ID.</p>
    #   @return [String]
    # @!attribute ota_update_arn
    #   <p>The OTA update ARN.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the OTA update was created.</p>
    #   @return [Time]
    class OTAUpdateSummary < Struct.new(
      nil,
      :ota_update_id,
      :ota_update_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action that writes data to an Amazon OpenSearch Service
    #          domain.</p>
    # @!attribute role_arn
    #   <p>The IAM role ARN that has access to OpenSearch.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint of your OpenSearch domain.</p>
    #   @return [String]
    # @!attribute index
    #   <p>The OpenSearch index where you want to store your data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of document you are storing.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the document you are storing.</p>
    #   @return [String]
    class OpenSearchAction < Struct.new(
      nil,
      :role_arn,
      :endpoint,
      :index,
      :type,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A certificate that has been transferred but not yet accepted.</p>
    # @!attribute certificate_arn
    #   <p>The certificate ARN.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The certificate ID.</p>
    #   @return [String]
    # @!attribute transferred_to
    #   <p>The Amazon Web Services account to which the transfer was made.</p>
    #   @return [String]
    # @!attribute transfer_date
    #   <p>The date the transfer was initiated.</p>
    #   @return [Time]
    # @!attribute transfer_message
    #   <p>The transfer message.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The certificate creation date.</p>
    #   @return [Time]
    class OutgoingCertificate < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      :transferred_to,
      :transfer_date,
      :transfer_message,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a software package.</p>
    # @!attribute package_name
    #   <p>The name for the target software package.</p>
    #   @return [String]
    # @!attribute default_version_name
    #   <p>The name of the default package version.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date that the package was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date that the package was last updated.</p>
    #   @return [Time]
    class PackageSummary < Struct.new(
      nil,
      :package_name,
      :default_version_name,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specific package version artifact associated with a software package version.</p>
    # @!attribute s3_location
    #   <p>The S3 location.</p>
    #   @return [Types::S3Location]
    class PackageVersionArtifact < Struct.new(
      nil,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a package version.</p>
    # @!attribute package_name
    #   <p>The name of the associated software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the target package version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the package version. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date that the package version was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date that the package version was last updated.</p>
    #   @return [Time]
    class PackageVersionSummary < Struct.new(
      nil,
      :package_name,
      :version_name,
      :status,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the percentile and percentile value.</p>
    # @!attribute percent
    #   <p>The percentile.</p>
    #   @return [Float]
    # @!attribute value
    #   <p>The value of the percentile.</p>
    #   @return [Float]
    class PercentPair < Struct.new(
      nil,
      :percent,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percent] = 0 unless options.key?(:percent)
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Describes an IoT policy.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The policy ARN.</p>
    #   @return [String]
    class Policy < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a policy version.</p>
    # @!attribute version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>Specifies whether the policy version is the default.</p>
    #   @return [Boolean]
    # @!attribute create_date
    #   <p>The date and time the policy was created.</p>
    #   @return [Time]
    class PolicyVersion < Struct.new(
      nil,
      :version_id,
      :is_default_version,
      :create_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # <p>Information about the version of the policy associated with the resource.</p>
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The ID of the version of the policy associated with the resource.</p>
    #   @return [String]
    class PolicyVersionIdentifier < Struct.new(
      nil,
      :policy_name,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for pre-signed S3 URLs.</p>
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that grants permission to download files from the S3 bucket
    #               where the job data/updates are stored. The role must also grant permission for IoT to
    #               download the files.</p>
    #            <important>
    #               <p>For information about addressing the confused deputy problem, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/cross-service-confused-deputy-prevention.html">cross-service confused deputy prevention</a> in the <i>Amazon Web Services IoT Core
    #                       developer guide</i>.</p>
    #            </important>
    #   @return [String]
    # @!attribute expires_in_sec
    #   <p>How long (in seconds) pre-signed URLs are valid. Valid values are 60 - 3600, the
    #               default value is 3600 seconds. Pre-signed URLs are generated when Jobs receives an MQTT
    #               request for the job document.</p>
    #   @return [Integer]
    class PresignedUrlConfig < Struct.new(
      nil,
      :role_arn,
      :expires_in_sec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the thing and the type of relation it has with the principal.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute thing_principal_type
    #   <p>The type of the relation you want to specify when you attach a principal to a thing.
    #   				The value defaults to <code>NON_EXCLUSIVE_THING</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PrincipalThingObject < Struct.new(
      nil,
      :thing_name,
      :thing_principal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the connection attribute, thing attribute, and the user property key.</p>
    # @!attribute user_property_key
    #   <p>The key of the user property key-value pair.</p>
    #   @return [String]
    # @!attribute thing_attribute
    #   <p>The user-defined thing attribute that is propagating for MQTT 5 message enrichment.</p>
    #   @return [String]
    # @!attribute connection_attribute
    #   <p>The attribute associated with the connection between a device and Amazon Web Services IoT Core.</p>
    #   @return [String]
    class PropagatingAttribute < Struct.new(
      nil,
      :user_property_key,
      :thing_attribute,
      :connection_attribute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that contains <code>payloadVersion</code> and
    #          <code>targetArn</code>.</p>
    # @!attribute payload_version
    #   <p>The payload that was sent to the target function.</p>
    #            <p>
    #               <i>Note:</i> Only Lambda functions are currently supported.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of the target function.</p>
    #            <p>
    #               <i>Note:</i> Only Lambda functions are currently supported.</p>
    #   @return [String]
    class ProvisioningHook < Struct.new(
      nil,
      :payload_version,
      :target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a provisioning template.</p>
    # @!attribute template_arn
    #   <p>The ARN of the provisioning template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning template.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date when the provisioning template summary was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the provisioning template summary was last modified.</p>
    #   @return [Time]
    # @!attribute enabled
    #   <p>True if the fleet provision template is enabled, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>The type you define in a provisioning template. You can create a template with only one type.
    #            You can't change the template type after its creation. The default value is <code>FLEET_PROVISIONING</code>.
    #            For more information about provisioning template, see: <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning template</a>.
    #         </p>
    #   @return [String]
    class ProvisioningTemplateSummary < Struct.new(
      nil,
      :template_arn,
      :template_name,
      :description,
      :creation_date,
      :last_modified_date,
      :enabled,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of information about a fleet provision template version.</p>
    # @!attribute version_id
    #   <p>The ID of the fleet provisioning template version.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The date when the provisioning template version was created</p>
    #   @return [Time]
    # @!attribute is_default_version
    #   <p>True if the provisioning template version is the default version, otherwise
    #            false.</p>
    #   @return [Boolean]
    class ProvisioningTemplateVersionSummary < Struct.new(
      nil,
      :version_id,
      :creation_date,
      :is_default_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # <p>Parameters to define a mitigation action that publishes findings to Amazon SNS. You can implement your own custom actions in response to the Amazon SNS messages.</p>
    # @!attribute topic_arn
    #   <p>The ARN of the topic to which you want to publish the findings.</p>
    #   @return [String]
    class PublishFindingToSnsParams < Struct.new(
      nil,
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An asset property value entry containing the following information.</p>
    # @!attribute entry_id
    #   <p>Optional. A unique identifier for this entry that you can define to better track which
    #         message caused an error in case of failure. Accepts substitution templates. Defaults to a new
    #         UUID.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the IoT SiteWise asset. You must specify either a <code>propertyAlias</code>
    #         or both an <code>aliasId</code> and a <code>propertyId</code>. Accepts substitution
    #         templates.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset's property. You must specify either a <code>propertyAlias</code> or
    #         both an <code>aliasId</code> and a <code>propertyId</code>. Accepts substitution
    #         templates.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The name of the property alias associated with your asset property. You must specify
    #         either a <code>propertyAlias</code> or both an <code>aliasId</code> and a
    #           <code>propertyId</code>. Accepts substitution templates.</p>
    #   @return [String]
    # @!attribute property_values
    #   <p>A list of property values to insert that each contain timestamp, quality, and value (TQV)
    #         information.</p>
    #   @return [Array<Types::AssetPropertyValue>]
    class PutAssetPropertyValueEntry < Struct.new(
      nil,
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the DynamoActionVS action that specifies the DynamoDB table to which
    #          the message data will be written.</p>
    # @!attribute table_name
    #   <p>The table where the message data will be written.</p>
    #   @return [String]
    class PutItemInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute violation_id
    #   <p>The violation ID.</p>
    #   @return [String]
    # @!attribute verification_state
    #   <p>The verification state of the violation.</p>
    #   @return [String]
    # @!attribute verification_state_description
    #   <p>The description of the verification state of the violation (detect alarm).</p>
    #   @return [String]
    class PutVerificationStateOnViolationRequest < Struct.new(
      nil,
      :violation_id,
      :verification_state,
      :verification_state_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutVerificationStateOnViolationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to define a criteria to initiate the increase in rate of rollout for a
    #             job.</p>
    # @!attribute number_of_notified_things
    #   <p>The threshold for number of notified things that will initiate the increase in rate
    #               of rollout.</p>
    #   @return [Integer]
    # @!attribute number_of_succeeded_things
    #   <p>The threshold for number of succeeded things that will initiate the increase in
    #               rate of rollout.</p>
    #   @return [Integer]
    class RateIncreaseCriteria < Struct.new(
      nil,
      :number_of_notified_things,
      :number_of_succeeded_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input to the RegisterCACertificate operation.</p>
    # @!attribute ca_certificate
    #   <p>The CA certificate.</p>
    #   @return [String]
    # @!attribute verification_certificate
    #   <p>The private key verification certificate. If <code>certificateMode</code> is
    #               <code>SNI_ONLY</code>, the <code>verificationCertificate</code> field must be empty. If
    #               <code>certificateMode</code> is <code>DEFAULT</code> or not provided, the
    #               <code>verificationCertificate</code> field must not be empty. </p>
    #   @return [String]
    # @!attribute set_as_active
    #   <p>A boolean value that specifies if the CA certificate is set to active.</p>
    #            <p>Valid values: <code>ACTIVE | INACTIVE</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute allow_auto_registration
    #   <p>Allows this CA certificate to be used for auto registration of device
    #            certificates.</p>
    #   @return [Boolean]
    # @!attribute registration_config
    #   <p>Information about the registration configuration.</p>
    #   @return [Types::RegistrationConfig]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the CA certificate.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute certificate_mode
    #   <p>Describes the certificate mode in which the Certificate Authority (CA) will be
    #            registered. If the <code>verificationCertificate</code> field is not provided, set <code>certificateMode</code> to be <code>SNI_ONLY</code>.
    #            If the <code>verificationCertificate</code> field is provided, set <code>certificateMode</code> to be <code>DEFAULT</code>.
    #            When <code>certificateMode</code> is not provided, it defaults to <code>DEFAULT</code>.
    #            All the device certificates that are registered using this CA will be registered in the same certificate mode as the CA.
    #            For more information about certificate mode for device certificates, see 
    #            <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode">
    #               certificate mode</a>.
    #         </p>
    #   @return [String]
    class RegisterCACertificateRequest < Struct.new(
      nil,
      :ca_certificate,
      :verification_certificate,
      :set_as_active,
      :allow_auto_registration,
      :registration_config,
      :tags,
      :certificate_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the RegisterCACertificateResponse operation.</p>
    # @!attribute certificate_arn
    #   <p>The CA certificate ARN.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The CA certificate identifier.</p>
    #   @return [String]
    class RegisterCACertificateResponse < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input to the RegisterCertificate operation.</p>
    # @!attribute certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #   @return [String]
    # @!attribute ca_certificate_pem
    #   <p>The CA certificate used to sign the device certificate being registered.</p>
    #   @return [String]
    # @!attribute set_as_active
    #   <p>A boolean value that specifies if the certificate is set to active.</p>
    #            <p>Valid values: <code>ACTIVE | INACTIVE</code>
    #            </p>
    #   @deprecated
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the register certificate request. Valid values that you can use include 
    #            <code>ACTIVE</code>, <code>INACTIVE</code>, and <code>REVOKED</code>.</p>
    #   @return [String]
    class RegisterCertificateRequest < Struct.new(
      nil,
      :certificate_pem,
      :ca_certificate_pem,
      :set_as_active,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the RegisterCertificate operation.</p>
    # @!attribute certificate_arn
    #   <p>The certificate ARN.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The certificate identifier.</p>
    #   @return [String]
    class RegisterCertificateResponse < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the register certificate request.</p>
    #   @return [String]
    class RegisterCertificateWithoutCARequest < Struct.new(
      nil,
      :certificate_pem,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the registered certificate.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the registered certificate. (The last part of the certificate ARN contains the
    #            certificate ID.</p>
    #   @return [String]
    class RegisterCertificateWithoutCAResponse < Struct.new(
      nil,
      :certificate_arn,
      :certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_body
    #   <p>The provisioning template. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-w-cert.html">Provisioning Devices That Have Device Certificates</a> for more information.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for provisioning a thing. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning Templates</a> for more information.</p>
    #   @return [Hash<String, String>]
    class RegisterThingRequest < Struct.new(
      nil,
      :template_body,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>ARNs for the generated resources.</p>
    #   @return [Hash<String, String>]
    class RegisterThingResponse < Struct.new(
      nil,
      :certificate_pem,
      :resource_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration code is invalid.</p>
    # @!attribute message
    #   <p>Additional information about the exception.</p>
    #   @return [String]
    class RegistrationCodeValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration configuration.</p>
    # @!attribute template_body
    #   <p>The template body.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    class RegistrationConfig < Struct.new(
      nil,
      :template_body,
      :role_arn,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the RejectCertificateTransfer operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    # @!attribute reject_reason
    #   <p>The reason the certificate transfer was rejected.</p>
    #   @return [String]
    class RejectCertificateTransferRequest < Struct.new(
      nil,
      :certificate_id,
      :reject_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a related resource.</p>
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute additional_info
    #   <p>Other information about the resource.</p>
    #   @return [Hash<String, String>]
    class RelatedResource < Struct.new(
      nil,
      :resource_type,
      :resource_identifier,
      :additional_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_arn
    #   <p>The ARN of the billing group.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing to be removed from the billing group.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to be removed from the billing group.</p>
    #   @return [String]
    class RemoveThingFromBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      :billing_group_arn,
      :thing_name,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RemoveThingFromBillingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The group name.</p>
    #   @return [String]
    # @!attribute thing_group_arn
    #   <p>The group ARN.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing to remove from the group.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to remove from the group.</p>
    #   @return [String]
    class RemoveThingFromThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_arn,
      :thing_name,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RemoveThingFromThingGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to define a mitigation action that adds a blank policy to restrict permissions.</p>
    # @!attribute template_name
    #   <p>The name of the template to be applied. The only supported value is <code>BLANK_POLICY</code>.</p>
    #   @return [String]
    class ReplaceDefaultPolicyVersionParams < Struct.new(
      nil,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the ReplaceTopicRule operation.</p>
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute topic_rule_payload
    #   <p>The rule payload.</p>
    #   @return [Types::TopicRulePayload]
    class ReplaceTopicRuleRequest < Struct.new(
      nil,
      :rule_name,
      :topic_rule_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to republish to another topic.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access.</p>
    #   @return [String]
    # @!attribute topic
    #   <p>The name of the MQTT topic.</p>
    #   @return [String]
    # @!attribute qos
    #   <p>The Quality of Service (QoS) level to use when republishing messages. The default value
    #            is 0.</p>
    #   @return [Integer]
    # @!attribute headers
    #   <p>MQTT Version 5.0 headers information. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html">
    #            MQTT</a> from the Amazon Web Services IoT Core Developer Guide.</p>
    #   @return [Types::MqttHeaders]
    class RepublishAction < Struct.new(
      nil,
      :role_arn,
      :topic,
      :qos,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource already exists.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource that caused the exception.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information that identifies the noncompliant resource.</p>
    # @!attribute device_certificate_id
    #   <p>The ID of the certificate attached to the resource.</p>
    #   @return [String]
    # @!attribute ca_certificate_id
    #   <p>The ID of the CA certificate used to authorize the certificate.</p>
    #   @return [String]
    # @!attribute cognito_identity_pool_id
    #   <p>The ID of the Amazon Cognito identity pool.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client ID.</p>
    #   @return [String]
    # @!attribute policy_version_identifier
    #   <p>The version of the policy associated with the resource.</p>
    #   @return [Types::PolicyVersionIdentifier]
    # @!attribute account
    #   <p>The account with which the resource is associated.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that has overly permissive actions.</p>
    #   @return [String]
    # @!attribute role_alias_arn
    #   <p>The ARN of the role alias that has overly permissive actions.</p>
    #   @return [String]
    # @!attribute issuer_certificate_identifier
    #   <p>The issuer certificate identifier.</p>
    #   @return [Types::IssuerCertificateIdentifier]
    # @!attribute device_certificate_arn
    #   <p>The ARN of the identified device certificate.</p>
    #   @return [String]
    class ResourceIdentifier < Struct.new(
      nil,
      :device_certificate_id,
      :ca_certificate_id,
      :cognito_identity_pool_id,
      :client_id,
      :policy_version_identifier,
      :account,
      :iam_role_arn,
      :role_alias_arn,
      :issuer_certificate_identifier,
      :device_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource registration failed.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ResourceRegistrationFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria that determines how many retries are allowed for each failure type for a
    #             job.</p>
    # @!attribute failure_type
    #   <p>The type of job execution failures that can initiate a job retry.</p>
    #   @return [String]
    # @!attribute number_of_retries
    #   <p>The number of retries allowed for a failure type for the job.</p>
    #   @return [Integer]
    class RetryCriteria < Struct.new(
      nil,
      :failure_type,
      :number_of_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Role alias description.</p>
    # @!attribute role_alias
    #   <p>The role alias.</p>
    #   @return [String]
    # @!attribute role_alias_arn
    #   <p>The ARN of the role alias.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The role alias owner.</p>
    #   @return [String]
    # @!attribute credential_duration_seconds
    #   <p>The number of seconds for which the credential is valid.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The UNIX timestamp of when the role alias was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The UNIX timestamp of when the role alias was last modified.</p>
    #   @return [Time]
    class RoleAliasDescription < Struct.new(
      nil,
      :role_alias,
      :role_alias_arn,
      :role_arn,
      :owner,
      :credential_duration_seconds,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to write data to an Amazon S3 bucket.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html">Actions, resources, and condition keys for Amazon S3</a>.</p>
    #   @return [String]
    # @!attribute canned_acl
    #   <p>The Amazon S3 canned ACL that controls access to the object identified by the object
    #            key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl">S3 canned ACLs</a>.</p>
    #   @return [String]
    class S3Action < Struct.new(
      nil,
      :role_arn,
      :bucket_name,
      :key,
      :canned_acl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the location of updated firmware in S3.</p>
    # @!attribute bucket
    #   <p>The S3 bucket that contains the updated firmware.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The S3 prefix.</p>
    #   @return [String]
    class S3Destination < Struct.new(
      nil,
      :bucket,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 location.</p>
    # @!attribute bucket
    #   <p>The S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The S3 key.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The S3 bucket version.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :key,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to write a message to a Salesforce IoT Cloud Input
    #          Stream.</p>
    # @!attribute token
    #   <p>The token used to authenticate access to the Salesforce IoT Cloud Input Stream. The
    #            token is available from the Salesforce IoT Cloud platform after creation of the Input
    #            Stream.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is available from
    #            the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
    #   @return [String]
    class SalesforceAction < Struct.new(
      nil,
      :token,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specific software bill of matrerials associated with a software
    #          package version.</p>
    # @!attribute s3_location
    #   <p>The S3 location.</p>
    #   @return [Types::S3Location]
    class Sbom < Struct.new(
      nil,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the validation results for a specific software bill of materials (SBOM) attached to a software package version.</p>
    # @!attribute file_name
    #   <p>The name of the SBOM file.</p>
    #   @return [String]
    # @!attribute validation_result
    #   <p>The end result of the SBOM validation.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The <code>errorCode</code> representing the validation failure error if the SBOM
    #            validation failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The <code>errorMessage</code> representing the validation failure error if the SBOM
    #            validation failed.</p>
    #   @return [String]
    class SbomValidationResultSummary < Struct.new(
      nil,
      :file_name,
      :validation_result,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the scheduled audit.</p>
    # @!attribute scheduled_audit_name
    #   <p>The name of the scheduled audit.</p>
    #   @return [String]
    # @!attribute scheduled_audit_arn
    #   <p>The ARN of the scheduled audit.</p>
    #   @return [String]
    # @!attribute frequency
    #   <p>How often the scheduled audit occurs.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The day of the month on which the scheduled audit is run (if the
    #             <code>frequency</code> is "MONTHLY").
    #           If days 29-31 are specified, and the month does not have that many
    #           days, the audit takes place on the "LAST" day of the month.</p>
    #   @return [String]
    # @!attribute day_of_week
    #   <p>The day of the week on which the scheduled audit is run (if the
    #             <code>frequency</code> is "WEEKLY" or "BIWEEKLY").</p>
    #   @return [String]
    class ScheduledAuditMetadata < Struct.new(
      nil,
      :scheduled_audit_name,
      :scheduled_audit_arn,
      :frequency,
      :day_of_month,
      :day_of_week,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Displays the next seven maintenance window occurrences and their start times.</p>
    # @!attribute start_time
    #   <p>Displays the start times of the next seven maintenance window occurrences.</p>
    #   @return [String]
    class ScheduledJobRollout < Struct.new(
      nil,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the date and time that a job will begin the rollout of the job document to
    #             all devices in the target group. Additionally, you can specify the end behavior for each
    #             job execution when it reaches the scheduled end time.</p>
    # @!attribute start_time
    #   <p>The time a job will begin rollout of the job document to all devices in the target
    #               group for a job. The <code>startTime</code> can be scheduled up to a year in advance and
    #               must be scheduled a minimum of thirty minutes from the current time. The date and time
    #               format for the <code>startTime</code> is YYYY-MM-DD for the date and HH:MM for the
    #               time.</p>
    #            <p>For more information on the syntax for <code>startTime</code> when using an API
    #               command or the Command Line Interface, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">Timestamp</a>.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The time a job will stop rollout of the job document to all devices in the target
    #               group for a job. The <code>endTime</code> must take place no later than two years from
    #               the current time and be scheduled a minimum of thirty minutes from the current time. The
    #               minimum duration between <code>startTime</code> and <code>endTime</code> is thirty
    #               minutes. The maximum duration between <code>startTime</code> and <code>endTime</code> is
    #               two years. The date and time format for the <code>endTime</code> is YYYY-MM-DD for the
    #               date and HH:MM for the time.</p>
    #            <p>For more information on the syntax for <code>endTime</code> when using an API command
    #               or the Command Line Interface, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp">Timestamp</a>.</p>
    #   @return [String]
    # @!attribute end_behavior
    #   <p>Specifies the end behavior for all job executions after a job reaches the selected
    #                   <code>endTime</code>. If <code>endTime</code> is not selected when creating the job,
    #               then <code>endBehavior</code> does not apply.</p>
    #   @return [String]
    # @!attribute maintenance_windows
    #   <p>An optional configuration within the <code>SchedulingConfig</code> to setup a
    #               recurring maintenance window with a predetermined start time and duration for the
    #               rollout of a job document to all devices in a target group for a job.</p>
    #   @return [Array<Types::MaintenanceWindow>]
    class SchedulingConfig < Struct.new(
      nil,
      :start_time,
      :end_time,
      :end_behavior,
      :maintenance_windows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The search index name.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string. For more information about the search query syntax, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html">Query
    #         syntax</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page at one time. This maximum number
    #         cannot exceed 100. The response might contain fewer results but will never contain more. You
    #         can use <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_SearchIndex.html#iot-SearchIndex-request-nextToken">
    #                  <code>nextToken</code>
    #               </a> to retrieve the next set of results until
    #           <code>nextToken</code> returns <code>NULL</code>.</p>
    #   @return [Integer]
    # @!attribute query_version
    #   <p>The query version.</p>
    #   @return [String]
    class SearchIndexRequest < Struct.new(
      nil,
      :index_name,
      :query_string,
      :next_token,
      :max_results,
      :query_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    #   @return [String]
    # @!attribute things
    #   <p>The things that match the search query.</p>
    #   @return [Array<Types::ThingDocument>]
    # @!attribute thing_groups
    #   <p>The thing groups that match the search query.</p>
    #   @return [Array<Types::ThingGroupDocument>]
    class SearchIndexResponse < Struct.new(
      nil,
      :next_token,
      :things,
      :thing_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifying information for a Device Defender security profile.</p>
    # @!attribute name
    #   <p>The name you've given to the security profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the security profile.</p>
    #   @return [String]
    class SecurityProfileIdentifier < Struct.new(
      nil,
      :name,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A target to which an alert is sent when a security profile behavior is 
    #           violated.</p>
    # @!attribute arn
    #   <p>The ARN of the security profile.</p>
    #   @return [String]
    class SecurityProfileTarget < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a security profile and the target associated with it.</p>
    # @!attribute security_profile_identifier
    #   <p>Information that identifies the security profile.</p>
    #   @return [Types::SecurityProfileIdentifier]
    # @!attribute target
    #   <p>Information about the target (thing group) associated with the security profile.</p>
    #   @return [Types::SecurityProfileTarget]
    class SecurityProfileTargetMapping < Struct.new(
      nil,
      :security_profile_identifier,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server certificate configuration.</p>
    # @!attribute enable_ocsp_check
    #   <p>A Boolean value that indicates whether Online Certificate Status Protocol (OCSP) server
    #            certificate check is enabled or not.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-custom-endpoints-cert-config.html">
    #            Server certificate configuration for OCSP stapling</a> from Amazon Web Services IoT Core Developer Guide.</p>
    #   @return [Boolean]
    # @!attribute ocsp_lambda_arn
    #   <p>The Amazon Resource Name (ARN) for a Lambda function that acts as a Request for Comments
    #            (RFC) 6960-compliant Online Certificate Status Protocol (OCSP) responder, supporting basic
    #            OCSP responses. The Lambda function accepts a base64-encoding of the OCSP request in the
    #            Distinguished Encoding Rules (DER) format. The Lambda function's response is also a
    #            base64-encoded OCSP response in the DER format. The response size must not exceed 4
    #            kilobytes (KiB). The Lambda function must be in the same Amazon Web Services account and region as the
    #            domain configuration. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-custom-endpoints-cert-config.html#iot-custom-endpoints-cert-config-ocsp-private-endpoint.html">Configuring server certificate OCSP for private endpoints in Amazon Web Services IoT Core</a> from the
    #            Amazon Web Services IoT Core developer guide.</p>
    #   @return [String]
    # @!attribute ocsp_authorized_responder_arn
    #   <p>The Amazon Resource Name (ARN) for an X.509 certificate stored in Amazon Web Services Certificate
    #            Manager (ACM). If provided, Amazon Web Services IoT Core will use this certificate to validate the signature
    #            of the received OCSP response. The OCSP responder must sign responses using either this
    #            authorized responder certificate or the issuing certificate, depending on whether the ARN
    #            is provided or not. The certificate must be in the same Amazon Web Services account and region as the
    #            domain configuration.</p>
    #   @return [String]
    class ServerCertificateConfig < Struct.new(
      nil,
      :enable_ocsp_check,
      :ocsp_lambda_arn,
      :ocsp_authorized_responder_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a server certificate.</p>
    # @!attribute server_certificate_arn
    #   <p>The ARN of the server certificate.</p>
    #   @return [String]
    # @!attribute server_certificate_status
    #   <p>The status of the server certificate.</p>
    #   @return [String]
    # @!attribute server_certificate_status_detail
    #   <p>Details that explain the status of the server certificate.</p>
    #   @return [String]
    class ServerCertificateSummary < Struct.new(
      nil,
      :server_certificate_arn,
      :server_certificate_status,
      :server_certificate_status_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Service quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    class SetDefaultAuthorizerRequest < Struct.new(
      nil,
      :authorizer_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    # @!attribute authorizer_arn
    #   <p>The authorizer ARN.</p>
    #   @return [String]
    class SetDefaultAuthorizerResponse < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the SetDefaultPolicyVersion operation.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_version_id
    #   <p>The policy version ID.</p>
    #   @return [String]
    class SetDefaultPolicyVersionRequest < Struct.new(
      nil,
      :policy_name,
      :policy_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the SetLoggingOptions operation.</p>
    # @!attribute logging_options_payload
    #   <p>The logging options payload.</p>
    #   @return [Types::LoggingOptionsPayload]
    class SetLoggingOptionsRequest < Struct.new(
      nil,
      :logging_options_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_target
    #   <p>The log target.</p>
    #   @return [Types::LogTarget]
    # @!attribute log_level
    #   <p>The log level.</p>
    #   @return [String]
    class SetV2LoggingLevelRequest < Struct.new(
      nil,
      :log_target,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The ARN of the role that allows IoT to write to Cloudwatch logs.</p>
    #   @return [String]
    # @!attribute default_log_level
    #   <p>The default logging level.</p>
    #   @return [String]
    # @!attribute disable_all_logs
    #   <p>If true all logs are disabled. The default is false.</p>
    #   @return [Boolean]
    class SetV2LoggingOptionsRequest < Struct.new(
      nil,
      :role_arn,
      :default_log_level,
      :disable_all_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 signing process</a>.</p>
    # @!attribute signing_region
    #   <p>The signing region.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The service name to use while signing with Sig V4.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the signing role.</p>
    #   @return [String]
    class SigV4Authorization < Struct.new(
      nil,
      :signing_region,
      :service_name,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the code-signing profile.</p>
    # @!attribute certificate_arn
    #   <p>Certificate ARN.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The hardware platform of your device.</p>
    #   @return [String]
    # @!attribute certificate_path_on_device
    #   <p>The location of the code-signing certificate on your device.</p>
    #   @return [String]
    class SigningProfileParameter < Struct.new(
      nil,
      :certificate_arn,
      :platform,
      :certificate_path_on_device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to publish to an Amazon SNS topic.</p>
    # @!attribute target_arn
    #   <p>The ARN of the SNS topic.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access.</p>
    #   @return [String]
    # @!attribute message_format
    #   <p>(Optional) The message format of the message to publish. Accepted values are "JSON"
    #            and "RAW". The default value of the attribute is "RAW". SNS uses this setting to determine
    #            if the payload should be parsed and relevant platform-specific bits of the payload should
    #            be extracted. To read more about SNS message formats, see <a href="https://docs.aws.amazon.com/sns/latest/dg/json-formats.html">https://docs.aws.amazon.com/sns/latest/dg/json-formats.html</a> refer to their official documentation.</p>
    #   @return [String]
    class SnsAction < Struct.new(
      nil,
      :target_arn,
      :role_arn,
      :message_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Rule-SQL expression can't be parsed correctly.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class SqlParseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action to publish data to an Amazon SQS queue.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants access.</p>
    #   @return [String]
    # @!attribute queue_url
    #   <p>The URL of the Amazon SQS queue.</p>
    #   @return [String]
    # @!attribute use_base64
    #   <p>Specifies whether to use Base64 encoding.</p>
    #   @return [Boolean]
    class SqsAction < Struct.new(
      nil,
      :role_arn,
      :queue_url,
      :use_base64,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>A unique identifier for the task. You can use this identifier to check the status of the task or to cancel it.</p>
    #   @return [String]
    # @!attribute target
    #   <p>Specifies the audit findings to which the mitigation actions are applied. You can apply
    #         them to a type of audit check, to all findings from an audit, or to a
    #         specific set of
    #         findings.</p>
    #   @return [Types::AuditMitigationActionsTaskTarget]
    # @!attribute audit_check_to_actions_mapping
    #   <p>For an audit check, specifies which mitigation actions to apply. Those actions must be defined in your Amazon Web Services accounts.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute client_request_token
    #   <p>Each audit mitigation task must have a unique client request token. If you try to start a new task with the same token as a task that already exists, an exception occurs. If you omit this value, a unique client request token is generated automatically.</p>
    #   @return [String]
    class StartAuditMitigationActionsTaskRequest < Struct.new(
      nil,
      :task_id,
      :target,
      :audit_check_to_actions_mapping,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier for the audit mitigation task. This matches the <code>taskId</code> that you specified in the request.</p>
    #   @return [String]
    class StartAuditMitigationActionsTaskResponse < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #   @return [String]
    # @!attribute target
    #   <p>
    #         Specifies the ML Detect findings to which the mitigation actions are applied.
    #       </p>
    #   @return [Types::DetectMitigationActionsTaskTarget]
    # @!attribute actions
    #   <p>
    #         The actions to be performed when a device has unexpected behavior.
    #       </p>
    #   @return [Array<String>]
    # @!attribute violation_event_occurrence_range
    #   <p>
    #         Specifies the time period of which violation events occurred between.
    #       </p>
    #   @return [Types::ViolationEventOccurrenceRange]
    # @!attribute include_only_active_violations
    #   <p>
    #         Specifies to list only active violations.
    #       </p>
    #   @return [Boolean]
    # @!attribute include_suppressed_alerts
    #   <p>
    #         Specifies to include suppressed alerts.
    #       </p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>
    #         Each mitigation action task must have a unique client request token. If you try to create a new task with the same token as a task that already exists, an exception occurs. If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request.
    #       </p>
    #   @return [String]
    class StartDetectMitigationActionsTaskRequest < Struct.new(
      nil,
      :task_id,
      :target,
      :actions,
      :violation_event_occurrence_range,
      :include_only_active_violations,
      :include_suppressed_alerts,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    #   @return [String]
    class StartDetectMitigationActionsTaskResponse < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_check_names
    #   <p>Which checks are performed during the audit. The checks you specify must be enabled 
    #               for your account or an exception occurs. Use <code>DescribeAccountAuditConfiguration</code> 
    #               to see the list of all checks, including those that are enabled or 
    #               <code>UpdateAccountAuditConfiguration</code> to select which checks are enabled.</p>
    #   @return [Array<String>]
    class StartOnDemandAuditTaskRequest < Struct.new(
      nil,
      :target_check_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the on-demand audit you started.</p>
    #   @return [String]
    class StartOnDemandAuditTaskResponse < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information required to start a signing job.</p>
    # @!attribute signing_profile_parameter
    #   <p>Describes the code-signing profile.</p>
    #   @return [Types::SigningProfileParameter]
    # @!attribute signing_profile_name
    #   <p>The code-signing profile name.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The location to write the code-signed file.</p>
    #   @return [Types::Destination]
    class StartSigningJobParameter < Struct.new(
      nil,
      :signing_profile_parameter,
      :signing_profile_name,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_body
    #   <p>The provisioning template.</p>
    #   @return [String]
    # @!attribute input_file_bucket
    #   <p>The S3 bucket that contains the input file.</p>
    #   @return [String]
    # @!attribute input_file_key
    #   <p>The name of input file within the S3 bucket. This file contains a newline delimited
    #   			JSON file. Each line contains the parameter values to provision one device
    #   			(thing).</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role ARN that grants permission the input file.</p>
    #   @return [String]
    class StartThingRegistrationTaskRequest < Struct.new(
      nil,
      :template_body,
      :input_file_bucket,
      :input_file_key,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The bulk thing provisioning task ID.</p>
    #   @return [String]
    class StartThingRegistrationTaskResponse < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A statistical ranking (percentile) that
    #       indicates a threshold value by which a behavior is determined to be in compliance or in
    #       violation of the behavior.</p>
    # @!attribute statistic
    #   <p>The percentile that
    #         resolves to a threshold value by which compliance with a behavior is determined. Metrics are
    #         collected over the specified period (<code>durationSeconds</code>) from all reporting devices
    #         in your account and statistical ranks are calculated. Then, the measurements from a device are
    #         collected over the same period. If the accumulated measurements from the device fall above or
    #         below (<code>comparisonOperator</code>) the value associated with the percentile specified,
    #         then the device is considered to be in compliance with the behavior, otherwise a violation
    #         occurs.</p>
    #   @return [String]
    class StatisticalThreshold < Struct.new(
      nil,
      :statistic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of key-value pairs for all supported statistics. For issues with missing or unexpected values for this API, 
    #       consult <a href="https://docs.aws.amazon.com/iot/latest/developerguide/fleet-indexing-troubleshooting.html">
    #         Fleet indexing troubleshooting guide</a>.</p>
    # @!attribute count
    #   <p>The count of things that match the query string criteria and contain a valid aggregation field value.</p>
    #   @return [Integer]
    # @!attribute average
    #   <p>The average of the aggregated field values.</p>
    #   @return [Float]
    # @!attribute sum
    #   <p>The sum of the aggregated field values.</p>
    #   @return [Float]
    # @!attribute minimum
    #   <p>The minimum aggregated field value.</p>
    #   @return [Float]
    # @!attribute maximum
    #   <p>The maximum aggregated field value.</p>
    #   @return [Float]
    # @!attribute sum_of_squares
    #   <p>The sum of the squares of the aggregated field values.</p>
    #   @return [Float]
    # @!attribute variance
    #   <p>The variance of the aggregated field values.</p>
    #   @return [Float]
    # @!attribute std_deviation
    #   <p>The standard deviation of the aggregated field values.</p>
    #   @return [Float]
    class Statistics < Struct.new(
      nil,
      :count,
      :average,
      :sum,
      :minimum,
      :maximum,
      :sum_of_squares,
      :variance,
      :std_deviation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:average] = nil unless options.key?(:average)
        options[:sum] = nil unless options.key?(:sum)
        options[:minimum] = nil unless options.key?(:minimum)
        options[:maximum] = nil unless options.key?(:maximum)
        options[:sum_of_squares] = nil unless options.key?(:sum_of_squares)
        options[:variance] = nil unless options.key?(:variance)
        options[:std_deviation] = nil unless options.key?(:std_deviation)
        super
      end
    end

    # <p>Provide additional context about the status of a command execution using a reason code
    #             and description.</p>
    # @!attribute reason_code
    #   <p>A code that provides additional context for the command execution status.</p>
    #   @return [String]
    # @!attribute reason_description
    #   <p>A literal string for devices to optionally provide additional information about the
    #               reason code for a command execution status.</p>
    #   @return [String]
    class StatusReason < Struct.new(
      nil,
      :reason_code,
      :reason_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Starts execution of a Step Functions state machine.</p>
    # @!attribute execution_name_prefix
    #   <p>(Optional) A name will be given to the state machine execution consisting of this
    #         prefix followed by a UUID. Step Functions automatically creates a unique name for each state
    #         machine execution if one is not provided.</p>
    #   @return [String]
    # @!attribute state_machine_name
    #   <p>The name of the Step Functions state machine whose execution will be started.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT permission to start execution of a state machine
    #         ("Action":"states:StartExecution").</p>
    #   @return [String]
    class StepFunctionsAction < Struct.new(
      nil,
      :execution_name_prefix,
      :state_machine_name,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The bulk thing provisioning task ID.</p>
    #   @return [String]
    class StopThingRegistrationTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopThingRegistrationTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a group of files that can be streamed.</p>
    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The ID of a file associated with a stream.</p>
    #   @return [Integer]
    class Stream < Struct.new(
      nil,
      :stream_id,
      :file_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a file to stream.</p>
    # @!attribute file_id
    #   <p>The file ID.</p>
    #   @return [Integer]
    # @!attribute s3_location
    #   <p>The location of the file in S3.</p>
    #   @return [Types::S3Location]
    class StreamFile < Struct.new(
      nil,
      :file_id,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a stream.</p>
    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The stream ARN.</p>
    #   @return [String]
    # @!attribute stream_version
    #   <p>The stream version.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the stream.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files to stream.</p>
    #   @return [Array<Types::StreamFile>]
    # @!attribute created_at
    #   <p>The date when the stream was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date when the stream was last updated.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>An IAM role IoT assumes to access your S3 files.</p>
    #   @return [String]
    class StreamInfo < Struct.new(
      nil,
      :stream_id,
      :stream_arn,
      :stream_version,
      :description,
      :files,
      :created_at,
      :last_updated_at,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a stream.</p>
    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The stream ARN.</p>
    #   @return [String]
    # @!attribute stream_version
    #   <p>The stream version.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the stream.</p>
    #   @return [String]
    class StreamSummary < Struct.new(
      nil,
      :stream_id,
      :stream_arn,
      :stream_version,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of key/value pairs that are used to manage the resource.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
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
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
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

    # <p>
    #             This exception occurs if you attempt to start a task with the same task-id as an existing task but with a different clientRequestToken.
    #         </p>
    # @!attribute message
    #   @return [String]
    class TaskAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics for the checks performed during the audit.</p>
    # @!attribute total_checks
    #   <p>The number of checks in this audit.</p>
    #   @return [Integer]
    # @!attribute in_progress_checks
    #   <p>The number of checks in progress.</p>
    #   @return [Integer]
    # @!attribute waiting_for_data_collection_checks
    #   <p>The number of checks waiting for data collection.</p>
    #   @return [Integer]
    # @!attribute compliant_checks
    #   <p>The number of checks that found compliant resources.</p>
    #   @return [Integer]
    # @!attribute non_compliant_checks
    #   <p>The number of checks that found noncompliant resources.</p>
    #   @return [Integer]
    # @!attribute failed_checks
    #   <p>The number of checks.</p>
    #   @return [Integer]
    # @!attribute canceled_checks
    #   <p>The number of checks that did not run because the audit was canceled.</p>
    #   @return [Integer]
    class TaskStatistics < Struct.new(
      nil,
      :total_checks,
      :in_progress_checks,
      :waiting_for_data_collection_checks,
      :compliant_checks,
      :non_compliant_checks,
      :failed_checks,
      :canceled_checks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary counts of how many tasks for findings are in a particular state. This information is included in the response from DescribeAuditMitigationActionsTask.</p>
    # @!attribute total_findings_count
    #   <p>The total number of findings to which a task is being applied.</p>
    #   @return [Integer]
    # @!attribute failed_findings_count
    #   <p>The number of findings for which at least one of the actions failed when applied.</p>
    #   @return [Integer]
    # @!attribute succeeded_findings_count
    #   <p>The number of findings for which all mitigation actions succeeded when applied.</p>
    #   @return [Integer]
    # @!attribute skipped_findings_count
    #   <p>The number of findings skipped because of filter conditions provided in the parameters to the command.</p>
    #   @return [Integer]
    # @!attribute canceled_findings_count
    #   <p>The number of findings to which the mitigation action task was canceled when applied.</p>
    #   @return [Integer]
    class TaskStatisticsForAuditCheck < Struct.new(
      nil,
      :total_findings_count,
      :failed_findings_count,
      :succeeded_findings_count,
      :skipped_findings_count,
      :canceled_findings_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Performs an aggregation that will return a list of buckets. The list of buckets is a ranked list of the number of occurrences of an aggregation field value.</p>
    # @!attribute max_buckets
    #   <p>The number of buckets to return in the response. Default to 10.</p>
    #   @return [Integer]
    class TermsAggregation < Struct.new(
      nil,
      :max_buckets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    #   @return [String]
    # @!attribute cognito_identity_pool_id
    #   <p>The Cognito identity pool ID.</p>
    #   @return [String]
    # @!attribute auth_infos
    #   <p>A list of authorization info objects. Simulating authorization will create a response
    #            for each <code>authInfo</code> object in the list.</p>
    #   @return [Array<Types::AuthInfo>]
    # @!attribute client_id
    #   <p>The MQTT client ID.</p>
    #   @return [String]
    # @!attribute policy_names_to_add
    #   <p>When testing custom authorization, the policies specified here are treated as if they
    #            are attached to the principal being authorized.</p>
    #   @return [Array<String>]
    # @!attribute policy_names_to_skip
    #   <p>When testing custom authorization, the policies specified here are treated as if they
    #            are not attached to the principal being authorized.</p>
    #   @return [Array<String>]
    class TestAuthorizationRequest < Struct.new(
      nil,
      :principal,
      :cognito_identity_pool_id,
      :auth_infos,
      :client_id,
      :policy_names_to_add,
      :policy_names_to_skip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auth_results
    #   <p>The authentication results.</p>
    #   @return [Array<Types::AuthResult>]
    class TestAuthorizationResponse < Struct.new(
      nil,
      :auth_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The custom authorizer name.</p>
    #   @return [String]
    # @!attribute token
    #   <p>The token returned by your custom authentication service.</p>
    #   @return [String]
    # @!attribute token_signature
    #   <p>The signature made with the token and your custom authentication service's private
    #            key. This value must be Base-64-encoded.</p>
    #   @return [String]
    # @!attribute http_context
    #   <p>Specifies a test HTTP authorization request.</p>
    #   @return [Types::HttpContext]
    # @!attribute mqtt_context
    #   <p>Specifies a test MQTT authorization request.</p>
    #   @return [Types::MqttContext]
    # @!attribute tls_context
    #   <p>Specifies a test TLS authorization request.</p>
    #   @return [Types::TlsContext]
    class TestInvokeAuthorizerRequest < Struct.new(
      nil,
      :authorizer_name,
      :token,
      :token_signature,
      :http_context,
      :mqtt_context,
      :tls_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_authenticated
    #   <p>True if the token is authenticated, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute principal_id
    #   <p>The principal ID.</p>
    #   @return [String]
    # @!attribute policy_documents
    #   <p>IAM policy documents.</p>
    #   @return [Array<String>]
    # @!attribute refresh_after_in_seconds
    #   <p>The number of seconds after which the temporary credentials are refreshed.</p>
    #   @return [Integer]
    # @!attribute disconnect_after_in_seconds
    #   <p>The number of seconds after which the connection is terminated.</p>
    #   @return [Integer]
    class TestInvokeAuthorizerResponse < Struct.new(
      nil,
      :is_authenticated,
      :principal_id,
      :policy_documents,
      :refresh_after_in_seconds,
      :disconnect_after_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of the thing, including thing name, thing type name, and a list of thing
    # 			attributes.</p>
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    # @!attribute thing_type_name
    #   <p>The name of the thing type, if the thing has been associated with a type.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The thing ARN.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A list of thing attributes which are name-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute version
    #   <p>The version of the thing record in the registry.</p>
    #   @return [Integer]
    class ThingAttribute < Struct.new(
      nil,
      :thing_name,
      :thing_type_name,
      :thing_arn,
      :attributes,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>The connectivity status of the thing.</p>
    # @!attribute connected
    #   <p>True if the thing is connected to the Amazon Web Services IoT Core service; false if it is not
    #         connected.</p>
    #   @return [Boolean]
    # @!attribute timestamp
    #   <p>The epoch time (in milliseconds) when the thing last connected or disconnected. If the
    #         thing has been disconnected for approximately an hour, the time value might be missing.</p>
    #   @return [Integer]
    # @!attribute disconnect_reason
    #   <p>The reason why the client is disconnected. If the thing has been disconnected for approximately an hour, the <code>disconnectReason</code> value might be missing.</p>
    #   @return [String]
    class ThingConnectivity < Struct.new(
      nil,
      :connected,
      :timestamp,
      :disconnect_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The thing search index document.</p>
    # @!attribute thing_name
    #   <p>The thing name.</p>
    #   @return [String]
    # @!attribute thing_id
    #   <p>The thing ID.</p>
    #   @return [String]
    # @!attribute thing_type_name
    #   <p>The thing type name.</p>
    #   @return [String]
    # @!attribute thing_group_names
    #   <p>Thing group and billing group names.</p>
    #   @return [Array<String>]
    # @!attribute attributes
    #   <p>The attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute shadow
    #   <p>The unnamed shadow and named shadow.</p>
    #            <p>For more information about shadows, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-device-shadows.html">IoT Device Shadow service.</a>
    #            </p>
    #   @return [String]
    # @!attribute device_defender
    #   <p>Contains Device Defender data.</p>
    #            <p>For more information about Device Defender, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/device-defender.html">Device Defender</a>. </p>
    #   @return [String]
    # @!attribute connectivity
    #   <p>Indicates whether the thing is connected to the Amazon Web Services IoT Core service.</p>
    #   @return [Types::ThingConnectivity]
    class ThingDocument < Struct.new(
      nil,
      :thing_name,
      :thing_id,
      :thing_type_name,
      :thing_group_names,
      :attributes,
      :shadow,
      :device_defender,
      :connectivity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The thing group search index document.</p>
    # @!attribute thing_group_name
    #   <p>The thing group name.</p>
    #   @return [String]
    # @!attribute thing_group_id
    #   <p>The thing group ID.</p>
    #   @return [String]
    # @!attribute thing_group_description
    #   <p>The thing group description.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The thing group attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute parent_group_names
    #   <p>Parent group names.</p>
    #   @return [Array<String>]
    class ThingGroupDocument < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_id,
      :thing_group_description,
      :attributes,
      :parent_group_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thing group indexing configuration.</p>
    # @!attribute thing_group_indexing_mode
    #   <p>Thing group indexing mode.</p>
    #   @return [String]
    # @!attribute managed_fields
    #   <p>Contains fields that are indexed and whose types are already known by the Fleet Indexing
    #         service. This is an optional field. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/managing-fleet-index.html#managed-field">Managed fields</a> in the <i>Amazon Web Services IoT Core Developer Guide</i>.</p>
    #            <note>
    #               <p>You can't modify managed fields by updating fleet indexing configuration.</p>
    #            </note>
    #   @return [Array<Types::Field>]
    # @!attribute custom_fields
    #   <p>A list of thing group fields to index. This list cannot contain any managed fields. Use
    #         the GetIndexingConfiguration API to get a list of managed fields.</p>
    #            <p>Contains custom field names and their data type.</p>
    #   @return [Array<Types::Field>]
    class ThingGroupIndexingConfiguration < Struct.new(
      nil,
      :thing_group_indexing_mode,
      :managed_fields,
      :custom_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thing group metadata.</p>
    # @!attribute parent_group_name
    #   <p>The parent thing group name.</p>
    #   @return [String]
    # @!attribute root_to_parent_thing_groups
    #   <p>The root parent thing group.</p>
    #   @return [Array<Types::GroupNameAndArn>]
    # @!attribute creation_date
    #   <p>The UNIX timestamp of when the thing group was created.</p>
    #   @return [Time]
    class ThingGroupMetadata < Struct.new(
      nil,
      :parent_group_name,
      :root_to_parent_thing_groups,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thing group properties.</p>
    # @!attribute thing_group_description
    #   <p>The thing group description.</p>
    #   @return [String]
    # @!attribute attribute_payload
    #   <p>The thing group attributes in JSON format.</p>
    #   @return [Types::AttributePayload]
    class ThingGroupProperties < Struct.new(
      nil,
      :thing_group_description,
      :attribute_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The thing indexing configuration. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html">Managing
    #         Thing Indexing</a>.</p>
    # @!attribute thing_indexing_mode
    #   <p>Thing indexing mode. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>REGISTRY – Your thing index contains registry data only.</p>
    #               </li>
    #               <li>
    #                  <p>REGISTRY_AND_SHADOW - Your thing index contains registry and shadow data.</p>
    #               </li>
    #               <li>
    #                  <p>OFF - Thing indexing is disabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute thing_connectivity_indexing_mode
    #   <p>Thing connectivity indexing mode. Valid values are: </p>
    #            <ul>
    #               <li>
    #                  <p>STATUS – Your thing index contains connectivity status. To enable thing
    #             connectivity indexing, <i>thingIndexMode</i> must not be set to
    #             OFF.</p>
    #               </li>
    #               <li>
    #                  <p>OFF - Thing connectivity status indexing is disabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute device_defender_indexing_mode
    #   <p>Device Defender indexing mode. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>VIOLATIONS – Your thing index contains Device Defender violations. To enable Device
    #             Defender indexing, <i>deviceDefenderIndexingMode</i> must not be set to
    #             OFF.</p>
    #               </li>
    #               <li>
    #                  <p>OFF - Device Defender indexing is disabled.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about Device Defender violations, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-detect.html">Device Defender Detect.</a>
    #            </p>
    #   @return [String]
    # @!attribute named_shadow_indexing_mode
    #   <p>Named shadow indexing mode. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>ON – Your thing index contains named shadow. To enable thing
    #             named shadow indexing, <i>namedShadowIndexingMode</i> must not be set to
    #             OFF.</p>
    #               </li>
    #               <li>
    #                  <p>OFF - Named shadow indexing is disabled.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about Shadows, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-device-shadows.html">IoT Device Shadow service.</a>
    #            </p>
    #   @return [String]
    # @!attribute managed_fields
    #   <p>Contains fields that are indexed and whose types are already known by the Fleet Indexing
    #         service. This is an optional field. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/managing-fleet-index.html#managed-field">Managed fields</a> in the <i>Amazon Web Services IoT Core Developer Guide</i>.</p>
    #            <note>
    #               <p>You can't modify managed fields by updating fleet indexing configuration.</p>
    #            </note>
    #   @return [Array<Types::Field>]
    # @!attribute custom_fields
    #   <p>Contains custom field names and their data type.</p>
    #   @return [Array<Types::Field>]
    # @!attribute filter
    #   <p>Provides additional selections for named shadows and geolocation data. </p>
    #            <p>To add named shadows to your fleet indexing configuration, set <code>namedShadowIndexingMode</code> to
    #         be ON and specify your shadow names in <code>namedShadowNames</code> filter.</p>
    #            <p>To add geolocation data to your fleet indexing configuration: </p>
    #            <ul>
    #               <li>
    #                  <p>If you store geolocation data in a class/unnamed shadow, set
    #             <code>thingIndexingMode</code> to be <code>REGISTRY_AND_SHADOW</code> and specify your
    #             geolocation data in <code>geoLocations</code> filter. </p>
    #               </li>
    #               <li>
    #                  <p>If you store geolocation data in a named shadow, set <code>namedShadowIndexingMode</code>
    #             to be <code>ON</code>, add the shadow name in <code>namedShadowNames</code> filter, and
    #             specify your geolocation data in <code>geoLocations</code> filter. For more information, see
    #             <a href="https://docs.aws.amazon.com/iot/latest/developerguide/managing-fleet-index.html">Managing fleet indexing</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Types::IndexingFilter]
    class ThingIndexingConfiguration < Struct.new(
      nil,
      :thing_indexing_mode,
      :thing_connectivity_indexing_mode,
      :device_defender_indexing_mode,
      :named_shadow_indexing_mode,
      :managed_fields,
      :custom_fields,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the principal and the type of relation it has with the thing.</p>
    # @!attribute principal
    #   <p>The principal of the thing principal object.</p>
    #   @return [String]
    # @!attribute thing_principal_type
    #   <p>The type of the relation you want to specify when you attach a principal to a thing.
    #   				The value defaults to <code>NON_EXCLUSIVE_THING</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ThingPrincipalObject < Struct.new(
      nil,
      :principal,
      :thing_principal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of the thing type, including thing type name and description.</p>
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    # @!attribute thing_type_arn
    #   <p>The thing type ARN.</p>
    #   @return [String]
    # @!attribute thing_type_properties
    #   <p>The ThingTypeProperties for the thing type.</p>
    #   @return [Types::ThingTypeProperties]
    # @!attribute thing_type_metadata
    #   <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and
    #   			time, a value indicating whether the thing type is deprecated, and a date and time when it was
    #   			deprecated.</p>
    #   @return [Types::ThingTypeMetadata]
    class ThingTypeDefinition < Struct.new(
      nil,
      :thing_type_name,
      :thing_type_arn,
      :thing_type_properties,
      :thing_type_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and
    # 			time, a value indicating whether the thing type is deprecated, and a date and time when time was
    # 			deprecated.</p>
    # @!attribute deprecated
    #   <p>Whether the thing type is deprecated. If <b>true</b>, no new things could be
    #   			associated with this type.</p>
    #   @return [Boolean]
    # @!attribute deprecation_date
    #   <p>The date and time when the thing type was deprecated.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time when the thing type was created.</p>
    #   @return [Time]
    class ThingTypeMetadata < Struct.new(
      nil,
      :deprecated,
      :deprecation_date,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deprecated] = false unless options.key?(:deprecated)
        super
      end
    end

    # <p>The ThingTypeProperties contains information about the thing type including: a thing type description,
    # 			and a list of searchable thing attribute names.</p>
    # @!attribute thing_type_description
    #   <p>The description of the thing type.</p>
    #   @return [String]
    # @!attribute searchable_attributes
    #   <p>A list of searchable thing attribute names.</p>
    #   @return [Array<String>]
    # @!attribute mqtt5_configuration
    #   <p>The configuration to add user-defined properties to enrich MQTT 5 messages.</p>
    #   @return [Types::Mqtt5Configuration]
    class ThingTypeProperties < Struct.new(
      nil,
      :thing_type_description,
      :searchable_attributes,
      :mqtt5_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate exceeds the limit.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that can be used to list command executions for a device that started or
    #             completed before or after a particular date and time.</p>
    # @!attribute after
    #   <p>Filter to display command executions that started or completed only after a particular
    #               date and time.</p>
    #   @return [String]
    # @!attribute before
    #   <p>Filter to display command executions that started or completed only before a
    #               particular date and time.</p>
    #   @return [String]
    class TimeFilter < Struct.new(
      nil,
      :after,
      :before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the amount of time each device has to finish its execution of the job. A
    #             timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #             the job execution status is not set to another terminal state before the timer expires,
    #             it will be automatically set to <code>TIMED_OUT</code>.</p>
    # @!attribute in_progress_timeout_in_minutes
    #   <p>Specifies the amount of time, in minutes, this device has to finish execution of this
    #               job. The timeout interval can be anywhere between 1 minute and 7 days (1 to 10080
    #               minutes). The in progress timer can't be updated and will apply to all job executions
    #               for the job. Whenever a job execution remains in the IN_PROGRESS status for longer than
    #               this interval, the job execution will fail and switch to the terminal
    #                   <code>TIMED_OUT</code> status.</p>
    #   @return [Integer]
    class TimeoutConfig < Struct.new(
      nil,
      :in_progress_timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Timestream rule action writes attributes (measures) from an MQTT message
    #          into an Amazon Timestream table. For more information, see the <a href="https://docs.aws.amazon.com/iot/latest/developerguide/timestream-rule-action.html">Timestream</a>
    #          topic rule action documentation.</p>
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to write to the
    #            Amazon Timestream database table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of an Amazon Timestream database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the database table into which to write the measure records.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>Metadata attributes of the time series that are written in each measure record.</p>
    #   @return [Array<Types::TimestreamDimension>]
    # @!attribute timestamp
    #   <p>Specifies an application-defined value to replace the default value assigned to the
    #            Timestream record's timestamp in the <code>time</code> column.</p>
    #            <p>You can use this property to specify the value and the precision of the Timestream
    #            record's timestamp. You can specify a value from the message payload or a value computed by
    #            a substitution template.</p>
    #            <p>If omitted, the topic rule action assigns the timestamp, in milliseconds, at the time it
    #            processed the rule. </p>
    #   @return [Types::TimestreamTimestamp]
    class TimestreamAction < Struct.new(
      nil,
      :role_arn,
      :database_name,
      :table_name,
      :dimensions,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata attributes of the time series that are written in each measure record.</p>
    # @!attribute name
    #   <p>The metadata dimension name. This is the name of the column in the
    #            Amazon Timestream database table record.</p>
    #            <p>Dimensions cannot be named: <code>measure_name</code>,
    #            <code>measure_value</code>, or <code>time</code>.
    #            These  names are reserved. Dimension names cannot start
    #            with <code>ts_</code> or <code>measure_value</code> and
    #            they cannot contain the colon (<code>:</code>)
    #            character.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to write in this column of the database record.</p>
    #   @return [String]
    class TimestreamDimension < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how to interpret an application-defined timestamp value from an MQTT message
    #          payload and the precision of that value.</p>
    # @!attribute value
    #   <p>An expression that returns a long epoch time value.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The precision of the timestamp value that results from the expression
    #            described in <code>value</code>.</p>
    #            <p>Valid values:  <code>SECONDS</code> | <code>MILLISECONDS</code> |
    #               <code>MICROSECONDS</code> | <code>NANOSECONDS</code>. The default is
    #               <code>MILLISECONDS</code>.</p>
    #   @return [String]
    class TimestreamTimestamp < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies the TLS configuration for a domain.</p>
    # @!attribute security_policy
    #   <p>The security policy for a domain configuration. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/transport-security.html#tls-policy-table">Security
    #               policies </a> in the <i>Amazon Web Services IoT Core developer
    #            guide</i>.</p>
    #   @return [String]
    class TlsConfig < Struct.new(
      nil,
      :security_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the TLS context to use for the test authorizer request.</p>
    # @!attribute server_name
    #   <p>The value of the <code>serverName</code> key in a TLS authorization request.</p>
    #   @return [String]
    class TlsContext < Struct.new(
      nil,
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule.</p>
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute sql
    #   <p>The SQL statement used to query the topic. When using a SQL query with multiple
    #            lines, be sure to escape the newline characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the rule was created.</p>
    #   @return [Time]
    # @!attribute actions
    #   <p>The actions associated with the rule.</p>
    #   @return [Array<Types::Action>]
    # @!attribute rule_disabled
    #   <p>Specifies whether the rule is disabled.</p>
    #   @return [Boolean]
    # @!attribute aws_iot_sql_version
    #   <p>The version of the SQL rules engine to use when evaluating the rule.</p>
    #   @return [String]
    # @!attribute error_action
    #   <p>The action to perform when an error occurs.</p>
    #   @return [Types::Action]
    class TopicRule < Struct.new(
      nil,
      :rule_name,
      :sql,
      :description,
      :created_at,
      :actions,
      :rule_disabled,
      :aws_iot_sql_version,
      :error_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A topic rule destination.</p>
    # @!attribute arn
    #   <p>The topic rule destination URL.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic rule destination. Valid values are:</p>
    #            <dl>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>A topic rule destination was created but has not been confirmed. You can set
    #                        <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #               <dt>ENABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is allowed. You can
    #                     set <code>status</code> to <code>DISABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>DISABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is not allowed. You
    #                     can set <code>status</code> to <code>ENABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>ERROR</dt>
    #               <dd>
    #                  <p>Confirmation could not be completed, for example if the confirmation timed out.
    #                     You can call <code>GetTopicRuleDestination</code> for details about the error. You
    #                     can set <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the topic rule destination was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time when the topic rule destination was last updated.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>Additional details or reason why the topic rule destination is in the current
    #            status.</p>
    #   @return [String]
    # @!attribute http_url_properties
    #   <p>Properties of the HTTP URL.</p>
    #   @return [Types::HttpUrlDestinationProperties]
    # @!attribute vpc_properties
    #   <p>Properties of the virtual private cloud (VPC) connection.</p>
    #   @return [Types::VpcDestinationProperties]
    class TopicRuleDestination < Struct.new(
      nil,
      :arn,
      :status,
      :created_at,
      :last_updated_at,
      :status_reason,
      :http_url_properties,
      :vpc_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of the topic rule destination.</p>
    # @!attribute http_url_configuration
    #   <p>Configuration of the HTTP URL.</p>
    #   @return [Types::HttpUrlDestinationConfiguration]
    # @!attribute vpc_configuration
    #   <p>Configuration of the virtual private cloud (VPC) connection.</p>
    #   @return [Types::VpcDestinationConfiguration]
    class TopicRuleDestinationConfiguration < Struct.new(
      nil,
      :http_url_configuration,
      :vpc_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the topic rule destination.</p>
    # @!attribute arn
    #   <p>The topic rule destination ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic rule destination. Valid values are:</p>
    #            <dl>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>A topic rule destination was created but has not been confirmed. You can set
    #                        <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #               <dt>ENABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is allowed. You can
    #                     set <code>status</code> to <code>DISABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>DISABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is not allowed. You
    #                     can set <code>status</code> to <code>ENABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>ERROR</dt>
    #               <dd>
    #                  <p>Confirmation could not be completed, for example if the confirmation timed out.
    #                     You can call <code>GetTopicRuleDestination</code> for details about the error. You
    #                     can set <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the topic rule destination was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time when the topic rule destination was last updated.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason the topic rule destination is in the current status.</p>
    #   @return [String]
    # @!attribute http_url_summary
    #   <p>Information about the HTTP URL.</p>
    #   @return [Types::HttpUrlDestinationSummary]
    # @!attribute vpc_destination_summary
    #   <p>Information about the virtual private cloud (VPC) connection.</p>
    #   @return [Types::VpcDestinationSummary]
    class TopicRuleDestinationSummary < Struct.new(
      nil,
      :arn,
      :status,
      :created_at,
      :last_updated_at,
      :status_reason,
      :http_url_summary,
      :vpc_destination_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule.</p>
    # @!attribute rule_arn
    #   <p>The rule ARN.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute topic_pattern
    #   <p>The pattern for the topic names that apply.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the rule was created.</p>
    #   @return [Time]
    # @!attribute rule_disabled
    #   <p>Specifies whether the rule is disabled.</p>
    #   @return [Boolean]
    class TopicRuleListItem < Struct.new(
      nil,
      :rule_arn,
      :rule_name,
      :topic_pattern,
      :created_at,
      :rule_disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule.</p>
    # @!attribute sql
    #   <p>The SQL statement used to query the topic. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-sql-reference.html">IoT SQL
    #               Reference</a> in the <i>IoT Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the rule.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions associated with the rule.</p>
    #   @return [Array<Types::Action>]
    # @!attribute rule_disabled
    #   <p>Specifies whether the rule is disabled.</p>
    #   @return [Boolean]
    # @!attribute aws_iot_sql_version
    #   <p>The version of the SQL rules engine to use when evaluating the rule.</p>
    #   @return [String]
    # @!attribute error_action
    #   <p>The action to take when an error occurs.</p>
    #   @return [Types::Action]
    class TopicRulePayload < Struct.new(
      nil,
      :sql,
      :description,
      :actions,
      :rule_disabled,
      :aws_iot_sql_version,
      :error_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't revert the certificate transfer because the transfer is already
    #          complete.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class TransferAlreadyCompletedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the TransferCertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    # @!attribute target_aws_account
    #   <p>The Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute transfer_message
    #   <p>The transfer message.</p>
    #   @return [String]
    class TransferCertificateRequest < Struct.new(
      nil,
      :certificate_id,
      :target_aws_account,
      :transfer_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the TransferCertificate operation.</p>
    # @!attribute transferred_certificate_arn
    #   <p>The ARN of the certificate.</p>
    #   @return [String]
    class TransferCertificateResponse < Struct.new(
      nil,
      :transferred_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't transfer the certificate because authorization policies are still
    #          attached.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class TransferConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data used to transfer a certificate to an Amazon Web Services account.</p>
    # @!attribute transfer_message
    #   <p>The transfer message.</p>
    #   @return [String]
    # @!attribute reject_reason
    #   <p>The reason why the transfer was rejected.</p>
    #   @return [String]
    # @!attribute transfer_date
    #   <p>The date the transfer took place.</p>
    #   @return [Time]
    # @!attribute accept_date
    #   <p>The date the transfer was accepted.</p>
    #   @return [Time]
    # @!attribute reject_date
    #   <p>The date the transfer was rejected.</p>
    #   @return [Time]
    class TransferData < Struct.new(
      nil,
      :transfer_message,
      :reject_reason,
      :transfer_date,
      :accept_date,
      :reject_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized to perform this operation.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
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

    # @!attribute role_arn
    #   <p>The Amazon
    #         Resource Name
    #         (ARN)
    #         of the role that grants permission
    #         to
    #         IoT to access information about your devices, policies,
    #         certificates,
    #         and other items as required when performing an audit.</p>
    #   @return [String]
    # @!attribute audit_notification_target_configurations
    #   <p>Information about the targets to which audit notifications are sent.</p>
    #   @return [Hash<String, Types::AuditNotificationTarget>]
    # @!attribute audit_check_configurations
    #   <p>Specifies which audit checks are enabled and disabled for this account. Use 
    #               <code>DescribeAccountAuditConfiguration</code> to see the list of all checks, including those 
    #               that are currently enabled.</p>
    #            <p>Some data collection might start immediately when certain checks are enabled. 
    #               When a check is disabled, any data collected so far in relation to the check is deleted.</p>
    #            <p>You
    #         cannot
    #         disable a check if
    #         it's
    #         used by any scheduled audit. You must first delete the check from the scheduled audit or
    #         delete the scheduled audit itself.</p>
    #            <p>On the first call to <code>UpdateAccountAuditConfiguration</code>,
    #               this parameter is required and must specify at least one enabled check.</p>
    #   @return [Hash<String, Types::AuditCheckConfiguration>]
    class UpdateAccountAuditConfigurationRequest < Struct.new(
      nil,
      :role_arn,
      :audit_notification_target_configurations,
      :audit_check_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateAccountAuditConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute expiration_date
    #   <p>
    #         The expiration date (epoch timestamp in seconds) that you want the suppression to adhere to.
    #       </p>
    #   @return [Time]
    # @!attribute suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    #   @return [String]
    class UpdateAuditSuppressionRequest < Struct.new(
      nil,
      :check_name,
      :resource_identifier,
      :expiration_date,
      :suppress_indefinitely,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateAuditSuppressionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    # @!attribute authorizer_function_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    #   @return [String]
    # @!attribute token_key_name
    #   <p>The key used to extract the token from the HTTP headers. </p>
    #   @return [String]
    # @!attribute token_signing_public_keys
    #   <p>The public keys used to verify the token signature.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the update authorizer request.</p>
    #   @return [String]
    # @!attribute enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for the time specified in <code>refreshAfterInSeconds</code>. The cached
    #   	  result is used while the device reuses the same HTTP connection.</p>
    #   @return [Boolean]
    class UpdateAuthorizerRequest < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_function_arn,
      :token_key_name,
      :token_signing_public_keys,
      :status,
      :enable_caching_for_http,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_name
    #   <p>The authorizer name.</p>
    #   @return [String]
    # @!attribute authorizer_arn
    #   <p>The authorizer ARN.</p>
    #   @return [String]
    class UpdateAuthorizerResponse < Struct.new(
      nil,
      :authorizer_name,
      :authorizer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_group_name
    #   <p>The name of the billing group.</p>
    #   @return [String]
    # @!attribute billing_group_properties
    #   <p>The properties of the billing group.</p>
    #   @return [Types::BillingGroupProperties]
    # @!attribute expected_version
    #   <p>The expected version of the billing group. If the version of the billing group does
    #   			not match the expected version specified in the request, the
    #   				<code>UpdateBillingGroup</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #   @return [Integer]
    class UpdateBillingGroupRequest < Struct.new(
      nil,
      :billing_group_name,
      :billing_group_properties,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>The latest version of the billing group.</p>
    #   @return [Integer]
    class UpdateBillingGroupResponse < Struct.new(
      nil,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Parameters to define a mitigation action that changes the state of the CA certificate to inactive.</p>
    # @!attribute action
    #   <p>The action that you want to apply to the CA certificate. The only supported value is <code>DEACTIVATE</code>.</p>
    #   @return [String]
    class UpdateCACertificateParams < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input to the UpdateCACertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The CA certificate identifier.</p>
    #   @return [String]
    # @!attribute new_status
    #   <p>The updated status of the CA certificate.</p>
    #            <p>
    #               <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
    #            should not be used.</p>
    #   @return [String]
    # @!attribute new_auto_registration_status
    #   <p>The new value for the auto registration status. Valid values are: "ENABLE" or
    #            "DISABLE".</p>
    #   @return [String]
    # @!attribute registration_config
    #   <p>Information about the registration configuration.</p>
    #   @return [Types::RegistrationConfig]
    # @!attribute remove_auto_registration
    #   <p>If true, removes auto registration.</p>
    #   @return [Boolean]
    class UpdateCACertificateRequest < Struct.new(
      nil,
      :certificate_id,
      :new_status,
      :new_auto_registration_status,
      :registration_config,
      :remove_auto_registration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>The Lambda function ARN that's associated with the certificate provider.</p>
    #   @return [String]
    # @!attribute account_default_for_operations
    #   <p>A list of the operations that the certificate provider will use to generate certificates. 
    #            Valid value: <code>CreateCertificateFromCsr</code>.</p>
    #   @return [Array<String>]
    class UpdateCertificateProviderRequest < Struct.new(
      nil,
      :certificate_provider_name,
      :lambda_function_arn,
      :account_default_for_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    #   @return [String]
    # @!attribute certificate_provider_arn
    #   <p>The ARN of the certificate provider.</p>
    #   @return [String]
    class UpdateCertificateProviderResponse < Struct.new(
      nil,
      :certificate_provider_name,
      :certificate_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the UpdateCertificate operation.</p>
    # @!attribute certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    #   @return [String]
    # @!attribute new_status
    #   <p>The new status.</p>
    #            <p>
    #               <b>Note:</b> Setting the status to PENDING_TRANSFER  or PENDING_ACTIVATION will result
    #            in an exception being thrown. PENDING_TRANSFER and PENDING_ACTIVATION are statuses used internally by IoT. They 
    #            are not intended for developer use.</p>
    #            <p>
    #               <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
    #            should not be used.</p>
    #   @return [String]
    class UpdateCertificateRequest < Struct.new(
      nil,
      :certificate_id,
      :new_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>The unique identifier of the command to be updated.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new user-friendly name to use in the console for the command.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text description of the command.</p>
    #   @return [String]
    # @!attribute deprecated
    #   <p>A boolean that you can use to specify whether to deprecate a command.</p>
    #   @return [Boolean]
    class UpdateCommandRequest < Struct.new(
      nil,
      :command_id,
      :display_name,
      :description,
      :deprecated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute command_id
    #   <p>The unique identifier of the command.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The updated user-friendly display name in the console for the command.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated text description of the command.</p>
    #   @return [String]
    # @!attribute deprecated
    #   <p>The boolean that indicates whether the command was deprecated.</p>
    #   @return [Boolean]
    # @!attribute last_updated_at
    #   <p>The date and time (epoch timestamp in seconds) when the command was last
    #               updated.</p>
    #   @return [Time]
    class UpdateCommandResponse < Struct.new(
      nil,
      :command_id,
      :display_name,
      :description,
      :deprecated,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p> The name of the custom metric.
    #         Cannot be updated. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>
    #         Field
    #         represents a friendly name in the console for the custom metric,
    #         it
    #         doesn't have to be unique. Don't use this name as the metric identifier in
    #         the device metric report.
    #         Can
    #         be updated. </p>
    #   @return [String]
    class UpdateCustomMetricRequest < Struct.new(
      nil,
      :metric_name,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    #   @return [String]
    # @!attribute metric_arn
    #   <p>
    #         The Amazon Resource Number (ARN) of the custom metric.
    #       </p>
    #   @return [String]
    # @!attribute metric_type
    #   <p> The type of the custom metric. </p>
    #            <important>
    #               <p>The type <code>number</code> only takes a single metric value as an input, but while submitting the metrics value in the DeviceMetrics report, it must be passed as an array with a single value.</p>
    #            </important>
    #   @return [String]
    # @!attribute display_name
    #   <p>
    #         A friendly name in the console for the custom metric
    #       </p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>
    #         The creation date of the custom metric in milliseconds since epoch.
    #       </p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>
    #         The time the custom metric was last modified in milliseconds since epoch.
    #       </p>
    #   @return [Time]
    class UpdateCustomMetricResponse < Struct.new(
      nil,
      :metric_name,
      :metric_arn,
      :metric_type,
      :display_name,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to define a mitigation action that changes the state of the device certificate to inactive.</p>
    # @!attribute action
    #   <p>The action that you want to apply to the device certificate. The only supported value is <code>DEACTIVATE</code>.</p>
    #   @return [String]
    class UpdateDeviceCertificateParams < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>
    #   @return [String]
    # @!attribute string_values
    #   <p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").</p>
    #   @return [Array<String>]
    class UpdateDimensionRequest < Struct.new(
      nil,
      :name,
      :string_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the dimension.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource
    #         Name (ARN)of
    #         the created dimension.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the dimension.</p>
    #   @return [String]
    # @!attribute string_values
    #   <p>The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.</p>
    #   @return [Array<String>]
    # @!attribute creation_date
    #   <p>The date and time, in milliseconds since epoch, when the dimension was initially created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time, in milliseconds since epoch, when the dimension was most recently updated.</p>
    #   @return [Time]
    class UpdateDimensionResponse < Struct.new(
      nil,
      :name,
      :arn,
      :type,
      :string_values,
      :creation_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration to be updated.</p>
    #   @return [String]
    # @!attribute authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    #   @return [Types::AuthorizerConfig]
    # @!attribute domain_configuration_status
    #   <p>The status to which the domain configuration should be updated.</p>
    #   @return [String]
    # @!attribute remove_authorizer_config
    #   <p>Removes the authorization configuration from a domain.</p>
    #   @return [Boolean]
    # @!attribute tls_config
    #   <p>An object that specifies the TLS configuration for a domain.</p>
    #   @return [Types::TlsConfig]
    # @!attribute server_certificate_config
    #   <p>The server certificate configuration.</p>
    #   @return [Types::ServerCertificateConfig]
    # @!attribute authentication_type
    #   <p>An enumerated string that speciﬁes the authentication type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH_X509</code> - Use custom authentication and authorization with additional details from the X.509 client certificate.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH</code> - Use custom authentication and authorization. For more
    #                  information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">Custom authentication and authorization</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_X509</code> - Use X.509 client certificates without custom authentication and authorization. For more information,
    #                  see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html">X.509 client certificates</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_SIGV4</code> - Use Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">IAM users, groups, and roles</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT </code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify authentication type.
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute application_protocol
    #   <p>An enumerated string that speciﬁes the application-layer protocol.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SECURE_MQTT</code> - MQTT over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MQTT_WSS</code> - MQTT over WebSocket.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTPS</code> - HTTP over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify application_layer protocol. 
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute client_certificate_config
    #   <p>An object that speciﬁes the client certificate conﬁguration for a domain.</p>
    #   @return [Types::ClientCertificateConfig]
    class UpdateDomainConfigurationRequest < Struct.new(
      nil,
      :domain_configuration_name,
      :authorizer_config,
      :domain_configuration_status,
      :remove_authorizer_config,
      :tls_config,
      :server_certificate_config,
      :authentication_type,
      :application_protocol,
      :client_certificate_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_configuration_name
    #   <p>The name of the domain configuration that was updated.</p>
    #   @return [String]
    # @!attribute domain_configuration_arn
    #   <p>The ARN of the domain configuration that was updated.</p>
    #   @return [String]
    class UpdateDomainConfigurationResponse < Struct.new(
      nil,
      :domain_configuration_name,
      :domain_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The name of the dynamic thing group to update.</p>
    #   @return [String]
    # @!attribute thing_group_properties
    #   <p>The dynamic thing group properties to update.</p>
    #   @return [Types::ThingGroupProperties]
    # @!attribute expected_version
    #   <p>The expected version of the dynamic thing group to update.</p>
    #   @return [Integer]
    # @!attribute index_name
    #   <p>The dynamic thing group index to update.</p>
    #            <note>
    #               <p>Currently one index is supported: <code>AWS_Things</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute query_string
    #   <p>The dynamic thing group search query string to update.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The dynamic thing group query version to update.</p>
    #            <note>
    #               <p>Currently one query version is supported: "2017-09-30". If not specified, the
    #   				query version defaults to this value.</p>
    #            </note>
    #   @return [String]
    class UpdateDynamicThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_properties,
      :expected_version,
      :index_name,
      :query_string,
      :query_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>The dynamic thing group version.</p>
    #   @return [Integer]
    class UpdateDynamicThingGroupResponse < Struct.new(
      nil,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute encryption_type
    #   <p>The type of the Amazon Web Services Key Management Service (KMS) key.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the customer-managed KMS key.</p>
    #   @return [String]
    # @!attribute kms_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role assumed by Amazon Web Services IoT Core to call KMS on
    #            behalf of the customer.</p>
    #   @return [String]
    class UpdateEncryptionConfigurationRequest < Struct.new(
      nil,
      :encryption_type,
      :kms_key_arn,
      :kms_access_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateEncryptionConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_configurations
    #   <p>The new event configuration values.</p>
    #   @return [Hash<String, Types::Configuration>]
    class UpdateEventConfigurationsRequest < Struct.new(
      nil,
      :event_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateEventConfigurationsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the fleet metric to update.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The search query string.</p>
    #   @return [String]
    # @!attribute aggregation_type
    #   <p>The type of the aggregation query.</p>
    #   @return [Types::AggregationType]
    # @!attribute period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    #   @return [Integer]
    # @!attribute aggregation_field
    #   <p>The field to aggregate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the fleet metric.</p>
    #   @return [String]
    # @!attribute query_version
    #   <p>The version of the query.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the index to search.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>.</p>
    #   @return [String]
    # @!attribute expected_version
    #   <p>The expected version of the fleet metric record in the registry.</p>
    #   @return [Integer]
    class UpdateFleetMetricRequest < Struct.new(
      nil,
      :metric_name,
      :query_string,
      :aggregation_type,
      :period,
      :aggregation_field,
      :description,
      :query_version,
      :index_name,
      :unit,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_indexing_configuration
    #   <p>Thing indexing configuration.</p>
    #   @return [Types::ThingIndexingConfiguration]
    # @!attribute thing_group_indexing_configuration
    #   <p>Thing group indexing configuration.</p>
    #   @return [Types::ThingGroupIndexingConfiguration]
    class UpdateIndexingConfigurationRequest < Struct.new(
      nil,
      :thing_indexing_configuration,
      :thing_group_indexing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateIndexingConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A short text description of the job.</p>
    #   @return [String]
    # @!attribute presigned_url_config
    #   <p>Configuration information for pre-signed S3 URLs.</p>
    #   @return [Types::PresignedUrlConfig]
    # @!attribute job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of the job.</p>
    #   @return [Types::JobExecutionsRolloutConfig]
    # @!attribute abort_config
    #   <p>Allows you to create criteria to abort a job.</p>
    #   @return [Types::AbortConfig]
    # @!attribute timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. The
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the time expires,
    #               it will be automatically set to <code>TIMED_OUT</code>. </p>
    #   @return [Types::TimeoutConfig]
    # @!attribute namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    #   @return [Types::JobExecutionsRetryConfig]
    class UpdateJobRequest < Struct.new(
      nil,
      :job_id,
      :description,
      :presigned_url_config,
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      :namespace_id,
      :job_executions_retry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_name
    #   <p>The friendly name for the mitigation action. You cannot change the name by using
    #           <code>UpdateMitigationAction</code>. Instead, you must delete and
    #         recreate the
    #         mitigation action with the new name.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that is used to apply the mitigation action.</p>
    #   @return [String]
    # @!attribute action_params
    #   <p>Defines the type of action and the parameters for that action.</p>
    #   @return [Types::MitigationActionParams]
    class UpdateMitigationActionRequest < Struct.new(
      nil,
      :action_name,
      :role_arn,
      :action_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_arn
    #   <p>The ARN for the new mitigation action.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>A unique identifier for the mitigation action.</p>
    #   @return [String]
    class UpdateMitigationActionResponse < Struct.new(
      nil,
      :action_arn,
      :action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_update_by_jobs_config
    #   <p>Configuration to manage job's package version reporting. This updates the thing's reserved named shadow that the job targets.</p>
    #   @return [Types::VersionUpdateByJobsConfig]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdatePackageConfigurationRequest < Struct.new(
      nil,
      :version_update_by_jobs_config,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePackageConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the target software package.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The package description.</p>
    #   @return [String]
    # @!attribute default_version_name
    #   <p>The name of the default package version.</p>
    #            <p>
    #               <b>Note:</b> You cannot name a <code>defaultVersion</code>
    #          and set <code>unsetDefaultVersion</code> equal to <code>true</code> at the same time.</p>
    #   @return [String]
    # @!attribute unset_default_version
    #   <p>Indicates whether you want to remove the named default package version from the software package. 
    #         Set as <code>true</code> to remove the default package version. </p>
    #            <p>
    #               <b>Note:</b> You cannot name a <code>defaultVersion</code>
    #          and set <code>unsetDefaultVersion</code> equal to <code>true</code> at the same time.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdatePackageRequest < Struct.new(
      nil,
      :package_name,
      :description,
      :default_version_name,
      :unset_default_version,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePackageResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>The name of the associated software package.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The name of the target package version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The package version description.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Metadata that can be used to define a package version’s configuration. For example, the Amazon S3 file location, configuration options that are being sent to the device or fleet. </p>
    #            <p>
    #               <b>Note:</b> Attributes can be updated only when the package version
    #         is in a draft state.</p>
    #            <p>The combined size of all the attributes on a package version is limited to 3KB.</p>
    #   @return [Hash<String, String>]
    # @!attribute artifact
    #   <p>The various components that make up a software package version.</p>
    #   @return [Types::PackageVersionArtifact]
    # @!attribute action
    #   <p>The status that the package version should be assigned. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #   @return [String]
    # @!attribute recipe
    #   <p>The inline job document associated with a software package version used for a quick job
    #            deployment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdatePackageVersionRequest < Struct.new(
      nil,
      :package_name,
      :version_name,
      :description,
      :attributes,
      :artifact,
      :action,
      :recipe,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePackageVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the provisioning template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning template.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>True to enable the provisioning template, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute default_version_id
    #   <p>The ID of the default provisioning template version.</p>
    #   @return [Integer]
    # @!attribute provisioning_role_arn
    #   <p>The ARN of the role associated with the provisioning template. This IoT role grants
    #            permission to provision a device.</p>
    #   @return [String]
    # @!attribute pre_provisioning_hook
    #   <p>Updates the pre-provisioning hook template. Only supports template of type
    #               <code>FLEET_PROVISIONING</code>. For more information about provisioning template types,
    #            see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type">type</a>.</p>
    #   @return [Types::ProvisioningHook]
    # @!attribute remove_pre_provisioning_hook
    #   <p>Removes pre-provisioning hook template.</p>
    #   @return [Boolean]
    class UpdateProvisioningTemplateRequest < Struct.new(
      nil,
      :template_name,
      :description,
      :enabled,
      :default_version_id,
      :provisioning_role_arn,
      :pre_provisioning_hook,
      :remove_pre_provisioning_hook,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateProvisioningTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_alias
    #   <p>The role alias to update.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN.</p>
    #   @return [String]
    # @!attribute credential_duration_seconds
    #   <p>The number of seconds the credential will be valid.</p>
    #            <p>This value must be less than or equal to the maximum session duration of the IAM role
    #            that the role alias references.</p>
    #   @return [Integer]
    class UpdateRoleAliasRequest < Struct.new(
      nil,
      :role_alias,
      :role_arn,
      :credential_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_alias
    #   <p>The role alias.</p>
    #   @return [String]
    # @!attribute role_alias_arn
    #   <p>The role alias ARN.</p>
    #   @return [String]
    class UpdateRoleAliasResponse < Struct.new(
      nil,
      :role_alias,
      :role_alias_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute frequency
    #   <p>How often the scheduled audit takes
    #         place,
    #         either <code>DAILY</code>,
    #         <code>WEEKLY</code>, <code>BIWEEKLY</code>, or <code>MONTHLY</code>. The start time of each audit is determined by the
    #         system.</p>
    #   @return [String]
    # @!attribute day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This
    #         can
    #         be <code>1</code> through <code>31</code> or <code>LAST</code>. This field is required if the <code>frequency</code> parameter is set to
    #               <code>MONTHLY</code>. If days 29-31 are specified, and the month does not have that many days, the audit
    #         takes place on the "LAST" day of the month.</p>
    #   @return [String]
    # @!attribute day_of_week
    #   <p>The day of the week on which the scheduled audit takes place.
    #         This
    #         can
    #         be one of <code>SUN</code>, <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the
    #               "frequency" parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>
    #   @return [String]
    # @!attribute target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be enabled 
    #               for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #               to select which checks are enabled.)</p>
    #   @return [Array<String>]
    # @!attribute scheduled_audit_name
    #   <p>The name of the scheduled audit. (Max. 128 chars)</p>
    #   @return [String]
    class UpdateScheduledAuditRequest < Struct.new(
      nil,
      :frequency,
      :day_of_month,
      :day_of_week,
      :target_check_names,
      :scheduled_audit_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_audit_arn
    #   <p>The ARN of the scheduled audit.</p>
    #   @return [String]
    class UpdateScheduledAuditResponse < Struct.new(
      nil,
      :scheduled_audit_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile you want to update.</p>
    #   @return [String]
    # @!attribute security_profile_description
    #   <p>A description of the security profile.</p>
    #   @return [String]
    # @!attribute behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #   @return [Array<Types::Behavior>]
    # @!attribute alert_targets
    #   <p>Where the alerts are sent. (Alerts are always sent to the console.)</p>
    #   @return [Hash<String, Types::AlertTarget>]
    # @!attribute additional_metrics_to_retain
    #   <p>
    #               <i>Please use
    #             <a>UpdateSecurityProfileRequest$additionalMetricsToRetainV2</a>
    #           instead.</i>
    #            </p>
    #            <p>A list of metrics
    #        whose data is retained (stored). By default, data is retained for any metric
    #         used in the profile's <code>behaviors</code>, but
    #         it is
    #         also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #   @deprecated
    #     Use additionalMetricsToRetainV2.
    #   @return [Array<String>]
    # @!attribute additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #   @return [Array<Types::MetricToRetain>]
    # @!attribute delete_behaviors
    #   <p>If true, delete all <code>behaviors</code> defined for this security profile. 
    #           If any <code>behaviors</code> are defined in the current invocation, an exception occurs.</p>
    #   @return [Boolean]
    # @!attribute delete_alert_targets
    #   <p>If true, delete all <code>alertTargets</code> defined for this security profile. 
    #           If any <code>alertTargets</code> are defined in the current invocation, an exception occurs.</p>
    #   @return [Boolean]
    # @!attribute delete_additional_metrics_to_retain
    #   <p>If true, delete all <code>additionalMetricsToRetain</code> defined for this 
    #           security profile. If any <code>additionalMetricsToRetain</code> are defined in the current 
    #           invocation, an exception occurs.</p>
    #   @return [Boolean]
    # @!attribute expected_version
    #   <p>The expected version of the security profile. A new version is generated whenever
    #           the security profile is updated. If you specify a value that is different from the actual
    #           version, a <code>VersionConflictException</code> is thrown.</p>
    #   @return [Integer]
    # @!attribute metrics_export_config
    #   <p>Specifies the MQTT topic and role ARN required for metric export.</p>
    #   @return [Types::MetricsExportConfig]
    # @!attribute delete_metrics_export_config
    #   <p>Set the value as true to delete metrics export related configurations.</p>
    #   @return [Boolean]
    class UpdateSecurityProfileRequest < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :delete_behaviors,
      :delete_alert_targets,
      :delete_additional_metrics_to_retain,
      :expected_version,
      :metrics_export_config,
      :delete_metrics_export_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile that was updated.</p>
    #   @return [String]
    # @!attribute security_profile_arn
    #   <p>The ARN of the security profile that was updated.</p>
    #   @return [String]
    # @!attribute security_profile_description
    #   <p>The description of the security profile.</p>
    #   @return [String]
    # @!attribute behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #   @return [Array<Types::Behavior>]
    # @!attribute alert_targets
    #   <p>Where the alerts are sent. (Alerts are always sent to the console.)</p>
    #   @return [Hash<String, Types::AlertTarget>]
    # @!attribute additional_metrics_to_retain
    #   <p>
    #               <i>Please use
    #             <a>UpdateSecurityProfileResponse$additionalMetricsToRetainV2</a>
    #           instead.</i>
    #            </p>
    #            <p>A list of metrics
    #         whose data is retained (stored). By default, data is retained for any metric
    #         used in the security profile's <code>behaviors</code>, but
    #         it is
    #         also retained for any metric specified here.</p>
    #   @deprecated
    #     Use additionalMetricsToRetainV2.
    #   @return [Array<String>]
    # @!attribute additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    #   @return [Array<Types::MetricToRetain>]
    # @!attribute version
    #   <p>The updated version of the security profile.</p>
    #   @return [Integer]
    # @!attribute creation_date
    #   <p>The time the security profile was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The time the security profile was last modified.</p>
    #   @return [Time]
    # @!attribute metrics_export_config
    #   <p>Specifies the MQTT topic and role ARN required for metric export.</p>
    #   @return [Types::MetricsExportConfig]
    class UpdateSecurityProfileResponse < Struct.new(
      nil,
      :security_profile_name,
      :security_profile_arn,
      :security_profile_description,
      :behaviors,
      :alert_targets,
      :additional_metrics_to_retain,
      :additional_metrics_to_retain_v2,
      :version,
      :creation_date,
      :last_modified_date,
      :metrics_export_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the stream.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files associated with the stream.</p>
    #   @return [Array<Types::StreamFile>]
    # @!attribute role_arn
    #   <p>An IAM role that allows the IoT service principal assumes to access your S3 files.</p>
    #   @return [String]
    class UpdateStreamRequest < Struct.new(
      nil,
      :stream_id,
      :description,
      :files,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The stream ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the stream.</p>
    #   @return [String]
    # @!attribute stream_version
    #   <p>The stream version.</p>
    #   @return [Integer]
    class UpdateStreamResponse < Struct.new(
      nil,
      :stream_id,
      :stream_arn,
      :description,
      :stream_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_name
    #   <p>The thing group to update.</p>
    #   @return [String]
    # @!attribute thing_group_properties
    #   <p>The thing group properties.</p>
    #   @return [Types::ThingGroupProperties]
    # @!attribute expected_version
    #   <p>The expected version of the thing group. If this does not match the version of the
    #   			thing group being updated, the update will fail.</p>
    #   @return [Integer]
    class UpdateThingGroupRequest < Struct.new(
      nil,
      :thing_group_name,
      :thing_group_properties,
      :expected_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>The version of the updated thing group.</p>
    #   @return [Integer]
    class UpdateThingGroupResponse < Struct.new(
      nil,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # @!attribute thing_name
    #   <p>The thing whose group memberships will be updated.</p>
    #   @return [String]
    # @!attribute thing_groups_to_add
    #   <p>The groups to which the thing will be added.</p>
    #   @return [Array<String>]
    # @!attribute thing_groups_to_remove
    #   <p>The groups from which the thing will be removed.</p>
    #   @return [Array<String>]
    # @!attribute override_dynamic_groups
    #   <p>Override dynamic thing groups with static thing groups when 10-group limit is
    #   			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
    #   			dynamic thing groups, adding a thing to a static group removes the thing from the last
    #   			dynamic group.</p>
    #   @return [Boolean]
    class UpdateThingGroupsForThingRequest < Struct.new(
      nil,
      :thing_name,
      :thing_groups_to_add,
      :thing_groups_to_remove,
      :override_dynamic_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateThingGroupsForThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the UpdateThing operation.</p>
    # @!attribute thing_name
    #   <p>The name of the thing to update.</p>
    #            <p>You can't change a thing's name. To change a thing's name, you must create a
    #   			new thing, give it the new name, and then delete the old thing.</p>
    #   @return [String]
    # @!attribute thing_type_name
    #   <p>The name of the thing type.</p>
    #   @return [String]
    # @!attribute attribute_payload
    #   <p>A list of thing attributes, a JSON string containing name-value pairs. For
    #   			example:</p>
    #            <p>
    #               <code>{\"attributes\":{\"name1\":\"value2\"}}</code>
    #            </p>
    #            <p>This data is used to add new attributes or update existing attributes.</p>
    #   @return [Types::AttributePayload]
    # @!attribute expected_version
    #   <p>The expected version of the thing record in the registry. If the version of the
    #   			record in the registry does not match the expected version specified in the request, the
    #   				<code>UpdateThing</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    #   @return [Integer]
    # @!attribute remove_thing_type
    #   <p>Remove a thing type association. If <b>true</b>, the
    #   			association is removed.</p>
    #   @return [Boolean]
    class UpdateThingRequest < Struct.new(
      nil,
      :thing_name,
      :thing_type_name,
      :attribute_payload,
      :expected_version,
      :remove_thing_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from the UpdateThing operation.</p>
    class UpdateThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_type_name
    #   <p>The name of a thing type.</p>
    #   @return [String]
    # @!attribute thing_type_properties
    #   <p>The ThingTypeProperties contains information about the thing type including: a thing type description,
    #   			and a list of searchable thing attribute names.</p>
    #   @return [Types::ThingTypeProperties]
    class UpdateThingTypeRequest < Struct.new(
      nil,
      :thing_type_name,
      :thing_type_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateThingTypeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the topic rule destination.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic rule destination. Valid values are:</p>
    #            <dl>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>A topic rule destination was created but has not been confirmed. You can set
    #                        <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #               <dt>ENABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is allowed. You can
    #                     set <code>status</code> to <code>DISABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>DISABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is not allowed. You
    #                     can set <code>status</code> to <code>ENABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>ERROR</dt>
    #               <dd>
    #                  <p>Confirmation could not be completed, for example if the confirmation timed out.
    #                     You can call <code>GetTopicRuleDestination</code> for details about the error. You
    #                     can set <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class UpdateTopicRuleDestinationRequest < Struct.new(
      nil,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTopicRuleDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair that you define in the header. Both the key and the value are either
    #          literal strings or valid <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-substitution-templates.html">substitution
    #             templates</a>.</p>
    # @!attribute key
    #   <p>A key to be specified in <code>UserProperty</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value to be specified in <code>UserProperty</code>.</p>
    #   @return [String]
    class UserProperty < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    #   @return [Array<Types::Behavior>]
    class ValidateSecurityProfileBehaviorsRequest < Struct.new(
      nil,
      :behaviors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute valid
    #   <p>True if the behaviors were valid.</p>
    #   @return [Boolean]
    # @!attribute validation_errors
    #   <p>The list of any errors found in the behaviors.</p>
    #   @return [Array<Types::ValidationError>]
    class ValidateSecurityProfileBehaviorsResponse < Struct.new(
      nil,
      :valid,
      :validation_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:valid] = false unless options.key?(:valid)
        super
      end
    end

    # <p>Information about an error found in a behavior specification.</p>
    # @!attribute error_message
    #   <p>The description of an error found in the behaviors.</p>
    #   @return [String]
    class ValidationError < Struct.new(
      nil,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception thrown when the version of an entity specified with the
    #             <code>expectedVersion</code> parameter does not match the latest version in the
    #          system.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class VersionConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration to manage IoT Job's package version reporting. If configured, Jobs updates the thing's reserved named shadow with the package version information up on successful job completion.</p>
    #          <p>
    #             <b>Note:</b> For each job, the destinationPackageVersions attribute has to be set with the correct data for Jobs to report to the thing shadow.
    #       </p>
    # @!attribute enabled
    #   <p>Indicates whether the Job is enabled or not.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that grants permission to the IoT
    #         jobs service to update the reserved named shadow when the job successfully completes.</p>
    #   @return [String]
    class VersionUpdateByJobsConfig < Struct.new(
      nil,
      :enabled,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of policy versions exceeds the limit.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class VersionsLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Device Defender security profile behavior violation.</p>
    # @!attribute violation_id
    #   <p>The ID of the violation event.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing responsible for the violation event.</p>
    #   @return [String]
    # @!attribute security_profile_name
    #   <p>The name of the security profile whose behavior was violated.</p>
    #   @return [String]
    # @!attribute behavior
    #   <p>The behavior that was violated.</p>
    #   @return [Types::Behavior]
    # @!attribute metric_value
    #   <p>The value of the metric (the measurement).</p>
    #   @return [Types::MetricValue]
    # @!attribute violation_event_additional_info
    #   <p>
    #               The details of a violation event.
    #           </p>
    #   @return [Types::ViolationEventAdditionalInfo]
    # @!attribute violation_event_type
    #   <p>The type of violation event.</p>
    #   @return [String]
    # @!attribute verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    #   @return [String]
    # @!attribute verification_state_description
    #   <p>The description of the verification state of the violation.</p>
    #   @return [String]
    # @!attribute violation_event_time
    #   <p>The time the violation event occurred.</p>
    #   @return [Time]
    class ViolationEvent < Struct.new(
      nil,
      :violation_id,
      :thing_name,
      :security_profile_name,
      :behavior,
      :metric_value,
      :violation_event_additional_info,
      :violation_event_type,
      :verification_state,
      :verification_state_description,
      :violation_event_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The details of a violation event.
    #         </p>
    # @!attribute confidence_level
    #   <p>
    #               The sensitivity of anomalous behavior evaluation. Can be <code>Low</code>, <code>Medium</code>, or <code>High</code>.
    #           </p>
    #   @return [String]
    class ViolationEventAdditionalInfo < Struct.new(
      nil,
      :confidence_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Specifies the time period of which violation events occurred between.
    #         </p>
    # @!attribute start_time
    #   <p>
    #               The start date and time of a time period in which violation events occurred.
    #           </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #               The end date and time of a time period in which violation events occurred.
    #           </p>
    #   @return [Time]
    class ViolationEventOccurrenceRange < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for a virtual private cloud (VPC) destination.</p>
    # @!attribute subnet_ids
    #   <p>The subnet IDs of the VPC destination.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The security groups of the VPC destination.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).</p>
    #   @return [String]
    class VpcDestinationConfiguration < Struct.new(
      nil,
      :subnet_ids,
      :security_groups,
      :vpc_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a virtual private cloud (VPC) destination.</p>
    # @!attribute subnet_ids
    #   <p>The subnet IDs of the VPC destination.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The security groups of the VPC destination.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).</p>
    #   @return [String]
    class VpcDestinationProperties < Struct.new(
      nil,
      :subnet_ids,
      :security_groups,
      :vpc_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a virtual private cloud (VPC) destination.</p>
    # @!attribute subnet_ids
    #   <p>The subnet IDs of the VPC destination.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The security groups of the VPC destination.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).</p>
    #   @return [String]
    class VpcDestinationSummary < Struct.new(
      nil,
      :subnet_ids,
      :security_groups,
      :vpc_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
