# frozen_string_literal: true

# This is generated code!

module Aws::Resiliencehub
  # This module contains the types returned by client operations.
  module Types

    # <p>Indicates the grouping recommendation you have accepted to include in your application.</p>
    # @!attribute grouping_recommendation_id
    #   <p>Indicates the identifier of the grouping recommendation.</p>
    #   @return [String]
    class AcceptGroupingRecommendationEntry < Struct.new(
      :grouping_recommendation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>List of resource grouping recommendations you want to include in your application.</p>
    #   @return [Array<Types::AcceptGroupingRecommendationEntry>]
    class AcceptResourceGroupingRecommendationsRequest < Struct.new(
      :app_arn,
      :entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute failed_entries
    #   <p>List of resource grouping recommendations that could not be included in your application.</p>
    #   @return [Array<Types::FailedGroupingRecommendationEntry>]
    class AcceptResourceGroupingRecommendationsResponse < Struct.new(
      :app_arn,
      :failed_entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You don't have permissions to perform the requested operation. The user or role that is
    #       making the request must have at least one IAM permissions policy attached that grants the
    #       required permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute resource_mappings
    #   <p>Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    #   @return [Array<Types::ResourceMapping>]
    class AddDraftAppVersionResourceMappingsInput < Struct.new(
      :app_arn,
      :resource_mappings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute resource_mappings
    #   <p>List of sources that are used to map a logical resource from the template to a physical
    #         resource. You can use sources such as CloudFormation, Terraform state files,
    #         AppRegistry applications, or Amazon EKS.</p>
    #   @return [Array<Types::ResourceMapping>]
    class AddDraftAppVersionResourceMappingsOutput < Struct.new(
      :app_arn,
      :app_version,
      :resource_mappings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates the Amazon CloudWatch alarm detected while running an assessment.</p>
    # @!attribute alarm_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates the source of the Amazon CloudWatch alarm. That is, it indicates if the
    #         alarm was created using Resilience Hub recommendation (<code>AwsResilienceHub</code>),
    #         or if you had created the alarm in Amazon CloudWatch (<code>Customer</code>).</p>
    #   @return [String]
    class Alarm < Struct.new(
      :alarm_arn,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a recommendation for a CloudWatch alarm.</p>
    # @!attribute recommendation_id
    #   <p>Identifier of the alarm recommendation.</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>Reference identifier of the alarm recommendation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the alarm recommendation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the alarm recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of alarm recommendation.</p>
    #   @return [String]
    # @!attribute app_component_name
    #   <p>Application Component name for the CloudWatch alarm recommendation. This name is saved as the first
    #         item in the <code>appComponentNames</code> list.</p>
    #   @deprecated
    #     An alarm recommendation can be attached to multiple Application Components, hence this property will be replaced by the new property 'appComponentNames'.
    #   @return [String]
    # @!attribute items
    #   <p>List of CloudWatch alarm recommendations.</p>
    #   @return [Array<Types::RecommendationItem>]
    # @!attribute prerequisite
    #   <p>The prerequisite for the alarm recommendation.</p>
    #   @return [String]
    # @!attribute app_component_names
    #   <p>List of Application Component names for the CloudWatch alarm recommendation.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_status
    #   <p>Status of the recommended Amazon CloudWatch alarm.</p>
    #   @return [String]
    class AlarmRecommendation < Struct.new(
      :recommendation_id,
      :reference_id,
      :name,
      :description,
      :type,
      :app_component_name,
      :items,
      :prerequisite,
      :app_component_names,
      :recommendation_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AlarmType
      METRIC = 'Metric'
      COMPOSITE = 'Composite'
      CANARY = 'Canary'
      LOGS = 'Logs'
      EVENT = 'Event'
    end

    # <p>Defines an Resilience Hub application.</p>
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for an application.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time when the application was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status of the application.</p>
    #   @return [String]
    # @!attribute compliance_status
    #   <p>Current status of compliance for the resiliency policy.</p>
    #   @return [String]
    # @!attribute last_app_compliance_evaluation_time
    #   <p>Date and time the most recent compliance evaluation.</p>
    #   @return [Time]
    # @!attribute resiliency_score
    #   <p>Current resiliency score for the application.</p>
    #   @return [Float]
    # @!attribute last_resiliency_score_evaluation_time
    #   <p>Date and time the most recent resiliency score evaluation.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute assessment_schedule
    #   <p>Assessment execution schedule with 'Daily' or 'Disabled' values. </p>
    #   @return [String]
    # @!attribute permission_model
    #   <p>Defines the roles and credentials that Resilience Hub would use while creating the
    #         application, importing its resources, and running an assessment.</p>
    #   @return [Types::PermissionModel]
    # @!attribute event_subscriptions
    #   <p>The list of events you would like to subscribe and get notification for. Currently,
    #           Resilience Hub supports notifications only for <b>Drift
    #           detected</b> and <b>Scheduled assessment failure</b>
    #         events.</p>
    #   @return [Array<Types::EventSubscription>]
    # @!attribute drift_status
    #   <p>Indicates if compliance drifts (deviations) were detected while running an assessment for
    #         your application.</p>
    #   @return [String]
    # @!attribute last_drift_evaluation_time
    #   <p>Indicates the last time that a drift was evaluated.</p>
    #   @return [Time]
    # @!attribute rto_in_secs
    #   <p>Recovery Time Objective (RTO) in seconds.</p>
    #   @return [Integer]
    # @!attribute rpo_in_secs
    #   <p>Recovery Point Objective (RPO) in seconds.</p>
    #   @return [Integer]
    # @!attribute aws_application_arn
    #   <p>Amazon Resource Name (ARN) of  Resource Groups group that is integrated with an AppRegistry application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class App < Struct.new(
      :app_arn,
      :name,
      :description,
      :policy_arn,
      :creation_time,
      :status,
      :compliance_status,
      :last_app_compliance_evaluation_time,
      :resiliency_score,
      :last_resiliency_score_evaluation_time,
      :tags,
      :assessment_schedule,
      :permission_model,
      :event_subscriptions,
      :drift_status,
      :last_drift_evaluation_time,
      :rto_in_secs,
      :rpo_in_secs,
      :aws_application_arn,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:resiliency_score] = 0 unless options.key?(:resiliency_score)
        super
      end
    end

    # <p>Defines an application assessment.</p>
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Version of an application.</p>
    #   @return [String]
    # @!attribute invoker
    #   <p>The entity that invoked the assessment.</p>
    #   @return [String]
    # @!attribute cost
    #   <p>Cost for the application.</p>
    #   @return [Types::Cost]
    # @!attribute resiliency_score
    #   <p>Current resiliency score for an application.</p>
    #   @return [Types::ResiliencyScore]
    # @!attribute compliance
    #   <p>Application compliance against the resiliency policy.</p>
    #   @return [Hash<String, Types::DisruptionCompliance>]
    # @!attribute compliance_status
    #   <p>Current status of the compliance for the resiliency policy.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>Current status of the assessment for the resiliency policy.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Starting time for the action.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time for the action.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>Error or warning message from the assessment execution</p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p>Name of the assessment.</p>
    #   @return [String]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Resiliency policy of an application.</p>
    #   @return [Types::ResiliencyPolicy]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_errors_details
    #   <p> A resource error object containing a list of errors retrieving an application's
    #         resources. </p>
    #   @return [Types::ResourceErrorsDetails]
    # @!attribute version_name
    #   <p>Version name of the published application.</p>
    #   @return [String]
    # @!attribute drift_status
    #   <p>Indicates if compliance drifts (deviations) were detected while running an assessment for
    #         your application.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>Indicates the AI-generated summary for the Resilience Hub assessment, providing a concise overview that highlights the top risks and recommendations.</p>
    #            <note>
    #               <p>This property is available only in the US East (N. Virginia) Region.</p>
    #            </note>
    #   @return [Types::AssessmentSummary]
    class AppAssessment < Struct.new(
      :app_arn,
      :app_version,
      :invoker,
      :cost,
      :resiliency_score,
      :compliance,
      :compliance_status,
      :assessment_status,
      :start_time,
      :end_time,
      :message,
      :assessment_name,
      :assessment_arn,
      :policy,
      :tags,
      :resource_errors_details,
      :version_name,
      :drift_status,
      :summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AppAssessmentScheduleType
      DISABLED = 'Disabled'
      DAILY = 'Daily'
    end

    # <p>Defines an application assessment summary.</p>
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Version of an application.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>Current status of the assessment for the resiliency policy.</p>
    #   @return [String]
    # @!attribute invoker
    #   <p>Entity that invoked the assessment.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Starting time for the action.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time for the action.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>Message from the assessment run.</p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p>Name of the assessment.</p>
    #   @return [String]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute compliance_status
    #   <p>Current status of compliance for the resiliency policy.</p>
    #   @return [String]
    # @!attribute cost
    #   <p>Cost for an application.</p>
    #   @return [Types::Cost]
    # @!attribute resiliency_score
    #   <p>Current resiliency score for the application.</p>
    #   @return [Float]
    # @!attribute version_name
    #   <p>Name of an application version.</p>
    #   @return [String]
    # @!attribute drift_status
    #   <p>Indicates if compliance drifts (deviations) were detected while running an assessment for
    #         your application.</p>
    #   @return [String]
    class AppAssessmentSummary < Struct.new(
      :app_arn,
      :app_version,
      :assessment_status,
      :invoker,
      :start_time,
      :end_time,
      :message,
      :assessment_name,
      :assessment_arn,
      :compliance_status,
      :cost,
      :resiliency_score,
      :version_name,
      :drift_status,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:resiliency_score] = 0 unless options.key?(:resiliency_score)
        super
      end
    end

    module AppComplianceStatusType
      POLICY_BREACHED = 'PolicyBreached'
      POLICY_MET = 'PolicyMet'
      NOT_ASSESSED = 'NotAssessed'
      CHANGES_DETECTED = 'ChangesDetected'
      NOT_APPLICABLE = 'NotApplicable'
      MISSING_POLICY = 'MissingPolicy'
    end

    # <p>Defines an Application Component.</p>
    # @!attribute name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of Application Component.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier of the Application Component.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #            <note>
    #               <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #               <p>Key: <code>"failover-regions"</code>
    #               </p>
    #               <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #               </p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    class AppComponent < Struct.new(
      :name,
      :type,
      :id,
      :additional_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the compliance of an Application Component against the resiliency policy.</p>
    # @!attribute cost
    #   <p>The cost for the application.</p>
    #   @return [Types::Cost]
    # @!attribute app_component_name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute compliance
    #   <p>The compliance of the Application Component against the resiliency policy.</p>
    #   @return [Hash<String, Types::DisruptionCompliance>]
    # @!attribute message
    #   <p>The compliance message.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #   @return [Types::ResiliencyScore]
    class AppComponentCompliance < Struct.new(
      :cost,
      :app_component_name,
      :compliance,
      :message,
      :status,
      :resiliency_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AppDriftStatusType
      NOT_CHECKED = 'NotChecked'
      NOT_DETECTED = 'NotDetected'
      DETECTED = 'Detected'
    end

    # <p>The list of Resilience Hub application input sources.</p>
    # @!attribute source_name
    #   <p>The name of the input source.</p>
    #   @return [String]
    # @!attribute import_type
    #   <p>The resource type of the input source.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the input source. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute terraform_source
    #   <p>The name of the Terraform s3 state ﬁle.</p>
    #   @return [Types::TerraformSource]
    # @!attribute resource_count
    #   <p>The number of resources.</p>
    #   @return [Integer]
    # @!attribute eks_source_cluster_namespace
    #   <p>The namespace on your Amazon Elastic Kubernetes Service cluster.</p>
    #   @return [Types::EksSourceClusterNamespace]
    class AppInputSource < Struct.new(
      :source_name,
      :import_type,
      :source_arn,
      :terraform_source,
      :resource_count,
      :eks_source_cluster_namespace,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:resource_count] = 0 unless options.key?(:resource_count)
        super
      end
    end

    module AppStatusType
      ACTIVE = 'Active'
      DELETING = 'Deleting'
    end

    # <p>Defines an application summary.</p>
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time when the app was created.</p>
    #   @return [Time]
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #   @return [String]
    # @!attribute resiliency_score
    #   <p>The current resiliency score for the application.</p>
    #   @return [Float]
    # @!attribute assessment_schedule
    #   <p> Assessment execution schedule with 'Daily' or 'Disabled' values. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the application.</p>
    #   @return [String]
    # @!attribute drift_status
    #   <p>Indicates if compliance drifts (deviations) were detected while running an assessment for
    #         your application.</p>
    #   @return [String]
    # @!attribute last_app_compliance_evaluation_time
    #   <p>Date and time of the most recent compliance evaluation.</p>
    #   @return [Time]
    # @!attribute rto_in_secs
    #   <p>Recovery Time Objective (RTO) in seconds.</p>
    #   @return [Integer]
    # @!attribute rpo_in_secs
    #   <p>Recovery Point Objective (RPO) in seconds.</p>
    #   @return [Integer]
    # @!attribute aws_application_arn
    #   <p>Amazon Resource Name (ARN) of  Resource Groups group that is integrated with an AppRegistry application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class AppSummary < Struct.new(
      :app_arn,
      :name,
      :description,
      :creation_time,
      :compliance_status,
      :resiliency_score,
      :assessment_schedule,
      :status,
      :drift_status,
      :last_app_compliance_evaluation_time,
      :rto_in_secs,
      :rpo_in_secs,
      :aws_application_arn,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:resiliency_score] = 0 unless options.key?(:resiliency_score)
        super
      end
    end

    # <p>Version of an application.</p>
    # @!attribute app_version
    #   <p>Version of an application.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Identifier of the application version.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>Creation time of the application version.</p>
    #   @return [Time]
    # @!attribute version_name
    #   <p>Name of the application version.</p>
    #   @return [String]
    class AppVersionSummary < Struct.new(
      :app_version,
      :identifier,
      :creation_time,
      :version_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AssessmentInvoker
      USER = 'User'
      SYSTEM = 'System'
    end

    # <p>Indicates a specific risk identified in the Resilience Hub assessment and the corresponding recommendation provided to address that risk.</p>
    #          <note>
    #             <p>The assessment summary generated by large language models (LLMs) on Amazon Bedrock are only suggestions. 
    #         The current level of generative AI technology is not perfect and LLMs are not infallible. 
    #         Bias and incorrect answers, although rare, should be expected. Review each recommendation in the assessment summary before you use the output from an LLM.
    #       </p>
    #          </note>
    #          <note>
    #             <p>This property is available only in the US East (N. Virginia) Region.</p>
    #          </note>
    # @!attribute risk
    #   <p>Indicates the description of the potential risk identified in the application as part of the Resilience Hub assessment.</p>
    #            <note>
    #               <p>This property is available only in the US East (N. Virginia) Region.</p>
    #            </note>
    #   @return [String]
    # @!attribute recommendation
    #   <p>Indicates the recommendation provided by the Resilience Hub to address the identified
    #         risks in the application.</p>
    #            <note>
    #               <p>This property is available only in the US East (N. Virginia) Region.</p>
    #            </note>
    #   @return [String]
    # @!attribute app_components
    #   <p>Indicates the Application Components (AppComponents) that were assessed as part of the
    #         assessment and are associated with the identified risk and recommendation.</p>
    #            <note>
    #               <p>This property is available only in the US East (N. Virginia) Region.</p>
    #            </note>
    #   @return [Array<String>]
    class AssessmentRiskRecommendation < Struct.new(
      :risk,
      :recommendation,
      :app_components,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AssessmentStatus
      PENDING = 'Pending'
      INPROGRESS = 'InProgress'
      FAILED = 'Failed'
      SUCCESS = 'Success'
    end

    # <p>Indicates the AI-generated summary for the Resilience Hub assessment, providing a concise overview that highlights the top risks and recommendations.</p>
    #          <note>
    #             <p>This property is available only in the US East (N. Virginia) Region.</p>
    #          </note>
    # @!attribute summary
    #   <p>Indicates a concise summary that provides an overview of the Resilience Hub assessment.</p>
    #            <note>
    #               <p>This property is available only in the US East (N. Virginia) Region.</p>
    #            </note>
    #   @return [String]
    # @!attribute risk_recommendations
    #   <p>Indicates the top risks and recommendations identified by the Resilience Hub assessment, 
    #         each representing a specific risk and the corresponding recommendation to address it.</p>
    #            <note>
    #               <p>This property is available only in the US East (N. Virginia) Region.</p>
    #            </note>
    #   @return [Array<Types::AssessmentRiskRecommendation>]
    class AssessmentSummary < Struct.new(
      :summary,
      :risk_recommendations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of operational recommendations that did not get included or excluded.</p>
    # @!attribute entry_id
    #   <p>An identifier of an entry in this batch that is used to communicate the result.</p>
    #            <note>
    #               <p>The <code>entryId</code>s of a batch request need to be unique within a request.</p>
    #            </note>
    #   @return [String]
    # @!attribute error_message
    #   <p>Indicates the error that occurred while excluding an operational recommendation.</p>
    #   @return [String]
    class BatchUpdateRecommendationStatusFailedEntry < Struct.new(
      :entry_id,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute request_entries
    #   <p>Defines the list of operational recommendations that need to be included or
    #         excluded.</p>
    #   @return [Array<Types::UpdateRecommendationStatusRequestEntry>]
    class BatchUpdateRecommendationStatusRequest < Struct.new(
      :app_arn,
      :request_entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute successful_entries
    #   <p>A list of items that were included or excluded.</p>
    #   @return [Array<Types::BatchUpdateRecommendationStatusSuccessfulEntry>]
    # @!attribute failed_entries
    #   <p>A list of items with error details about each item, which could not be included or
    #         excluded.</p>
    #   @return [Array<Types::BatchUpdateRecommendationStatusFailedEntry>]
    class BatchUpdateRecommendationStatusResponse < Struct.new(
      :app_arn,
      :successful_entries,
      :failed_entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List of operational recommendations that were successfully included or excluded.</p>
    # @!attribute entry_id
    #   <p>An identifier for an entry in this batch that is used to communicate the result.</p>
    #            <note>
    #               <p>The <code>entryId</code>s of a batch request need to be unique within a request.</p>
    #            </note>
    #   @return [String]
    # @!attribute reference_id
    #   <p>Reference identifier of the operational recommendation.</p>
    #   @return [String]
    # @!attribute item
    #   <p>The operational recommendation item.</p>
    #   @return [Types::UpdateRecommendationStatusItem]
    # @!attribute excluded
    #   <p>Indicates if the operational recommendation was successfully excluded.</p>
    #   @return [Boolean]
    # @!attribute app_component_id
    #   <p>Indicates the identifier of an AppComponent.</p>
    #   @return [String]
    # @!attribute exclude_reason
    #   <p>Indicates the reason for excluding an operational recommendation.</p>
    #   @return [String]
    class BatchUpdateRecommendationStatusSuccessfulEntry < Struct.new(
      :entry_id,
      :reference_id,
      :item,
      :excluded,
      :app_component_id,
      :exclude_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates the compliance drifts (recovery time objective (RTO) and recovery point
    #       objective (RPO)) that were detected for an assessed entity.</p>
    # @!attribute entity_id
    #   <p>Identifier of an entity in which drift was detected. For compliance drift, the entity ID
    #         can be either application ID or the AppComponent ID.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of entity in which drift was detected. For compliance drifts, Resilience Hub supports <code>AWS::ResilienceHub::AppComponent</code> and
    #           <code>AWS::ResilienceHub::Application</code>.</p>
    #   @return [String]
    # @!attribute drift_type
    #   <p>The type of drift detected. Currently, Resilience Hub supports only <b>ApplicationCompliance</b> drift type.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>Identifier of your application.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Published version of your application on which drift was detected.</p>
    #   @return [String]
    # @!attribute expected_reference_id
    #   <p>Assessment identifier of a previous assessment of the same application version. Resilience Hub uses the previous assessment (associated with the reference identifier) to
    #         compare the compliance with the current assessment to identify drifts.</p>
    #   @return [String]
    # @!attribute expected_value
    #   <p>The expected compliance value of an entity.</p>
    #   @return [Hash<String, Types::DisruptionCompliance>]
    # @!attribute actual_reference_id
    #   <p>Assessment identifier that is associated with this drift item.</p>
    #   @return [String]
    # @!attribute actual_value
    #   <p>Actual compliance value of the entity.</p>
    #   @return [Hash<String, Types::DisruptionCompliance>]
    # @!attribute diff_type
    #   <p>Difference type between actual and expected recovery point objective (RPO) and recovery
    #         time objective (RTO) values. Currently, Resilience Hub supports only
    #           <code>NotEqual</code> difference type.</p>
    #   @return [String]
    class ComplianceDrift < Struct.new(
      :entity_id,
      :entity_type,
      :drift_type,
      :app_id,
      :app_version,
      :expected_reference_id,
      :expected_value,
      :actual_reference_id,
      :actual_value,
      :diff_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ComplianceStatus
      POLICY_BREACHED = 'PolicyBreached'
      POLICY_MET = 'PolicyMet'
      NOT_APPLICABLE = 'NotApplicable'
      MISSING_POLICY = 'MissingPolicy'
    end

    # <p>Defines recommendations for an Resilience Hub Application Component, returned as an
    #       object. This object contains component names, configuration recommendations, and
    #       recommendation statuses.</p>
    # @!attribute app_component_name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute recommendation_status
    #   <p>Status of the recommendation.</p>
    #   @return [String]
    # @!attribute config_recommendations
    #   <p>List of recommendations.</p>
    #   @return [Array<Types::ConfigRecommendation>]
    class ComponentRecommendation < Struct.new(
      :app_component_name,
      :recommendation_status,
      :config_recommendations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates the condition based on which you want to filter the metrics.</p>
    # @!attribute field
    #   <p>Indicates the field in the metric.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>Indicates the type of operator or comparison to be used when evaluating a condition against the specified field. </p>
    #   @return [String]
    # @!attribute value
    #   <p>Indicates the value or data against which a condition is evaluated.</p>
    #   @return [String]
    class Condition < Struct.new(
      :field,
      :operator,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConditionOperatorType
      EQUALS = 'Equals'
      NOT_EQUALS = 'NotEquals'
      GREATER_THEN = 'GreaterThen'
      GREATER_OR_EQUALS = 'GreaterOrEquals'
      LESS_THEN = 'LessThen'
      LESS_OR_EQUALS = 'LessOrEquals'
    end

    # <p>Defines a recommendation configuration.</p>
    # @!attribute cost
    #   <p>The cost for the application.</p>
    #   @return [Types::Cost]
    # @!attribute app_component_name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute compliance
    #   <p>The current compliance against the resiliency policy before applying the configuration
    #         change.</p>
    #   @return [Hash<String, Types::DisruptionCompliance>]
    # @!attribute recommendation_compliance
    #   <p>The expected compliance against the resiliency policy after applying the configuration
    #         change.</p>
    #   @return [Hash<String, Types::RecommendationDisruptionCompliance>]
    # @!attribute optimization_type
    #   <p>The type of optimization.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the recommendation configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #   @return [String]
    # @!attribute suggested_changes
    #   <p>List of the suggested configuration changes.</p>
    #   @return [Array<String>]
    # @!attribute ha_architecture
    #   <p>The architecture type.</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>Reference identifier for the recommendation configuration.</p>
    #   @return [String]
    class ConfigRecommendation < Struct.new(
      :cost,
      :app_component_name,
      :compliance,
      :recommendation_compliance,
      :optimization_type,
      :name,
      :description,
      :suggested_changes,
      :ha_architecture,
      :reference_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConfigRecommendationOptimizationType
      LEAST_COST = 'LeastCost'
      LEAST_CHANGE = 'LeastChange'
      BEST_AZ_RECOVERY = 'BestAZRecovery'
      LEAST_ERRORS = 'LeastErrors'
      BEST_ATTAINABLE = 'BestAttainable'
      BEST_REGION_RECOVERY = 'BestRegionRecovery'
    end

    # <p>This exception occurs when a conflict with a previous successful write is detected. This generally occurs
    #       when the previous write did not have time to propagate to the host serving the current
    #       request. A retry (with appropriate backoff logic) is the recommended response to this
    #       exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that the exception applies to.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that the exception applies to.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a cost object.</p>
    # @!attribute amount
    #   <p>The cost amount.</p>
    #   @return [Float]
    # @!attribute currency
    #   <p>The cost currency, for example <code>USD</code>.</p>
    #   @return [String]
    # @!attribute frequency
    #   <p>The cost frequency.</p>
    #   @return [String]
    class Cost < Struct.new(
      :amount,
      :currency,
      :frequency,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:amount] = 0 unless options.key?(:amount)
        super
      end
    end

    module CostFrequency
      HOURLY = 'Hourly'
      DAILY = 'Daily'
      MONTHLY = 'Monthly'
      YEARLY = 'Yearly'
    end

    # @!attribute name
    #   <p>Name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute assessment_schedule
    #   <p> Assessment execution schedule with 'Daily' or 'Disabled' values. </p>
    #   @return [String]
    # @!attribute permission_model
    #   <p>Defines the roles and credentials that Resilience Hub would use while creating the
    #         application, importing its resources, and running an assessment.</p>
    #   @return [Types::PermissionModel]
    # @!attribute event_subscriptions
    #   <p>The list of events you would like to subscribe and get notification for. Currently,
    #           Resilience Hub supports only <b>Drift detected</b> and
    #           <b>Scheduled assessment failure</b> events notification.</p>
    #   @return [Array<Types::EventSubscription>]
    # @!attribute aws_application_arn
    #   <p>Amazon Resource Name (ARN) of  Resource Groups group that is integrated with an AppRegistry application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class CreateAppInput < Struct.new(
      :name,
      :description,
      :policy_arn,
      :tags,
      :client_token,
      :assessment_schedule,
      :permission_model,
      :event_subscriptions,
      :aws_application_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app
    #   <p>The created application returned as an object with details including compliance status,
    #         creation time, description, resiliency score, and more.</p>
    #   @return [Types::App]
    class CreateAppOutput < Struct.new(
      :app,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier of the Application Component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Currently, there is no supported additional information for Application Components.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class CreateAppVersionAppComponentInput < Struct.new(
      :app_arn,
      :id,
      :name,
      :type,
      :additional_info,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute app_component
    #   <p>List of Application Components that belong to this resource.</p>
    #   @return [Types::AppComponent]
    class CreateAppVersionAppComponentOutput < Struct.new(
      :app_arn,
      :app_version,
      :app_component,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #   @return [String]
    # @!attribute app_components
    #   <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    #   @return [Array<String>]
    # @!attribute additional_info
    #   <p>Currently, there is no supported additional information for resources.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class CreateAppVersionResourceInput < Struct.new(
      :app_arn,
      :resource_name,
      :logical_resource_id,
      :physical_resource_id,
      :aws_region,
      :aws_account_id,
      :resource_type,
      :app_components,
      :additional_info,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute physical_resource
    #   <p>Defines a physical resource. A physical resource is a resource that exists in your account. It can be identified using an Amazon Resource Name (ARN) or a Resilience Hub-native identifier.</p>
    #   @return [Types::PhysicalResource]
    class CreateAppVersionResourceOutput < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_ids
    #   <p>Identifiers for the recommendations used to create a recommendation template.</p>
    #   @return [Array<String>]
    # @!attribute format
    #   <p>The format for the recommendation template.</p>
    #            <dl>
    #               <dt>CfnJson</dt>
    #               <dd>
    #                  <p>The template is CloudFormation JSON.</p>
    #               </dd>
    #               <dt>CfnYaml</dt>
    #               <dd>
    #                  <p>The template is CloudFormation YAML.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute recommendation_types
    #   <p>An array of strings that specify the recommendation template type or types.</p>
    #            <dl>
    #               <dt>Alarm</dt>
    #               <dd>
    #                  <p>The template is an <a>AlarmRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Sop</dt>
    #               <dd>
    #                  <p>The template is a <a>SopRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Test</dt>
    #               <dd>
    #                  <p>The template is a <a>TestRecommendation</a> template.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the recommendation template.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket that will contain the recommendation template.</p>
    #   @return [String]
    class CreateRecommendationTemplateInput < Struct.new(
      :recommendation_ids,
      :format,
      :recommendation_types,
      :assessment_arn,
      :name,
      :client_token,
      :tags,
      :bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_template
    #   <p>The newly created recommendation template, returned as an object. This object includes the
    #         template's name, format, status, tags, Amazon S3 bucket location, and more.</p>
    #   @return [Types::RecommendationTemplate]
    class CreateRecommendationTemplateOutput < Struct.new(
      :recommendation_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>Name of the resiliency policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>Description of the resiliency policy.</p>
    #   @return [String]
    # @!attribute data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The type of resiliency policy to be created, including the recovery time objective (RTO)
    #         and recovery point objective (RPO) in seconds.</p>
    #   @return [Hash<String, Types::FailurePolicy>]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    class CreateResiliencyPolicyInput < Struct.new(
      :policy_name,
      :policy_description,
      :data_location_constraint,
      :tier,
      :policy,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The type of resiliency policy that was created, including the recovery time objective
    #         (RTO) and recovery point objective (RPO) in seconds.</p>
    #   @return [Types::ResiliencyPolicy]
    class CreateResiliencyPolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataLocationConstraint
      ANY_LOCATION = 'AnyLocation'
      SAME_CONTINENT = 'SameContinent'
      SAME_COUNTRY = 'SameCountry'
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class DeleteAppAssessmentInput < Struct.new(
      :assessment_arn,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #   @return [String]
    class DeleteAppAssessmentOutput < Struct.new(
      :assessment_arn,
      :assessment_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>A boolean option to force the deletion of an Resilience Hub application. </p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class DeleteAppInput < Struct.new(
      :app_arn,
      :force_delete,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the imported resource you want to remove from the
    #           Resilience Hub application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute terraform_source
    #   <p>The imported Terraform s3 state ﬁle you want to remove from the Resilience Hub
    #         application.</p>
    #   @return [Types::TerraformSource]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute eks_source_cluster_namespace
    #   <p>The namespace on your Amazon Elastic Kubernetes Service cluster that you want to delete from the
    #           Resilience Hub application.</p>
    #   @return [Types::EksSourceClusterNamespace]
    class DeleteAppInputSourceInput < Struct.new(
      :app_arn,
      :source_arn,
      :terraform_source,
      :client_token,
      :eks_source_cluster_namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_input_source
    #   <p>Name of the input source from where the application resource is imported from.</p>
    #   @return [Types::AppInputSource]
    class DeleteAppInputSourceOutput < Struct.new(
      :app_arn,
      :app_input_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class DeleteAppOutput < Struct.new(
      :app_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier of the Application Component.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class DeleteAppVersionAppComponentInput < Struct.new(
      :app_arn,
      :id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute app_component
    #   <p>List of Application Components that belong to this resource.</p>
    #   @return [Types::AppComponent]
    class DeleteAppVersionAppComponentOutput < Struct.new(
      :app_arn,
      :app_version,
      :app_component,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class DeleteAppVersionResourceInput < Struct.new(
      :app_arn,
      :resource_name,
      :logical_resource_id,
      :physical_resource_id,
      :aws_region,
      :aws_account_id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute physical_resource
    #   <p>Defines a physical resource. A physical resource is a resource that exists in your account. It can be identified using an Amazon Resource Name (ARN) or a Resilience Hub-native identifier.</p>
    #   @return [Types::PhysicalResource]
    class DeleteAppVersionResourceOutput < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class DeleteRecommendationTemplateInput < Struct.new(
      :recommendation_template_arn,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    class DeleteRecommendationTemplateOutput < Struct.new(
      :recommendation_template_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class DeleteResiliencyPolicyInput < Struct.new(
      :policy_arn,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class DeleteResiliencyPolicyOutput < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class DescribeAppAssessmentInput < Struct.new(
      :assessment_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p>The assessment for an Resilience Hub application, returned as an object. This
    #         object includes Amazon Resource Names (ARNs), compliance information, compliance status, cost,
    #         messages, resiliency scores, and more.</p>
    #   @return [Types::AppAssessment]
    class DescribeAppAssessmentOutput < Struct.new(
      :assessment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class DescribeAppInput < Struct.new(
      :app_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app
    #   <p>The specified application, returned as an object with details including compliance status,
    #         creation time, description, resiliency score, and more.</p>
    #   @return [Types::App]
    class DescribeAppOutput < Struct.new(
      :app,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier of the Application Component.</p>
    #   @return [String]
    class DescribeAppVersionAppComponentInput < Struct.new(
      :app_arn,
      :app_version,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute app_component
    #   <p>List of Application Components that belong to this resource.</p>
    #   @return [Types::AppComponent]
    class DescribeAppVersionAppComponentOutput < Struct.new(
      :app_arn,
      :app_version,
      :app_component,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    class DescribeAppVersionInput < Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #            <note>
    #               <p>Currently, this parameter supports only failover region and account.</p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    class DescribeAppVersionOutput < Struct.new(
      :app_arn,
      :app_version,
      :additional_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    #   @return [String]
    class DescribeAppVersionResourceInput < Struct.new(
      :app_arn,
      :app_version,
      :resource_name,
      :logical_resource_id,
      :physical_resource_id,
      :aws_region,
      :aws_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute physical_resource
    #   <p>Defines a physical resource. A physical resource is a resource that exists in your account. It can be identified using an Amazon Resource Name (ARN) or a Resilience Hub-native identifier.</p>
    #   @return [Types::PhysicalResource]
    class DescribeAppVersionResourceOutput < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #   @return [String]
    class DescribeAppVersionResourcesResolutionStatusInput < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The returned error message for the request.</p>
    #   @return [String]
    class DescribeAppVersionResourcesResolutionStatusOutput < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    class DescribeAppVersionTemplateInput < Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute app_template_body
    #   <p>A JSON string that provides information about your application structure. To learn more
    #         about the <code>appTemplateBody</code> template, see the sample template provided in the
    #           <i>Examples</i> section.</p>
    #            <p>The <code>appTemplateBody</code> JSON string has the following structure:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>resources</code>
    #                     </b>
    #                  </p>
    #                  <p>The list of logical resources that must be included in the Resilience Hub
    #             application.</p>
    #                  <p>Type: Array</p>
    #                  <note>
    #                     <p>Don't add the resources that you want to exclude.</p>
    #                  </note>
    #                  <p>Each <code>resources</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>logicalResourceId</code>
    #                           </i>
    #                        </p>
    #                        <p>Logical identifier of the resource.</p>
    #                        <p>Type: Object</p>
    #                        <p>Each <code>logicalResourceId</code> object includes the following fields:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>identifier</code>
    #                              </p>
    #                              <p>Identifier of the resource.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>logicalStackName</code>
    #                              </p>
    #                              <p>The name of the CloudFormation stack this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>resourceGroupName</code>
    #                              </p>
    #                              <p>The name of the resource group this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>terraformSourceName</code>
    #                              </p>
    #                              <p>The name of the Terraform S3 state file this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>eksSourceName</code>
    #                              </p>
    #                              <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #                              <note>
    #                                 <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #                              </note>
    #                              <p>Type: String</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>type</code>
    #                           </i>
    #                        </p>
    #                        <p>The type of resource.</p>
    #                        <p>Type: string</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>name</code>
    #                           </i>
    #                        </p>
    #                        <p>The name of the resource.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>additionalInfo</code>
    #                        </p>
    #                        <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                        <note>
    #                           <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                           <p>Key: <code>"failover-regions"</code>
    #                           </p>
    #                           <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                           </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>appComponents</code>
    #                     </b>
    #                  </p>
    #                  <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    #                  <p>Type: Array</p>
    #                  <p>Each <code>appComponents</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>name</code>
    #                        </p>
    #                        <p>Name of the Application Component.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>type</code>
    #                        </p>
    #                        <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>resourceNames</code>
    #                        </p>
    #                        <p>The list of included resources that are assigned to the Application Component.</p>
    #                        <p>Type: Array of strings</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>additionalInfo</code>
    #                        </p>
    #                        <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                        <note>
    #                           <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                           <p>Key: <code>"failover-regions"</code>
    #                           </p>
    #                           <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                           </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>excludedResources</code>
    #                     </b>
    #                  </p>
    #                  <p>The list of logical resource identifiers to be excluded from the application.</p>
    #                  <p>Type: Array</p>
    #                  <note>
    #                     <p>Don't add the resources that you want to include.</p>
    #                  </note>
    #                  <p>Each <code>excludedResources</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>logicalResourceIds</code>
    #                           </i>
    #                        </p>
    #                        <p>Logical identifier of the resource.</p>
    #                        <p>Type: Object</p>
    #                        <note>
    #                           <p>You can configure only one of the following fields:</p>
    #                           <ul>
    #                              <li>
    #                                 <p>
    #                                    <code>logicalStackName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>resourceGroupName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>terraformSourceName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>eksSourceName</code>
    #                                 </p>
    #                              </li>
    #                           </ul>
    #                        </note>
    #                        <p>Each <code>logicalResourceIds</code> object includes the following fields:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>identifier</code>
    #                              </p>
    #                              <p>Identifier of the resource.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>logicalStackName</code>
    #                              </p>
    #                              <p>The name of the CloudFormation stack this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>resourceGroupName</code>
    #                              </p>
    #                              <p>The name of the resource group this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>terraformSourceName</code>
    #                              </p>
    #                              <p>The name of the Terraform S3 state file this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>eksSourceName</code>
    #                              </p>
    #                              <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #                              <note>
    #                                 <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #                              </note>
    #                              <p>Type: String</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>version</code>
    #                     </b>
    #                  </p>
    #                  <p>Resilience Hub application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>additionalInfo</code>
    #                  </p>
    #                  <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                  <note>
    #                     <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                     <p>Key: <code>"failover-regions"</code>
    #                     </p>
    #                     <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeAppVersionTemplateOutput < Struct.new(
      :app_arn,
      :app_version,
      :app_template_body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class DescribeDraftAppVersionResourcesImportStatusInput < Struct.new(
      :app_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute status_change_time
    #   <p>The time when the status last changed.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>The error message returned for the resource request.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>List of errors that were encountered while importing resources.</p>
    #   @return [Array<Types::ErrorDetail>]
    class DescribeDraftAppVersionResourcesImportStatusOutput < Struct.new(
      :app_arn,
      :app_version,
      :status,
      :status_change_time,
      :error_message,
      :error_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metrics_export_id
    #   <p>Identifier of the metrics export task.</p>
    #   @return [String]
    class DescribeMetricsExportRequest < Struct.new(
      :metrics_export_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metrics_export_id
    #   <p>Identifier for the metrics export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the metrics export task.</p>
    #   @return [String]
    # @!attribute export_location
    #   <p>Specifies the name of the Amazon S3 bucket where the exported metrics is stored.</p>
    #   @return [Types::S3Location]
    # @!attribute error_message
    #   <p>Explains the error that occurred while exporting the metrics.</p>
    #   @return [String]
    class DescribeMetricsExportResponse < Struct.new(
      :metrics_export_id,
      :status,
      :export_location,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class DescribeResiliencyPolicyInput < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>Information about the specific resiliency policy, returned as an object. This object
    #         includes creation time, data location constraints, its name, description, tags, the recovery
    #         time objective (RTO) and recovery point objective (RPO) in seconds, and more.</p>
    #   @return [Types::ResiliencyPolicy]
    class DescribeResiliencyPolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute grouping_id
    #   <p>Identifier of the grouping recommendation task.</p>
    #   @return [String]
    class DescribeResourceGroupingRecommendationTaskRequest < Struct.new(
      :app_arn,
      :grouping_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute grouping_id
    #   <p>Identifier of the grouping recommendation task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error that occurred while generating a grouping recommendation.</p>
    #   @return [String]
    class DescribeResourceGroupingRecommendationTaskResponse < Struct.new(
      :grouping_id,
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DifferenceType
      NOT_EQUAL = 'NotEqual'
      ADDED = 'Added'
      REMOVED = 'Removed'
    end

    # <p>Defines the compliance against the resiliency policy for a disruption.</p>
    # @!attribute achievable_rto_in_secs
    #   <p>The Recovery Time Objective (RTO) that is achievable, in seconds</p>
    #   @return [Integer]
    # @!attribute current_rto_in_secs
    #   <p>The current RTO, in seconds.</p>
    #   @return [Integer]
    # @!attribute rto_reference_id
    #   <p>Reference identifier of the RTO.</p>
    #   @return [String]
    # @!attribute rto_description
    #   <p>The RTO description.</p>
    #   @return [String]
    # @!attribute current_rpo_in_secs
    #   <p>The current RPO, in seconds.</p>
    #   @return [Integer]
    # @!attribute rpo_reference_id
    #   <p>Reference identifier of the RPO .</p>
    #   @return [String]
    # @!attribute rpo_description
    #   <p>The RPO description.</p>
    #   @return [String]
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #   @return [String]
    # @!attribute achievable_rpo_in_secs
    #   <p>The Recovery Point Objective (RPO) that is achievable, in seconds.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The disruption compliance message.</p>
    #   @return [String]
    class DisruptionCompliance < Struct.new(
      :achievable_rto_in_secs,
      :current_rto_in_secs,
      :rto_reference_id,
      :rto_description,
      :current_rpo_in_secs,
      :rpo_reference_id,
      :rpo_description,
      :compliance_status,
      :achievable_rpo_in_secs,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:achievable_rto_in_secs] = 0 unless options.key?(:achievable_rto_in_secs)
        options[:current_rto_in_secs] = 0 unless options.key?(:current_rto_in_secs)
        options[:current_rpo_in_secs] = 0 unless options.key?(:current_rpo_in_secs)
        options[:achievable_rpo_in_secs] = 0 unless options.key?(:achievable_rpo_in_secs)
        super
      end
    end

    module DisruptionType
      SOFTWARE = 'Software'
      HARDWARE = 'Hardware'
      AZ = 'AZ'
      REGION = 'Region'
    end

    module DriftStatus
      NOT_CHECKED = 'NotChecked'
      NOT_DETECTED = 'NotDetected'
      DETECTED = 'Detected'
    end

    module DriftType
      APPLICATION_COMPLIANCE = 'ApplicationCompliance'
      APP_COMPONENT_RESILIENCY_COMPLIANCE_STATUS = 'AppComponentResiliencyComplianceStatus'
    end

    # <p>The input source of the Amazon Elastic Kubernetes Service cluster.</p>
    # @!attribute eks_cluster_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Elastic Kubernetes Service cluster. The format for this ARN is: 
    #   arn:<code>aws</code>:eks:<code>region</code>:<code>account-id</code>:cluster/<code>cluster-name</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>The list of namespaces located on your Amazon Elastic Kubernetes Service cluster.</p>
    #   @return [Array<String>]
    class EksSource < Struct.new(
      :eks_cluster_arn,
      :namespaces,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input source of the namespace that is located on your Amazon Elastic Kubernetes Service
    #       cluster.</p>
    # @!attribute eks_cluster_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Elastic Kubernetes Service cluster. The format for this ARN is: 
    #   arn:<code>aws</code>:eks:<code>region</code>:<code>account-id</code>:cluster/<code>cluster-name</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Name of the namespace that is located on your Amazon Elastic Kubernetes Service cluster.</p>
    #   @return [String]
    class EksSourceClusterNamespace < Struct.new(
      :eks_cluster_arn,
      :namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates the error that was encountered while importing a resource.</p>
    # @!attribute error_message
    #   <p>Provides additional information about the error.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EstimatedCostTier
      L1 = 'L1'
      L2 = 'L2'
      L3 = 'L3'
      L4 = 'L4'
    end

    # <p>Indicates an event you would like to subscribe and get notification for. Currently,
    #         Resilience Hub supports notifications only for <b>Drift
    #         detected</b> and <b>Scheduled assessment failure</b>
    #       events.</p>
    # @!attribute name
    #   <p>Unique name to identify an event subscription.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of event you would like to subscribe and get notification for. Currently, Resilience Hub supports notifications only for <b>Drift
    #           detected</b> (<code>DriftDetected</code>) and <b>Scheduled
    #           assessment failure</b> (<code>ScheduledAssessmentFailure</code>) events.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic. The format for this ARN
    #         is: <code>arn:partition:sns:region:account:topic-name</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class EventSubscription < Struct.new(
      :name,
      :event_type,
      :sns_topic_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EventType
      SCHEDULED_ASSESSMENT_FAILURE = 'ScheduledAssessmentFailure'
      DRIFT_DETECTED = 'DriftDetected'
    end

    module ExcludeRecommendationReason
      ALREADY_IMPLEMENTED = 'AlreadyImplemented'
      NOT_RELEVANT = 'NotRelevant'
      COMPLEXITY_OF_IMPLEMENTATION = 'ComplexityOfImplementation'
    end

    # <p>Indicates the FIS experiment detected while running an assessment.</p>
    # @!attribute experiment_arn
    #   <p>Amazon Resource Name (ARN) of the FIS experiment.</p>
    #   @return [String]
    # @!attribute experiment_template_id
    #   <p>Identifier of the FIS experiment template.</p>
    #   @return [String]
    class Experiment < Struct.new(
      :experiment_arn,
      :experiment_template_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates the accepted grouping recommendation whose implementation failed.</p>
    # @!attribute grouping_recommendation_id
    #   <p>Indicates the identifier of the grouping recommendation.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Indicates the error that occurred while implementing a grouping recommendation.</p>
    #   @return [String]
    class FailedGroupingRecommendationEntry < Struct.new(
      :grouping_recommendation_id,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a failure policy.</p>
    # @!attribute rto_in_secs
    #   <p>Recovery Time Objective (RTO) in seconds.</p>
    #   @return [Integer]
    # @!attribute rpo_in_secs
    #   <p>Recovery Point Objective (RPO) in seconds.</p>
    #   @return [Integer]
    class FailurePolicy < Struct.new(
      :rto_in_secs,
      :rpo_in_secs,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:rto_in_secs] = 0 unless options.key?(:rto_in_secs)
        options[:rpo_in_secs] = 0 unless options.key?(:rpo_in_secs)
        super
      end
    end

    # <p>Indicates the field or attribute of a resource or data structure on which a condition is being applied or evaluated.</p>
    # @!attribute name
    #   <p>Name of the field.</p>
    #   @return [String]
    # @!attribute aggregation
    #   <p>(Optional) Indicates the type of aggregation or summary operation (such as Sum, Average, and so on) to be performed on a particular field or set of data.</p>
    #   @return [String]
    class Field < Struct.new(
      :name,
      :aggregation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FieldAggregationType
      MIN = 'Min'
      MAX = 'Max'
      SUM = 'Sum'
      AVG = 'Avg'
      COUNT = 'Count'
    end

    # <p>Creates a new recommended Application Component (AppComponent).</p>
    # @!attribute app_component_id
    #   <p>Indicates the identifier of an AppComponent.</p>
    #   @return [String]
    # @!attribute app_component_type
    #   <p>Indicates the type of an AppComponent.</p>
    #   @return [String]
    # @!attribute app_component_name
    #   <p>Indicates the name of an AppComponent.</p>
    #   @return [String]
    class GroupingAppComponent < Struct.new(
      :app_component_id,
      :app_component_type,
      :app_component_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Creates a new grouping recommendation.</p>
    # @!attribute grouping_recommendation_id
    #   <p>Indicates all the reasons available for rejecting a grouping recommendation.</p>
    #   @return [String]
    # @!attribute grouping_app_component
    #   <p>Indicates the name of the recommended Application Component (AppComponent).</p>
    #   @return [Types::GroupingAppComponent]
    # @!attribute resources
    #   <p>Indicates the resources that are grouped in a recommended AppComponent.</p>
    #   @return [Array<Types::GroupingResource>]
    # @!attribute score
    #   <p>Indicates the confidence level of the grouping recommendation.</p>
    #   @return [Float]
    # @!attribute recommendation_reasons
    #   <p>Indicates all the reasons available for rejecting a grouping recommendation.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Indicates the status of grouping resources into AppComponents.</p>
    #   @return [String]
    # @!attribute confidence_level
    #   <p>Indicates the confidence level of Resilience Hub on the grouping recommendation.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Indicates the creation time of the grouping recommendation.</p>
    #   @return [Time]
    # @!attribute rejection_reason
    #   <p>Indicates the reason you had selected while rejecting a grouping recommendation.</p>
    #   @return [String]
    class GroupingRecommendation < Struct.new(
      :grouping_recommendation_id,
      :grouping_app_component,
      :resources,
      :score,
      :recommendation_reasons,
      :status,
      :confidence_level,
      :creation_time,
      :rejection_reason,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    module GroupingRecommendationConfidenceLevel
      HIGH = 'High'
      MEDIUM = 'Medium'
    end

    module GroupingRecommendationRejectionReason
      DISTINCT_BUSINESS_PURPOSE = 'DistinctBusinessPurpose'
      SEPARATE_DATA_CONCERN = 'SeparateDataConcern'
      DISTINCT_USER_GROUP_HANDLING = 'DistinctUserGroupHandling'
      OTHER = 'Other'
    end

    module GroupingRecommendationStatusType
      ACCEPTED = 'Accepted'
      REJECTED = 'Rejected'
      PENDING_DECISION = 'PendingDecision'
    end

    # <p>Indicates the resource that will be grouped in the recommended Application Component (AppComponent).</p>
    # @!attribute resource_name
    #   <p>Indicates the resource name.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Indicates the resource type.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>Indicates the physical identifier of the resource.</p>
    #   @return [Types::PhysicalResourceId]
    # @!attribute logical_resource_id
    #   <p>Indicates the logical identifier of the resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute source_app_component_ids
    #   <p>Indicates the identifier of the source AppComponents in which the resources were previously grouped into.</p>
    #   @return [Array<String>]
    class GroupingResource < Struct.new(
      :resource_name,
      :resource_type,
      :physical_resource_id,
      :logical_resource_id,
      :source_app_component_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HaArchitecture
      MULTI_SITE = 'MultiSite'
      WARM_STANDBY = 'WarmStandby'
      PILOT_LIGHT = 'PilotLight'
      BACKUP_AND_RESTORE = 'BackupAndRestore'
      NO_RECOVERY_PLAN = 'NoRecoveryPlan'
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute source_arns
    #   <p>The Amazon Resource Names (ARNs) for the resources.</p>
    #   @return [Array<String>]
    # @!attribute terraform_sources
    #   <p> A list of terraform file s3 URLs you need to import. </p>
    #   @return [Array<Types::TerraformSource>]
    # @!attribute import_strategy
    #   <p>The import strategy you would like to set to import resources into Resilience Hub
    #         application.</p>
    #   @return [String]
    # @!attribute eks_sources
    #   <p>The input sources of the Amazon Elastic Kubernetes Service resources you need to import.</p>
    #   @return [Array<Types::EksSource>]
    class ImportResourcesToDraftAppVersionInput < Struct.new(
      :app_arn,
      :source_arns,
      :terraform_sources,
      :import_strategy,
      :eks_sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute source_arns
    #   <p>The Amazon Resource Names (ARNs) for the resources you have imported.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute terraform_sources
    #   <p> A list of terraform file s3 URLs you have imported. </p>
    #   @return [Array<Types::TerraformSource>]
    # @!attribute eks_sources
    #   <p>The input sources of the Amazon Elastic Kubernetes Service resources you have imported.</p>
    #   @return [Array<Types::EksSource>]
    class ImportResourcesToDraftAppVersionOutput < Struct.new(
      :app_arn,
      :app_version,
      :source_arns,
      :status,
      :terraform_sources,
      :eks_sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception occurs when there is an internal failure in the Resilience Hub
    #       service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListAlarmRecommendationsInput < Struct.new(
      :assessment_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute alarm_recommendations
    #   <p>The alarm recommendations for an Resilience Hub application, returned as an
    #         object. This object includes Application Component names, descriptions, information about whether a
    #         recommendation has already been implemented or not, prerequisites, and more.</p>
    #   @return [Array<Types::AlarmRecommendation>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAlarmRecommendationsOutput < Struct.new(
      :alarm_recommendations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of compliance drifts requested.</p>
    #   @return [Integer]
    class ListAppAssessmentComplianceDriftsRequest < Struct.new(
      :assessment_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute compliance_drifts
    #   <p>Indicates compliance drifts (recovery time objective (RTO) and recovery point objective
    #         (RPO)) detected for an assessed entity.</p>
    #   @return [Array<Types::ComplianceDrift>]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    class ListAppAssessmentComplianceDriftsResponse < Struct.new(
      :compliance_drifts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of drift results to include in the response. If more results
    #         exist than the specified <code>MaxResults</code> value, a token is included in the response so
    #         that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListAppAssessmentResourceDriftsRequest < Struct.new(
      :assessment_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_drifts
    #   <p>Indicates all the resource drifts detected for an assessed entity.</p>
    #   @return [Array<Types::ResourceDrift>]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    class ListAppAssessmentResourceDriftsResponse < Struct.new(
      :resource_drifts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p>The name for the assessment.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #   @return [Array<String>]
    # @!attribute compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #   @return [String]
    # @!attribute invoker
    #   <p>Specifies the entity that invoked a specific assessment, either a <code>User</code> or the
    #           <code>System</code>.</p>
    #   @return [String]
    # @!attribute reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListAppAssessmentsInput < Struct.new(
      :app_arn,
      :assessment_name,
      :assessment_status,
      :compliance_status,
      :invoker,
      :reverse_order,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    # @!attribute assessment_summaries
    #   <p>The summaries for the specified assessments, returned as an object. This object includes
    #         application versions, associated Amazon Resource Numbers (ARNs), cost, messages, resiliency
    #         scores, and more.</p>
    #   @return [Array<Types::AppAssessmentSummary>]
    class ListAppAssessmentsOutput < Struct.new(
      :next_token,
      :assessment_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class ListAppComponentCompliancesInput < Struct.new(
      :next_token,
      :max_results,
      :assessment_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute component_compliances
    #   <p>The compliances for an Resilience Hub Application Component, returned as an object. This
    #         object contains the names of the Application Components, compliances, costs, resiliency scores,
    #         outage scores, and more.</p>
    #   @return [Array<Types::AppComponentCompliance>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppComponentCompliancesOutput < Struct.new(
      :component_compliances,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListAppComponentRecommendationsInput < Struct.new(
      :assessment_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute component_recommendations
    #   <p>The recommendations for an Resilience Hub Application Component, returned as an object.
    #         This object contains the names of the Application Components, configuration recommendations, and
    #         recommendation statuses.</p>
    #   @return [Array<Types::ComponentRecommendation>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppComponentRecommendationsOutput < Struct.new(
      :component_recommendations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of input sources to be displayed per Resilience Hub application.</p>
    #   @return [Integer]
    class ListAppInputSourcesInput < Struct.new(
      :app_arn,
      :app_version,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_input_sources
    #   <p>The list of Resilience Hub application input sources.</p>
    #   @return [Array<Types::AppInputSource>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppInputSourcesOutput < Struct.new(
      :app_input_sources,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Version of the Application Component.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of Application Components to be displayed per Resilience Hub application version.</p>
    #   @return [Integer]
    class ListAppVersionAppComponentsInput < Struct.new(
      :app_arn,
      :app_version,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute app_components
    #   <p>Defines an Application Component.</p>
    #   @return [Array<Types::AppComponent>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppVersionAppComponentsOutput < Struct.new(
      :app_arn,
      :app_version,
      :app_components,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListAppVersionResourceMappingsInput < Struct.new(
      :app_arn,
      :app_version,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_mappings
    #   <p>Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    #   @return [Array<Types::ResourceMapping>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppVersionResourceMappingsOutput < Struct.new(
      :resource_mappings,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListAppVersionResourcesInput < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute physical_resources
    #   <p>The physical resources in the application version.</p>
    #   @return [Array<Types::PhysicalResource>]
    # @!attribute resolution_id
    #   <p>The ID for a specific resolution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppVersionResourcesOutput < Struct.new(
      :physical_resources,
      :resolution_id,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>Lower limit of the time range to filter the application versions.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Upper limit of the time range to filter the application versions.</p>
    #   @return [Time]
    class ListAppVersionsInput < Struct.new(
      :app_arn,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_versions
    #   <p>The version of the application.</p>
    #   @return [Array<Types::AppVersionSummary>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppVersionsOutput < Struct.new(
      :app_versions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name for the one of the listed applications.</p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute from_last_assessment_time
    #   <p>Lower limit of the range that is used to filter applications based on their
    #         last assessment times.</p>
    #   @return [Time]
    # @!attribute to_last_assessment_time
    #   <p>Upper limit of the range that is used to filter the applications based on
    #         their last assessment times.</p>
    #   @return [Time]
    # @!attribute reverse_order
    #   <p>The application list is sorted based on the values of
    #           <code>lastAppComplianceEvaluationTime</code> field. By default, application list is sorted
    #         in ascending order. To sort the application list in descending order, set this field to
    #           <code>True</code>.</p>
    #   @return [Boolean]
    # @!attribute aws_application_arn
    #   <p>Amazon Resource Name (ARN) of  Resource Groups group that is integrated with an AppRegistry application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class ListAppsInput < Struct.new(
      :next_token,
      :max_results,
      :name,
      :app_arn,
      :from_last_assessment_time,
      :to_last_assessment_time,
      :reverse_order,
      :aws_application_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_summaries
    #   <p>Summaries for the Resilience Hub application.</p>
    #   @return [Array<Types::AppSummary>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListAppsOutput < Struct.new(
      :app_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>Indicates the list of fields in the data source.</p>
    #   @return [Array<Types::Field>]
    # @!attribute data_source
    #   <p>Indicates the data source of the metrics.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>Indicates the list of all the conditions that were applied on the metrics.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute sorts
    #   <p>(Optional) Indicates the order in which you want to sort the fields in the metrics. By default, the fields are sorted in the ascending order.</p>
    #   @return [Array<Types::Sort>]
    class ListMetricsRequest < Struct.new(
      :next_token,
      :max_results,
      :fields,
      :data_source,
      :conditions,
      :sorts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rows
    #   <p>Specifies all the list of metric values for each row of metrics.</p>
    #   @return [Array<Array<String>>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListMetricsResponse < Struct.new(
      :rows,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for one of the listed recommendation templates.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListRecommendationTemplatesInput < Struct.new(
      :assessment_arn,
      :reverse_order,
      :status,
      :recommendation_template_arn,
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    # @!attribute recommendation_templates
    #   <p>The recommendation templates for the Resilience Hub applications.</p>
    #   @return [Array<Types::RecommendationTemplate>]
    class ListRecommendationTemplatesOutput < Struct.new(
      :next_token,
      :recommendation_templates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>Name of the resiliency policy.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListResiliencyPoliciesInput < Struct.new(
      :policy_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resiliency_policies
    #   <p>The resiliency policies for the Resilience Hub applications.</p>
    #   @return [Array<Types::ResiliencyPolicy>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListResiliencyPoliciesOutput < Struct.new(
      :resiliency_policies,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of grouping recommendations to be displayed per Resilience Hub application.</p>
    #   @return [Integer]
    class ListResourceGroupingRecommendationsRequest < Struct.new(
      :app_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute grouping_recommendations
    #   <p>List of resource grouping recommendations generated by Resilience Hub.</p>
    #   @return [Array<Types::GroupingRecommendation>]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    class ListResourceGroupingRecommendationsResponse < Struct.new(
      :grouping_recommendations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class ListSopRecommendationsInput < Struct.new(
      :next_token,
      :max_results,
      :assessment_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    # @!attribute sop_recommendations
    #   <p>The standard operating procedure (SOP) recommendations for the Resilience Hub
    #         applications.</p>
    #   @return [Array<Types::SopRecommendation>]
    class ListSopRecommendationsOutput < Struct.new(
      :next_token,
      :sop_recommendations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListSuggestedResiliencyPoliciesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resiliency_policies
    #   <p>The suggested resiliency policies for the Resilience Hub applications.</p>
    #   @return [Array<Types::ResiliencyPolicy>]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListSuggestedResiliencyPoliciesOutput < Struct.new(
      :resiliency_policies,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a specific resource in your Resilience Hub
    #         application.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class ListTestRecommendationsInput < Struct.new(
      :next_token,
      :max_results,
      :assessment_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    # @!attribute test_recommendations
    #   <p>The test recommendations for the Resilience Hub application.</p>
    #   @return [Array<Types::TestRecommendation>]
    class ListTestRecommendationsOutput < Struct.new(
      :next_token,
      :test_recommendations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListUnsupportedAppVersionResourcesInput < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute unsupported_resources
    #   <p>The unsupported resources for the application.</p>
    #   @return [Array<Types::UnsupportedResource>]
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Token for the next set of results, or null if there are no more results.</p>
    #   @return [String]
    class ListUnsupportedAppVersionResourcesOutput < Struct.new(
      :unsupported_resources,
      :resolution_id,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a logical resource identifier.</p>
    # @!attribute identifier
    #   <p>Identifier of the resource.</p>
    #   @return [String]
    # @!attribute logical_stack_name
    #   <p>The name of the CloudFormation stack this resource belongs to.</p>
    #   @return [String]
    # @!attribute resource_group_name
    #   <p>The name of the resource group that this resource belongs to.</p>
    #   @return [String]
    # @!attribute terraform_source_name
    #   <p> The name of the Terraform S3 state file this resource belongs to. </p>
    #   @return [String]
    # @!attribute eks_source_name
    #   <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #            <note>
    #               <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #            </note>
    #   @return [String]
    class LogicalResourceId < Struct.new(
      :identifier,
      :logical_stack_name,
      :resource_group_name,
      :terraform_source_name,
      :eks_source_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MetricsExportStatusType
      PENDING = 'Pending'
      IN_PROGRESS = 'InProgress'
      FAILED = 'Failed'
      SUCCESS = 'Success'
    end

    # <p>Defines the roles and credentials that Resilience Hub would use while creating the
    #       application, importing its resources, and running an assessment.</p>
    # @!attribute type
    #   <p>Defines how Resilience Hub scans your resources. It can scan for the resources by
    #         using a pre-existing role in your Amazon Web Services account, or by using the credentials of
    #         the current IAM user.</p>
    #   @return [String]
    # @!attribute invoker_role_name
    #   <p>Existing Amazon Web Services
    #         IAM role name in the primary Amazon Web Services account that will be assumed by
    #           Resilience Hub Service Principle to obtain a read-only access to your application
    #         resources while running an assessment. </p>
    #            <p>If your IAM role includes a path, you must include the path in the <code>invokerRoleName</code> parameter. 
    #         For example, if your IAM role's ARN is <code>arn:aws:iam:123456789012:role/my-path/role-name</code>, you should pass <code>my-path/role-name</code>.
    #       </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>You must have <code>iam:passRole</code> permission for this role while creating or
    #               updating the application.</p>
    #                  </li>
    #                  <li>
    #                     <p>Currently, <code>invokerRoleName</code> accepts only <code>[A-Za-z0-9_+=,.@-]</code>
    #               characters.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute cross_account_role_arns
    #   <p>Defines a list of role Amazon Resource Names (ARNs) to be used in other accounts. These
    #         ARNs are used for querying purposes while importing resources and assessing your
    #         application.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>These ARNs are required only when your resources are in other accounts and you have
    #               different role name in these accounts. Else, the invoker role name will be used in the
    #               other accounts.</p>
    #                  </li>
    #                  <li>
    #                     <p>These roles must have a trust policy with <code>iam:AssumeRole</code> permission to
    #               the invoker role in the primary account.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<String>]
    class PermissionModel < Struct.new(
      :type,
      :invoker_role_name,
      :cross_account_role_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PermissionModelType
      LEGACY_IAM_USER = 'LegacyIAMUser'
      ROLE_BASED = 'RoleBased'
    end

    module PhysicalIdentifierType
      ARN = 'Arn'
      NATIVE = 'Native'
    end

    # <p>Defines a physical resource. A physical resource is a resource that exists in your
    #       account. It can be identified using an Amazon Resource Name (ARN) or an Resilience Hub-native identifier. </p>
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute physical_resource_id
    #   <p>Identifier of the physical resource.</p>
    #   @return [Types::PhysicalResourceId]
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #   @return [String]
    # @!attribute app_components
    #   <p>The application components that belong to this resource.</p>
    #   @return [Array<Types::AppComponent>]
    # @!attribute additional_info
    #   <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #            <note>
    #               <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #               <p>Key: <code>"failover-regions"</code>
    #               </p>
    #               <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #               </p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    # @!attribute excluded
    #   <p>Indicates if a resource is included or excluded from the assessment.</p>
    #   @return [Boolean]
    # @!attribute source_type
    #   <p>Type of input source.</p>
    #   @return [String]
    # @!attribute parent_resource_name
    #   <p>Name of the parent resource.</p>
    #   @return [String]
    class PhysicalResource < Struct.new(
      :resource_name,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :app_components,
      :additional_info,
      :excluded,
      :source_type,
      :parent_resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a physical resource identifier.</p>
    # @!attribute identifier
    #   <p>Identifier of the physical resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of physical resource identifier.</p>
    #            <dl>
    #               <dt>Arn</dt>
    #               <dd>
    #                  <p>The resource identifier is an Amazon Resource Name (ARN) and it can identify the
    #               following list of resources:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ECS::Service</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EFS::FileSystem</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::Lambda::Function</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::SNS::Topic</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>Native</dt>
    #               <dd>
    #                  <p>The resource identifier is an Resilience Hub-native identifier and it can
    #               identify the following list of resources:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ApiGateway::RestApi</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ApiGatewayV2::Api</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::AutoScaling::AutoScalingGroup</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DocDB::DBCluster</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DocDB::DBGlobalCluster</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DocDB::DBInstance</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DynamoDB::GlobalTable</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::DynamoDB::Table</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::EC2Fleet</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::Instance</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::NatGateway</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::Volume</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ElasticLoadBalancing::LoadBalancer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::RDS::DBCluster</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::RDS::DBInstance</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::RDS::GlobalCluster</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::Route53::RecordSet</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::S3::Bucket</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::SQS::Queue</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region that the physical resource is located in.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account that owns the physical resource.</p>
    #   @return [String]
    class PhysicalResourceId < Struct.new(
      :identifier,
      :type,
      :aws_region,
      :aws_account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>Name of the application version.</p>
    #   @return [String]
    class PublishAppVersionInput < Struct.new(
      :app_arn,
      :version_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Identifier of the application version.</p>
    #   @return [Integer]
    # @!attribute version_name
    #   <p>Name of the application version.</p>
    #   @return [String]
    class PublishAppVersionOutput < Struct.new(
      :app_arn,
      :app_version,
      :identifier,
      :version_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_template_body
    #   <p>A JSON string that provides information about your application structure. To learn more
    #         about the <code>appTemplateBody</code> template, see the sample template provided in the
    #           <i>Examples</i> section.</p>
    #            <p>The <code>appTemplateBody</code> JSON string has the following structure:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>resources</code>
    #                     </b>
    #                  </p>
    #                  <p>The list of logical resources that must be included in the Resilience Hub
    #             application.</p>
    #                  <p>Type: Array</p>
    #                  <note>
    #                     <p>Don't add the resources that you want to exclude.</p>
    #                  </note>
    #                  <p>Each <code>resources</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>logicalResourceId</code>
    #                           </i>
    #                        </p>
    #                        <p>Logical identifier of the resource.</p>
    #                        <p>Type: Object</p>
    #                        <p>Each <code>logicalResourceId</code> object includes the following fields:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>identifier</code>
    #                              </p>
    #                              <p>Identifier of the resource.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>logicalStackName</code>
    #                              </p>
    #                              <p>The name of the CloudFormation stack this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>resourceGroupName</code>
    #                              </p>
    #                              <p>The name of the resource group this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>terraformSourceName</code>
    #                              </p>
    #                              <p>The name of the Terraform S3 state file this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>eksSourceName</code>
    #                              </p>
    #                              <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #                              <note>
    #                                 <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #                              </note>
    #                              <p>Type: String</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>type</code>
    #                           </i>
    #                        </p>
    #                        <p>The type of resource.</p>
    #                        <p>Type: string</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>name</code>
    #                           </i>
    #                        </p>
    #                        <p>The name of the resource.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>additionalInfo</code>
    #                        </p>
    #                        <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                        <note>
    #                           <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                           <p>Key: <code>"failover-regions"</code>
    #                           </p>
    #                           <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                           </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>appComponents</code>
    #                     </b>
    #                  </p>
    #                  <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    #                  <p>Type: Array</p>
    #                  <p>Each <code>appComponents</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>name</code>
    #                        </p>
    #                        <p>Name of the Application Component.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>type</code>
    #                        </p>
    #                        <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>resourceNames</code>
    #                        </p>
    #                        <p>The list of included resources that are assigned to the Application Component.</p>
    #                        <p>Type: Array of strings</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>additionalInfo</code>
    #                        </p>
    #                        <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                        <note>
    #                           <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                           <p>Key: <code>"failover-regions"</code>
    #                           </p>
    #                           <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                           </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>excludedResources</code>
    #                     </b>
    #                  </p>
    #                  <p>The list of logical resource identifiers to be excluded from the application.</p>
    #                  <p>Type: Array</p>
    #                  <note>
    #                     <p>Don't add the resources that you want to include.</p>
    #                  </note>
    #                  <p>Each <code>excludedResources</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>logicalResourceIds</code>
    #                           </i>
    #                        </p>
    #                        <p>Logical identifier of the resource.</p>
    #                        <p>Type: Object</p>
    #                        <note>
    #                           <p>You can configure only one of the following fields:</p>
    #                           <ul>
    #                              <li>
    #                                 <p>
    #                                    <code>logicalStackName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>resourceGroupName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>terraformSourceName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>eksSourceName</code>
    #                                 </p>
    #                              </li>
    #                           </ul>
    #                        </note>
    #                        <p>Each <code>logicalResourceIds</code> object includes the following fields:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>identifier</code>
    #                              </p>
    #                              <p>Identifier of the resource.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>logicalStackName</code>
    #                              </p>
    #                              <p>The name of the CloudFormation stack this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>resourceGroupName</code>
    #                              </p>
    #                              <p>The name of the resource group this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>terraformSourceName</code>
    #                              </p>
    #                              <p>The name of the Terraform S3 state file this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>eksSourceName</code>
    #                              </p>
    #                              <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #                              <note>
    #                                 <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #                              </note>
    #                              <p>Type: String</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>version</code>
    #                     </b>
    #                  </p>
    #                  <p>Resilience Hub application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>additionalInfo</code>
    #                  </p>
    #                  <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                  <note>
    #                     <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                     <p>Key: <code>"failover-regions"</code>
    #                     </p>
    #                     <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    class PutDraftAppVersionTemplateInput < Struct.new(
      :app_arn,
      :app_template_body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    class PutDraftAppVersionTemplateOutput < Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecommendationComplianceStatus
      BREACHED_UNATTAINABLE = 'BreachedUnattainable'
      BREACHED_CAN_MEET = 'BreachedCanMeet'
      MET_CAN_IMPROVE = 'MetCanImprove'
      MISSING_POLICY = 'MissingPolicy'
    end

    # <p>Defines a disruption compliance recommendation.</p>
    # @!attribute expected_compliance_status
    #   <p>The expected compliance status after applying the recommended configuration change.</p>
    #   @return [String]
    # @!attribute expected_rto_in_secs
    #   <p>The expected RTO after applying the recommended configuration change.</p>
    #   @return [Integer]
    # @!attribute expected_rto_description
    #   <p>The expected Recovery Time Objective (RTO) description after applying the recommended
    #         configuration change.</p>
    #   @return [String]
    # @!attribute expected_rpo_in_secs
    #   <p>The expected RPO after applying the recommended configuration change.</p>
    #   @return [Integer]
    # @!attribute expected_rpo_description
    #   <p>The expected Recovery Point Objective (RPO) description after applying the recommended
    #         configuration change.</p>
    #   @return [String]
    class RecommendationDisruptionCompliance < Struct.new(
      :expected_compliance_status,
      :expected_rto_in_secs,
      :expected_rto_description,
      :expected_rpo_in_secs,
      :expected_rpo_description,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:expected_rto_in_secs] = 0 unless options.key?(:expected_rto_in_secs)
        options[:expected_rpo_in_secs] = 0 unless options.key?(:expected_rpo_in_secs)
        super
      end
    end

    # <p>Defines a recommendation.</p>
    # @!attribute resource_id
    #   <p>Identifier of the resource.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>Identifier of the target account.</p>
    #   @return [String]
    # @!attribute target_region
    #   <p>The target region.</p>
    #   @return [String]
    # @!attribute already_implemented
    #   <p>Specifies if the recommendation has already been implemented.</p>
    #   @return [Boolean]
    # @!attribute excluded
    #   <p>Indicates if an operational recommendation item is excluded.</p>
    #   @return [Boolean]
    # @!attribute exclude_reason
    #   <p>Indicates the reason for excluding an operational recommendation.</p>
    #   @return [String]
    # @!attribute latest_discovered_experiment
    #   <p>Indicates the experiment created in FIS that was discovered by Resilience Hub, which matches the recommendation.</p>
    #   @return [Types::Experiment]
    # @!attribute discovered_alarm
    #   <p>Indicates the previously implemented Amazon CloudWatch alarm discovered by Resilience Hub.</p>
    #   @return [Types::Alarm]
    class RecommendationItem < Struct.new(
      :resource_id,
      :target_account_id,
      :target_region,
      :already_implemented,
      :excluded,
      :exclude_reason,
      :latest_discovered_experiment,
      :discovered_alarm,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecommendationStatus
      IMPLEMENTED = 'Implemented'
      INACTIVE = 'Inactive'
      NOT_IMPLEMENTED = 'NotImplemented'
      EXCLUDED = 'Excluded'
    end

    # <p>Defines a recommendation template created with the <a>CreateRecommendationTemplate</a> action.</p>
    # @!attribute templates_location
    #   <p>The file location of the template.</p>
    #   @return [Types::S3Location]
    # @!attribute assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute recommendation_ids
    #   <p>Identifiers for the recommendations used in the recommendation template.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_types
    #   <p>An array of strings that specify the recommendation template type or types.</p>
    #            <dl>
    #               <dt>Alarm</dt>
    #               <dd>
    #                  <p>The template is an <a>AlarmRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Sop</dt>
    #               <dd>
    #                  <p>The template is a <a>SopRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Test</dt>
    #               <dd>
    #                  <p>The template is a <a>TestRecommendation</a> template.</p>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute format
    #   <p>Format of the recommendation template.</p>
    #            <dl>
    #               <dt>CfnJson</dt>
    #               <dd>
    #                  <p>The template is CloudFormation JSON.</p>
    #               </dd>
    #               <dt>CfnYaml</dt>
    #               <dd>
    #                  <p>The template is CloudFormation YAML.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute recommendation_template_arn
    #   <p>Amazon Resource Name (ARN) for the recommendation template.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Message for the recommendation template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the recommendation template.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for the action.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the action.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    # @!attribute needs_replacements
    #   <p>Indicates if replacements are needed.</p>
    #   @return [Boolean]
    class RecommendationTemplate < Struct.new(
      :templates_location,
      :assessment_arn,
      :app_arn,
      :recommendation_ids,
      :recommendation_types,
      :format,
      :recommendation_template_arn,
      :message,
      :status,
      :name,
      :start_time,
      :end_time,
      :tags,
      :needs_replacements,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RecommendationTemplateStatus
      PENDING = 'Pending'
      IN_PROGRESS = 'InProgress'
      FAILED = 'Failed'
      SUCCESS = 'Success'
    end

    # <p>Indicates the rejected grouping recommendation.</p>
    # @!attribute grouping_recommendation_id
    #   <p>Indicates the identifier of the grouping recommendation.</p>
    #   @return [String]
    # @!attribute rejection_reason
    #   <p>Indicates the reason you had selected while rejecting a grouping recommendation.</p>
    #   @return [String]
    class RejectGroupingRecommendationEntry < Struct.new(
      :grouping_recommendation_id,
      :rejection_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>List of resource grouping recommendations you have selected to exclude from your application.</p>
    #   @return [Array<Types::RejectGroupingRecommendationEntry>]
    class RejectResourceGroupingRecommendationsRequest < Struct.new(
      :app_arn,
      :entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute failed_entries
    #   <p>List of resource grouping recommendations that failed to get excluded in your application.</p>
    #   @return [Array<Types::FailedGroupingRecommendationEntry>]
    class RejectResourceGroupingRecommendationsResponse < Struct.new(
      :app_arn,
      :failed_entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute resource_names
    #   <p>The names of the resources you want to remove from the resource mappings.</p>
    #   @return [Array<String>]
    # @!attribute logical_stack_names
    #   <p>The names of the CloudFormation stacks you want to remove from the resource mappings.</p>
    #   @return [Array<String>]
    # @!attribute app_registry_app_names
    #   <p>The names of the registered applications you want to remove from the resource
    #         mappings.</p>
    #   @return [Array<String>]
    # @!attribute resource_group_names
    #   <p>The names of the resource groups you want to remove from the resource mappings.</p>
    #   @return [Array<String>]
    # @!attribute terraform_source_names
    #   <p>The names of the Terraform sources you want to remove from the resource mappings.</p>
    #   @return [Array<String>]
    # @!attribute eks_source_names
    #   <p>The names of the Amazon Elastic Kubernetes Service clusters and namespaces you want to remove from
    #         the resource mappings.</p>
    #            <note>
    #               <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #            </note>
    #   @return [Array<String>]
    class RemoveDraftAppVersionResourceMappingsInput < Struct.new(
      :app_arn,
      :resource_names,
      :logical_stack_names,
      :app_registry_app_names,
      :resource_group_names,
      :terraform_source_names,
      :eks_source_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    class RemoveDraftAppVersionResourceMappingsOutput < Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RenderRecommendationType
      ALARM = 'Alarm'
      SOP = 'Sop'
      TEST = 'Test'
    end

    # <p>Defines a resiliency policy.</p>
    #          <note>
    #             <p>Resilience Hub allows you to provide a value of zero for <code>rtoInSecs</code>
    #         and <code>rpoInSecs</code> of your resiliency policy. But, while assessing your application,
    #         the lowest possible assessment result is near zero. Hence, if you provide value zero for
    #           <code>rtoInSecs</code> and <code>rpoInSecs</code>, the estimated workload RTO and
    #         estimated workload RPO result will be near zero and the <b>Compliance
    #           status</b> for your application will be set to <b>Policy
    #           breached</b>.</p>
    #          </note>
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>Description of the resiliency policy.</p>
    #   @return [String]
    # @!attribute data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #   @return [String]
    # @!attribute estimated_cost_tier
    #   <p>Specifies the estimated cost tier of the resiliency policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resiliency policy.</p>
    #   @return [Hash<String, Types::FailurePolicy>]
    # @!attribute creation_time
    #   <p>Date and time when the resiliency policy was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    class ResiliencyPolicy < Struct.new(
      :policy_arn,
      :policy_name,
      :policy_description,
      :data_location_constraint,
      :tier,
      :estimated_cost_tier,
      :policy,
      :creation_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResiliencyPolicyTier
      MISSION_CRITICAL = 'MissionCritical'
      CRITICAL = 'Critical'
      IMPORTANT = 'Important'
      CORE_SERVICES = 'CoreServices'
      NON_CRITICAL = 'NonCritical'
      NOT_APPLICABLE = 'NotApplicable'
    end

    # <p>The overall resiliency score, returned as an object that includes the disruption score and
    #       outage score.</p>
    # @!attribute score
    #   <p>The outage score for a valid key.</p>
    #   @return [Float]
    # @!attribute disruption_score
    #   <p>The disruption score for a valid key.</p>
    #   @return [Hash<String, Float>]
    # @!attribute component_score
    #   <p>The score generated by Resilience Hub for the scoring component after running an
    #         assessment.</p>
    #            <p>For example, if the <code>score</code> is 25 points, it indicates the overall score of
    #         your application generated by Resilience Hub after running an assessment.</p>
    #   @return [Hash<String, Types::ScoringComponentResiliencyScore>]
    class ResiliencyScore < Struct.new(
      :score,
      :disruption_score,
      :component_score,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    module ResiliencyScoreType
      COMPLIANCE = 'Compliance'
      TEST = 'Test'
      ALARM = 'Alarm'
      SOP = 'Sop'
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    class ResolveAppVersionResourcesInput < Struct.new(
      :app_arn,
      :app_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    class ResolveAppVersionResourcesOutput < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates the resources that have drifted in the current application version.</p>
    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the application whose resources have drifted. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Version of the application whose resources have drifted.</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>Reference identifier of the resource drift.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Identifier of the drifted resource.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute diff_type
    #   <p>Indicates if the resource was added or removed.</p>
    #   @return [String]
    class ResourceDrift < Struct.new(
      :app_arn,
      :app_version,
      :reference_id,
      :resource_identifier,
      :diff_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Defines application resource errors. </p>
    # @!attribute logical_resource_id
    #   <p>Identifier of the logical resource. </p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>Identifier of the physical resource. </p>
    #   @return [String]
    # @!attribute reason
    #   <p> This is the error message. </p>
    #   @return [String]
    class ResourceError < Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A list of errors retrieving an application's resources. </p>
    # @!attribute resource_errors
    #   <p> A list of errors retrieving an application's resources. </p>
    #   @return [Array<Types::ResourceError>]
    # @!attribute has_more_errors
    #   <p> This indicates if there are more errors not listed in the <code>resourceErrors</code>
    #         list. </p>
    #   @return [Boolean]
    class ResourceErrorsDetails < Struct.new(
      :resource_errors,
      :has_more_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a resource identifier for the drifted resource.</p>
    # @!attribute logical_resource_id
    #   <p>Logical identifier of the drifted resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute resource_type
    #   <p>Type of the drifted resource.</p>
    #   @return [String]
    class ResourceIdentifier < Struct.new(
      :logical_resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceImportStatusType
      PENDING = 'Pending'
      IN_PROGRESS = 'InProgress'
      FAILED = 'Failed'
      SUCCESS = 'Success'
    end

    module ResourceImportStrategyType
      ADD_ONLY = 'AddOnly'
      REPLACE_ALL = 'ReplaceAll'
    end

    # <p>Defines a resource mapping.</p>
    # @!attribute resource_name
    #   <p>Name of the resource that this resource is mapped to when the <code>mappingType</code> is <code>Resource</code>.</p>
    #   @return [String]
    # @!attribute logical_stack_name
    #   <p>Name of the CloudFormation stack this resource is mapped to when the <code>mappingType</code> is <code>CfnStack</code>.</p>
    #   @return [String]
    # @!attribute app_registry_app_name
    #   <p>Name of the application this resource is mapped to when the <code>mappingType</code> is <code>AppRegistryApp</code>.</p>
    #   @return [String]
    # @!attribute resource_group_name
    #   <p>Name of the Resource Groups that this resource is mapped to when the <code>mappingType</code> is <code>ResourceGroup</code>.</p>
    #   @return [String]
    # @!attribute mapping_type
    #   <p>Specifies the type of resource mapping.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>Identifier of the physical resource.</p>
    #   @return [Types::PhysicalResourceId]
    # @!attribute terraform_source_name
    #   <p>Name of the Terraform source that this resource is mapped to when the <code>mappingType</code> is <code>Terraform</code>.</p>
    #   @return [String]
    # @!attribute eks_source_name
    #   <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace that this resource is mapped to when the <code>mappingType</code> is
    #         <code>EKS</code>.</p>
    #            <note>
    #               <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #            </note>
    #   @return [String]
    class ResourceMapping < Struct.new(
      :resource_name,
      :logical_stack_name,
      :app_registry_app_name,
      :resource_group_name,
      :mapping_type,
      :physical_resource_id,
      :terraform_source_name,
      :eks_source_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceMappingType
      CFN_STACK = 'CfnStack'
      RESOURCE = 'Resource'
      APP_REGISTRY_APP = 'AppRegistryApp'
      RESOURCE_GROUP = 'ResourceGroup'
      TERRAFORM = 'Terraform'
      EKS = 'EKS'
    end

    # <p>This exception occurs when the specified resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that the exception applies to.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that the exception applies to.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceResolutionStatusType
      PENDING = 'Pending'
      IN_PROGRESS = 'InProgress'
      FAILED = 'Failed'
      SUCCESS = 'Success'
    end

    module ResourceSourceType
      APP_TEMPLATE = 'AppTemplate'
      DISCOVERED = 'Discovered'
    end

    module ResourcesGroupingRecGenStatusType
      PENDING = 'Pending'
      IN_PROGRESS = 'InProgress'
      FAILED = 'Failed'
      SUCCESS = 'Success'
    end

    # <p>The location of the Amazon S3 bucket.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix for the Amazon S3 bucket.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Resiliency score of each scoring component. For more information about scoring component,
    #       see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/calculate-score.html">Calculating resiliency score</a>.</p>
    # @!attribute score
    #   <p>Resiliency score points given for the scoring component. The score is always less than or
    #         equal to the <code>possibleScore</code>.</p>
    #   @return [Float]
    # @!attribute possible_score
    #   <p>Maximum possible score that can be obtained for the scoring component. </p>
    #            <p>For example, if the <code>possibleScore</code> is 20 points, it indicates the maximum
    #         possible score you can achieve for the scoring component when you run a new assessment after
    #         implementing all the Resilience Hub recommendations.</p>
    #   @return [Float]
    # @!attribute outstanding_count
    #   <p>Number of recommendations that must be implemented to obtain the maximum possible score
    #         for the scoring component. For SOPs, alarms, and tests, these are the number of
    #         recommendations that must be implemented. For compliance, these are the number of Application
    #         Components that have breached the resiliency policy.</p>
    #            <p>For example, if the <code>outstandingCount</code> for Alarms coverage scoring component is
    #         5, it indicates that 5 Amazon CloudWatch alarms need to be implemented to achieve the
    #         maximum possible score.</p>
    #   @return [Integer]
    # @!attribute excluded_count
    #   <p>Number of recommendations that were excluded from the assessment.</p>
    #            <p>For example, if the <code>excludedCount</code> for Alarms coverage scoring component is 7,
    #         it indicates that 7 Amazon CloudWatch alarms are excluded from the assessment.</p>
    #   @return [Integer]
    class ScoringComponentResiliencyScore < Struct.new(
      :score,
      :possible_score,
      :outstanding_count,
      :excluded_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        options[:possible_score] = 0 unless options.key?(:possible_score)
        options[:outstanding_count] = 0 unless options.key?(:outstanding_count)
        options[:excluded_count] = 0 unless options.key?(:excluded_count)
        super
      end
    end

    # <p>This exception occurs when you have exceeded your service quota. To perform the requested action, remove some of the
    #       relevant resources, or use Service Quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a standard operating procedure (SOP) recommendation.</p>
    # @!attribute service_type
    #   <p>The service type.</p>
    #   @return [String]
    # @!attribute app_component_name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the SOP recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>Identifier for the SOP recommendation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the SOP recommendation.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The recommendation items.</p>
    #   @return [Array<Types::RecommendationItem>]
    # @!attribute reference_id
    #   <p>Reference identifier for the SOP recommendation.</p>
    #   @return [String]
    # @!attribute prerequisite
    #   <p>Prerequisite for the SOP recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_status
    #   <p>Status of the recommended standard operating procedure.</p>
    #   @return [String]
    class SopRecommendation < Struct.new(
      :service_type,
      :app_component_name,
      :description,
      :recommendation_id,
      :name,
      :items,
      :reference_id,
      :prerequisite,
      :recommendation_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SopServiceType
      SSM = 'SSM'
    end

    # <p>Indicates the sorting order of the fields in the metrics.</p>
    # @!attribute field
    #   <p>Indicates the order in which you want to sort the metrics. By default, the list is sorted in ascending order. To sort the list in descending order, set this field to False.</p>
    #   @return [String]
    # @!attribute ascending
    #   <p>Indicates the name or identifier of the field or attribute that should be used as the basis for sorting the metrics.</p>
    #   @return [Boolean]
    class Sort < Struct.new(
      :field,
      :ascending,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the application.</p>
    #   @return [String]
    # @!attribute assessment_name
    #   <p>The name for the assessment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    class StartAppAssessmentInput < Struct.new(
      :app_arn,
      :app_version,
      :assessment_name,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment
    #   <p>The assessment created.</p>
    #   @return [Types::AppAssessment]
    class StartAppAssessmentOutput < Struct.new(
      :assessment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>(Optional) Specifies the name of the Amazon Simple Storage Service bucket where the exported metrics will be stored.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    #   @return [String]
    class StartMetricsExportRequest < Struct.new(
      :bucket_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute metrics_export_id
    #   <p>Identifier of the metrics export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the status of the metrics export task.</p>
    #   @return [String]
    class StartMetricsExportResponse < Struct.new(
      :metrics_export_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    class StartResourceGroupingRecommendationTaskRequest < Struct.new(
      :app_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute grouping_id
    #   <p>Identifier of the grouping recommendation task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the action.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error that occurred while executing a grouping recommendation task.</p>
    #   @return [String]
    class StartResourceGroupingRecommendationTaskResponse < Struct.new(
      :app_arn,
      :grouping_id,
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the resource. Each tag consists of a key/value pair.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TemplateFormat
      CFN_YAML = 'CfnYaml'
      CFN_JSON = 'CfnJson'
    end

    # <p> The Terraform s3 state file you need to import. </p>
    # @!attribute s3_state_file_url
    #   <p> The URL of the Terraform s3 state file you need to import. </p>
    #   @return [String]
    class TerraformSource < Struct.new(
      :s3_state_file_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a test recommendation.</p>
    # @!attribute recommendation_id
    #   <p>Identifier for the test recommendation.</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>Reference identifier for the test recommendation.</p>
    #   @return [String]
    # @!attribute app_component_id
    #   <p>Indicates the identifier of the AppComponent.</p>
    #   @return [String]
    # @!attribute app_component_name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the test recommendation.</p>
    #   @return [String]
    # @!attribute intent
    #   <p>Intent of the test recommendation.</p>
    #   @return [String]
    # @!attribute risk
    #   <p>Level of risk for this test recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of test recommendation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description for the test recommendation.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The test recommendation items.</p>
    #   @return [Array<Types::RecommendationItem>]
    # @!attribute prerequisite
    #   <p>Prerequisite of the test recommendation.</p>
    #   @return [String]
    # @!attribute depends_on_alarms
    #   <p> A list of recommended alarms that are used in the test and must be exported before or
    #         with the test. </p>
    #   @return [Array<String>]
    # @!attribute recommendation_status
    #   <p>Status of the recommended test.</p>
    #   @return [String]
    class TestRecommendation < Struct.new(
      :recommendation_id,
      :reference_id,
      :app_component_id,
      :app_component_name,
      :name,
      :intent,
      :risk,
      :type,
      :description,
      :items,
      :prerequisite,
      :depends_on_alarms,
      :recommendation_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TestRisk
      SMALL = 'Small'
      MEDIUM = 'Medium'
      HIGH = 'High'
    end

    module TestType
      SOFTWARE = 'Software'
      HARDWARE = 'Hardware'
      AZ = 'AZ'
      REGION = 'Region'
    end

    # <p>This exception occurs when you have exceeded the limit on the number of requests per second.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a resource that is not supported by Resilience Hub.</p>
    # @!attribute logical_resource_id
    #   <p>Logical resource identifier for the unsupported resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute physical_resource_id
    #   <p>Physical resource identifier for the unsupported resource.</p>
    #   @return [Types::PhysicalResourceId]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute unsupported_resource_status
    #   <p>The status of the unsupported resource.</p>
    #   @return [String]
    class UnsupportedResource < Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :unsupported_resource_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for an app.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute clear_resiliency_policy_arn
    #   <p>Specifies if the resiliency policy ARN should be cleared.</p>
    #   @return [Boolean]
    # @!attribute assessment_schedule
    #   <p> Assessment execution schedule with 'Daily' or 'Disabled' values. </p>
    #   @return [String]
    # @!attribute permission_model
    #   <p>Defines the roles and credentials that Resilience Hub would use while creating an
    #         application, importing its resources, and running an assessment.</p>
    #   @return [Types::PermissionModel]
    # @!attribute event_subscriptions
    #   <p>The list of events you would like to subscribe and get notification for. Currently,
    #           Resilience Hub supports notifications only for <b>Drift
    #           detected</b> and <b>Scheduled assessment failure</b>
    #         events.</p>
    #   @return [Array<Types::EventSubscription>]
    class UpdateAppInput < Struct.new(
      :app_arn,
      :description,
      :policy_arn,
      :clear_resiliency_policy_arn,
      :assessment_schedule,
      :permission_model,
      :event_subscriptions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app
    #   <p>The specified application, returned as an object with details including compliance status,
    #         creation time, description, resiliency score, and more.</p>
    #   @return [Types::App]
    class UpdateAppOutput < Struct.new(
      :app,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier of the Application Component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the Application Component.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Currently, there is no supported additional information for Application Components.</p>
    #   @return [Hash<String, Array<String>>]
    class UpdateAppVersionAppComponentInput < Struct.new(
      :app_arn,
      :id,
      :name,
      :type,
      :additional_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute app_component
    #   <p>List of Application Components that belong to this resource.</p>
    #   @return [Types::AppComponent]
    class UpdateAppVersionAppComponentOutput < Struct.new(
      :app_arn,
      :app_version,
      :app_component,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #            <note>
    #               <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #               <p>Key: <code>"failover-regions"</code>
    #               </p>
    #               <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #               </p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    class UpdateAppVersionInput < Struct.new(
      :app_arn,
      :additional_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute additional_info
    #   <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #            <note>
    #               <p>Currently, this parameter supports only failover region and account.</p>
    #            </note>
    #   @return [Hash<String, Array<String>>]
    class UpdateAppVersionOutput < Struct.new(
      :app_arn,
      :app_version,
      :additional_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    #   @return [Types::LogicalResourceId]
    # @!attribute physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #   @return [String]
    # @!attribute app_components
    #   <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    #   @return [Array<String>]
    # @!attribute additional_info
    #   <p>Currently, there is no supported additional information for resources.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute excluded
    #   <p>Indicates if a resource is excluded from an Resilience Hub application.</p>
    #            <note>
    #               <p>You can exclude only imported resources from an Resilience Hub
    #           application.</p>
    #            </note>
    #   @return [Boolean]
    class UpdateAppVersionResourceInput < Struct.new(
      :app_arn,
      :resource_name,
      :logical_resource_id,
      :physical_resource_id,
      :aws_region,
      :aws_account_id,
      :resource_type,
      :app_components,
      :additional_info,
      :excluded,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>Resilience Hub application version.</p>
    #   @return [String]
    # @!attribute physical_resource
    #   <p>Defines a physical resource. A physical resource is a resource that exists in your account. It can be identified using an Amazon Resource Name (ARN) or a Resilience Hub-native identifier.</p>
    #   @return [Types::PhysicalResource]
    class UpdateAppVersionResourceOutput < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the operational recommendation item that needs a status update.</p>
    # @!attribute resource_id
    #   <p>Resource identifier of the operational recommendation item.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>Identifier of the target Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute target_region
    #   <p>Identifier of the target Amazon Web Services Region.</p>
    #   @return [String]
    class UpdateRecommendationStatusItem < Struct.new(
      :resource_id,
      :target_account_id,
      :target_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the operational recommendation item that is to be included or excluded.</p>
    # @!attribute entry_id
    #   <p>An identifier for an entry in this batch that is used to communicate the result.</p>
    #            <note>
    #               <p>The <code>entryId</code>s of a batch request need to be unique within a request.</p>
    #            </note>
    #   @return [String]
    # @!attribute reference_id
    #   <p>Reference identifier of the operational recommendation item.</p>
    #   @return [String]
    # @!attribute item
    #   <p>The operational recommendation item.</p>
    #   @return [Types::UpdateRecommendationStatusItem]
    # @!attribute excluded
    #   <p>Indicates if the operational recommendation needs to be excluded. If set to True, the
    #         operational recommendation will be excluded.</p>
    #   @return [Boolean]
    # @!attribute app_component_id
    #   <p>Indicates the identifier of the AppComponent.</p>
    #   @return [String]
    # @!attribute exclude_reason
    #   <p>Indicates the reason for excluding an operational recommendation.</p>
    #   @return [String]
    class UpdateRecommendationStatusRequestEntry < Struct.new(
      :entry_id,
      :reference_id,
      :item,
      :excluded,
      :app_component_id,
      :exclude_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>Name of the resiliency policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>Description of the resiliency policy.</p>
    #   @return [String]
    # @!attribute data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy data can be stored.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds.</p>
    #   @return [Hash<String, Types::FailurePolicy>]
    class UpdateResiliencyPolicyInput < Struct.new(
      :policy_arn,
      :policy_name,
      :policy_description,
      :data_location_constraint,
      :tier,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resiliency policy that was updated, including the recovery time objective
    #         (RTO) and recovery point objective (RPO) in seconds.</p>
    #   @return [Types::ResiliencyPolicy]
    class UpdateResiliencyPolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception occurs when a request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
