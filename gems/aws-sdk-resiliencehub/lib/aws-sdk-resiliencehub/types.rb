# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResilienceHub
  module Types

    # You don't have permissions to perform the requested operation. The
    # user or role that is making the request must have at least one IAM
    # permissions policy attached that grants the required permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resource_mappings
    #   Mappings used to map logical resources from the template to physical
    #   resources. You can use the mapping type `CFN_STACK` if the
    #   application template uses a logical stack name. Or you can map
    #   individual resources by using the mapping type `RESOURCE`. We
    #   recommend using the mapping type `CFN_STACK` if the application is
    #   backed by a CloudFormation stack.
    #   @return [Array<Types::ResourceMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AddDraftAppVersionResourceMappingsRequest AWS API Documentation
    #
    class AddDraftAppVersionResourceMappingsRequest < Struct.new(
      :app_arn,
      :resource_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_mappings
    #   List of sources that are used to map a logical resource from the
    #   template to a physical resource. You can use sources such as
    #   CloudFormation, Terraform state files, AppRegistry applications, or
    #   Amazon EKS.
    #   @return [Array<Types::ResourceMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AddDraftAppVersionResourceMappingsResponse AWS API Documentation
    #
    class AddDraftAppVersionResourceMappingsResponse < Struct.new(
      :app_arn,
      :app_version,
      :resource_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a recommendation for a CloudWatch alarm.
    #
    # @!attribute [rw] app_component_name
    #   Application Component name for the CloudWatch alarm recommendation.
    #   This name is saved as the first item in the `appComponentNames`
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] app_component_names
    #   List of Application Component names for the CloudWatch alarm
    #   recommendation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   Description of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   List of CloudWatch alarm recommendations.
    #   @return [Array<Types::RecommendationItem>]
    #
    # @!attribute [rw] name
    #   Name of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] prerequisite
    #   The prerequisite for the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   Identifier of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_status
    #   Status of the recommended Amazon CloudWatch alarm.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   Reference identifier of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of alarm recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AlarmRecommendation AWS API Documentation
    #
    class AlarmRecommendation < Struct.new(
      :app_component_name,
      :app_component_names,
      :description,
      :items,
      :name,
      :prerequisite,
      :recommendation_id,
      :recommendation_status,
      :reference_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an Resilience Hub application.
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_schedule
    #   Assessment execution schedule with 'Daily' or 'Disabled' values.
    #   @return [String]
    #
    # @!attribute [rw] compliance_status
    #   Current status of compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time when the app was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Optional description for an application.
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   Indicates if compliance drifts (deviations) were detected while
    #   running an assessment for your application.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions
    #   The list of events you would like to subscribe and get notification
    #   for. Currently, Resilience Hub supports notifications only for
    #   **Drift detected** and **Scheduled assessment failure** events.
    #   @return [Array<Types::EventSubscription>]
    #
    # @!attribute [rw] last_app_compliance_evaluation_time
    #   Date and time the most recent compliance evaluation.
    #   @return [Time]
    #
    # @!attribute [rw] last_drift_evaluation_time
    #   Indicates the last time that a drift was evaluated.
    #   @return [Time]
    #
    # @!attribute [rw] last_resiliency_score_evaluation_time
    #   Date and time the most recent resiliency score evaluation.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Name for the application.
    #   @return [String]
    #
    # @!attribute [rw] permission_model
    #   Defines the roles and credentials that Resilience Hub would use
    #   while creating the application, importing its resources, and running
    #   an assessment.
    #   @return [Types::PermissionModel]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   Current resiliency score for the application.
    #   @return [Float]
    #
    # @!attribute [rw] rpo_in_secs
    #   Recovery Point Objective (RPO) in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] rto_in_secs
    #   Recovery Time Objective (RTO) in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Status of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/App AWS API Documentation
    #
    class App < Struct.new(
      :app_arn,
      :assessment_schedule,
      :compliance_status,
      :creation_time,
      :description,
      :drift_status,
      :event_subscriptions,
      :last_app_compliance_evaluation_time,
      :last_drift_evaluation_time,
      :last_resiliency_score_evaluation_time,
      :name,
      :permission_model,
      :policy_arn,
      :resiliency_score,
      :rpo_in_secs,
      :rto_in_secs,
      :status,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Defines an application assessment.
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Version of an application.
    #   @return [String]
    #
    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   Name of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   Current status of the assessment for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   Application compliance against the resiliency policy.
    #   @return [Hash<String,Types::DisruptionCompliance>]
    #
    # @!attribute [rw] compliance_status
    #   Current status of the compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] cost
    #   Cost for the application.
    #   @return [Types::Cost]
    #
    # @!attribute [rw] drift_status
    #   Indicates if compliance drifts (deviations) were detected while
    #   running an assessment for your application.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   End time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] invoker
    #   The entity that invoked the assessment.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error or warning message from the assessment execution
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Resiliency policy of an application.
    #   @return [Types::ResiliencyPolicy]
    #
    # @!attribute [rw] resiliency_score
    #   Current resiliency score for an application.
    #   @return [Types::ResiliencyScore]
    #
    # @!attribute [rw] resource_errors_details
    #   A resource error object containing a list of errors retrieving an
    #   application's resources.
    #   @return [Types::ResourceErrorsDetails]
    #
    # @!attribute [rw] start_time
    #   Starting time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version_name
    #   Version name of the published application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppAssessment AWS API Documentation
    #
    class AppAssessment < Struct.new(
      :app_arn,
      :app_version,
      :assessment_arn,
      :assessment_name,
      :assessment_status,
      :compliance,
      :compliance_status,
      :cost,
      :drift_status,
      :end_time,
      :invoker,
      :message,
      :policy,
      :resiliency_score,
      :resource_errors_details,
      :start_time,
      :tags,
      :version_name)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Defines an application assessment summary.
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Version of an application.
    #   @return [String]
    #
    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   Name of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   Current status of the assessment for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] compliance_status
    #   TCurrent status of compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] cost
    #   Cost for an application.
    #   @return [Types::Cost]
    #
    # @!attribute [rw] drift_status
    #   Indicates if compliance drifts (deviations) were detected while
    #   running an assessment for your application.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   End time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] invoker
    #   Entity that invoked the assessment.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message from the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   Current resiliency score for the application.
    #   @return [Float]
    #
    # @!attribute [rw] start_time
    #   Starting time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] version_name
    #   Name of an application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppAssessmentSummary AWS API Documentation
    #
    class AppAssessmentSummary < Struct.new(
      :app_arn,
      :app_version,
      :assessment_arn,
      :assessment_name,
      :assessment_status,
      :compliance_status,
      :cost,
      :drift_status,
      :end_time,
      :invoker,
      :message,
      :resiliency_score,
      :start_time,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an Application Component.
    #
    # @!attribute [rw] additional_info
    #   Additional configuration parameters for an Resilience Hub
    #   application. If you want to implement `additionalInfo` through the
    #   Resilience Hub console rather than using an API call, see [Configure
    #   the application configuration parameters][1].
    #
    #   <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #   format) of only one failover region and one associated account.
    #
    #    Key: `"failover-regions"`
    #
    #    Value: `"[\{"region":"<REGION>",
    #   "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] id
    #   Identifier of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of Application Component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppComponent AWS API Documentation
    #
    class AppComponent < Struct.new(
      :additional_info,
      :id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the compliance of an Application Component against the
    # resiliency policy.
    #
    # @!attribute [rw] app_component_name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   The compliance of the Application Component against the resiliency
    #   policy.
    #   @return [Hash<String,Types::DisruptionCompliance>]
    #
    # @!attribute [rw] cost
    #   The cost for the application.
    #   @return [Types::Cost]
    #
    # @!attribute [rw] message
    #   The compliance message.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   The current resiliency score for the application.
    #   @return [Types::ResiliencyScore]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppComponentCompliance AWS API Documentation
    #
    class AppComponentCompliance < Struct.new(
      :app_component_name,
      :compliance,
      :cost,
      :message,
      :resiliency_score,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of Resilience Hub application input sources.
    #
    # @!attribute [rw] eks_source_cluster_namespace
    #   The namespace on your Amazon Elastic Kubernetes Service cluster.
    #   @return [Types::EksSourceClusterNamespace]
    #
    # @!attribute [rw] import_type
    #   The resource type of the input source.
    #   @return [String]
    #
    # @!attribute [rw] resource_count
    #   The number of resources.
    #   @return [Integer]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the input source. For more
    #   information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the input source.
    #   @return [String]
    #
    # @!attribute [rw] terraform_source
    #   The name of the Terraform s3 state ﬁle.
    #   @return [Types::TerraformSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppInputSource AWS API Documentation
    #
    class AppInputSource < Struct.new(
      :eks_source_cluster_namespace,
      :import_type,
      :resource_count,
      :source_arn,
      :source_name,
      :terraform_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an application summary.
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_schedule
    #   Assessment execution schedule with 'Daily' or 'Disabled' values.
    #   @return [String]
    #
    # @!attribute [rw] compliance_status
    #   The current status of compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time when the app was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The optional description for an app.
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   Indicates if compliance drifts (deviations) were detected while
    #   running an assessment for your application.
    #   @return [String]
    #
    # @!attribute [rw] last_app_compliance_evaluation_time
    #   Date and time of the most recent compliance evaluation.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   The current resiliency score for the application.
    #   @return [Float]
    #
    # @!attribute [rw] rpo_in_secs
    #   Recovery Point Objective (RPO) in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] rto_in_secs
    #   Recovery Time Objective (RTO) in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Status of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppSummary AWS API Documentation
    #
    class AppSummary < Struct.new(
      :app_arn,
      :assessment_schedule,
      :compliance_status,
      :creation_time,
      :description,
      :drift_status,
      :last_app_compliance_evaluation_time,
      :name,
      :resiliency_score,
      :rpo_in_secs,
      :rto_in_secs,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Version of an application.
    #
    # @!attribute [rw] app_version
    #   Version of an application.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the application version.
    #   @return [Time]
    #
    # @!attribute [rw] identifier
    #   Identifier of the application version.
    #   @return [Integer]
    #
    # @!attribute [rw] version_name
    #   Name of the application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppVersionSummary AWS API Documentation
    #
    class AppVersionSummary < Struct.new(
      :app_version,
      :creation_time,
      :identifier,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of operational recommendations that did not get included or
    # excluded.
    #
    # @!attribute [rw] entry_id
    #   An identifier of an entry in this batch that is used to communicate
    #   the result.
    #
    #   <note markdown="1"> The `entryId`s of a batch request need to be unique within a
    #   request.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Indicates the error that occurred while excluding an operational
    #   recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/BatchUpdateRecommendationStatusFailedEntry AWS API Documentation
    #
    class BatchUpdateRecommendationStatusFailedEntry < Struct.new(
      :entry_id,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] request_entries
    #   Defines the list of operational recommendations that need to be
    #   included or excluded.
    #   @return [Array<Types::UpdateRecommendationStatusRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/BatchUpdateRecommendationStatusRequest AWS API Documentation
    #
    class BatchUpdateRecommendationStatusRequest < Struct.new(
      :app_arn,
      :request_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] failed_entries
    #   A list of items with error details about each item, which could not
    #   be included or excluded.
    #   @return [Array<Types::BatchUpdateRecommendationStatusFailedEntry>]
    #
    # @!attribute [rw] successful_entries
    #   A list of items that were included or excluded.
    #   @return [Array<Types::BatchUpdateRecommendationStatusSuccessfulEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/BatchUpdateRecommendationStatusResponse AWS API Documentation
    #
    class BatchUpdateRecommendationStatusResponse < Struct.new(
      :app_arn,
      :failed_entries,
      :successful_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of operational recommendations that were successfully included or
    # excluded.
    #
    # @!attribute [rw] entry_id
    #   An identifier for an entry in this batch that is used to communicate
    #   the result.
    #
    #   <note markdown="1"> The `entryId`s of a batch request need to be unique within a
    #   request.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] exclude_reason
    #   Indicates the reason for excluding an operational recommendation.
    #   @return [String]
    #
    # @!attribute [rw] excluded
    #   Indicates if the operational recommendation was successfully
    #   excluded.
    #   @return [Boolean]
    #
    # @!attribute [rw] item
    #   The operational recommendation item.
    #   @return [Types::UpdateRecommendationStatusItem]
    #
    # @!attribute [rw] reference_id
    #   Reference identifier of the operational recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/BatchUpdateRecommendationStatusSuccessfulEntry AWS API Documentation
    #
    class BatchUpdateRecommendationStatusSuccessfulEntry < Struct.new(
      :entry_id,
      :exclude_reason,
      :excluded,
      :item,
      :reference_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the compliance drifts (recovery time objective (RTO) and
    # recovery point objective (RPO)) that were detected for an assessed
    # entity.
    #
    # @!attribute [rw] actual_reference_id
    #   Assessment identifier that is associated with this drift item.
    #   @return [String]
    #
    # @!attribute [rw] actual_value
    #   Actual compliance value of the entity.
    #   @return [Hash<String,Types::DisruptionCompliance>]
    #
    # @!attribute [rw] app_id
    #   Identifier of your application.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Published version of your application on which drift was detected.
    #   @return [String]
    #
    # @!attribute [rw] diff_type
    #   Difference type between actual and expected recovery point objective
    #   (RPO) and recovery time objective (RTO) values. Currently,
    #   Resilience Hub supports only **NotEqual** difference type.
    #   @return [String]
    #
    # @!attribute [rw] drift_type
    #   The type of drift detected. Currently, Resilience Hub supports only
    #   **ApplicationCompliance** drift type.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   Identifier of an entity in which drift was detected. For compliance
    #   drift, the entity ID can be either application ID or the
    #   AppComponent ID.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of entity in which drift was detected. For compliance
    #   drifts, Resilience Hub supports `AWS::ResilienceHub::AppComponent`
    #   and `AWS::ResilienceHub::Application`.
    #   @return [String]
    #
    # @!attribute [rw] expected_reference_id
    #   Assessment identifier of a previous assessment of the same
    #   application version. Resilience Hub uses the previous assessment
    #   (associated with the reference identifier) to compare the compliance
    #   with the current assessment to identify drifts.
    #   @return [String]
    #
    # @!attribute [rw] expected_value
    #   The expected compliance value of an entity.
    #   @return [Hash<String,Types::DisruptionCompliance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ComplianceDrift AWS API Documentation
    #
    class ComplianceDrift < Struct.new(
      :actual_reference_id,
      :actual_value,
      :app_id,
      :app_version,
      :diff_type,
      :drift_type,
      :entity_id,
      :entity_type,
      :expected_reference_id,
      :expected_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines recommendations for an Resilience Hub Application Component,
    # returned as an object. This object contains component names,
    # configuration recommendations, and recommendation statuses.
    #
    # @!attribute [rw] app_component_name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] config_recommendations
    #   List of recommendations.
    #   @return [Array<Types::ConfigRecommendation>]
    #
    # @!attribute [rw] recommendation_status
    #   Status of the recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ComponentRecommendation AWS API Documentation
    #
    class ComponentRecommendation < Struct.new(
      :app_component_name,
      :config_recommendations,
      :recommendation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a recommendation configuration.
    #
    # @!attribute [rw] app_component_name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   The current compliance against the resiliency policy before applying
    #   the configuration change.
    #   @return [Hash<String,Types::DisruptionCompliance>]
    #
    # @!attribute [rw] cost
    #   The cost for the application.
    #   @return [Types::Cost]
    #
    # @!attribute [rw] description
    #   The optional description for an app.
    #   @return [String]
    #
    # @!attribute [rw] ha_architecture
    #   The architecture type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation configuration.
    #   @return [String]
    #
    # @!attribute [rw] optimization_type
    #   The type of optimization.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_compliance
    #   The expected compliance against the resiliency policy after applying
    #   the configuration change.
    #   @return [Hash<String,Types::RecommendationDisruptionCompliance>]
    #
    # @!attribute [rw] reference_id
    #   Reference identifier for the recommendation configuration.
    #   @return [String]
    #
    # @!attribute [rw] suggested_changes
    #   List of the suggested configuration changes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ConfigRecommendation AWS API Documentation
    #
    class ConfigRecommendation < Struct.new(
      :app_component_name,
      :compliance,
      :cost,
      :description,
      :ha_architecture,
      :name,
      :optimization_type,
      :recommendation_compliance,
      :reference_id,
      :suggested_changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when a conflict with a previous successful write
    # is detected. This generally occurs when the previous write did not
    # have time to propagate to the host serving the current request. A
    # retry (with appropriate backoff logic) is the recommended response to
    # this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that the exception applies to.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that the exception applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a cost object.
    #
    # @!attribute [rw] amount
    #   The cost amount.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The cost currency, for example `USD`.
    #   @return [String]
    #
    # @!attribute [rw] frequency
    #   The cost frequency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/Cost AWS API Documentation
    #
    class Cost < Struct.new(
      :amount,
      :currency,
      :frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_schedule
    #   Assessment execution schedule with 'Daily' or 'Disabled' values.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description for an app.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions
    #   The list of events you would like to subscribe and get notification
    #   for. Currently, Resilience Hub supports only **Drift detected** and
    #   **Scheduled assessment failure** events notification.
    #   @return [Array<Types::EventSubscription>]
    #
    # @!attribute [rw] name
    #   Name of the application.
    #   @return [String]
    #
    # @!attribute [rw] permission_model
    #   Defines the roles and credentials that Resilience Hub would use
    #   while creating the application, importing its resources, and running
    #   an assessment.
    #   @return [Types::PermissionModel]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :assessment_schedule,
      :client_token,
      :description,
      :event_subscriptions,
      :name,
      :permission_model,
      :policy_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   The created application returned as an object with details including
    #   compliance status, creation time, description, resiliency score, and
    #   more.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppResponse AWS API Documentation
    #
    class CreateAppResponse < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Currently, there is no supported additional information for
    #   Application Components.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of Application Component. For more information about the types
    #   of Application Component, see [Grouping resources in an
    #   AppComponent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppVersionAppComponentRequest AWS API Documentation
    #
    class CreateAppVersionAppComponentRequest < Struct.new(
      :additional_info,
      :app_arn,
      :client_token,
      :id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   List of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppVersionAppComponentResponse AWS API Documentation
    #
    class CreateAppVersionAppComponentResponse < Struct.new(
      :app_arn,
      :app_component,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Currently, there is no supported additional information for
    #   resources.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_components
    #   List of Application Components that this resource belongs to. If an
    #   Application Component is not part of the Resilience Hub application,
    #   it will be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_id
    #   Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Amazon Web Services region that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   Logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   Physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppVersionResourceRequest AWS API Documentation
    #
    class CreateAppVersionResourceRequest < Struct.new(
      :additional_info,
      :app_arn,
      :app_components,
      :aws_account_id,
      :aws_region,
      :client_token,
      :logical_resource_id,
      :physical_resource_id,
      :resource_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource
    #   Defines a physical resource. A physical resource is a resource that
    #   exists in your account. It can be identified using an Amazon
    #   Resource Name (ARN) or a Resilience Hub-native identifier.
    #   @return [Types::PhysicalResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppVersionResourceResponse AWS API Documentation
    #
    class CreateAppVersionResourceResponse < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket that will contain the
    #   recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format for the recommendation template.
    #
    #   CfnJson
    #
    #   : The template is CloudFormation JSON.
    #
    #   CfnYaml
    #
    #   : The template is CloudFormation YAML.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_ids
    #   Identifiers for the recommendations used to create a recommendation
    #   template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation_types
    #   An array of strings that specify the recommendation template type or
    #   types.
    #
    #   Alarm
    #
    #   : The template is an AlarmRecommendation template.
    #
    #   Sop
    #
    #   : The template is a SopRecommendation template.
    #
    #   Test
    #
    #   : The template is a TestRecommendation template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateRecommendationTemplateRequest AWS API Documentation
    #
    class CreateRecommendationTemplateRequest < Struct.new(
      :assessment_arn,
      :bucket_name,
      :client_token,
      :format,
      :name,
      :recommendation_ids,
      :recommendation_types,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_template
    #   The newly created recommendation template, returned as an object.
    #   This object includes the template's name, format, status, tags,
    #   Amazon S3 bucket location, and more.
    #   @return [Types::RecommendationTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateRecommendationTemplateResponse AWS API Documentation
    #
    class CreateRecommendationTemplateResponse < Struct.new(
      :recommendation_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] data_location_constraint
    #   Specifies a high-level geographical location constraint for where
    #   your resilience policy data can be stored.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The type of resiliency policy to be created, including the recovery
    #   time objective (RTO) and recovery point objective (RPO) in seconds.
    #   @return [Hash<String,Types::FailurePolicy>]
    #
    # @!attribute [rw] policy_description
    #   The description for the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The tier for this resiliency policy, ranging from the highest
    #   severity (`MissionCritical`) to lowest (`NonCritical`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateResiliencyPolicyRequest AWS API Documentation
    #
    class CreateResiliencyPolicyRequest < Struct.new(
      :client_token,
      :data_location_constraint,
      :policy,
      :policy_description,
      :policy_name,
      :tags,
      :tier)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The type of resiliency policy that was created, including the
    #   recovery time objective (RTO) and recovery point objective (RPO) in
    #   seconds.
    #   @return [Types::ResiliencyPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateResiliencyPolicyResponse AWS API Documentation
    #
    class CreateResiliencyPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppAssessmentRequest AWS API Documentation
    #
    class DeleteAppAssessmentRequest < Struct.new(
      :assessment_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The current status of the assessment for the resiliency policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppAssessmentResponse AWS API Documentation
    #
    class DeleteAppAssessmentResponse < Struct.new(
      :assessment_arn,
      :assessment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] eks_source_cluster_namespace
    #   The namespace on your Amazon Elastic Kubernetes Service cluster that
    #   you want to delete from the Resilience Hub application.
    #   @return [Types::EksSourceClusterNamespace]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the imported resource you want to
    #   remove from the Resilience Hub application. For more information
    #   about ARNs, see [ Amazon Resource Names (ARNs)][1] in the *Amazon
    #   Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] terraform_source
    #   The imported Terraform s3 state ﬁle you want to remove from the
    #   Resilience Hub application.
    #   @return [Types::TerraformSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppInputSourceRequest AWS API Documentation
    #
    class DeleteAppInputSourceRequest < Struct.new(
      :app_arn,
      :client_token,
      :eks_source_cluster_namespace,
      :source_arn,
      :terraform_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_input_source
    #   Name of the input source from where the application resource is
    #   imported from.
    #   @return [Types::AppInputSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppInputSourceResponse AWS API Documentation
    #
    class DeleteAppInputSourceResponse < Struct.new(
      :app_arn,
      :app_input_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   A boolean option to force the deletion of an Resilience Hub
    #   application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :app_arn,
      :client_token,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppResponse AWS API Documentation
    #
    class DeleteAppResponse < Struct.new(
      :app_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the Application Component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppVersionAppComponentRequest AWS API Documentation
    #
    class DeleteAppVersionAppComponentRequest < Struct.new(
      :app_arn,
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   List of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppVersionAppComponentResponse AWS API Documentation
    #
    class DeleteAppVersionAppComponentResponse < Struct.new(
      :app_arn,
      :app_component,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Amazon Web Services region that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   Logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   Physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppVersionResourceRequest AWS API Documentation
    #
    class DeleteAppVersionResourceRequest < Struct.new(
      :app_arn,
      :aws_account_id,
      :aws_region,
      :client_token,
      :logical_resource_id,
      :physical_resource_id,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource
    #   Defines a physical resource. A physical resource is a resource that
    #   exists in your account. It can be identified using an Amazon
    #   Resource Name (ARN) or a Resilience Hub-native identifier.
    #   @return [Types::PhysicalResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteAppVersionResourceResponse AWS API Documentation
    #
    class DeleteAppVersionResourceResponse < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_template_arn
    #   The Amazon Resource Name (ARN) for a recommendation template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteRecommendationTemplateRequest AWS API Documentation
    #
    class DeleteRecommendationTemplateRequest < Struct.new(
      :client_token,
      :recommendation_template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_template_arn
    #   The Amazon Resource Name (ARN) for a recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteRecommendationTemplateResponse AWS API Documentation
    #
    class DeleteRecommendationTemplateResponse < Struct.new(
      :recommendation_template_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteResiliencyPolicyRequest AWS API Documentation
    #
    class DeleteResiliencyPolicyRequest < Struct.new(
      :client_token,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DeleteResiliencyPolicyResponse AWS API Documentation
    #
    class DeleteResiliencyPolicyResponse < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppAssessmentRequest AWS API Documentation
    #
    class DescribeAppAssessmentRequest < Struct.new(
      :assessment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment
    #   The assessment for an Resilience Hub application, returned as an
    #   object. This object includes Amazon Resource Names (ARNs),
    #   compliance information, compliance status, cost, messages,
    #   resiliency scores, and more.
    #   @return [Types::AppAssessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppAssessmentResponse AWS API Documentation
    #
    class DescribeAppAssessmentResponse < Struct.new(
      :assessment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppRequest AWS API Documentation
    #
    class DescribeAppRequest < Struct.new(
      :app_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   The specified application, returned as an object with details
    #   including compliance status, creation time, description, resiliency
    #   score, and more.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppResponse AWS API Documentation
    #
    class DescribeAppResponse < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the Application Component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionAppComponentRequest AWS API Documentation
    #
    class DescribeAppVersionAppComponentRequest < Struct.new(
      :app_arn,
      :app_version,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   List of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionAppComponentResponse AWS API Documentation
    #
    class DescribeAppVersionAppComponentResponse < Struct.new(
      :app_arn,
      :app_component,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionRequest AWS API Documentation
    #
    class DescribeAppVersionRequest < Struct.new(
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Amazon Web Services region that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   Logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   Physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResourceRequest AWS API Documentation
    #
    class DescribeAppVersionResourceRequest < Struct.new(
      :app_arn,
      :app_version,
      :aws_account_id,
      :aws_region,
      :logical_resource_id,
      :physical_resource_id,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource
    #   Defines a physical resource. A physical resource is a resource that
    #   exists in your account. It can be identified using an Amazon
    #   Resource Name (ARN) or a Resilience Hub-native identifier.
    #   @return [Types::PhysicalResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResourceResponse AWS API Documentation
    #
    class DescribeAppVersionResourceResponse < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] resolution_id
    #   The identifier for a specific resolution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResourcesResolutionStatusRequest AWS API Documentation
    #
    class DescribeAppVersionResourcesResolutionStatusRequest < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The returned error message for the request.
    #   @return [String]
    #
    # @!attribute [rw] resolution_id
    #   The identifier for a specific resolution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResourcesResolutionStatusResponse AWS API Documentation
    #
    class DescribeAppVersionResourcesResolutionStatusResponse < Struct.new(
      :app_arn,
      :app_version,
      :error_message,
      :resolution_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Additional configuration parameters for an Resilience Hub
    #   application. If you want to implement `additionalInfo` through the
    #   Resilience Hub console rather than using an API call, see [Configure
    #   the application configuration parameters][1].
    #
    #   <note markdown="1"> Currently, this parameter supports only failover region and account.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionResponse AWS API Documentation
    #
    class DescribeAppVersionResponse < Struct.new(
      :additional_info,
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionTemplateRequest AWS API Documentation
    #
    class DescribeAppVersionTemplateRequest < Struct.new(
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_template_body
    #   A JSON string that provides information about your application
    #   structure. To learn more about the `appTemplateBody` template, see
    #   the sample template provided in the *Examples* section.
    #
    #   The `appTemplateBody` JSON string has the following structure:
    #
    #   * <b> <code>resources</code> </b>
    #
    #     The list of logical resources that must be included in the
    #     Resilience Hub application.
    #
    #     Type: Array
    #
    #     <note markdown="1"> Don't add the resources that you want to exclude.
    #
    #      </note>
    #
    #     Each `resources` array item includes the following fields:
    #
    #     * <i> <code>logicalResourceId</code> </i>
    #
    #       Logical identifier of the resource.
    #
    #       Type: Object
    #
    #       Each `logicalResourceId` object includes the following fields:
    #
    #       * `identifier`
    #
    #         Identifier of the resource.
    #
    #         Type: String
    #
    #       * `logicalStackName`
    #
    #         The name of the CloudFormation stack this resource belongs to.
    #
    #         Type: String
    #
    #       * `resourceGroupName`
    #
    #         The name of the resource group this resource belongs to.
    #
    #         Type: String
    #
    #       * `terraformSourceName`
    #
    #         The name of the Terraform S3 state file this resource belongs
    #         to.
    #
    #         Type: String
    #
    #       * `eksSourceName`
    #
    #         Name of the Amazon Elastic Kubernetes Service cluster and
    #         namespace this resource belongs to.
    #
    #         <note markdown="1"> This parameter accepts values in "eks-cluster/namespace"
    #         format.
    #
    #          </note>
    #
    #         Type: String
    #
    #     * <i> <code>type</code> </i>
    #
    #       The type of resource.
    #
    #       Type: string
    #
    #     * <i> <code>name</code> </i>
    #
    #       The name of the resource.
    #
    #       Type: String
    #
    #     * `additionalInfo`
    #
    #       Additional configuration parameters for an Resilience Hub
    #       application. If you want to implement `additionalInfo` through
    #       the Resilience Hub console rather than using an API call, see
    #       [Configure the application configuration parameters][1].
    #
    #       <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a
    #       string format) of only one failover region and one associated
    #       account.
    #
    #        Key: `"failover-regions"`
    #
    #        Value: `"[\{"region":"<REGION>",
    #       "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #        </note>
    #
    #   * <b> <code>appComponents</code> </b>
    #
    #     List of Application Components that this resource belongs to. If
    #     an Application Component is not part of the Resilience Hub
    #     application, it will be added.
    #
    #     Type: Array
    #
    #     Each `appComponents` array item includes the following fields:
    #
    #     * `name`
    #
    #       Name of the Application Component.
    #
    #       Type: String
    #
    #     * `type`
    #
    #       Type of Application Component. For more information about the
    #       types of Application Component, see [Grouping resources in an
    #       AppComponent][2].
    #
    #       Type: String
    #
    #     * `resourceNames`
    #
    #       The list of included resources that are assigned to the
    #       Application Component.
    #
    #       Type: Array of strings
    #
    #     * `additionalInfo`
    #
    #       Additional configuration parameters for an Resilience Hub
    #       application. If you want to implement `additionalInfo` through
    #       the Resilience Hub console rather than using an API call, see
    #       [Configure the application configuration parameters][1].
    #
    #       <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a
    #       string format) of only one failover region and one associated
    #       account.
    #
    #        Key: `"failover-regions"`
    #
    #        Value: `"[\{"region":"<REGION>",
    #       "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #        </note>
    #
    #   * <b> <code>excludedResources</code> </b>
    #
    #     The list of logical resource identifiers to be excluded from the
    #     application.
    #
    #     Type: Array
    #
    #     <note markdown="1"> Don't add the resources that you want to include.
    #
    #      </note>
    #
    #     Each `excludedResources` array item includes the following fields:
    #
    #     * <i> <code>logicalResourceIds</code> </i>
    #
    #       Logical identifier of the resource.
    #
    #       Type: Object
    #
    #       <note markdown="1"> You can configure only one of the following fields:
    #
    #        * `logicalStackName`
    #
    #       * `resourceGroupName`
    #
    #       * `terraformSourceName`
    #
    #       * `eksSourceName`
    #
    #        </note>
    #
    #       Each `logicalResourceIds` object includes the following fields:
    #
    #       * `identifier`
    #
    #         Identifier of the resource.
    #
    #         Type: String
    #
    #       * `logicalStackName`
    #
    #         The name of the CloudFormation stack this resource belongs to.
    #
    #         Type: String
    #
    #       * `resourceGroupName`
    #
    #         The name of the resource group this resource belongs to.
    #
    #         Type: String
    #
    #       * `terraformSourceName`
    #
    #         The name of the Terraform S3 state file this resource belongs
    #         to.
    #
    #         Type: String
    #
    #       * `eksSourceName`
    #
    #         Name of the Amazon Elastic Kubernetes Service cluster and
    #         namespace this resource belongs to.
    #
    #         <note markdown="1"> This parameter accepts values in "eks-cluster/namespace"
    #         format.
    #
    #          </note>
    #
    #         Type: String
    #
    #   * <b> <code>version</code> </b>
    #
    #     Resilience Hub application version.
    #
    #   * `additionalInfo`
    #
    #     Additional configuration parameters for an Resilience Hub
    #     application. If you want to implement `additionalInfo` through the
    #     Resilience Hub console rather than using an API call, see
    #     [Configure the application configuration parameters][1].
    #
    #     <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #     format) of only one failover region and one associated account.
    #
    #      Key: `"failover-regions"`
    #
    #      Value: `"[\{"region":"<REGION>",
    #     "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   [2]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeAppVersionTemplateResponse AWS API Documentation
    #
    class DescribeAppVersionTemplateResponse < Struct.new(
      :app_arn,
      :app_template_body,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeDraftAppVersionResourcesImportStatusRequest AWS API Documentation
    #
    class DescribeDraftAppVersionResourcesImportStatusRequest < Struct.new(
      :app_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The returned error message for the request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @!attribute [rw] status_change_time
    #   The time when the status last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeDraftAppVersionResourcesImportStatusResponse AWS API Documentation
    #
    class DescribeDraftAppVersionResourcesImportStatusResponse < Struct.new(
      :app_arn,
      :app_version,
      :error_message,
      :status,
      :status_change_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeResiliencyPolicyRequest AWS API Documentation
    #
    class DescribeResiliencyPolicyRequest < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Information about the specific resiliency policy, returned as an
    #   object. This object includes creation time, data location
    #   constraints, its name, description, tags, the recovery time
    #   objective (RTO) and recovery point objective (RPO) in seconds, and
    #   more.
    #   @return [Types::ResiliencyPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DescribeResiliencyPolicyResponse AWS API Documentation
    #
    class DescribeResiliencyPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the compliance against the resiliency policy for a disruption.
    #
    # @!attribute [rw] achievable_rpo_in_secs
    #   The Recovery Point Objective (RPO) that is achievable, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] achievable_rto_in_secs
    #   The Recovery Time Objective (RTO) that is achievable, in seconds
    #   @return [Integer]
    #
    # @!attribute [rw] compliance_status
    #   The current status of compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] current_rpo_in_secs
    #   The current RPO, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] current_rto_in_secs
    #   The current RTO, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The disruption compliance message.
    #   @return [String]
    #
    # @!attribute [rw] rpo_description
    #   The RPO description.
    #   @return [String]
    #
    # @!attribute [rw] rpo_reference_id
    #   Reference identifier of the RPO .
    #   @return [String]
    #
    # @!attribute [rw] rto_description
    #   The RTO description.
    #   @return [String]
    #
    # @!attribute [rw] rto_reference_id
    #   Reference identifier of the RTO.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/DisruptionCompliance AWS API Documentation
    #
    class DisruptionCompliance < Struct.new(
      :achievable_rpo_in_secs,
      :achievable_rto_in_secs,
      :compliance_status,
      :current_rpo_in_secs,
      :current_rto_in_secs,
      :message,
      :rpo_description,
      :rpo_reference_id,
      :rto_description,
      :rto_reference_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input source of the Amazon Elastic Kubernetes Service cluster.
    #
    # @!attribute [rw] eks_cluster_arn
    #   Amazon Resource Name (ARN) of the Amazon Elastic Kubernetes Service
    #   cluster. The format for this ARN is:
    #   arn:`aws`:eks:`region`:`account-id`:cluster/`cluster-name`. For more
    #   information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   The list of namespaces located on your Amazon Elastic Kubernetes
    #   Service cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/EksSource AWS API Documentation
    #
    class EksSource < Struct.new(
      :eks_cluster_arn,
      :namespaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input source of the namespace that is located on your Amazon
    # Elastic Kubernetes Service cluster.
    #
    # @!attribute [rw] eks_cluster_arn
    #   Amazon Resource Name (ARN) of the Amazon Elastic Kubernetes Service
    #   cluster. The format for this ARN is:
    #   arn:`aws`:eks:`region`:`account-id`:cluster/`cluster-name`. For more
    #   information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   Name of the namespace that is located on your Amazon Elastic
    #   Kubernetes Service cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/EksSourceClusterNamespace AWS API Documentation
    #
    class EksSourceClusterNamespace < Struct.new(
      :eks_cluster_arn,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates an event you would like to subscribe and get notification
    # for. Currently, Resilience Hub supports notifications only for **Drift
    # detected** and **Scheduled assessment failure** events.
    #
    # @!attribute [rw] event_type
    #   The type of event you would like to subscribe and get notification
    #   for. Currently, Resilience Hub supports notifications only for
    #   **Drift detected** (`DriftDetected`) and **Scheduled assessment
    #   failure** (`ScheduledAssessmentFailure`) events.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Unique name to identify an event subscription.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Amazon Resource Name (ARN) of the Amazon Simple Notification Service
    #   topic. The format for this ARN is:
    #   `arn:partition:sns:region:account:topic-name`. For more information
    #   about ARNs, see [ Amazon Resource Names (ARNs)][1] in the *Amazon
    #   Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/EventSubscription AWS API Documentation
    #
    class EventSubscription < Struct.new(
      :event_type,
      :name,
      :sns_topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a failure policy.
    #
    # @!attribute [rw] rpo_in_secs
    #   Recovery Point Objective (RPO) in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] rto_in_secs
    #   Recovery Time Objective (RTO) in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/FailurePolicy AWS API Documentation
    #
    class FailurePolicy < Struct.new(
      :rpo_in_secs,
      :rto_in_secs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] eks_sources
    #   The input sources of the Amazon Elastic Kubernetes Service resources
    #   you need to import.
    #   @return [Array<Types::EksSource>]
    #
    # @!attribute [rw] import_strategy
    #   The import strategy you would like to set to import resources into
    #   Resilience Hub application.
    #   @return [String]
    #
    # @!attribute [rw] source_arns
    #   The Amazon Resource Names (ARNs) for the resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] terraform_sources
    #   A list of terraform file s3 URLs you need to import.
    #   @return [Array<Types::TerraformSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ImportResourcesToDraftAppVersionRequest AWS API Documentation
    #
    class ImportResourcesToDraftAppVersionRequest < Struct.new(
      :app_arn,
      :eks_sources,
      :import_strategy,
      :source_arns,
      :terraform_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] eks_sources
    #   The input sources of the Amazon Elastic Kubernetes Service resources
    #   you have imported.
    #   @return [Array<Types::EksSource>]
    #
    # @!attribute [rw] source_arns
    #   The Amazon Resource Names (ARNs) for the resources you have
    #   imported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @!attribute [rw] terraform_sources
    #   A list of terraform file s3 URLs you have imported.
    #   @return [Array<Types::TerraformSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ImportResourcesToDraftAppVersionResponse AWS API Documentation
    #
    class ImportResourcesToDraftAppVersionResponse < Struct.new(
      :app_arn,
      :app_version,
      :eks_sources,
      :source_arns,
      :status,
      :terraform_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when there is an internal failure in the
    # Resilience Hub service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAlarmRecommendationsRequest AWS API Documentation
    #
    class ListAlarmRecommendationsRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_recommendations
    #   The alarm recommendations for an Resilience Hub application,
    #   returned as an object. This object includes Application Component
    #   names, descriptions, information about whether a recommendation has
    #   already been implemented or not, prerequisites, and more.
    #   @return [Array<Types::AlarmRecommendation>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAlarmRecommendationsResponse AWS API Documentation
    #
    class ListAlarmRecommendationsResponse < Struct.new(
      :alarm_recommendations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Indicates the maximum number of applications requested.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Indicates the unique token number of the next application to be
    #   checked for compliance and regulatory requirements from the list of
    #   applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppAssessmentComplianceDriftsRequest AWS API Documentation
    #
    class ListAppAssessmentComplianceDriftsRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_drifts
    #   Indicates compliance drifts (recovery time objective (RTO) and
    #   recovery point objective (RPO)) detected for an assessed entity.
    #   @return [Array<Types::ComplianceDrift>]
    #
    # @!attribute [rw] next_token
    #   Token number of the next application to be checked for compliance
    #   and regulatory requirements from the list of applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppAssessmentComplianceDriftsResponse AWS API Documentation
    #
    class ListAppAssessmentComplianceDriftsResponse < Struct.new(
      :compliance_drifts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name for the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The current status of the assessment for the resiliency policy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_status
    #   The current status of compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] invoker
    #   Specifies the entity that invoked a specific assessment, either a
    #   `User` or the `System`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] reverse_order
    #   The default is to sort by ascending **startTime**. To sort by
    #   descending **startTime**, set reverseOrder to `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppAssessmentsRequest AWS API Documentation
    #
    class ListAppAssessmentsRequest < Struct.new(
      :app_arn,
      :assessment_name,
      :assessment_status,
      :compliance_status,
      :invoker,
      :max_results,
      :next_token,
      :reverse_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_summaries
    #   The summaries for the specified assessments, returned as an object.
    #   This object includes application versions, associated Amazon
    #   Resource Numbers (ARNs), cost, messages, resiliency scores, and
    #   more.
    #   @return [Array<Types::AppAssessmentSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppAssessmentsResponse AWS API Documentation
    #
    class ListAppAssessmentsResponse < Struct.new(
      :assessment_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppComponentCompliancesRequest AWS API Documentation
    #
    class ListAppComponentCompliancesRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_compliances
    #   The compliances for an Resilience Hub Application Component,
    #   returned as an object. This object contains the names of the
    #   Application Components, compliances, costs, resiliency scores,
    #   outage scores, and more.
    #   @return [Array<Types::AppComponentCompliance>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppComponentCompliancesResponse AWS API Documentation
    #
    class ListAppComponentCompliancesResponse < Struct.new(
      :component_compliances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppComponentRecommendationsRequest AWS API Documentation
    #
    class ListAppComponentRecommendationsRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_recommendations
    #   The recommendations for an Resilience Hub Application Component,
    #   returned as an object. This object contains the names of the
    #   Application Components, configuration recommendations, and
    #   recommendation statuses.
    #   @return [Array<Types::ComponentRecommendation>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppComponentRecommendationsResponse AWS API Documentation
    #
    class ListAppComponentRecommendationsResponse < Struct.new(
      :component_recommendations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of input sources to be displayed per Resilience Hub
    #   application.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppInputSourcesRequest AWS API Documentation
    #
    class ListAppInputSourcesRequest < Struct.new(
      :app_arn,
      :app_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_input_sources
    #   The list of Resilience Hub application input sources.
    #   @return [Array<Types::AppInputSource>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppInputSourcesResponse AWS API Documentation
    #
    class ListAppInputSourcesResponse < Struct.new(
      :app_input_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Version of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Application Components to be displayed per
    #   Resilience Hub application version.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionAppComponentsRequest AWS API Documentation
    #
    class ListAppVersionAppComponentsRequest < Struct.new(
      :app_arn,
      :app_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_components
    #   Defines an Application Component.
    #   @return [Array<Types::AppComponent>]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionAppComponentsResponse AWS API Documentation
    #
    class ListAppVersionAppComponentsResponse < Struct.new(
      :app_arn,
      :app_components,
      :app_version,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionResourceMappingsRequest AWS API Documentation
    #
    class ListAppVersionResourceMappingsRequest < Struct.new(
      :app_arn,
      :app_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resource_mappings
    #   Mappings used to map logical resources from the template to physical
    #   resources. You can use the mapping type `CFN_STACK` if the
    #   application template uses a logical stack name. Or you can map
    #   individual resources by using the mapping type `RESOURCE`. We
    #   recommend using the mapping type `CFN_STACK` if the application is
    #   backed by a CloudFormation stack.
    #   @return [Array<Types::ResourceMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionResourceMappingsResponse AWS API Documentation
    #
    class ListAppVersionResourceMappingsResponse < Struct.new(
      :next_token,
      :resource_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resolution_id
    #   The identifier for a specific resolution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionResourcesRequest AWS API Documentation
    #
    class ListAppVersionResourcesRequest < Struct.new(
      :app_arn,
      :app_version,
      :max_results,
      :next_token,
      :resolution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] physical_resources
    #   The physical resources in the application version.
    #   @return [Array<Types::PhysicalResource>]
    #
    # @!attribute [rw] resolution_id
    #   The ID for a specific resolution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionResourcesResponse AWS API Documentation
    #
    class ListAppVersionResourcesResponse < Struct.new(
      :next_token,
      :physical_resources,
      :resolution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   Upper limit of the time range to filter the application versions.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Lower limit of the time range to filter the application versions.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionsRequest AWS API Documentation
    #
    class ListAppVersionsRequest < Struct.new(
      :app_arn,
      :end_time,
      :max_results,
      :next_token,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_versions
    #   The version of the application.
    #   @return [Array<Types::AppVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionsResponse AWS API Documentation
    #
    class ListAppVersionsResponse < Struct.new(
      :app_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] from_last_assessment_time
    #   Indicates the lower limit of the range that is used to filter
    #   applications based on their last assessment times.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name for the one of the listed applications.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] reverse_order
    #   The application list is sorted based on the values of
    #   `lastAppComplianceEvaluationTime` field. By default, application
    #   list is sorted in ascending order. To sort the appliation list in
    #   descending order, set this field to `True`.
    #   @return [Boolean]
    #
    # @!attribute [rw] to_last_assessment_time
    #   Indicates the upper limit of the range that is used to filter the
    #   applications based on their last assessment times.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppsRequest AWS API Documentation
    #
    class ListAppsRequest < Struct.new(
      :app_arn,
      :from_last_assessment_time,
      :max_results,
      :name,
      :next_token,
      :reverse_order,
      :to_last_assessment_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_summaries
    #   Summaries for the Resilience Hub application.
    #   @return [Array<Types::AppSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppsResponse AWS API Documentation
    #
    class ListAppsResponse < Struct.new(
      :app_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name for one of the listed recommendation templates.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_template_arn
    #   The Amazon Resource Name (ARN) for a recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] reverse_order
    #   The default is to sort by ascending **startTime**. To sort by
    #   descending **startTime**, set reverseOrder to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListRecommendationTemplatesRequest AWS API Documentation
    #
    class ListRecommendationTemplatesRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :name,
      :next_token,
      :recommendation_template_arn,
      :reverse_order,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_templates
    #   The recommendation templates for the Resilience Hub applications.
    #   @return [Array<Types::RecommendationTemplate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListRecommendationTemplatesResponse AWS API Documentation
    #
    class ListRecommendationTemplatesResponse < Struct.new(
      :next_token,
      :recommendation_templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListResiliencyPoliciesRequest AWS API Documentation
    #
    class ListResiliencyPoliciesRequest < Struct.new(
      :max_results,
      :next_token,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_policies
    #   The resiliency policies for the Resilience Hub applications.
    #   @return [Array<Types::ResiliencyPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListResiliencyPoliciesResponse AWS API Documentation
    #
    class ListResiliencyPoliciesResponse < Struct.new(
      :next_token,
      :resiliency_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListSopRecommendationsRequest AWS API Documentation
    #
    class ListSopRecommendationsRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] sop_recommendations
    #   The standard operating procedure (SOP) recommendations for the
    #   Resilience Hub applications.
    #   @return [Array<Types::SopRecommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListSopRecommendationsResponse AWS API Documentation
    #
    class ListSopRecommendationsResponse < Struct.new(
      :next_token,
      :sop_recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListSuggestedResiliencyPoliciesRequest AWS API Documentation
    #
    class ListSuggestedResiliencyPoliciesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_policies
    #   The suggested resiliency policies for the Resilience Hub
    #   applications.
    #   @return [Array<Types::ResiliencyPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListSuggestedResiliencyPoliciesResponse AWS API Documentation
    #
    class ListSuggestedResiliencyPoliciesResponse < Struct.new(
      :next_token,
      :resiliency_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a specific resource in your
    #   Resilience Hub application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListTestRecommendationsRequest AWS API Documentation
    #
    class ListTestRecommendationsRequest < Struct.new(
      :assessment_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] test_recommendations
    #   The test recommendations for the Resilience Hub application.
    #   @return [Array<Types::TestRecommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListTestRecommendationsResponse AWS API Documentation
    #
    class ListTestRecommendationsResponse < Struct.new(
      :next_token,
      :test_recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Null, or the token from a previous call to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resolution_id
    #   The identifier for a specific resolution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListUnsupportedAppVersionResourcesRequest AWS API Documentation
    #
    class ListUnsupportedAppVersionResourcesRequest < Struct.new(
      :app_arn,
      :app_version,
      :max_results,
      :next_token,
      :resolution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] resolution_id
    #   The identifier for a specific resolution.
    #   @return [String]
    #
    # @!attribute [rw] unsupported_resources
    #   The unsupported resources for the application.
    #   @return [Array<Types::UnsupportedResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListUnsupportedAppVersionResourcesResponse AWS API Documentation
    #
    class ListUnsupportedAppVersionResourcesResponse < Struct.new(
      :next_token,
      :resolution_id,
      :unsupported_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a logical resource identifier.
    #
    # @!attribute [rw] eks_source_name
    #   Name of the Amazon Elastic Kubernetes Service cluster and namespace
    #   this resource belongs to.
    #
    #   <note markdown="1"> This parameter accepts values in "eks-cluster/namespace" format.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] logical_stack_name
    #   The name of the CloudFormation stack this resource belongs to.
    #   @return [String]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group that this resource belongs to.
    #   @return [String]
    #
    # @!attribute [rw] terraform_source_name
    #   The name of the Terraform S3 state file this resource belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/LogicalResourceId AWS API Documentation
    #
    class LogicalResourceId < Struct.new(
      :eks_source_name,
      :identifier,
      :logical_stack_name,
      :resource_group_name,
      :terraform_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the roles and credentials that Resilience Hub would use while
    # creating the application, importing its resources, and running an
    # assessment.
    #
    # @!attribute [rw] cross_account_role_arns
    #   Defines a list of role Amazon Resource Names (ARNs) to be used in
    #   other accounts. These ARNs are used for querying purposes while
    #   importing resources and assessing your application.
    #
    #   <note markdown="1"> * These ARNs are required only when your resources are in other
    #     accounts and you have different role name in these accounts. Else,
    #     the invoker role name will be used in the other accounts.
    #
    #   * These roles must have a trust policy with `iam:AssumeRole`
    #     permission to the invoker role in the primary account.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] invoker_role_name
    #   Existing Amazon Web Services IAM role name in the primary Amazon Web
    #   Services account that will be assumed by Resilience Hub Service
    #   Principle to obtain a read-only access to your application resources
    #   while running an assessment.
    #
    #   <note markdown="1"> * You must have `iam:passRole` permission for this role while
    #     creating or updating the application.
    #
    #   * Currently, `invokerRoleName` accepts only `[A-Za-z0-9_+=,.@-]`
    #     characters.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Defines how Resilience Hub scans your resources. It can scan for the
    #   resources by using a pre-existing role in your Amazon Web Services
    #   account, or by using the credentials of the current IAM user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PermissionModel AWS API Documentation
    #
    class PermissionModel < Struct.new(
      :cross_account_role_arns,
      :invoker_role_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a physical resource. A physical resource is a resource that
    # exists in your account. It can be identified using an Amazon Resource
    # Name (ARN) or an Resilience Hub-native identifier.
    #
    # @!attribute [rw] additional_info
    #   Additional configuration parameters for an Resilience Hub
    #   application. If you want to implement `additionalInfo` through the
    #   Resilience Hub console rather than using an API call, see [Configure
    #   the application configuration parameters][1].
    #
    #   <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #   format) of only one failover region and one associated account.
    #
    #    Key: `"failover-regions"`
    #
    #    Value: `"[\{"region":"<REGION>",
    #   "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_components
    #   The application components that belong to this resource.
    #   @return [Array<Types::AppComponent>]
    #
    # @!attribute [rw] excluded
    #   Indicates if a resource is included or excluded from the assessment.
    #   @return [Boolean]
    #
    # @!attribute [rw] logical_resource_id
    #   Logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] parent_resource_name
    #   Name of the parent resource.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   Identifier of the physical resource.
    #   @return [Types::PhysicalResourceId]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Type of input source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PhysicalResource AWS API Documentation
    #
    class PhysicalResource < Struct.new(
      :additional_info,
      :app_components,
      :excluded,
      :logical_resource_id,
      :parent_resource_name,
      :physical_resource_id,
      :resource_name,
      :resource_type,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a physical resource identifier.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region that the physical resource is located
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Identifier of the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of physical resource identifier.
    #
    #   Arn
    #
    #   : The resource identifier is an Amazon Resource Name (ARN) and it
    #     can identify the following list of resources:
    #
    #     * `AWS::ECS::Service`
    #
    #     * `AWS::EFS::FileSystem`
    #
    #     * `AWS::ElasticLoadBalancingV2::LoadBalancer`
    #
    #     * `AWS::Lambda::Function`
    #
    #     * `AWS::SNS::Topic`
    #
    #   Native
    #
    #   : The resource identifier is an Resilience Hub-native identifier and
    #     it can identify the following list of resources:
    #
    #     * `AWS::ApiGateway::RestApi`
    #
    #     * `AWS::ApiGatewayV2::Api`
    #
    #     * `AWS::AutoScaling::AutoScalingGroup`
    #
    #     * `AWS::DocDB::DBCluster`
    #
    #     * `AWS::DocDB::DBGlobalCluster`
    #
    #     * `AWS::DocDB::DBInstance`
    #
    #     * `AWS::DynamoDB::GlobalTable`
    #
    #     * `AWS::DynamoDB::Table`
    #
    #     * `AWS::EC2::EC2Fleet`
    #
    #     * `AWS::EC2::Instance`
    #
    #     * `AWS::EC2::NatGateway`
    #
    #     * `AWS::EC2::Volume`
    #
    #     * `AWS::ElasticLoadBalancing::LoadBalancer`
    #
    #     * `AWS::RDS::DBCluster`
    #
    #     * `AWS::RDS::DBInstance`
    #
    #     * `AWS::RDS::GlobalCluster`
    #
    #     * `AWS::Route53::RecordSet`
    #
    #     * `AWS::S3::Bucket`
    #
    #     * `AWS::SQS::Queue`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PhysicalResourceId AWS API Documentation
    #
    class PhysicalResourceId < Struct.new(
      :aws_account_id,
      :aws_region,
      :identifier,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   Name of the application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PublishAppVersionRequest AWS API Documentation
    #
    class PublishAppVersionRequest < Struct.new(
      :app_arn,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Identifier of the application version.
    #   @return [Integer]
    #
    # @!attribute [rw] version_name
    #   Name of the application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PublishAppVersionResponse AWS API Documentation
    #
    class PublishAppVersionResponse < Struct.new(
      :app_arn,
      :app_version,
      :identifier,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_template_body
    #   A JSON string that provides information about your application
    #   structure. To learn more about the `appTemplateBody` template, see
    #   the sample template provided in the *Examples* section.
    #
    #   The `appTemplateBody` JSON string has the following structure:
    #
    #   * <b> <code>resources</code> </b>
    #
    #     The list of logical resources that must be included in the
    #     Resilience Hub application.
    #
    #     Type: Array
    #
    #     <note markdown="1"> Don't add the resources that you want to exclude.
    #
    #      </note>
    #
    #     Each `resources` array item includes the following fields:
    #
    #     * <i> <code>logicalResourceId</code> </i>
    #
    #       Logical identifier of the resource.
    #
    #       Type: Object
    #
    #       Each `logicalResourceId` object includes the following fields:
    #
    #       * `identifier`
    #
    #         Identifier of the resource.
    #
    #         Type: String
    #
    #       * `logicalStackName`
    #
    #         The name of the CloudFormation stack this resource belongs to.
    #
    #         Type: String
    #
    #       * `resourceGroupName`
    #
    #         The name of the resource group this resource belongs to.
    #
    #         Type: String
    #
    #       * `terraformSourceName`
    #
    #         The name of the Terraform S3 state file this resource belongs
    #         to.
    #
    #         Type: String
    #
    #       * `eksSourceName`
    #
    #         Name of the Amazon Elastic Kubernetes Service cluster and
    #         namespace this resource belongs to.
    #
    #         <note markdown="1"> This parameter accepts values in "eks-cluster/namespace"
    #         format.
    #
    #          </note>
    #
    #         Type: String
    #
    #     * <i> <code>type</code> </i>
    #
    #       The type of resource.
    #
    #       Type: string
    #
    #     * <i> <code>name</code> </i>
    #
    #       The name of the resource.
    #
    #       Type: String
    #
    #     * `additionalInfo`
    #
    #       Additional configuration parameters for an Resilience Hub
    #       application. If you want to implement `additionalInfo` through
    #       the Resilience Hub console rather than using an API call, see
    #       [Configure the application configuration parameters][1].
    #
    #       <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a
    #       string format) of only one failover region and one associated
    #       account.
    #
    #        Key: `"failover-regions"`
    #
    #        Value: `"[\{"region":"<REGION>",
    #       "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #        </note>
    #
    #   * <b> <code>appComponents</code> </b>
    #
    #     List of Application Components that this resource belongs to. If
    #     an Application Component is not part of the Resilience Hub
    #     application, it will be added.
    #
    #     Type: Array
    #
    #     Each `appComponents` array item includes the following fields:
    #
    #     * `name`
    #
    #       Name of the Application Component.
    #
    #       Type: String
    #
    #     * `type`
    #
    #       Type of Application Component. For more information about the
    #       types of Application Component, see [Grouping resources in an
    #       AppComponent][2].
    #
    #       Type: String
    #
    #     * `resourceNames`
    #
    #       The list of included resources that are assigned to the
    #       Application Component.
    #
    #       Type: Array of strings
    #
    #     * `additionalInfo`
    #
    #       Additional configuration parameters for an Resilience Hub
    #       application. If you want to implement `additionalInfo` through
    #       the Resilience Hub console rather than using an API call, see
    #       [Configure the application configuration parameters][1].
    #
    #       <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a
    #       string format) of only one failover region and one associated
    #       account.
    #
    #        Key: `"failover-regions"`
    #
    #        Value: `"[\{"region":"<REGION>",
    #       "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #        </note>
    #
    #   * <b> <code>excludedResources</code> </b>
    #
    #     The list of logical resource identifiers to be excluded from the
    #     application.
    #
    #     Type: Array
    #
    #     <note markdown="1"> Don't add the resources that you want to include.
    #
    #      </note>
    #
    #     Each `excludedResources` array item includes the following fields:
    #
    #     * <i> <code>logicalResourceIds</code> </i>
    #
    #       Logical identifier of the resource.
    #
    #       Type: Object
    #
    #       <note markdown="1"> You can configure only one of the following fields:
    #
    #        * `logicalStackName`
    #
    #       * `resourceGroupName`
    #
    #       * `terraformSourceName`
    #
    #       * `eksSourceName`
    #
    #        </note>
    #
    #       Each `logicalResourceIds` object includes the following fields:
    #
    #       * `identifier`
    #
    #         Identifier of the resource.
    #
    #         Type: String
    #
    #       * `logicalStackName`
    #
    #         The name of the CloudFormation stack this resource belongs to.
    #
    #         Type: String
    #
    #       * `resourceGroupName`
    #
    #         The name of the resource group this resource belongs to.
    #
    #         Type: String
    #
    #       * `terraformSourceName`
    #
    #         The name of the Terraform S3 state file this resource belongs
    #         to.
    #
    #         Type: String
    #
    #       * `eksSourceName`
    #
    #         Name of the Amazon Elastic Kubernetes Service cluster and
    #         namespace this resource belongs to.
    #
    #         <note markdown="1"> This parameter accepts values in "eks-cluster/namespace"
    #         format.
    #
    #          </note>
    #
    #         Type: String
    #
    #   * <b> <code>version</code> </b>
    #
    #     Resilience Hub application version.
    #
    #   * `additionalInfo`
    #
    #     Additional configuration parameters for an Resilience Hub
    #     application. If you want to implement `additionalInfo` through the
    #     Resilience Hub console rather than using an API call, see
    #     [Configure the application configuration parameters][1].
    #
    #     <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #     format) of only one failover region and one associated account.
    #
    #      Key: `"failover-regions"`
    #
    #      Value: `"[\{"region":"<REGION>",
    #     "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   [2]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PutDraftAppVersionTemplateRequest AWS API Documentation
    #
    class PutDraftAppVersionTemplateRequest < Struct.new(
      :app_arn,
      :app_template_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PutDraftAppVersionTemplateResponse AWS API Documentation
    #
    class PutDraftAppVersionTemplateResponse < Struct.new(
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a disruption compliance recommendation.
    #
    # @!attribute [rw] expected_compliance_status
    #   The expected compliance status after applying the recommended
    #   configuration change.
    #   @return [String]
    #
    # @!attribute [rw] expected_rpo_description
    #   The expected Recovery Point Objective (RPO) description after
    #   applying the recommended configuration change.
    #   @return [String]
    #
    # @!attribute [rw] expected_rpo_in_secs
    #   The expected RPO after applying the recommended configuration
    #   change.
    #   @return [Integer]
    #
    # @!attribute [rw] expected_rto_description
    #   The expected Recovery Time Objective (RTO) description after
    #   applying the recommended configuration change.
    #   @return [String]
    #
    # @!attribute [rw] expected_rto_in_secs
    #   The expected RTO after applying the recommended configuration
    #   change.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/RecommendationDisruptionCompliance AWS API Documentation
    #
    class RecommendationDisruptionCompliance < Struct.new(
      :expected_compliance_status,
      :expected_rpo_description,
      :expected_rpo_in_secs,
      :expected_rto_description,
      :expected_rto_in_secs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a recommendation.
    #
    # @!attribute [rw] already_implemented
    #   Specifies if the recommendation has already been implemented.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_reason
    #   Indicates the reason for excluding an operational recommendation.
    #   @return [String]
    #
    # @!attribute [rw] excluded
    #   Indicates if an operational recommendation item is excluded.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   Identifier of the target account.
    #   @return [String]
    #
    # @!attribute [rw] target_region
    #   The target region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/RecommendationItem AWS API Documentation
    #
    class RecommendationItem < Struct.new(
      :already_implemented,
      :exclude_reason,
      :excluded,
      :resource_id,
      :target_account_id,
      :target_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a recommendation template created with the
    # CreateRecommendationTemplate action.
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_arn
    #   Amazon Resource Name (ARN) of the assessment. The format for this
    #   ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] format
    #   Format of the recommendation template.
    #
    #   CfnJson
    #
    #   : The template is CloudFormation JSON.
    #
    #   CfnYaml
    #
    #   : The template is CloudFormation YAML.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message for the recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] needs_replacements
    #   Indicates if replacements are needed.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation_ids
    #   Identifiers for the recommendations used in the recommendation
    #   template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation_template_arn
    #   Amazon Resource Name (ARN) for the recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_types
    #   An array of strings that specify the recommendation template type or
    #   types.
    #
    #   Alarm
    #
    #   : The template is an AlarmRecommendation template.
    #
    #   Sop
    #
    #   : The template is a SopRecommendation template.
    #
    #   Test
    #
    #   : The template is a TestRecommendation template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The start time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] templates_location
    #   The file location of the template.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/RecommendationTemplate AWS API Documentation
    #
    class RecommendationTemplate < Struct.new(
      :app_arn,
      :assessment_arn,
      :end_time,
      :format,
      :message,
      :name,
      :needs_replacements,
      :recommendation_ids,
      :recommendation_template_arn,
      :recommendation_types,
      :start_time,
      :status,
      :tags,
      :templates_location)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_registry_app_names
    #   The names of the registered applications you want to remove from the
    #   resource mappings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] eks_source_names
    #   The names of the Amazon Elastic Kubernetes Service clusters and
    #   namespaces you want to remove from the resource mappings.
    #
    #   <note markdown="1"> This parameter accepts values in "eks-cluster/namespace" format.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] logical_stack_names
    #   The names of the CloudFormation stacks you want to remove from the
    #   resource mappings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_group_names
    #   The names of the resource groups you want to remove from the
    #   resource mappings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_names
    #   The names of the resources you want to remove from the resource
    #   mappings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] terraform_source_names
    #   The names of the Terraform sources you want to remove from the
    #   resource mappings.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/RemoveDraftAppVersionResourceMappingsRequest AWS API Documentation
    #
    class RemoveDraftAppVersionResourceMappingsRequest < Struct.new(
      :app_arn,
      :app_registry_app_names,
      :eks_source_names,
      :logical_stack_names,
      :resource_group_names,
      :resource_names,
      :terraform_source_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/RemoveDraftAppVersionResourceMappingsResponse AWS API Documentation
    #
    class RemoveDraftAppVersionResourceMappingsResponse < Struct.new(
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a resiliency policy.
    #
    # <note markdown="1"> Resilience Hub allows you to provide a value of zero for `rtoInSecs`
    # and `rpoInSecs` of your resiliency policy. But, while assessing your
    # application, the lowest possible assessment result is near zero.
    # Hence, if you provide value zero for `rtoInSecs` and `rpoInSecs`, the
    # estimated workload RTO and estimated workload RPO result will be near
    # zero and the **Compliance status** for your application will be set to
    # **Policy breached**.
    #
    #  </note>
    #
    # @!attribute [rw] creation_time
    #   Date and time when the resiliency policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_location_constraint
    #   Specifies a high-level geographical location constraint for where
    #   your resilience policy data can be stored.
    #   @return [String]
    #
    # @!attribute [rw] estimated_cost_tier
    #   Specifies the estimated cost tier of the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resiliency policy.
    #   @return [Hash<String,Types::FailurePolicy>]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   The description for the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The tier for this resiliency policy, ranging from the highest
    #   severity (`MissionCritical`) to lowest (`NonCritical`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResiliencyPolicy AWS API Documentation
    #
    class ResiliencyPolicy < Struct.new(
      :creation_time,
      :data_location_constraint,
      :estimated_cost_tier,
      :policy,
      :policy_arn,
      :policy_description,
      :policy_name,
      :tags,
      :tier)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # The overall resiliency score, returned as an object that includes the
    # disruption score and outage score.
    #
    # @!attribute [rw] component_score
    #   The score generated by Resilience Hub for the scoring component
    #   after running an assessment.
    #
    #   For example, if the `score` is 25 points, it indicates the overall
    #   score of your application generated by Resilience Hub after running
    #   an assessment.
    #   @return [Hash<String,Types::ScoringComponentResiliencyScore>]
    #
    # @!attribute [rw] disruption_score
    #   The disruption score for a valid key.
    #   @return [Hash<String,Float>]
    #
    # @!attribute [rw] score
    #   The outage score for a valid key.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResiliencyScore AWS API Documentation
    #
    class ResiliencyScore < Struct.new(
      :component_score,
      :disruption_score,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResolveAppVersionResourcesRequest AWS API Documentation
    #
    class ResolveAppVersionResourcesRequest < Struct.new(
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] resolution_id
    #   The identifier for a specific resolution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResolveAppVersionResourcesResponse AWS API Documentation
    #
    class ResolveAppVersionResourcesResponse < Struct.new(
      :app_arn,
      :app_version,
      :resolution_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines application resource errors.
    #
    # @!attribute [rw] logical_resource_id
    #   Identifier of the logical resource.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   Identifier of the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   This is the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResourceError AWS API Documentation
    #
    class ResourceError < Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of errors retrieving an application's resources.
    #
    # @!attribute [rw] has_more_errors
    #   This indicates if there are more errors not listed in the
    #   resourceErrors list.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_errors
    #   A list of errors retrieving an application's resources.
    #   @return [Array<Types::ResourceError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResourceErrorsDetails AWS API Documentation
    #
    class ResourceErrorsDetails < Struct.new(
      :has_more_errors,
      :resource_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a resource mapping.
    #
    # @!attribute [rw] app_registry_app_name
    #   The name of the application this resource is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] eks_source_name
    #   Name of the Amazon Elastic Kubernetes Service cluster and namespace
    #   this resource belongs to.
    #
    #   <note markdown="1"> This parameter accepts values in "eks-cluster/namespace" format.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] logical_stack_name
    #   The name of the CloudFormation stack this resource is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] mapping_type
    #   Specifies the type of resource mapping.
    #
    #   AppRegistryApp
    #
    #   : The resource is mapped to another application. The name of the
    #     application is contained in the `appRegistryAppName` property.
    #
    #   CfnStack
    #
    #   : The resource is mapped to a CloudFormation stack. The name of the
    #     CloudFormation stack is contained in the `logicalStackName`
    #     property.
    #
    #   Resource
    #
    #   : The resource is mapped to another resource. The name of the
    #     resource is contained in the `resourceName` property.
    #
    #   ResourceGroup
    #
    #   : The resource is mapped to Resource Groups. The name of the
    #     resource group is contained in the `resourceGroupName` property.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   Identifier of the physical resource.
    #   @return [Types::PhysicalResourceId]
    #
    # @!attribute [rw] resource_group_name
    #   Name of the resource group that the resource is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource that the resource is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] terraform_source_name
    #   The short name of the Terraform source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResourceMapping AWS API Documentation
    #
    class ResourceMapping < Struct.new(
      :app_registry_app_name,
      :eks_source_name,
      :logical_stack_name,
      :mapping_type,
      :physical_resource_id,
      :resource_group_name,
      :resource_name,
      :terraform_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when the specified resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that the exception applies to.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that the exception applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the Amazon S3 bucket.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resiliency score of each scoring component. For more information about
    # scoring component, see [Calculating resiliency score][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/calculate-score.html
    #
    # @!attribute [rw] excluded_count
    #   Number of recommendations that were excluded from the assessment.
    #
    #   For example, if the `Excluded count` for Resilience Hub recommended
    #   Amazon CloudWatch alarms is 7, it indicates that 7 Amazon CloudWatch
    #   alarms are excluded from the assessment.
    #   @return [Integer]
    #
    # @!attribute [rw] outstanding_count
    #   Number of issues that must be resolved to obtain the maximum
    #   possible score for the scoring component. For SOPs, alarms, and FIS
    #   experiments, these are the number of recommendations that must be
    #   implemented. For compliance, it is the number of Application
    #   Components that has breached the resiliency policy.
    #
    #   For example, if the `Outstanding count` for Resilience Hub
    #   recommended Amazon CloudWatch alarms is 5, it indicates that 5
    #   Amazon CloudWatch alarms must be fixed to achieve the maximum
    #   possible score.
    #   @return [Integer]
    #
    # @!attribute [rw] possible_score
    #   Maximum possible score that can be obtained for the scoring
    #   component. If the `Possible score` is 20 points, it indicates the
    #   maximum possible score you can achieve for your application when you
    #   run a new assessment after implementing all the Resilience Hub
    #   recommendations.
    #   @return [Float]
    #
    # @!attribute [rw] score
    #   Resiliency score of your application.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ScoringComponentResiliencyScore AWS API Documentation
    #
    class ScoringComponentResiliencyScore < Struct.new(
      :excluded_count,
      :outstanding_count,
      :possible_score,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when you have exceeded your service quota. To
    # perform the requested action, remove some of the relevant resources,
    # or use Service Quotas to request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a standard operating procedure (SOP) recommendation.
    #
    # @!attribute [rw] app_component_name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The recommendation items.
    #   @return [Array<Types::RecommendationItem>]
    #
    # @!attribute [rw] name
    #   Name of the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] prerequisite
    #   Prerequisite for the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   Identifier for the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_status
    #   Status of the recommended standard operating procedure.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   Reference identifier for the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The service type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/SopRecommendation AWS API Documentation
    #
    class SopRecommendation < Struct.new(
      :app_component_name,
      :description,
      :items,
      :name,
      :prerequisite,
      :recommendation_id,
      :recommendation_status,
      :reference_id,
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name for the assessment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Used for an idempotency token. A client token is a unique,
    #   case-sensitive string of up to 64 ASCII characters. You should not
    #   reuse the same client token for other API requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the resource. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/StartAppAssessmentRequest AWS API Documentation
    #
    class StartAppAssessmentRequest < Struct.new(
      :app_arn,
      :app_version,
      :assessment_name,
      :client_token,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] assessment
    #   The assessment created.
    #   @return [Types::AppAssessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/StartAppAssessmentResponse AWS API Documentation
    #
    class StartAppAssessmentResponse < Struct.new(
      :assessment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The Terraform s3 state file you need to import.
    #
    # @!attribute [rw] s3_state_file_url
    #   The URL of the Terraform s3 state file you need to import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/TerraformSource AWS API Documentation
    #
    class TerraformSource < Struct.new(
      :s3_state_file_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a test recommendation.
    #
    # @!attribute [rw] app_component_name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] depends_on_alarms
    #   A list of recommended alarms that are used in the test and must be
    #   exported before or with the test.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   Description for the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] intent
    #   Intent of the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The test recommendation items.
    #   @return [Array<Types::RecommendationItem>]
    #
    # @!attribute [rw] name
    #   Name of the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] prerequisite
    #   Prerequisite of the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   Identifier for the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_status
    #   Status of the recommended test.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   Reference identifier for the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] risk
    #   Level of risk for this test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of test recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/TestRecommendation AWS API Documentation
    #
    class TestRecommendation < Struct.new(
      :app_component_name,
      :depends_on_alarms,
      :description,
      :intent,
      :items,
      :name,
      :prerequisite,
      :recommendation_id,
      :recommendation_status,
      :reference_id,
      :risk,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when you have exceeded the limit on the number
    # of requests per second.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a resource that is not supported by Resilience Hub.
    #
    # @!attribute [rw] logical_resource_id
    #   Logical resource identifier for the unsupported resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   Physical resource identifier for the unsupported resource.
    #   @return [Types::PhysicalResourceId]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] unsupported_resource_status
    #   The status of the unsupported resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UnsupportedResource AWS API Documentation
    #
    class UnsupportedResource < Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :unsupported_resource_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_schedule
    #   Assessment execution schedule with 'Daily' or 'Disabled' values.
    #   @return [String]
    #
    # @!attribute [rw] clear_resiliency_policy_arn
    #   Specifies if the resiliency policy ARN should be cleared.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The optional description for an app.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions
    #   The list of events you would like to subscribe and get notification
    #   for. Currently, Resilience Hub supports notifications only for
    #   **Drift detected** and **Scheduled assessment failure** events.
    #   @return [Array<Types::EventSubscription>]
    #
    # @!attribute [rw] permission_model
    #   Defines the roles and credentials that Resilience Hub would use
    #   while creating an application, importing its resources, and running
    #   an assessment.
    #   @return [Types::PermissionModel]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppRequest AWS API Documentation
    #
    class UpdateAppRequest < Struct.new(
      :app_arn,
      :assessment_schedule,
      :clear_resiliency_policy_arn,
      :description,
      :event_subscriptions,
      :permission_model,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   The specified application, returned as an object with details
    #   including compliance status, creation time, description, resiliency
    #   score, and more.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppResponse AWS API Documentation
    #
    class UpdateAppResponse < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Currently, there is no supported additional information for
    #   Application Components.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of Application Component. For more information about the types
    #   of Application Component, see [Grouping resources in an
    #   AppComponent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionAppComponentRequest AWS API Documentation
    #
    class UpdateAppVersionAppComponentRequest < Struct.new(
      :additional_info,
      :app_arn,
      :id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   List of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionAppComponentResponse AWS API Documentation
    #
    class UpdateAppVersionAppComponentResponse < Struct.new(
      :app_arn,
      :app_component,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Additional configuration parameters for an Resilience Hub
    #   application. If you want to implement `additionalInfo` through the
    #   Resilience Hub console rather than using an API call, see [Configure
    #   the application configuration parameters][1].
    #
    #   <note markdown="1"> Currently, this parameter accepts a key-value mapping (in a string
    #   format) of only one failover region and one associated account.
    #
    #    Key: `"failover-regions"`
    #
    #    Value: `"[\{"region":"<REGION>",
    #   "accounts":[\{"id":"<ACCOUNT_ID>"\}]\}]"`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionRequest AWS API Documentation
    #
    class UpdateAppVersionRequest < Struct.new(
      :additional_info,
      :app_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Currently, there is no supported additional information for
    #   resources.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_components
    #   List of Application Components that this resource belongs to. If an
    #   Application Component is not part of the Resilience Hub application,
    #   it will be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_id
    #   Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Amazon Web Services region that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] excluded
    #   Indicates if a resource is excluded from an Resilience Hub
    #   application.
    #
    #   <note markdown="1"> You can exclude only imported resources from an Resilience Hub
    #   application.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] logical_resource_id
    #   Logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   Physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionResourceRequest AWS API Documentation
    #
    class UpdateAppVersionResourceRequest < Struct.new(
      :additional_info,
      :app_arn,
      :app_components,
      :aws_account_id,
      :aws_region,
      :excluded,
      :logical_resource_id,
      :physical_resource_id,
      :resource_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource
    #   Defines a physical resource. A physical resource is a resource that
    #   exists in your account. It can be identified using an Amazon
    #   Resource Name (ARN) or a Resilience Hub-native identifier.
    #   @return [Types::PhysicalResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionResourceResponse AWS API Documentation
    #
    class UpdateAppVersionResourceResponse < Struct.new(
      :app_arn,
      :app_version,
      :physical_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] additional_info
    #   Additional configuration parameters for an Resilience Hub
    #   application. If you want to implement `additionalInfo` through the
    #   Resilience Hub console rather than using an API call, see [Configure
    #   the application configuration parameters][1].
    #
    #   <note markdown="1"> Currently, this parameter supports only failover region and account.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] app_arn
    #   Amazon Resource Name (ARN) of the Resilience Hub application. The
    #   format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   Resilience Hub application version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateAppVersionResponse AWS API Documentation
    #
    class UpdateAppVersionResponse < Struct.new(
      :additional_info,
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the operational recommendation item that needs a status
    # update.
    #
    # @!attribute [rw] resource_id
    #   Resource identifier of the operational recommendation item.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   Identifier of the target Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] target_region
    #   Identifier of the target Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateRecommendationStatusItem AWS API Documentation
    #
    class UpdateRecommendationStatusItem < Struct.new(
      :resource_id,
      :target_account_id,
      :target_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the operational recommendation item that is to be included or
    # excluded.
    #
    # @!attribute [rw] entry_id
    #   An identifier for an entry in this batch that is used to communicate
    #   the result.
    #
    #   <note markdown="1"> The `entryId`s of a batch request need to be unique within a
    #   request.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] exclude_reason
    #   Indicates the reason for excluding an operational recommendation.
    #   @return [String]
    #
    # @!attribute [rw] excluded
    #   Indicates if the operational recommendation needs to be excluded. If
    #   set to True, the operational recommendation will be excluded.
    #   @return [Boolean]
    #
    # @!attribute [rw] item
    #   The operational recommendation item.
    #   @return [Types::UpdateRecommendationStatusItem]
    #
    # @!attribute [rw] reference_id
    #   Reference identifier of the operational recommendation item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateRecommendationStatusRequestEntry AWS API Documentation
    #
    class UpdateRecommendationStatusRequestEntry < Struct.new(
      :entry_id,
      :exclude_reason,
      :excluded,
      :item,
      :reference_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_location_constraint
    #   Specifies a high-level geographical location constraint for where
    #   your resilience policy data can be stored.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The type of resiliency policy to be created, including the recovery
    #   time objective (RTO) and recovery point objective (RPO) in seconds.
    #   @return [Hash<String,Types::FailurePolicy>]
    #
    # @!attribute [rw] policy_arn
    #   Amazon Resource Name (ARN) of the resiliency policy. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   The description for the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The tier for this resiliency policy, ranging from the highest
    #   severity (`MissionCritical`) to lowest (`NonCritical`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateResiliencyPolicyRequest AWS API Documentation
    #
    class UpdateResiliencyPolicyRequest < Struct.new(
      :data_location_constraint,
      :policy,
      :policy_arn,
      :policy_description,
      :policy_name,
      :tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The type of resiliency policy that was updated, including the
    #   recovery time objective (RTO) and recovery point objective (RPO) in
    #   seconds.
    #   @return [Types::ResiliencyPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/UpdateResiliencyPolicyResponse AWS API Documentation
    #
    class UpdateResiliencyPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when a request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
