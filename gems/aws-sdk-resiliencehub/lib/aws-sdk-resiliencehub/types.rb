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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   Mappings used to map logical resources from the template to physical
    #   resources. You can use the mapping type `CFN_STACK` if the
    #   application template uses a logical stack name. Or you can map
    #   individual resources by using the mapping type `RESOURCE`. We
    #   recommend using the mapping type `CFN_STACK` if the application is
    #   backed by a CloudFormation stack.
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
    #   The Application Component for the CloudWatch alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of CloudWatch alarm recommendations.
    #   @return [Array<Types::RecommendationItem>]
    #
    # @!attribute [rw] name
    #   The name of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] prerequisite
    #   The prerequisite for the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference identifier of the alarm recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of alarm recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AlarmRecommendation AWS API Documentation
    #
    class AlarmRecommendation < Struct.new(
      :app_component_name,
      :description,
      :items,
      :name,
      :prerequisite,
      :recommendation_id,
      :reference_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an Resilience Hub application.
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The timestamp for when the app was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The optional description for an app.
    #   @return [String]
    #
    # @!attribute [rw] last_app_compliance_evaluation_time
    #   The timestamp for the most recent compliance evaluation.
    #   @return [Time]
    #
    # @!attribute [rw] last_resiliency_score_evaluation_time
    #   The timestamp for the most recent resiliency score evaluation.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name for the application.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   The current resiliency score for the application.
    #   @return [Float]
    #
    # @!attribute [rw] status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
      :last_app_compliance_evaluation_time,
      :last_resiliency_score_evaluation_time,
      :name,
      :policy_arn,
      :resiliency_score,
      :status,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Defines an application assessment.
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    # @!attribute [rw] assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The current status of the assessment for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] compliance
    #   The application compliance against the resiliency policy.
    #   @return [Hash<String,Types::DisruptionCompliance>]
    #
    # @!attribute [rw] compliance_status
    #   The current status of the compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] cost
    #   The cost for the application.
    #   @return [Types::Cost]
    #
    # @!attribute [rw] end_time
    #   The end time for the action.
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
    #   The resiliency policy.
    #   @return [Types::ResiliencyPolicy]
    #
    # @!attribute [rw] resiliency_score
    #   The current resiliency score for the application.
    #   @return [Types::ResiliencyScore]
    #
    # @!attribute [rw] resource_errors_details
    #   A resource error object containing a list of errors retrieving an
    #   application's resources.
    #   @return [Types::ResourceErrorsDetails]
    #
    # @!attribute [rw] start_time
    #   The starting time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
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
      :end_time,
      :invoker,
      :message,
      :policy,
      :resiliency_score,
      :resource_errors_details,
      :start_time,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Defines an application assessment summary.
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    # @!attribute [rw] assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The current status of the assessment for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] compliance_status
    #   The current status of compliance for the resiliency policy.
    #   @return [String]
    #
    # @!attribute [rw] cost
    #   The cost for the application.
    #   @return [Types::Cost]
    #
    # @!attribute [rw] end_time
    #   The end time for the action.
    #   @return [Time]
    #
    # @!attribute [rw] invoker
    #   The entity that invoked the assessment.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message from the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   The current resiliency score for the application.
    #   @return [Float]
    #
    # @!attribute [rw] start_time
    #   The starting time for the action.
    #   @return [Time]
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
      :end_time,
      :invoker,
      :message,
      :resiliency_score,
      :start_time)
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
    #   Unique identifier of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Application Component.
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
    #   The name of the Application Component.
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
    #   The status of the action.
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
    #   the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The timestamp for when the app was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The optional description for an app.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] resiliency_score
    #   The current resiliency score for the application.
    #   @return [Float]
    #
    # @!attribute [rw] status
    #   The status of the application.
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
      :name,
      :resiliency_score,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The version of the application.
    #
    # @!attribute [rw] app_version
    #   The version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/AppVersionSummary AWS API Documentation
    #
    class AppVersionSummary < Struct.new(
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines recommendations for an Resilience Hub Application Component,
    # returned as an object. This object contains component names,
    # configuration recommendations, and recommendation statuses.
    #
    # @!attribute [rw] app_component_name
    #   The name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] config_recommendations
    #   The list of recommendations.
    #   @return [Array<Types::ConfigRecommendation>]
    #
    # @!attribute [rw] recommendation_status
    #   The recommendation status.
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

    # Defines a configuration recommendation.
    #
    # @!attribute [rw] app_component_name
    #   The name of the Application Component.
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
    #   The reference identifier for the recommendation configuration.
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
    # @!attribute [rw] name
    #   The name for the application.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :assessment_schedule,
      :client_token,
      :description,
      :name,
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The identifier of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of Application Component. For more information about the
    #   types of Application Component, see [Grouping resources in an
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   The list of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_components
    #   The list of Application Components that this resource belongs to. If
    #   an Application Component is not part of the Resilience Hub
    #   application, it will be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services region that owns the physical resource.
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
    #   The logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   The physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   about ARNs, see [ Amazon Resource Names (ARNs)][1] in the *AWS
    #   General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_input_source
    #   The name of the input source from where the application resource is
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The identifier of the Application Component.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   The list of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services region that owns the physical resource.
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
    #   The logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   The physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The status of the action.
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
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the Application Component.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   The list of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services region that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   The physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The status of the action.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #       The logical identifier of the resource.
    #
    #       Type: Object
    #
    #       Each `logicalResourceId` object includes the following fields:
    #
    #       * `identifier`
    #
    #         The identifier of the resource.
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
    #         The name of the Amazon Elastic Kubernetes Service cluster and
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
    #     The list of Application Components that this resource belongs to.
    #     If an Application Component is not part of the Resilience Hub
    #     application, it will be added.
    #
    #     Type: Array
    #
    #     Each `appComponents` array item includes the following fields:
    #
    #     * `name`
    #
    #       The name of the Application Component.
    #
    #       Type: String
    #
    #     * `type`
    #
    #       The type of Application Component. For more information about
    #       the types of Application Component, see [Grouping resources in
    #       an AppComponent][2].
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
    #       The logical identifier of the resource.
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
    #         The identifier of the resource.
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
    #         The name of the Amazon Elastic Kubernetes Service cluster and
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
    #     The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The status of the action.
    #   @return [String]
    #
    # @!attribute [rw] status_change_time
    #   The timestamp for when the status last changed.
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
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The RPO reference identifier.
    #   @return [String]
    #
    # @!attribute [rw] rto_description
    #   The RTO description.
    #   @return [String]
    #
    # @!attribute [rw] rto_reference_id
    #   The RTO reference identifier.
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
    #   The Amazon Resource Name (ARN) of the Amazon Elastic Kubernetes
    #   Service cluster. The format for this ARN is:
    #   arn:`aws`:eks:`region`:`account-id`:cluster/`cluster-name`. For more
    #   information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Amazon Elastic Kubernetes
    #   Service cluster. The format for this ARN is:
    #   arn:`aws`:eks:`region`:`account-id`:cluster/`cluster-name`. For more
    #   information about ARNs, see [ Amazon Resource Names (ARNs)][1] in
    #   the *AWS General Reference* guide.
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

    # Defines a failure policy.
    #
    # @!attribute [rw] rpo_in_secs
    #   The Recovery Point Objective (RPO), in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] rto_in_secs
    #   The Recovery Time Objective (RTO), in seconds.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The status of the action.
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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

    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Application Component.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Resilience Hub application version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppVersionsRequest AWS API Documentation
    #
    class ListAppVersionsRequest < Struct.new(
      :app_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_versions
    #   The version of the application.
    #   @return [Array<Types::AppVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/ListAppsRequest AWS API Documentation
    #
    class ListAppsRequest < Struct.new(
      :app_arn,
      :max_results,
      :name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_summaries
    #   Summaries for the Resilience Hub application.
    #   @return [Array<Types::AppSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    #   The status of the action.
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
    #   The token for the next set of results, or null if there are no more
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
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The maximum number of results to include in the response. If more
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
    #   The token for the next set of results, or null if there are no more
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
    #   The name of the Amazon Elastic Kubernetes Service cluster and
    #   namespace this resource belongs to.
    #
    #   <note markdown="1"> This parameter accepts values in "eks-cluster/namespace" format.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the resource.
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
    #   The logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] parent_resource_name
    #   The name of the parent resource.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The physical identifier of the resource.
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
    #   The type of input source.
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
    #   The identifier of the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of physical resource identifier.
    #
    #   Arn
    #
    #   : The resource identifier is an Amazon Resource Name (ARN) .
    #
    #   Native
    #
    #   : The resource identifier is an Resilience Hub-native identifier.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PublishAppVersionRequest AWS API Documentation
    #
    class PublishAppVersionRequest < Struct.new(
      :app_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehub-2020-04-30/PublishAppVersionResponse AWS API Documentation
    #
    class PublishAppVersionResponse < Struct.new(
      :app_arn,
      :app_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #       The logical identifier of the resource.
    #
    #       Type: Object
    #
    #       Each `logicalResourceId` object includes the following fields:
    #
    #       * `identifier`
    #
    #         The identifier of the resource.
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
    #         The name of the Amazon Elastic Kubernetes Service cluster and
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
    #     The list of Application Components that this resource belongs to.
    #     If an Application Component is not part of the Resilience Hub
    #     application, it will be added.
    #
    #     Type: Array
    #
    #     Each `appComponents` array item includes the following fields:
    #
    #     * `name`
    #
    #       The name of the Application Component.
    #
    #       Type: String
    #
    #     * `type`
    #
    #       The type of Application Component. For more information about
    #       the types of Application Component, see [Grouping resources in
    #       an AppComponent][2].
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
    #       The logical identifier of the resource.
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
    #         The identifier of the resource.
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
    #         The name of the Amazon Elastic Kubernetes Service cluster and
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
    #     The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    # @!attribute [rw] resource_id
    #   The resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The target account identifier.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assessment_arn
    #   The Amazon Resource Name (ARN) of the assessment. The format for
    #   this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app-assessment/`app-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The format of the recommendation template.
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
    #   The message for the recommendation template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the recommendation template.
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
    #   The Amazon Resource Name (ARN) for the recommendation template.
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
    #   The status of the action.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    # @!attribute [rw] creation_time
    #   The timestamp for when the resiliency policy was created.
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
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
      :disruption_score,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The status of the action.
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
    #   This is the identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   This is the identifier of the physical resource.
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
    #   The name of the Amazon Elastic Kubernetes Service cluster and
    #   namespace this resource belongs to.
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
    #   The identifier of this resource.
    #   @return [Types::PhysicalResourceId]
    #
    # @!attribute [rw] resource_group_name
    #   The name of the resource group this resource is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource this resource is mapped to.
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
    #   The name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The recommendation items.
    #   @return [Array<Types::RecommendationItem>]
    #
    # @!attribute [rw] name
    #   The name of the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] prerequisite
    #   The prerequisite for the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   Identifier for the SOP recommendation.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference identifier for the SOP recommendation.
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
      :reference_id,
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key/value
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
    #   The Amazon Resource Name (ARN) of the resource.
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
    #   The name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] depends_on_alarms
    #   A list of recommended alarms that are used in the test and must be
    #   exported before or with the test.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The description for the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] intent
    #   The intent of the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The test recommendation items.
    #   @return [Array<Types::RecommendationItem>]
    #
    # @!attribute [rw] name
    #   The name of the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] prerequisite
    #   The prerequisite of the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   Identifier for the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference identifier for the test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] risk
    #   The level of risk for this test recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of test recommendation.
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
    #   The logical resource identifier for the unsupported resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   The physical resource identifier for the unsupported resource.
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
    #   The Amazon Resource Name (ARN) of the resource.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Application Component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of Application Component. For more information about the
    #   types of Application Component, see [Grouping resources in an
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_component
    #   The list of Application Components that belong to this resource.
    #   @return [Types::AppComponent]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_components
    #   The list of Application Components that this resource belongs to. If
    #   an Application Component is not part of the Resilience Hub
    #   application, it will be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account that owns the physical resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services region that owns the physical resource.
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
    #   The logical identifier of the resource.
    #   @return [Types::LogicalResourceId]
    #
    # @!attribute [rw] physical_resource_id
    #   The physical identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the Resilience Hub application.
    #   The format for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:app/`app-id`. For
    #   more information about ARNs, see [ Amazon Resource Names (ARNs)][1]
    #   in the *AWS General Reference* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The Resilience Hub application version.
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
    #   The Amazon Resource Name (ARN) of the resiliency policy. The format
    #   for this ARN is:
    #   arn:`partition`:resiliencehub:`region`:`account`:resiliency-policy/`policy-id`.
    #   For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *AWS General Reference* guide.
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
