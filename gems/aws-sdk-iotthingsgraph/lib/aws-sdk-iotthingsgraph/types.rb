# frozen_string_literal: true

# This is generated code!

module Aws::IoTThingsGraph
  # This module contains the types returned by client operations.
  module Types

    # @!attribute thing_name
    #   <p>The name of the thing to which the entity is to be associated.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the device to be associated with the thing.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #   @return [String]
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #   @return [Integer]
    class AssociateEntityToThingRequest < Struct.new(
      nil,
      :thing_name,
      :entity_id,
      :namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateEntityToThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definition
    #   <p>The workflow <code>DefinitionDocument</code>.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute compatible_namespace_version
    #   <p>The namespace version in which the workflow is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #   @return [Integer]
    class CreateFlowTemplateRequest < Struct.new(
      nil,
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>The summary object that describes the created workflow.</p>
    #   @return [Types::FlowTemplateSummary]
    class CreateFlowTemplateResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Metadata, consisting of key-value pairs, that can be used to categorize your system instances.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute definition
    #   <p>A document that defines an entity. </p>
    #   @return [Types::DefinitionDocument]
    # @!attribute target
    #   <p>The target type of the deployment. Valid values are <code>GREENGRASS</code> and <code>CLOUD</code>.</p>
    #   @return [String]
    # @!attribute greengrass_group_name
    #   <p>The name of the Greengrass group where the system instance will be deployed. This value is required if 
    #         the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if 
    #            the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    #   @return [String]
    # @!attribute metrics_configuration
    #   <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    #   @return [Types::MetricsConfiguration]
    # @!attribute flow_actions_role_arn
    #   <p>The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have 
    #         read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes.  This 
    #         value is required if the value of the <code>target</code> parameter is <code>CLOUD</code>.</p>
    #   @return [String]
    class CreateSystemInstanceRequest < Struct.new(
      nil,
      :tags,
      :definition,
      :target,
      :greengrass_group_name,
      :s3_bucket_name,
      :metrics_configuration,
      :flow_actions_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>The summary object that describes the new system instance.</p>
    #   @return [Types::SystemInstanceSummary]
    class CreateSystemInstanceResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definition
    #   <p>The <code>DefinitionDocument</code> used to create the system.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute compatible_namespace_version
    #   <p>The namespace version in which the system is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #   @return [Integer]
    class CreateSystemTemplateRequest < Struct.new(
      nil,
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>The summary object that describes the created system.</p>
    #   @return [Types::SystemTemplateSummary]
    class CreateSystemTemplateResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A document that defines an entity. </p>
    # @!attribute language
    #   <p>The language used to define the entity. <code>GRAPHQL</code> is the only valid value.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The GraphQL text that defines the entity.</p>
    #   @return [String]
    class DefinitionDocument < Struct.new(
      nil,
      :language,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #   @return [String]
    class DeleteFlowTemplateRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFlowTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteNamespaceRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_arn
    #   <p>The ARN of the namespace to be deleted.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace to be deleted.</p>
    #   @return [String]
    class DeleteNamespaceResponse < Struct.new(
      nil,
      :namespace_arn,
      :namespace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system instance to be deleted.</p>
    #   @return [String]
    class DeleteSystemInstanceRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSystemInstanceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #   @return [String]
    class DeleteSystemTemplateRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSystemTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the ID and revision number of a workflow or system that is part of a deployment.</p>
    # @!attribute id
    #   <p>The ID of the workflow or system.</p>
    #   @return [String]
    # @!attribute revision_number
    #   <p>The revision number of the workflow or system.</p>
    #   @return [Integer]
    class DependencyRevision < Struct.new(
      nil,
      :id,
      :revision_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system instance. This value is returned by the <code>CreateSystemInstance</code> action.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    #   @return [String]
    class DeploySystemInstanceRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>An object that contains summary information about a system instance that was deployed. </p>
    #   @return [Types::SystemInstanceSummary]
    # @!attribute greengrass_deployment_id
    #   <p>The ID of the Greengrass deployment used to deploy the system instance.</p>
    #   @return [String]
    class DeploySystemInstanceResponse < Struct.new(
      nil,
      :summary,
      :greengrass_deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #   @return [String]
    class DeprecateFlowTemplateRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeprecateFlowTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to delete.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #   @return [String]
    class DeprecateSystemTemplateRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeprecateSystemTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the user's namespace. Set this to <code>aws</code> to get the public namespace.</p>
    #   @return [String]
    class DescribeNamespaceRequest < Struct.new(
      nil,
      :namespace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_arn
    #   <p>The ARN of the namespace.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace.</p>
    #   @return [String]
    # @!attribute tracking_namespace_name
    #   <p>The name of the public namespace that the latest namespace version is tracking.</p>
    #   @return [String]
    # @!attribute tracking_namespace_version
    #   <p>The version of the public namespace that the latest version is tracking.</p>
    #   @return [Integer]
    # @!attribute namespace_version
    #   <p>The version of the user's namespace to describe.</p>
    #   @return [Integer]
    class DescribeNamespaceResponse < Struct.new(
      nil,
      :namespace_arn,
      :namespace_name,
      :tracking_namespace_name,
      :tracking_namespace_version,
      :namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing to disassociate.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The entity type from which to disassociate the thing.</p>
    #   @return [String]
    class DissociateEntityFromThingRequest < Struct.new(
      nil,
      :thing_name,
      :entity_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DissociateEntityFromThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an entity.</p>
    # @!attribute id
    #   <p>The entity ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The entity ARN.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The entity type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the entity was created.</p>
    #   @return [Time]
    # @!attribute definition
    #   <p>The definition document of the entity.</p>
    #   @return [Types::DefinitionDocument]
    class EntityDescription < Struct.new(
      nil,
      :id,
      :arn,
      :type,
      :created_at,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters an entity search. Multiple filters function as OR criteria in the search. For example a search that includes 
    #       a <code>NAMESPACE</code> and a <code>REFERENCED_ENTITY_ID</code> filter searches for entities in the specified namespace that use the entity specified by 
    #       the value of <code>REFERENCED_ENTITY_ID</code>.</p>
    # @!attribute name
    #   <p>The name of the entity search filter field. <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, 
    #            you can filter on the ID of a property that is used in a state.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>
    #   @return [Array<String>]
    class EntityFilter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a flow event.</p>
    # @!attribute message_id
    #   <p>The unique identifier of the message.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of flow event .</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time when the message was last updated.</p>
    #   @return [Time]
    # @!attribute payload
    #   <p>A string containing information about the flow event.</p>
    #   @return [String]
    class FlowExecutionMessage < Struct.new(
      nil,
      :message_id,
      :event_type,
      :timestamp,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains summary information about a flow execution.</p>
    # @!attribute flow_execution_id
    #   <p>The ID of the flow execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the flow execution.</p>
    #   @return [String]
    # @!attribute system_instance_id
    #   <p>The ID of the system instance that contains the flow.</p>
    #   @return [String]
    # @!attribute flow_template_id
    #   <p>The ID of the flow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the flow execution summary was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the flow execution summary was last updated.</p>
    #   @return [Time]
    class FlowExecutionSummary < Struct.new(
      nil,
      :flow_execution_id,
      :status,
      :system_instance_id,
      :flow_template_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains a workflow's definition and summary information.</p>
    # @!attribute summary
    #   <p>An object that contains summary information about a workflow.</p>
    #   @return [Types::FlowTemplateSummary]
    # @!attribute definition
    #   <p>A workflow's definition document.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute validated_namespace_version
    #   <p>The version of the user's namespace against which the workflow was validated. Use this value in your system instance.</p>
    #   @return [Integer]
    class FlowTemplateDescription < Struct.new(
      nil,
      :summary,
      :definition,
      :validated_namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters a workflow search.</p>
    # @!attribute name
    #   <p>The name of the search filter field.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>
    #   @return [Array<String>]
    class FlowTemplateFilter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains summary information about a workflow.</p>
    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the workflow.</p>
    #   @return [String]
    # @!attribute revision_number
    #   <p>The revision number of the workflow.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date when the workflow was created.</p>
    #   @return [Time]
    class FlowTemplateSummary < Struct.new(
      nil,
      :id,
      :arn,
      :revision_number,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>An array of entity IDs.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #   @return [Integer]
    class GetEntitiesRequest < Struct.new(
      nil,
      :ids,
      :namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute descriptions
    #   <p>An array of descriptions for the specified entities.</p>
    #   @return [Array<Types::EntityDescription>]
    class GetEntitiesResponse < Struct.new(
      nil,
      :descriptions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #   @return [String]
    # @!attribute revision_number
    #   <p>The number of the workflow revision to retrieve.</p>
    #   @return [Integer]
    class GetFlowTemplateRequest < Struct.new(
      nil,
      :id,
      :revision_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The object that describes the specified workflow.</p>
    #   @return [Types::FlowTemplateDescription]
    class GetFlowTemplateResponse < Struct.new(
      nil,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class GetFlowTemplateRevisionsRequest < Struct.new(
      nil,
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that provide summary data about each revision.</p>
    #   @return [Array<Types::FlowTemplateSummary>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #   @return [String]
    class GetFlowTemplateRevisionsResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetNamespaceDeletionStatusRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_arn
    #   <p>The ARN of the namespace that is being deleted.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace that is being deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the deletion request.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code returned by the namespace deletion task.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error code returned by the namespace deletion task.</p>
    #   @return [String]
    class GetNamespaceDeletionStatusResponse < Struct.new(
      nil,
      :namespace_arn,
      :namespace_name,
      :status,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system deployment instance. This value is returned by <code>CreateSystemInstance</code>.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    #   @return [String]
    class GetSystemInstanceRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>An object that describes the system instance.</p>
    #   @return [Types::SystemInstanceDescription]
    class GetSystemInstanceResponse < Struct.new(
      nil,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to get. This ID must be in the user's namespace.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #   @return [String]
    # @!attribute revision_number
    #   <p>The number that specifies the revision of the system to get.</p>
    #   @return [Integer]
    class GetSystemTemplateRequest < Struct.new(
      nil,
      :id,
      :revision_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>An object that contains summary data about the system.</p>
    #   @return [Types::SystemTemplateDescription]
    class GetSystemTemplateResponse < Struct.new(
      nil,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system template.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class GetSystemTemplateRevisionsRequest < Struct.new(
      nil,
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary data about the system template revisions.</p>
    #   @return [Array<Types::SystemTemplateSummary>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>
    #   @return [String]
    class GetSystemTemplateRevisionsResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upload_id
    #   <p>The ID of the upload. This value is returned by the <code>UploadEntityDefinitions</code> action.</p>
    #   @return [String]
    class GetUploadStatusRequest < Struct.new(
      nil,
      :upload_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upload_id
    #   <p>The ID of the upload.</p>
    #   @return [String]
    # @!attribute upload_status
    #   <p>The status of the upload. The initial status is <code>IN_PROGRESS</code>. The response show all validation failures if the upload fails.</p>
    #   @return [String]
    # @!attribute namespace_arn
    #   <p>The ARN of the upload.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the upload's namespace.</p>
    #   @return [String]
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #   @return [Integer]
    # @!attribute failure_reason
    #   <p>The reason for an upload failure.</p>
    #   @return [Array<String>]
    # @!attribute created_date
    #   <p>The date at which the upload was created.</p>
    #   @return [Time]
    class GetUploadStatusResponse < Struct.new(
      nil,
      :upload_id,
      :upload_status,
      :namespace_arn,
      :namespace_name,
      :namespace_version,
      :failure_reason,
      :created_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_execution_id
    #   <p>The ID of the flow execution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class ListFlowExecutionMessagesRequest < Struct.new(
      nil,
      :flow_execution_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>A list of objects that contain information about events in the specified flow execution.</p>
    #   @return [Array<Types::FlowExecutionMessage>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>
    #   @return [String]
    class ListFlowExecutionMessagesResponse < Struct.new(
      nil,
      :messages,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of tags to return.</p>
    #   @return [Integer]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :max_results,
      :resource_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>List of tags returned by the <code>ListTagsForResource</code> operation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    # @!attribute cloud_metric_enabled
    #   <p>A Boolean that specifies whether cloud metrics are collected.</p>
    #   @return [Boolean]
    # @!attribute metric_rule_role_arn
    #   <p>The ARN of the role that is used to collect cloud metrics.</p>
    #   @return [String]
    class MetricsConfiguration < Struct.new(
      nil,
      :cloud_metric_enabled,
      :metric_rule_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cloud_metric_enabled] = false unless options.key?(:cloud_metric_enabled)
        super
      end
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_types
    #   <p>The entity types for which to search.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>NAME</code>
    #               <code>NAMESPACE</code>, <code>SEMANTIC_TYPE_PATH</code> and <code>REFERENCED_ENTITY_ID</code>. 
    #            <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, 
    #         you can filter on the ID of a property that is used in a state.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    #   @return [Array<Types::EntityFilter>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #   @return [Integer]
    class SearchEntitiesRequest < Struct.new(
      nil,
      :entity_types,
      :filters,
      :next_token,
      :max_results,
      :namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute descriptions
    #   <p>An array of descriptions for each entity returned in the search result.</p>
    #   @return [Array<Types::EntityDescription>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #   @return [String]
    class SearchEntitiesResponse < Struct.new(
      nil,
      :descriptions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_instance_id
    #   <p>The ID of the system instance that contains the flow.</p>
    #   @return [String]
    # @!attribute flow_execution_id
    #   <p>The ID of a flow execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time of the earliest flow execution to return.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time of the latest flow execution to return.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class SearchFlowExecutionsRequest < Struct.new(
      nil,
      :system_instance_id,
      :flow_execution_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary information about each workflow execution in the result set.</p>
    #   @return [Array<Types::FlowExecutionSummary>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #   @return [String]
    class SearchFlowExecutionsResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>An array of objects that limit the result set. The only valid filter is <code>DEVICE_MODEL_ID</code>.</p>
    #   @return [Array<Types::FlowTemplateFilter>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class SearchFlowTemplatesRequest < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary information about each workflow in the result set.</p>
    #   @return [Array<Types::FlowTemplateSummary>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #   @return [String]
    class SearchFlowTemplatesResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>SYSTEM_TEMPLATE_ID</code>, <code>STATUS</code>, and 
    #            <code>GREENGRASS_GROUP_NAME</code>.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    #   @return [Array<Types::SystemInstanceFilter>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class SearchSystemInstancesRequest < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary data abour the system instances in the result set.</p>
    #   @return [Array<Types::SystemInstanceSummary>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>
    #   @return [String]
    class SearchSystemInstancesResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>An array of filters that limit the result set. The only valid filter is <code>FLOW_TEMPLATE_ID</code>.</p>
    #   @return [Array<Types::SystemTemplateFilter>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    class SearchSystemTemplatesRequest < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary information about each system deployment in the result set.</p>
    #   @return [Array<Types::SystemTemplateSummary>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #   @return [String]
    class SearchSystemTemplatesResponse < Struct.new(
      nil,
      :summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_id
    #   <p>The ID of the entity to which the things are associated.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #   @return [Integer]
    class SearchThingsRequest < Struct.new(
      nil,
      :entity_id,
      :next_token,
      :max_results,
      :namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute things
    #   <p>An array of things in the result set.</p>
    #   @return [Array<Types::Thing>]
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #   @return [String]
    class SearchThingsResponse < Struct.new(
      nil,
      :things,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains a system instance definition and summary information.</p>
    # @!attribute summary
    #   <p>An object that contains summary information about a system instance.</p>
    #   @return [Types::SystemInstanceSummary]
    # @!attribute definition
    #   <p>A document that defines an entity. </p>
    #   @return [Types::DefinitionDocument]
    # @!attribute s3_bucket_name
    #   <p>The Amazon Simple Storage Service bucket where information about a system instance is stored.</p>
    #   @return [String]
    # @!attribute metrics_configuration
    #   <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    #   @return [Types::MetricsConfiguration]
    # @!attribute validated_namespace_version
    #   <p>The version of the user's namespace against which the system instance was validated.</p>
    #   @return [Integer]
    # @!attribute validated_dependency_revisions
    #   <p>A list of objects that contain all of the IDs and revision numbers of workflows and systems that are used in a system instance.</p>
    #   @return [Array<Types::DependencyRevision>]
    # @!attribute flow_actions_role_arn
    #   <p>The AWS Identity and Access Management (IAM) role that AWS IoT Things Graph assumes during flow execution in a 
    #         cloud deployment. This role must have read and write permissionss to AWS Lambda and AWS IoT and to any other 
    #         AWS services that the flow uses.</p>
    #   @return [String]
    class SystemInstanceDescription < Struct.new(
      nil,
      :summary,
      :definition,
      :s3_bucket_name,
      :metrics_configuration,
      :validated_namespace_version,
      :validated_dependency_revisions,
      :flow_actions_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters a system instance search. 
    #          Multiple filters function as OR criteria in the search. For example a search that includes a GREENGRASS_GROUP_NAME and a 
    #          STATUS filter searches for system instances in the specified Greengrass group that have the specified status.</p>
    # @!attribute name
    #   <p>The name of the search filter field.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search. </p>
    #   @return [Array<String>]
    class SystemInstanceFilter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains summary information about a system instance.</p>
    # @!attribute id
    #   <p>The ID of the system instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the system instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the system instance.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of the system instance.</p>
    #   @return [String]
    # @!attribute greengrass_group_name
    #   <p>The ID of the Greengrass group where the system instance is deployed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the system instance was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>
    #            
    #            The date and time when the system instance was last updated.</p>
    #   @return [Time]
    # @!attribute greengrass_group_id
    #   <p>The ID of the Greengrass group where the system instance is deployed.</p>
    #   @return [String]
    # @!attribute greengrass_group_version_id
    #   <p>The version of the Greengrass group where the system instance is deployed.</p>
    #   @return [String]
    class SystemInstanceSummary < Struct.new(
      nil,
      :id,
      :arn,
      :status,
      :target,
      :greengrass_group_name,
      :created_at,
      :updated_at,
      :greengrass_group_id,
      :greengrass_group_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains a system's definition document and summary information.</p>
    # @!attribute summary
    #   <p>An object that contains summary information about a system.</p>
    #   @return [Types::SystemTemplateSummary]
    # @!attribute definition
    #   <p>The definition document of a system.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute validated_namespace_version
    #   <p>The namespace version against which the system was validated. Use this value in your system instance.</p>
    #   @return [Integer]
    class SystemTemplateDescription < Struct.new(
      nil,
      :summary,
      :definition,
      :validated_namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters a system search.</p>
    # @!attribute name
    #   <p>The name of the system search filter field.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>
    #   @return [Array<String>]
    class SystemTemplateFilter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a system.</p>
    # @!attribute id
    #   <p>The ID of the system.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the system.</p>
    #   @return [String]
    # @!attribute revision_number
    #   <p>The revision number of the system.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date when the system was created.</p>
    #   @return [Time]
    class SystemTemplateSummary < Struct.new(
      nil,
      :id,
      :arn,
      :revision_number,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata assigned to an AWS IoT Things Graph resource consisting of a key-value pair.</p>
    # @!attribute key
    #   <p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are returned.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add to the resource.></p>
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

    # <p>An AWS IoT thing.</p>
    # @!attribute thing_arn
    #   <p>The ARN of the thing.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #   @return [String]
    class Thing < Struct.new(
      nil,
      :thing_arn,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system instance to remove from its target.</p>
    #   @return [String]
    class UndeploySystemInstanceRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>An object that contains summary information about the system instance that was removed from its target.</p>
    #   @return [Types::SystemInstanceSummary]
    class UndeploySystemInstanceResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed. </p>
    #            <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. </p>
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
    #   <p>The ID of the workflow to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #   @return [String]
    # @!attribute definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated workflow definition.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute compatible_namespace_version
    #   <p>The version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default. Use the <code>GetFlowTemplateRevisions</code> if you want to find earlier revisions of the flow 
    #         to update.</p>
    #   @return [Integer]
    class UpdateFlowTemplateRequest < Struct.new(
      nil,
      :id,
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>An object containing summary information about the updated workflow.</p>
    #   @return [Types::FlowTemplateSummary]
    class UpdateFlowTemplateResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #   @return [String]
    # @!attribute definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated system definition.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute compatible_namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #   @return [Integer]
    class UpdateSystemTemplateRequest < Struct.new(
      nil,
      :id,
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>An object containing summary information about the updated system.</p>
    #   @return [Types::SystemTemplateSummary]
    class UpdateSystemTemplateResponse < Struct.new(
      nil,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document
    #   <p>The <code>DefinitionDocument</code> that defines the updated entities.</p>
    #   @return [Types::DefinitionDocument]
    # @!attribute sync_with_public_namespace
    #   <p>A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to <code>true</code>, the upload will create a new namespace version.</p>
    #   @return [Boolean]
    # @!attribute deprecate_existing_entities
    #   <p>A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new <code>DefinitionDocument</code>. 
    #            If set to <code>true</code>, the upload will create a new namespace version.</p>
    #   @return [Boolean]
    class UploadEntityDefinitionsRequest < Struct.new(
      nil,
      :document,
      :sync_with_public_namespace,
      :deprecate_existing_entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upload_id
    #   <p>The ID that specifies the upload action. You can use this to track the status of the upload.</p>
    #   @return [String]
    class UploadEntityDefinitionsResponse < Struct.new(
      nil,
      :upload_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
