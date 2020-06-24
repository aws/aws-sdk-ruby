# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTThingsGraph
  module Types

    # @note When making an API call, you may pass AssociateEntityToThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         entity_id: "Urn", # required
    #         namespace_version: 1,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to which the entity is to be associated.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the device to be associated with the thing.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME`
    #   @return [String]
    #
    # @!attribute [rw] namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #   @return [Integer]
    #
    class AssociateEntityToThingRequest < Struct.new(
      :thing_name,
      :entity_id,
      :namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateEntityToThingResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateFlowTemplateRequest
    #   data as a hash:
    #
    #       {
    #         definition: { # required
    #           language: "GRAPHQL", # required, accepts GRAPHQL
    #           text: "DefinitionText", # required
    #         },
    #         compatible_namespace_version: 1,
    #       }
    #
    # @!attribute [rw] definition
    #   The workflow `DefinitionDocument`.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] compatible_namespace_version
    #   The namespace version in which the workflow is to be created.
    #
    #   If no value is specified, the latest version is used by default.
    #   @return [Integer]
    #
    class CreateFlowTemplateRequest < Struct.new(
      :definition,
      :compatible_namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   The summary object that describes the created workflow.
    #   @return [Types::FlowTemplateSummary]
    #
    class CreateFlowTemplateResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSystemInstanceRequest
    #   data as a hash:
    #
    #       {
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         definition: { # required
    #           language: "GRAPHQL", # required, accepts GRAPHQL
    #           text: "DefinitionText", # required
    #         },
    #         target: "GREENGRASS", # required, accepts GREENGRASS, CLOUD
    #         greengrass_group_name: "GroupName",
    #         s3_bucket_name: "S3BucketName",
    #         metrics_configuration: {
    #           cloud_metric_enabled: false,
    #           metric_rule_role_arn: "RoleArn",
    #         },
    #         flow_actions_role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] tags
    #   Metadata, consisting of key-value pairs, that can be used to
    #   categorize your system instances.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] definition
    #   A document that defines an entity.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] target
    #   The target type of the deployment. Valid values are `GREENGRASS` and
    #   `CLOUD`.
    #   @return [String]
    #
    # @!attribute [rw] greengrass_group_name
    #   The name of the Greengrass group where the system instance will be
    #   deployed. This value is required if the value of the `target`
    #   parameter is `GREENGRASS`.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon Simple Storage Service bucket that will be
    #   used to store and deploy the system instance's resource file. This
    #   value is required if the value of the `target` parameter is
    #   `GREENGRASS`.
    #   @return [String]
    #
    # @!attribute [rw] metrics_configuration
    #   An object that specifies whether cloud metrics are collected in a
    #   deployment and, if so, what role is used to collect metrics.
    #   @return [Types::MetricsConfiguration]
    #
    # @!attribute [rw] flow_actions_role_arn
    #   The ARN of the IAM role that AWS IoT Things Graph will assume when
    #   it executes the flow. This role must have read and write access to
    #   AWS Lambda and AWS IoT and any other AWS services that the flow uses
    #   when it executes. This value is required if the value of the
    #   `target` parameter is `CLOUD`.
    #   @return [String]
    #
    class CreateSystemInstanceRequest < Struct.new(
      :tags,
      :definition,
      :target,
      :greengrass_group_name,
      :s3_bucket_name,
      :metrics_configuration,
      :flow_actions_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   The summary object that describes the new system instance.
    #   @return [Types::SystemInstanceSummary]
    #
    class CreateSystemInstanceResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSystemTemplateRequest
    #   data as a hash:
    #
    #       {
    #         definition: { # required
    #           language: "GRAPHQL", # required, accepts GRAPHQL
    #           text: "DefinitionText", # required
    #         },
    #         compatible_namespace_version: 1,
    #       }
    #
    # @!attribute [rw] definition
    #   The `DefinitionDocument` used to create the system.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] compatible_namespace_version
    #   The namespace version in which the system is to be created.
    #
    #   If no value is specified, the latest version is used by default.
    #   @return [Integer]
    #
    class CreateSystemTemplateRequest < Struct.new(
      :definition,
      :compatible_namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   The summary object that describes the created system.
    #   @return [Types::SystemTemplateSummary]
    #
    class CreateSystemTemplateResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document that defines an entity.
    #
    # @note When making an API call, you may pass DefinitionDocument
    #   data as a hash:
    #
    #       {
    #         language: "GRAPHQL", # required, accepts GRAPHQL
    #         text: "DefinitionText", # required
    #       }
    #
    # @!attribute [rw] language
    #   The language used to define the entity. `GRAPHQL` is the only valid
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The GraphQL text that defines the entity.
    #   @return [String]
    #
    class DefinitionDocument < Struct.new(
      :language,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFlowTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the workflow to be deleted.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #   @return [String]
    #
    class DeleteFlowTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteFlowTemplateResponse < Aws::EmptyStructure; end

    # @api private
    #
    class DeleteNamespaceRequest < Aws::EmptyStructure; end

    # @!attribute [rw] namespace_arn
    #   The ARN of the namespace to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to be deleted.
    #   @return [String]
    #
    class DeleteNamespaceResponse < Struct.new(
      :namespace_arn,
      :namespace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSystemInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system instance to be deleted.
    #   @return [String]
    #
    class DeleteSystemInstanceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSystemInstanceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSystemTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system to be deleted.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #   @return [String]
    #
    class DeleteSystemTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSystemTemplateResponse < Aws::EmptyStructure; end

    # An object that contains the ID and revision number of a workflow or
    # system that is part of a deployment.
    #
    # @!attribute [rw] id
    #   The ID of the workflow or system.
    #   @return [String]
    #
    # @!attribute [rw] revision_number
    #   The revision number of the workflow or system.
    #   @return [Integer]
    #
    class DependencyRevision < Struct.new(
      :id,
      :revision_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeploySystemInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system instance. This value is returned by the
    #   `CreateSystemInstance` action.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME`
    #   @return [String]
    #
    class DeploySystemInstanceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   An object that contains summary information about a system instance
    #   that was deployed.
    #   @return [Types::SystemInstanceSummary]
    #
    # @!attribute [rw] greengrass_deployment_id
    #   The ID of the Greengrass deployment used to deploy the system
    #   instance.
    #   @return [String]
    #
    class DeploySystemInstanceResponse < Struct.new(
      :summary,
      :greengrass_deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeprecateFlowTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the workflow to be deleted.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #   @return [String]
    #
    class DeprecateFlowTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeprecateFlowTemplateResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeprecateSystemTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system to delete.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #   @return [String]
    #
    class DeprecateSystemTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeprecateSystemTemplateResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         namespace_name: "NamespaceName",
    #       }
    #
    # @!attribute [rw] namespace_name
    #   The name of the user's namespace. Set this to `aws` to get the
    #   public namespace.
    #   @return [String]
    #
    class DescribeNamespaceRequest < Struct.new(
      :namespace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace_arn
    #   The ARN of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] tracking_namespace_name
    #   The name of the public namespace that the latest namespace version
    #   is tracking.
    #   @return [String]
    #
    # @!attribute [rw] tracking_namespace_version
    #   The version of the public namespace that the latest version is
    #   tracking.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_version
    #   The version of the user's namespace to describe.
    #   @return [Integer]
    #
    class DescribeNamespaceResponse < Struct.new(
      :namespace_arn,
      :namespace_name,
      :tracking_namespace_name,
      :tracking_namespace_version,
      :namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DissociateEntityFromThingRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         entity_type: "DEVICE", # required, accepts DEVICE, SERVICE, DEVICE_MODEL, CAPABILITY, STATE, ACTION, EVENT, PROPERTY, MAPPING, ENUM
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The entity type from which to disassociate the thing.
    #   @return [String]
    #
    class DissociateEntityFromThingRequest < Struct.new(
      :thing_name,
      :entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    class DissociateEntityFromThingResponse < Aws::EmptyStructure; end

    # Describes the properties of an entity.
    #
    # @!attribute [rw] id
    #   The entity ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The entity ARN.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The entity type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] definition
    #   The definition document of the entity.
    #   @return [Types::DefinitionDocument]
    #
    class EntityDescription < Struct.new(
      :id,
      :arn,
      :type,
      :created_at,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters an entity search. Multiple filters function as
    # OR criteria in the search. For example a search that includes a
    # `NAMESPACE` and a `REFERENCED_ENTITY_ID` filter searches for entities
    # in the specified namespace that use the entity specified by the value
    # of `REFERENCED_ENTITY_ID`.
    #
    # @note When making an API call, you may pass EntityFilter
    #   data as a hash:
    #
    #       {
    #         name: "NAME", # accepts NAME, NAMESPACE, SEMANTIC_TYPE_PATH, REFERENCED_ENTITY_ID
    #         value: ["EntityFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the entity search filter field. `REFERENCED_ENTITY_ID`
    #   filters on entities that are used by the entity in the result set.
    #   For example, you can filter on the ID of a property that is used in
    #   a state.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An array of string values for the search filter field. Multiple
    #   values function as AND criteria in the search.
    #   @return [Array<String>]
    #
    class EntityFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a flow event.
    #
    # @!attribute [rw] message_id
    #   The unique identifier of the message.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of flow event .
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time when the message was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   A string containing information about the flow event.
    #   @return [String]
    #
    class FlowExecutionMessage < Struct.new(
      :message_id,
      :event_type,
      :timestamp,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains summary information about a flow execution.
    #
    # @!attribute [rw] flow_execution_id
    #   The ID of the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] system_instance_id
    #   The ID of the system instance that contains the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_template_id
    #   The ID of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the flow execution summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the flow execution summary was last updated.
    #   @return [Time]
    #
    class FlowExecutionSummary < Struct.new(
      :flow_execution_id,
      :status,
      :system_instance_id,
      :flow_template_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains a workflow's definition and summary
    # information.
    #
    # @!attribute [rw] summary
    #   An object that contains summary information about a workflow.
    #   @return [Types::FlowTemplateSummary]
    #
    # @!attribute [rw] definition
    #   A workflow's definition document.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] validated_namespace_version
    #   The version of the user's namespace against which the workflow was
    #   validated. Use this value in your system instance.
    #   @return [Integer]
    #
    class FlowTemplateDescription < Struct.new(
      :summary,
      :definition,
      :validated_namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters a workflow search.
    #
    # @note When making an API call, you may pass FlowTemplateFilter
    #   data as a hash:
    #
    #       {
    #         name: "DEVICE_MODEL_ID", # required, accepts DEVICE_MODEL_ID
    #         value: ["FlowTemplateFilterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the search filter field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An array of string values for the search filter field. Multiple
    #   values function as AND criteria in the search.
    #   @return [Array<String>]
    #
    class FlowTemplateFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains summary information about a workflow.
    #
    # @!attribute [rw] id
    #   The ID of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] revision_number
    #   The revision number of the workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date when the workflow was created.
    #   @return [Time]
    #
    class FlowTemplateSummary < Struct.new(
      :id,
      :arn,
      :revision_number,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         ids: ["Urn"], # required
    #         namespace_version: 1,
    #       }
    #
    # @!attribute [rw] ids
    #   An array of entity IDs.
    #
    #   The IDs should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME`
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #   @return [Integer]
    #
    class GetEntitiesRequest < Struct.new(
      :ids,
      :namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] descriptions
    #   An array of descriptions for the specified entities.
    #   @return [Array<Types::EntityDescription>]
    #
    class GetEntitiesResponse < Struct.new(
      :descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFlowTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #         revision_number: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the workflow.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #   @return [String]
    #
    # @!attribute [rw] revision_number
    #   The number of the workflow revision to retrieve.
    #   @return [Integer]
    #
    class GetFlowTemplateRequest < Struct.new(
      :id,
      :revision_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The object that describes the specified workflow.
    #   @return [Types::FlowTemplateDescription]
    #
    class GetFlowTemplateResponse < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFlowTemplateRevisionsRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the workflow.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class GetFlowTemplateRevisionsRequest < Struct.new(
      :id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of objects that provide summary data about each revision.
    #   @return [Array<Types::FlowTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class GetFlowTemplateRevisionsResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetNamespaceDeletionStatusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] namespace_arn
    #   The ARN of the namespace that is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace that is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deletion request.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code returned by the namespace deletion task.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error code returned by the namespace deletion task.
    #   @return [String]
    #
    class GetNamespaceDeletionStatusResponse < Struct.new(
      :namespace_arn,
      :namespace_name,
      :status,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSystemInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system deployment instance. This value is returned by
    #   `CreateSystemInstance`.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME`
    #   @return [String]
    #
    class GetSystemInstanceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   An object that describes the system instance.
    #   @return [Types::SystemInstanceDescription]
    #
    class GetSystemInstanceResponse < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSystemTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #         revision_number: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system to get. This ID must be in the user's
    #   namespace.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #   @return [String]
    #
    # @!attribute [rw] revision_number
    #   The number that specifies the revision of the system to get.
    #   @return [Integer]
    #
    class GetSystemTemplateRequest < Struct.new(
      :id,
      :revision_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   An object that contains summary data about the system.
    #   @return [Types::SystemTemplateDescription]
    #
    class GetSystemTemplateResponse < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSystemTemplateRevisionsRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system template.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class GetSystemTemplateRevisionsRequest < Struct.new(
      :id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of objects that contain summary data about the system
    #   template revisions.
    #   @return [Array<Types::SystemTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class GetSystemTemplateRevisionsResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUploadStatusRequest
    #   data as a hash:
    #
    #       {
    #         upload_id: "UploadId", # required
    #       }
    #
    # @!attribute [rw] upload_id
    #   The ID of the upload. This value is returned by the
    #   `UploadEntityDefinitions` action.
    #   @return [String]
    #
    class GetUploadStatusRequest < Struct.new(
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] upload_id
    #   The ID of the upload.
    #   @return [String]
    #
    # @!attribute [rw] upload_status
    #   The status of the upload. The initial status is `IN_PROGRESS`. The
    #   response show all validation failures if the upload fails.
    #   @return [String]
    #
    # @!attribute [rw] namespace_arn
    #   The ARN of the upload.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the upload's namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reason
    #   The reason for an upload failure.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date at which the upload was created.
    #   @return [Time]
    #
    class GetUploadStatusResponse < Struct.new(
      :upload_id,
      :upload_status,
      :namespace_arn,
      :namespace_name,
      :namespace_version,
      :failure_reason,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFlowExecutionMessagesRequest
    #   data as a hash:
    #
    #       {
    #         flow_execution_id: "FlowExecutionId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] flow_execution_id
    #   The ID of the flow execution.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class ListFlowExecutionMessagesRequest < Struct.new(
      :flow_execution_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] messages
    #   A list of objects that contain information about events in the
    #   specified flow execution.
    #   @return [Array<Types::FlowExecutionMessage>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class ListFlowExecutionMessagesResponse < Struct.new(
      :messages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         resource_arn: "ResourceArn", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of tags to return.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags are to be
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :max_results,
      :resource_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags returned by the `ListTagsForResource` operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results to return.
    #   @return [String]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies whether cloud metrics are collected in a
    # deployment and, if so, what role is used to collect metrics.
    #
    # @note When making an API call, you may pass MetricsConfiguration
    #   data as a hash:
    #
    #       {
    #         cloud_metric_enabled: false,
    #         metric_rule_role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] cloud_metric_enabled
    #   A Boolean that specifies whether cloud metrics are collected.
    #   @return [Boolean]
    #
    # @!attribute [rw] metric_rule_role_arn
    #   The ARN of the role that is used to collect cloud metrics.
    #   @return [String]
    #
    class MetricsConfiguration < Struct.new(
      :cloud_metric_enabled,
      :metric_rule_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         entity_types: ["DEVICE"], # required, accepts DEVICE, SERVICE, DEVICE_MODEL, CAPABILITY, STATE, ACTION, EVENT, PROPERTY, MAPPING, ENUM
    #         filters: [
    #           {
    #             name: "NAME", # accepts NAME, NAMESPACE, SEMANTIC_TYPE_PATH, REFERENCED_ENTITY_ID
    #             value: ["EntityFilterValue"],
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #         namespace_version: 1,
    #       }
    #
    # @!attribute [rw] entity_types
    #   The entity types for which to search.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Optional filter to apply to the search. Valid filters are `NAME`
    #   `NAMESPACE`, `SEMANTIC_TYPE_PATH` and `REFERENCED_ENTITY_ID`.
    #   `REFERENCED_ENTITY_ID` filters on entities that are used by the
    #   entity in the result set. For example, you can filter on the ID of a
    #   property that is used in a state.
    #
    #   Multiple filters function as OR criteria in the query. Multiple
    #   values passed inside the filter function as AND criteria.
    #   @return [Array<Types::EntityFilter>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #   @return [Integer]
    #
    class SearchEntitiesRequest < Struct.new(
      :entity_types,
      :filters,
      :next_token,
      :max_results,
      :namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] descriptions
    #   An array of descriptions for each entity returned in the search
    #   result.
    #   @return [Array<Types::EntityDescription>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class SearchEntitiesResponse < Struct.new(
      :descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchFlowExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         system_instance_id: "Urn", # required
    #         flow_execution_id: "FlowExecutionId",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] system_instance_id
    #   The ID of the system instance that contains the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_execution_id
    #   The ID of a flow execution.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time of the earliest flow execution to return.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time of the latest flow execution to return.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class SearchFlowExecutionsRequest < Struct.new(
      :system_instance_id,
      :flow_execution_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of objects that contain summary information about each
    #   workflow execution in the result set.
    #   @return [Array<Types::FlowExecutionSummary>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class SearchFlowExecutionsResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchFlowTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "DEVICE_MODEL_ID", # required, accepts DEVICE_MODEL_ID
    #             value: ["FlowTemplateFilterValue"], # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   An array of objects that limit the result set. The only valid filter
    #   is `DEVICE_MODEL_ID`.
    #   @return [Array<Types::FlowTemplateFilter>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class SearchFlowTemplatesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of objects that contain summary information about each
    #   workflow in the result set.
    #   @return [Array<Types::FlowTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class SearchFlowTemplatesResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchSystemInstancesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "SYSTEM_TEMPLATE_ID", # accepts SYSTEM_TEMPLATE_ID, STATUS, GREENGRASS_GROUP_NAME
    #             value: ["SystemInstanceFilterValue"],
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   Optional filter to apply to the search. Valid filters are
    #   `SYSTEM_TEMPLATE_ID`, `STATUS`, and `GREENGRASS_GROUP_NAME`.
    #
    #   Multiple filters function as OR criteria in the query. Multiple
    #   values passed inside the filter function as AND criteria.
    #   @return [Array<Types::SystemInstanceFilter>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class SearchSystemInstancesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of objects that contain summary data abour the system
    #   instances in the result set.
    #   @return [Array<Types::SystemInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class SearchSystemInstancesResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchSystemTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FLOW_TEMPLATE_ID", # required, accepts FLOW_TEMPLATE_ID
    #             value: ["SystemTemplateFilterValue"], # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   An array of filters that limit the result set. The only valid filter
    #   is `FLOW_TEMPLATE_ID`.
    #   @return [Array<Types::SystemTemplateFilter>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    class SearchSystemTemplatesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of objects that contain summary information about each
    #   system deployment in the result set.
    #   @return [Array<Types::SystemTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class SearchSystemTemplatesResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchThingsRequest
    #   data as a hash:
    #
    #       {
    #         entity_id: "Urn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         namespace_version: 1,
    #       }
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity to which the things are associated.
    #
    #   The IDs should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results. Use this when
    #   you're paginating results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #   @return [Integer]
    #
    class SearchThingsRequest < Struct.new(
      :entity_id,
      :next_token,
      :max_results,
      :namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] things
    #   An array of things in the result set.
    #   @return [Array<Types::Thing>]
    #
    # @!attribute [rw] next_token
    #   The string to specify as `nextToken` when you request the next page
    #   of results.
    #   @return [String]
    #
    class SearchThingsResponse < Struct.new(
      :things,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains a system instance definition and summary
    # information.
    #
    # @!attribute [rw] summary
    #   An object that contains summary information about a system instance.
    #   @return [Types::SystemInstanceSummary]
    #
    # @!attribute [rw] definition
    #   A document that defines an entity.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon Simple Storage Service bucket where information about a
    #   system instance is stored.
    #   @return [String]
    #
    # @!attribute [rw] metrics_configuration
    #   An object that specifies whether cloud metrics are collected in a
    #   deployment and, if so, what role is used to collect metrics.
    #   @return [Types::MetricsConfiguration]
    #
    # @!attribute [rw] validated_namespace_version
    #   The version of the user's namespace against which the system
    #   instance was validated.
    #   @return [Integer]
    #
    # @!attribute [rw] validated_dependency_revisions
    #   A list of objects that contain all of the IDs and revision numbers
    #   of workflows and systems that are used in a system instance.
    #   @return [Array<Types::DependencyRevision>]
    #
    # @!attribute [rw] flow_actions_role_arn
    #   The AWS Identity and Access Management (IAM) role that AWS IoT
    #   Things Graph assumes during flow execution in a cloud deployment.
    #   This role must have read and write permissionss to AWS Lambda and
    #   AWS IoT and to any other AWS services that the flow uses.
    #   @return [String]
    #
    class SystemInstanceDescription < Struct.new(
      :summary,
      :definition,
      :s3_bucket_name,
      :metrics_configuration,
      :validated_namespace_version,
      :validated_dependency_revisions,
      :flow_actions_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters a system instance search. Multiple filters
    # function as OR criteria in the search. For example a search that
    # includes a GREENGRASS\_GROUP\_NAME and a STATUS filter searches for
    # system instances in the specified Greengrass group that have the
    # specified status.
    #
    # @note When making an API call, you may pass SystemInstanceFilter
    #   data as a hash:
    #
    #       {
    #         name: "SYSTEM_TEMPLATE_ID", # accepts SYSTEM_TEMPLATE_ID, STATUS, GREENGRASS_GROUP_NAME
    #         value: ["SystemInstanceFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the search filter field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An array of string values for the search filter field. Multiple
    #   values function as AND criteria in the search.
    #   @return [Array<String>]
    #
    class SystemInstanceFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains summary information about a system instance.
    #
    # @!attribute [rw] id
    #   The ID of the system instance.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the system instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the system instance.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target of the system instance.
    #   @return [String]
    #
    # @!attribute [rw] greengrass_group_name
    #   The ID of the Greengrass group where the system instance is
    #   deployed.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the system instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the system instance was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] greengrass_group_id
    #   The ID of the Greengrass group where the system instance is
    #   deployed.
    #   @return [String]
    #
    # @!attribute [rw] greengrass_group_version_id
    #   The version of the Greengrass group where the system instance is
    #   deployed.
    #   @return [String]
    #
    class SystemInstanceSummary < Struct.new(
      :id,
      :arn,
      :status,
      :target,
      :greengrass_group_name,
      :created_at,
      :updated_at,
      :greengrass_group_id,
      :greengrass_group_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains a system's definition document and summary
    # information.
    #
    # @!attribute [rw] summary
    #   An object that contains summary information about a system.
    #   @return [Types::SystemTemplateSummary]
    #
    # @!attribute [rw] definition
    #   The definition document of a system.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] validated_namespace_version
    #   The namespace version against which the system was validated. Use
    #   this value in your system instance.
    #   @return [Integer]
    #
    class SystemTemplateDescription < Struct.new(
      :summary,
      :definition,
      :validated_namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters a system search.
    #
    # @note When making an API call, you may pass SystemTemplateFilter
    #   data as a hash:
    #
    #       {
    #         name: "FLOW_TEMPLATE_ID", # required, accepts FLOW_TEMPLATE_ID
    #         value: ["SystemTemplateFilterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the system search filter field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An array of string values for the search filter field. Multiple
    #   values function as AND criteria in the search.
    #   @return [Array<String>]
    #
    class SystemTemplateFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a system.
    #
    # @!attribute [rw] id
    #   The ID of the system.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the system.
    #   @return [String]
    #
    # @!attribute [rw] revision_number
    #   The revision number of the system.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date when the system was created.
    #   @return [Time]
    #
    class SystemTemplateSummary < Struct.new(
      :id,
      :arn,
      :revision_number,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata assigned to an AWS IoT Things Graph resource consisting of a
    # key-value pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The required name of the tag. The string value can be from 1 to 128
    #   Unicode characters in length.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional value of the tag. The string value can be from 1 to 256
    #   Unicode characters in length.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the resource.&gt;
    #   @return [Array<Types::Tag>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # An AWS IoT thing.
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing.
    #   @return [String]
    #
    class Thing < Struct.new(
      :thing_arn,
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UndeploySystemInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system instance to remove from its target.
    #   @return [String]
    #
    class UndeploySystemInstanceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   An object that contains summary information about the system
    #   instance that was removed from its target.
    #   @return [Types::SystemInstanceSummary]
    #
    class UndeploySystemInstanceResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags are to be
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag key names to remove from the resource. You don't
    #   specify the value. Both the key and its associated value are
    #   removed.
    #
    #   This parameter to the API requires a JSON text string argument. For
    #   information on how to format a JSON parameter for the various
    #   command line tool environments, see [Using JSON for Parameters][1]
    #   in the *AWS CLI User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFlowTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #         definition: { # required
    #           language: "GRAPHQL", # required, accepts GRAPHQL
    #           text: "DefinitionText", # required
    #         },
    #         compatible_namespace_version: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the workflow to be updated.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME`
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The `DefinitionDocument` that contains the updated workflow
    #   definition.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] compatible_namespace_version
    #   The version of the user's namespace.
    #
    #   If no value is specified, the latest version is used by default. Use
    #   the `GetFlowTemplateRevisions` if you want to find earlier revisions
    #   of the flow to update.
    #   @return [Integer]
    #
    class UpdateFlowTemplateRequest < Struct.new(
      :id,
      :definition,
      :compatible_namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   An object containing summary information about the updated workflow.
    #   @return [Types::FlowTemplateSummary]
    #
    class UpdateFlowTemplateResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSystemTemplateRequest
    #   data as a hash:
    #
    #       {
    #         id: "Urn", # required
    #         definition: { # required
    #           language: "GRAPHQL", # required, accepts GRAPHQL
    #           text: "DefinitionText", # required
    #         },
    #         compatible_namespace_version: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the system to be updated.
    #
    #   The ID should be in the following format.
    #
    #   `urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME`
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The `DefinitionDocument` that contains the updated system
    #   definition.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] compatible_namespace_version
    #   The version of the user's namespace. Defaults to the latest version
    #   of the user's namespace.
    #
    #   If no value is specified, the latest version is used by default.
    #   @return [Integer]
    #
    class UpdateSystemTemplateRequest < Struct.new(
      :id,
      :definition,
      :compatible_namespace_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary
    #   An object containing summary information about the updated system.
    #   @return [Types::SystemTemplateSummary]
    #
    class UpdateSystemTemplateResponse < Struct.new(
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UploadEntityDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         document: {
    #           language: "GRAPHQL", # required, accepts GRAPHQL
    #           text: "DefinitionText", # required
    #         },
    #         sync_with_public_namespace: false,
    #         deprecate_existing_entities: false,
    #       }
    #
    # @!attribute [rw] document
    #   The `DefinitionDocument` that defines the updated entities.
    #   @return [Types::DefinitionDocument]
    #
    # @!attribute [rw] sync_with_public_namespace
    #   A Boolean that specifies whether to synchronize with the latest
    #   version of the public namespace. If set to `true`, the upload will
    #   create a new namespace version.
    #   @return [Boolean]
    #
    # @!attribute [rw] deprecate_existing_entities
    #   A Boolean that specifies whether to deprecate all entities in the
    #   latest version before uploading the new `DefinitionDocument`. If set
    #   to `true`, the upload will create a new namespace version.
    #   @return [Boolean]
    #
    class UploadEntityDefinitionsRequest < Struct.new(
      :document,
      :sync_with_public_namespace,
      :deprecate_existing_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] upload_id
    #   The ID that specifies the upload action. You can use this to track
    #   the status of the upload.
    #   @return [String]
    #
    class UploadEntityDefinitionsResponse < Struct.new(
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
