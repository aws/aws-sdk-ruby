# frozen_string_literal: true

# This is generated code!

module Aws::IoTTwinMaker
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error returned by the <code>BatchPutProperty</code> action.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute entry
    #   <p>An object that contains information about errors returned by the
    #               <code>BatchPutProperty</code> action.</p>
    #   @return [Types::PropertyValueEntry]
    class BatchPutPropertyError < Struct.new(
      :error_code,
      :error_message,
      :entry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about errors returned by the
    #             <code>BatchPutProperty</code> action.</p>
    # @!attribute errors
    #   <p>A list of objects that contain information about errors returned by the
    #               <code>BatchPutProperty</code> action.</p>
    #   @return [Array<Types::BatchPutPropertyError>]
    class BatchPutPropertyErrorEntry < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the properties to set.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>An object that maps strings to the property value entries to set. Each string in the
    #            mapping must be unique to this object.</p>
    #   @return [Array<Types::PropertyValueEntry>]
    class BatchPutPropertyValuesInput < Struct.new(
      :workspace_id,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>Entries that caused errors in the batch put operation.</p>
    #   @return [Array<Types::BatchPutPropertyErrorEntry>]
    class BatchPutPropertyValuesOutput < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the pricing bundle.</p>
    # @!attribute bundle_names
    #   <p>The bundle names.</p>
    #   @return [Array<String>]
    # @!attribute pricing_tier
    #   <p>The pricing tier.</p>
    #   @return [String]
    class BundleInformation < Struct.new(
      :bundle_names,
      :pricing_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    #   @return [String]
    class CancelMetadataTransferJobRequest < Struct.new(
      :metadata_transfer_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The metadata transfer job ARN.</p>
    #   @return [String]
    # @!attribute update_date_time
    #   <p>Used to update the DateTime property.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The metadata transfer job's status.</p>
    #   @return [Types::MetadataTransferJobStatus]
    # @!attribute progress
    #   <p>The metadata transfer job's progress.</p>
    #   @return [Types::MetadataTransferJobProgress]
    class CancelMetadataTransferJobResponse < Struct.new(
      :metadata_transfer_job_id,
      :arn,
      :update_date_time,
      :status,
      :progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the column in the query results.</p>
    # @!attribute name
    #   <p>The name of the column description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the column description.</p>
    #   @return [String]
    class ColumnDescription < Struct.new(
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The component property group request.</p>
    # @!attribute group_type
    #   <p>The group type.</p>
    #   @return [String]
    # @!attribute property_names
    #   <p>The property names.</p>
    #   @return [Array<String>]
    # @!attribute update_type
    #   <p>The update type.</p>
    #   @return [String]
    class ComponentPropertyGroupRequest < Struct.new(
      :group_type,
      :property_names,
      :update_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The component property group response.</p>
    # @!attribute group_type
    #   <p>The group type.</p>
    #   @return [String]
    # @!attribute property_names
    #   <p>The names of properties</p>
    #   @return [Array<String>]
    # @!attribute is_inherited
    #   <p>A Boolean value that specifies whether the property group is inherited from a parent
    #            entity</p>
    #   @return [Boolean]
    class ComponentPropertyGroupResponse < Struct.new(
      :group_type,
      :property_names,
      :is_inherited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that sets information about a component type create or update request.</p>
    # @!attribute description
    #   <p>The description of the component request.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>An object that maps strings to the properties to set in the component type. Each string
    #            in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyRequest>]
    # @!attribute property_groups
    #   <p>The property groups.</p>
    #   @return [Hash<String, Types::ComponentPropertyGroupRequest>]
    class ComponentRequest < Struct.new(
      :description,
      :component_type_id,
      :properties,
      :property_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that returns information about a component type create or update
    #          request.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the component type.</p>
    #   @return [Types::Status]
    # @!attribute defined_in
    #   <p>The name of the property definition set in the request.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>An object that maps strings to the properties to set in the component type. Each string
    #            in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyResponse>]
    # @!attribute property_groups
    #   <p>The property groups.</p>
    #   @return [Hash<String, Types::ComponentPropertyGroupResponse>]
    # @!attribute sync_source
    #   <p>The syncSource of the sync job, if this entity was created by a sync job.</p>
    #   @return [String]
    # @!attribute are_all_properties_returned
    #   <p>This flag notes whether all properties of the component are returned in the API response. 
    #             The maximum number of properties returned is 800.</p>
    #   @return [Boolean]
    # @!attribute composite_components
    #   <p>This lists objects that contain information about the <code>compositeComponents</code>.</p>
    #   @return [Hash<String, Types::ComponentSummary>]
    # @!attribute are_all_composite_components_returned
    #   <p>This flag notes whether all <code>compositeComponents</code> are returned in the API 
    #             response.</p>
    #   @return [Boolean]
    class ComponentResponse < Struct.new(
      :component_name,
      :description,
      :component_type_id,
      :status,
      :defined_in,
      :properties,
      :property_groups,
      :sync_source,
      :are_all_properties_returned,
      :composite_components,
      :are_all_composite_components_returned,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that returns information about a component summary.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute defined_in
    #   <p>The name of the property definition set in the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component request.</p>
    #   @return [String]
    # @!attribute property_groups
    #   <p>The property groups.</p>
    #   @return [Hash<String, Types::ComponentPropertyGroupResponse>]
    # @!attribute status
    #   <p>The status of the component type.</p>
    #   @return [Types::Status]
    # @!attribute sync_source
    #   <p>The <code>syncSource</code> of the sync job, if this entity was created by a sync job.</p>
    #   @return [String]
    # @!attribute component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    #   @return [String]
    class ComponentSummary < Struct.new(
      :component_name,
      :component_type_id,
      :defined_in,
      :description,
      :property_groups,
      :status,
      :sync_source,
      :component_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a component type.</p>
    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the component type was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the component type was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the component type.</p>
    #   @return [Types::Status]
    # @!attribute component_type_name
    #   <p>The component type name.</p>
    #   @return [String]
    class ComponentTypeSummary < Struct.new(
      :arn,
      :component_type_id,
      :creation_date_time,
      :update_date_time,
      :description,
      :status,
      :component_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The component update request.</p>
    # @!attribute update_type
    #   <p>The update type of the component update request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute property_updates
    #   <p>An object that maps strings to the properties to set in the component type update. Each
    #            string in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyRequest>]
    # @!attribute property_group_updates
    #   <p>The property group updates.</p>
    #   @return [Hash<String, Types::ComponentPropertyGroupRequest>]
    class ComponentUpdateRequest < Struct.new(
      :update_type,
      :description,
      :component_type_id,
      :property_updates,
      :property_group_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that sets information about the composite component update request.</p>
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>This is an object that maps strings to the properties to set in the component type. Each string in 
    #             the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyRequest>]
    # @!attribute property_groups
    #   <p>The property groups.</p>
    #   @return [Hash<String, Types::ComponentPropertyGroupRequest>]
    class CompositeComponentRequest < Struct.new(
      :description,
      :properties,
      :property_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that sets information about the composite component types of a component type.</p>
    # @!attribute component_type_id
    #   <p>This is the <code>componentTypeId</code> that the <code>compositeComponentType</code> refers to.</p>
    #   @return [String]
    class CompositeComponentTypeRequest < Struct.new(
      :component_type_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that returns information about the composite component types of a component type.</p>
    # @!attribute component_type_id
    #   <p>This is the <code>componentTypeId</code> that this <code>compositeComponentType</code> refers to.</p>
    #   @return [String]
    # @!attribute is_inherited
    #   <p>This boolean indicates whether this <code>compositeComponentType</code> is inherited from its parent.</p>
    #   @return [Boolean]
    class CompositeComponentTypeResponse < Struct.new(
      :component_type_id,
      :is_inherited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that sets information about the composite component update request.</p>
    # @!attribute update_type
    #   <p>The update type of the component update request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute property_updates
    #   <p>An object that maps strings to the properties to set in the component type update. Each string in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyRequest>]
    # @!attribute property_group_updates
    #   <p>The property group updates.</p>
    #   @return [Hash<String, Types::ComponentPropertyGroupRequest>]
    class CompositeComponentUpdateRequest < Struct.new(
      :update_type,
      :description,
      :property_updates,
      :property_group_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict occurred.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connector failed.</p>
    # @!attribute message
    #   @return [String]
    class ConnectorFailureException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connector timed out.</p>
    # @!attribute message
    #   @return [String]
    class ConnectorTimeoutException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #   @return [String]
    # @!attribute is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    #   @return [Boolean]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each
    #            string in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyDefinitionRequest>]
    # @!attribute extends_from
    #   <p>Specifies the parent component type to extend.</p>
    #   @return [Array<String>]
    # @!attribute functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::FunctionRequest>]
    # @!attribute tags
    #   <p>Metadata that you can use to manage the component type.</p>
    #   @return [Hash<String, String>]
    # @!attribute property_groups
    #   <p/>
    #   @return [Hash<String, Types::PropertyGroupRequest>]
    # @!attribute component_type_name
    #   <p>A friendly name for the component type.</p>
    #   @return [String]
    # @!attribute composite_component_types
    #   <p>This is an object that maps strings to <code>compositeComponentTypes</code> of the <code>componentType</code>. 
    #             <code>CompositeComponentType</code> is referenced by <code>componentTypeId</code>.</p>
    #   @return [Hash<String, Types::CompositeComponentTypeRequest>]
    class CreateComponentTypeInput < Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :tags,
      :property_groups,
      :component_type_name,
      :composite_component_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of the component type.</p>
    #   @return [String]
    class CreateComponentTypeOutput < Struct.new(
      :arn,
      :creation_date_time,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the entity.</p>
    #   @return [String]
    # @!attribute components
    #   <p>An object that maps strings to the components in the entity. Each string in the mapping
    #            must be unique to this object.</p>
    #   @return [Hash<String, Types::ComponentRequest>]
    # @!attribute composite_components
    #   <p>This is an object that maps strings to <code>compositeComponent</code> updates in the request. 
    #             Each key of the map represents the <code>componentPath</code> of the <code>compositeComponent</code>.</p>
    #   @return [Hash<String, Types::CompositeComponentRequest>]
    # @!attribute parent_entity_id
    #   <p>The ID of the entity's parent entity.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that you can use to manage the entity.</p>
    #   @return [Hash<String, String>]
    class CreateEntityInput < Struct.new(
      :workspace_id,
      :entity_id,
      :entity_name,
      :description,
      :components,
      :composite_components,
      :parent_entity_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the entity.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of the entity.</p>
    #   @return [String]
    class CreateEntityOutput < Struct.new(
      :entity_id,
      :arn,
      :creation_date_time,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The metadata transfer job description.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The metadata transfer job sources.</p>
    #   @return [Array<Types::SourceConfiguration>]
    # @!attribute destination
    #   <p>The metadata transfer job destination.</p>
    #   @return [Types::DestinationConfiguration]
    class CreateMetadataTransferJobRequest < Struct.new(
      :metadata_transfer_job_id,
      :description,
      :sources,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The metadata transfer job ARN.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The The metadata transfer job creation DateTime property.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The metadata transfer job response status.</p>
    #   @return [Types::MetadataTransferJobStatus]
    class CreateMetadataTransferJobResponse < Struct.new(
      :metadata_transfer_job_id,
      :arn,
      :creation_date_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #   @return [String]
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #   @return [String]
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for this scene.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>A list of capabilities that the scene uses to render itself.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Metadata that you can use to manage the scene.</p>
    #   @return [Hash<String, String>]
    # @!attribute scene_metadata
    #   <p>The request metadata.</p>
    #   @return [Hash<String, String>]
    class CreateSceneInput < Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :description,
      :capabilities,
      :tags,
      :scene_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the scene.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the scene was created.</p>
    #   @return [Time]
    class CreateSceneOutput < Struct.new(
      :arn,
      :creation_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The workspace ID.</p>
    #   @return [String]
    # @!attribute sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSoource is <code>SITEWISE </code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute sync_role
    #   <p>The SyncJob IAM role. This IAM role is used by the SyncJob to read from the syncSource,
    #            and create, update, or delete the corresponding resources.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The SyncJob tags.</p>
    #   @return [Hash<String, String>]
    class CreateSyncJobInput < Struct.new(
      :workspace_id,
      :sync_source,
      :sync_role,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The SyncJob ARN.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time for the SyncJob creation.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The SyncJob response state.</p>
    #   @return [String]
    class CreateSyncJobOutput < Struct.new(
      :arn,
      :creation_date_time,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are
    #            stored.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that you can use to manage the workspace</p>
    #   @return [Hash<String, String>]
    class CreateWorkspaceInput < Struct.new(
      :workspace_id,
      :description,
      :s3_location,
      :role,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the workspace was created.</p>
    #   @return [Time]
    class CreateWorkspaceOutput < Struct.new(
      :arn,
      :creation_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data connector.</p>
    # @!attribute lambda
    #   <p>The Lambda function associated with this data connector.</p>
    #   @return [Types::LambdaFunction]
    # @!attribute is_native
    #   <p>A Boolean value that specifies whether the data connector is native to IoT
    #            TwinMaker.</p>
    #   @return [Boolean]
    class DataConnector < Struct.new(
      :lambda,
      :is_native,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies the data type of a property.</p>
    # @!attribute type
    #   <p>The underlying type of the data type.</p>
    #   @return [String]
    # @!attribute nested_type
    #   <p>The nested type in the data type.</p>
    #   @return [Types::DataType]
    # @!attribute allowed_values
    #   <p>The allowed values for this data type.</p>
    #   @return [Array<Types::DataValue>]
    # @!attribute unit_of_measure
    #   <p>The unit of measure used in this data type.</p>
    #   @return [String]
    # @!attribute relationship
    #   <p>A relationship that associates a component with another component.</p>
    #   @return [Types::Relationship]
    class DataType < Struct.new(
      :type,
      :nested_type,
      :allowed_values,
      :unit_of_measure,
      :relationship,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies a value for a property.</p>
    # @!attribute boolean_value
    #   <p>A Boolean value.</p>
    #   @return [Boolean]
    # @!attribute double_value
    #   <p>A double value.</p>
    #   @return [Float]
    # @!attribute integer_value
    #   <p>An integer value.</p>
    #   @return [Integer]
    # @!attribute long_value
    #   <p>A long value.</p>
    #   @return [Integer]
    # @!attribute string_value
    #   <p>A string value.</p>
    #   @return [String]
    # @!attribute list_value
    #   <p>A list of multiple values.</p>
    #   @return [Array<Types::DataValue>]
    # @!attribute map_value
    #   <p>An object that maps strings to multiple <code>DataValue</code> objects.</p>
    #   @return [Hash<String, Types::DataValue>]
    # @!attribute relationship_value
    #   <p>A value that relates a component to another component.</p>
    #   @return [Types::RelationshipValue]
    # @!attribute expression
    #   <p>An expression that produces the value.</p>
    #   @return [String]
    class DataValue < Struct.new(
      :boolean_value,
      :double_value,
      :integer_value,
      :long_value,
      :string_value,
      :list_value,
      :map_value,
      :relationship_value,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type to delete.</p>
    #   @return [String]
    class DeleteComponentTypeInput < Struct.new(
      :workspace_id,
      :component_type_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The current state of the component type to be deleted.</p>
    #   @return [String]
    class DeleteComponentTypeOutput < Struct.new(
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the entity to delete.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity to delete.</p>
    #   @return [String]
    # @!attribute is_recursive
    #   <p>A Boolean value that specifies whether the operation deletes child entities.</p>
    #   @return [Boolean]
    class DeleteEntityInput < Struct.new(
      :workspace_id,
      :entity_id,
      :is_recursive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The current state of the deleted entity.</p>
    #   @return [String]
    class DeleteEntityOutput < Struct.new(
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute scene_id
    #   <p>The ID of the scene to delete.</p>
    #   @return [String]
    class DeleteSceneInput < Struct.new(
      :workspace_id,
      :scene_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSceneOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The workspace ID.</p>
    #   @return [String]
    # @!attribute sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    #   @return [String]
    class DeleteSyncJobInput < Struct.new(
      :workspace_id,
      :sync_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The SyncJob response state.</p>
    #   @return [String]
    class DeleteSyncJobOutput < Struct.new(
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #   @return [String]
    class DeleteWorkspaceInput < Struct.new(
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>The string that specifies the delete result for the workspace.</p>
    #   @return [String]
    class DeleteWorkspaceOutput < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The [link to action] metadata transfer job destination configuration.</p>
    # @!attribute type
    #   <p>The destination type.</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>The metadata transfer job S3 configuration. [need to add S3 entity]</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute iot_twin_maker_configuration
    #   <p>The metadata transfer job Amazon Web Services IoT TwinMaker configuration.</p>
    #   @return [Types::IotTwinMakerDestinationConfiguration]
    class DestinationConfiguration < Struct.new(
      :type,
      :s3_configuration,
      :iot_twin_maker_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that uniquely identifies an entity property.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    #   @return [String]
    # @!attribute external_id_property
    #   <p>A mapping of external IDs to property names. External IDs uniquely identify properties
    #            from external data stores.</p>
    #   @return [Hash<String, String>]
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute property_name
    #   <p>The name of the property.</p>
    #   @return [String]
    class EntityPropertyReference < Struct.new(
      :component_name,
      :component_path,
      :external_id_property,
      :entity_id,
      :property_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about an entity.</p>
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the entity.</p>
    #   @return [String]
    # @!attribute parent_entity_id
    #   <p>The ID of the parent entity.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the entity.</p>
    #   @return [Types::Status]
    # @!attribute description
    #   <p>The description of the entity.</p>
    #   @return [String]
    # @!attribute has_child_entities
    #   <p>An <b>eventual</b> Boolean value that specifies whether the entity has child entities or not.</p>
    #   @return [Boolean]
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The last date and time when the entity was updated.</p>
    #   @return [Time]
    class EntitySummary < Struct.new(
      :entity_id,
      :entity_name,
      :arn,
      :parent_entity_id,
      :status,
      :description,
      :has_child_entities,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The query statement.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ExecuteQueryInput < Struct.new(
      :workspace_id,
      :query_statement,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute column_descriptions
    #   <p>A list of ColumnDescription objects.</p>
    #   @return [Array<Types::ColumnDescription>]
    # @!attribute rows
    #   <p>Represents a single row in the query results.</p>
    #   @return [Array<Types::Row>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ExecuteQueryOutput < Struct.new(
      :column_descriptions,
      :rows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter by asset. [TwinMaker asset]</p>
    # @!attribute asset_id
    #   <p>Filter by asset Id.</p>
    #   @return [String]
    # @!attribute asset_external_id
    #   <p>The external-Id property of an asset. </p>
    #   @return [String]
    # @!attribute include_offspring
    #   <p>Includes sub-assets.[need description hekp for this]</p>
    #   @return [Boolean]
    # @!attribute include_asset_model
    #   <p>Boolean to include the asset model.</p>
    #   @return [Boolean]
    class FilterByAsset < Struct.new(
      :asset_id,
      :asset_external_id,
      :include_offspring,
      :include_asset_model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter by asset model.</p>
    # @!attribute asset_model_id
    #   <p>The asset model Id.</p>
    #   @return [String]
    # @!attribute asset_model_external_id
    #   <p>The external-Id property of an asset model.</p>
    #   @return [String]
    # @!attribute include_offspring
    #   <p>Include asset offspring. [need desc.]</p>
    #   @return [Boolean]
    # @!attribute include_assets
    #   <p>Bolean to include assets.</p>
    #   @return [Boolean]
    class FilterByAssetModel < Struct.new(
      :asset_model_id,
      :asset_model_external_id,
      :include_offspring,
      :include_assets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter by component type.</p>
    # @!attribute component_type_id
    #   <p>The component type Id.</p>
    #   @return [String]
    class FilterByComponentType < Struct.new(
      :component_type_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Vilter by entity.</p>
    # @!attribute entity_id
    #   <p>The entity Id.</p>
    #   @return [String]
    class FilterByEntity < Struct.new(
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function request body.</p>
    # @!attribute required_properties
    #   <p>The required properties of the function.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>The scope of the function.</p>
    #   @return [String]
    # @!attribute implemented_by
    #   <p>The data connector.</p>
    #   @return [Types::DataConnector]
    class FunctionRequest < Struct.new(
      :required_properties,
      :scope,
      :implemented_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The function response.</p>
    # @!attribute required_properties
    #   <p>The required properties of the function.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>The scope of the function.</p>
    #   @return [String]
    # @!attribute implemented_by
    #   <p>The data connector.</p>
    #   @return [Types::DataConnector]
    # @!attribute is_inherited
    #   <p>Indicates whether this function is inherited.</p>
    #   @return [Boolean]
    class FunctionResponse < Struct.new(
      :required_properties,
      :scope,
      :implemented_by,
      :is_inherited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    class GetComponentTypeInput < Struct.new(
      :workspace_id,
      :component_type_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #   @return [String]
    # @!attribute is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    #   @return [Boolean]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each
    #            string in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyDefinitionResponse>]
    # @!attribute extends_from
    #   <p>The name of the parent component type that this component type extends.</p>
    #   @return [Array<String>]
    # @!attribute functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::FunctionResponse>]
    # @!attribute creation_date_time
    #   <p>The date and time when the component type was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the component was last updated.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #   @return [String]
    # @!attribute is_abstract
    #   <p>A Boolean value that specifies whether the component type is abstract.</p>
    #   @return [Boolean]
    # @!attribute is_schema_initialized
    #   <p>A Boolean value that specifies whether the component type has a schema initializer and
    #            that the schema initializer has run.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The current status of the component type.</p>
    #   @return [Types::Status]
    # @!attribute property_groups
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Hash<String, Types::PropertyGroupResponse>]
    # @!attribute sync_source
    #   <p>The syncSource of the SyncJob, if this entity was created by a SyncJob.</p>
    #   @return [String]
    # @!attribute component_type_name
    #   <p>The component type name.</p>
    #   @return [String]
    # @!attribute composite_component_types
    #   <p>This is an object that maps strings to <code>compositeComponentTypes</code> of the <code>componentType</code>. <code>CompositeComponentType</code> is referenced by <code>componentTypeId</code>.</p>
    #   @return [Hash<String, Types::CompositeComponentTypeResponse>]
    class GetComponentTypeOutput < Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :creation_date_time,
      :update_date_time,
      :arn,
      :is_abstract,
      :is_schema_initialized,
      :status,
      :property_groups,
      :sync_source,
      :component_type_name,
      :composite_component_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    class GetEntityInput < Struct.new(
      :workspace_id,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the entity.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the entity.</p>
    #   @return [Types::Status]
    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the entity.</p>
    #   @return [String]
    # @!attribute components
    #   <p>An object that maps strings to the components in the entity. Each string in the mapping
    #            must be unique to this object.</p>
    #   @return [Hash<String, Types::ComponentResponse>]
    # @!attribute parent_entity_id
    #   <p>The ID of the parent entity for this entity.</p>
    #   @return [String]
    # @!attribute has_child_entities
    #   <p>A Boolean value that specifies whether the entity has associated child entities.</p>
    #   @return [Boolean]
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the entity was last updated.</p>
    #   @return [Time]
    # @!attribute sync_source
    #   <p>The syncSource of the sync job, if this entity was created by a sync job.</p>
    #   @return [String]
    # @!attribute are_all_components_returned
    #   <p>This flag notes whether all components are returned in the API response. The maximum number of components returned is 30.</p>
    #   @return [Boolean]
    class GetEntityOutput < Struct.new(
      :entity_id,
      :entity_name,
      :arn,
      :status,
      :workspace_id,
      :description,
      :components,
      :parent_entity_id,
      :has_child_entities,
      :creation_date_time,
      :update_date_time,
      :sync_source,
      :are_all_components_returned,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    #   @return [String]
    class GetMetadataTransferJobRequest < Struct.new(
      :metadata_transfer_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job Id.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The metadata transfer job ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The metadata transfer job description.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The metadata transfer job's sources.</p>
    #   @return [Array<Types::SourceConfiguration>]
    # @!attribute destination
    #   <p>The metadata transfer job's destination.</p>
    #   @return [Types::DestinationConfiguration]
    # @!attribute metadata_transfer_job_role
    #   <p>The metadata transfer job's role.</p>
    #   @return [String]
    # @!attribute report_url
    #   <p>The metadata transfer job's report URL.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The metadata transfer job's creation DateTime property.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The metadata transfer job's update DateTime property.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The metadata transfer job's status.</p>
    #   @return [Types::MetadataTransferJobStatus]
    # @!attribute progress
    #   <p>The metadata transfer job's progress.</p>
    #   @return [Types::MetadataTransferJobProgress]
    class GetMetadataTransferJobResponse < Struct.new(
      :metadata_transfer_job_id,
      :arn,
      :description,
      :sources,
      :destination,
      :metadata_transfer_job_role,
      :report_url,
      :creation_date_time,
      :update_date_time,
      :status,
      :progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetPricingPlanInput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute current_pricing_plan
    #   <p>The chosen pricing plan for the current billing cycle.</p>
    #   @return [Types::PricingPlan]
    # @!attribute pending_pricing_plan
    #   <p>The pending pricing plan.</p>
    #   @return [Types::PricingPlan]
    class GetPricingPlanOutput < Struct.new(
      :current_pricing_plan,
      :pending_pricing_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute selected_properties
    #   <p>A list of properties whose value histories the request retrieves.</p>
    #   @return [Array<String>]
    # @!attribute property_filters
    #   <p>A list of objects that filter the property value history request.</p>
    #   @return [Array<Types::PropertyFilter>]
    # @!attribute start_date_time
    #   <p>The date and time of the earliest property value to return.</p>
    #   @deprecated
    #     This field is deprecated and will throw an error in the future. Use startTime instead.
    #   @return [Time]
    # @!attribute end_date_time
    #   <p>The date and time of the latest property value to return.</p>
    #   @deprecated
    #     This field is deprecated and will throw an error in the future. Use endTime instead.
    #   @return [Time]
    # @!attribute interpolation
    #   <p>An object that specifies the interpolation type and the interval over which to
    #            interpolate data.</p>
    #   @return [Types::InterpolationParameters]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Integer]
    # @!attribute order_by_time
    #   <p>The time direction to use in the result order.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The ISO8601 DateTime of the earliest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html">PropertyValue</a>.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The ISO8601 DateTime of the latest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html">PropertyValue</a>.</p>
    #   @return [String]
    class GetPropertyValueHistoryInput < Struct.new(
      :workspace_id,
      :entity_id,
      :component_name,
      :component_path,
      :component_type_id,
      :selected_properties,
      :property_filters,
      :start_date_time,
      :end_date_time,
      :interpolation,
      :next_token,
      :max_results,
      :order_by_time,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute property_values
    #   <p>An object that maps strings to the property definitions in the component type. Each
    #            string in the mapping must be unique to this object.</p>
    #   @return [Array<Types::PropertyValueHistory>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class GetPropertyValueHistoryOutput < Struct.new(
      :property_values,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component whose property values the operation returns.</p>
    #   @return [String]
    # @!attribute component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type whose property values the operation returns.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity whose property values the operation returns.</p>
    #   @return [String]
    # @!attribute selected_properties
    #   <p>The properties whose values the operation returns.</p>
    #   @return [Array<String>]
    # @!attribute workspace_id
    #   <p>The ID of the workspace whose values the operation returns.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute property_group_name
    #   <p>The property group name.</p>
    #   @return [String]
    # @!attribute tabular_conditions
    #   <p>The tabular conditions.</p>
    #   @return [Types::TabularConditions]
    class GetPropertyValueInput < Struct.new(
      :component_name,
      :component_path,
      :component_type_id,
      :entity_id,
      :selected_properties,
      :workspace_id,
      :max_results,
      :next_token,
      :property_group_name,
      :tabular_conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute property_values
    #   <p>An object that maps strings to the properties and latest property values in the
    #            response. Each string in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyLatestValue>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute tabular_property_values
    #   <p>A table of property values.</p>
    #   @return [Array<Array<Hash<String, Types::DataValue>>>]
    class GetPropertyValueOutput < Struct.new(
      :property_values,
      :next_token,
      :tabular_property_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #   @return [String]
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #   @return [String]
    class GetSceneInput < Struct.new(
      :workspace_id,
      :scene_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #   @return [String]
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #   @return [String]
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the scene.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the scene was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the scene was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the scene.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>A list of capabilities that the scene uses to render.</p>
    #   @return [Array<String>]
    # @!attribute scene_metadata
    #   <p>The response metadata.</p>
    #   @return [Hash<String, String>]
    # @!attribute generated_scene_metadata
    #   <p>The generated scene metadata.</p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>The SceneResponse error.</p>
    #   @return [Types::SceneError]
    class GetSceneOutput < Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :arn,
      :creation_date_time,
      :update_date_time,
      :description,
      :capabilities,
      :scene_metadata,
      :generated_scene_metadata,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The workspace ID.</p>
    #   @return [String]
    class GetSyncJobInput < Struct.new(
      :sync_source,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The sync job ARN.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the sync job.</p>
    #   @return [String]
    # @!attribute sync_source
    #   <p>The sync soucre.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute sync_role
    #   <p>The sync IAM role.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The SyncJob response status.</p>
    #   @return [Types::SyncJobStatus]
    # @!attribute creation_date_time
    #   <p>The creation date and time.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The update date and time.</p>
    #   @return [Time]
    class GetSyncJobOutput < Struct.new(
      :arn,
      :workspace_id,
      :sync_source,
      :sync_role,
      :status,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    class GetWorkspaceInput < Struct.new(
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #   @return [String]
    # @!attribute linked_services
    #   <p>A list of services that are linked to the workspace.</p>
    #   @return [Array<String>]
    # @!attribute s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are
    #            stored.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the workspace was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the workspace was last updated.</p>
    #   @return [Time]
    class GetWorkspaceOutput < Struct.new(
      :workspace_id,
      :arn,
      :description,
      :linked_services,
      :s3_location,
      :role,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies how to interpolate data in a list.</p>
    # @!attribute interpolation_type
    #   <p>The interpolation type.</p>
    #   @return [String]
    # @!attribute interval_in_seconds
    #   <p>The interpolation time interval in seconds.</p>
    #   @return [Integer]
    class InterpolationParameters < Struct.new(
      :interpolation_type,
      :interval_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata transfer job AWS IoT SiteWise source configuration.</p>
    # @!attribute filters
    #   <p>The AWS IoT SiteWise soucre configuration filters.</p>
    #   @return [Array<Types::IotSiteWiseSourceConfigurationFilter>]
    class IotSiteWiseSourceConfiguration < Struct.new(
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS IoT SiteWise soucre configuration filter.[need held with desc here]</p>
    # @!attribute filter_by_asset_model
    #   <p>Filter by asset model.</p>
    #   @return [Types::FilterByAssetModel]
    # @!attribute filter_by_asset
    #   <p>Filter by asset.</p>
    #   @return [Types::FilterByAsset]
    class IotSiteWiseSourceConfigurationFilter < Struct.new(
      :filter_by_asset_model,
      :filter_by_asset,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FilterByAssetModel < IotSiteWiseSourceConfigurationFilter; end
      class FilterByAsset < IotSiteWiseSourceConfigurationFilter; end
      class Unknown < IotSiteWiseSourceConfigurationFilter; end
    end

    # <p>The metadata transfer job AWS IoT TwinMaker destination configuration.</p>
    # @!attribute workspace
    #   <p>The IoT TwinMaker workspace.</p>
    #   @return [String]
    class IotTwinMakerDestinationConfiguration < Struct.new(
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata transfer job AWS IoT TwinMaker source configuration.</p>
    # @!attribute workspace
    #   <p>The IoT TwinMaker workspace.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The metadata transfer job AWS IoT TwinMaker source configuration filters.</p>
    #   @return [Array<Types::IotTwinMakerSourceConfigurationFilter>]
    class IotTwinMakerSourceConfiguration < Struct.new(
      :workspace,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata transfer job AWS IoT TwinMaker source configuration filter.</p>
    # @!attribute filter_by_component_type
    #   <p>Filter by component type.</p>
    #   @return [Types::FilterByComponentType]
    # @!attribute filter_by_entity
    #   <p>Filter by entity.</p>
    #   @return [Types::FilterByEntity]
    class IotTwinMakerSourceConfigurationFilter < Struct.new(
      :filter_by_component_type,
      :filter_by_entity,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FilterByComponentType < IotTwinMakerSourceConfigurationFilter; end
      class FilterByEntity < IotTwinMakerSourceConfigurationFilter; end
      class Unknown < IotTwinMakerSourceConfigurationFilter; end
    end

    # <p>The Lambda function.</p>
    # @!attribute arn
    #   <p>The ARN of the Lambda function.</p>
    #   @return [String]
    class LambdaFunction < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters items in a list of component types.</p>
    #          <note>
    #             <p>Only one object is accepted as a valid input.</p>
    #          </note>
    # @!attribute extends_from
    #   <p>The component type that the component types in the list extend.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace to which the component types in the list belong.</p>
    #   @return [String]
    # @!attribute is_abstract
    #   <p>A Boolean value that specifies whether the component types in the list are
    #            abstract.</p>
    #   @return [Boolean]
    class ListComponentTypesFilter < Struct.new(
      :extends_from,
      :namespace,
      :is_abstract,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ExtendsFrom < ListComponentTypesFilter; end
      class Namespace < ListComponentTypesFilter; end
      class IsAbstract < ListComponentTypesFilter; end
      class Unknown < ListComponentTypesFilter; end
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of objects that filter the request.</p>
    #   @return [Array<Types::ListComponentTypesFilter>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Integer]
    class ListComponentTypesInput < Struct.new(
      :workspace_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute component_type_summaries
    #   <p>A list of objects that contain information about the component types.</p>
    #   @return [Array<Types::ComponentTypeSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to display.</p>
    #   @return [Integer]
    class ListComponentTypesOutput < Struct.new(
      :workspace_id,
      :component_type_summaries,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The workspace ID.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID for the entity whose metadata (component/properties) is returned by the operation.</p>
    #   @return [String]
    # @!attribute component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListComponentsRequest < Struct.new(
      :workspace_id,
      :entity_id,
      :component_path,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_summaries
    #   <p>A list of objects that contain information about the components.</p>
    #   @return [Array<Types::ComponentSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of component results.</p>
    #   @return [String]
    class ListComponentsResponse < Struct.new(
      :component_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters items in a list of entities.</p>
    # @!attribute parent_entity_id
    #   <p>The parent of the entities in the list.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type in the entities in the list.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external-Id property of a component. The external-Id property is the primary key of
    #            an external storage system.</p>
    #   @return [String]
    class ListEntitiesFilter < Struct.new(
      :parent_entity_id,
      :component_type_id,
      :external_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ParentEntityId < ListEntitiesFilter; end
      class ComponentTypeId < ListEntitiesFilter; end
      class ExternalId < ListEntitiesFilter; end
      class Unknown < ListEntitiesFilter; end
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of objects that filter the request.</p>
    #            <note>
    #               <p>Only one object is accepted as a valid input.</p>
    #            </note>
    #   @return [Array<Types::ListEntitiesFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListEntitiesInput < Struct.new(
      :workspace_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_summaries
    #   <p>A list of objects that contain information about the entities.</p>
    #   @return [Array<Types::EntitySummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListEntitiesOutput < Struct.new(
      :entity_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ListMetadataTransferJobs filter.</p>
    # @!attribute workspace_id
    #   <p>The workspace Id.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The filter state.</p>
    #   @return [String]
    class ListMetadataTransferJobsFilter < Struct.new(
      :workspace_id,
      :state,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class WorkspaceId < ListMetadataTransferJobsFilter; end
      class State < ListMetadataTransferJobsFilter; end
      class Unknown < ListMetadataTransferJobsFilter; end
    end

    # @!attribute source_type
    #   <p>The metadata transfer job's source type.</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>The metadata transfer job's destination type.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An object that filters metadata transfer jobs.</p>
    #   @return [Array<Types::ListMetadataTransferJobsFilter>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #   @return [Integer]
    class ListMetadataTransferJobsRequest < Struct.new(
      :source_type,
      :destination_type,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata_transfer_job_summaries
    #   <p>The metadata transfer job summaries.</p>
    #   @return [Array<Types::MetadataTransferJobSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListMetadataTransferJobsResponse < Struct.new(
      :metadata_transfer_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The workspace ID.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component whose properties are returned by the operation.</p>
    #   @return [String]
    # @!attribute component_path
    #   <p>This string specifies the path to the composite component, starting from the top-level component.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID for the entity whose metadata (component/properties) is returned by the operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned at one time. The default is 25.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListPropertiesRequest < Struct.new(
      :workspace_id,
      :component_name,
      :component_path,
      :entity_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute property_summaries
    #   <p>A list of objects that contain information about the properties.</p>
    #   @return [Array<Types::PropertySummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of property results.</p>
    #   @return [String]
    class ListPropertiesResponse < Struct.new(
      :property_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scenes.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to display.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListScenesInput < Struct.new(
      :workspace_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scene_summaries
    #   <p>A list of objects that contain information about the scenes.</p>
    #   @return [Array<Types::SceneSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListScenesOutput < Struct.new(
      :scene_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the sync job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 50.</p>
    #            <p>Valid Range: Minimum value of 0. Maximum value of 200.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListSyncJobsInput < Struct.new(
      :workspace_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sync_job_summaries
    #   <p>The listed SyncJob summaries.</p>
    #   @return [Array<Types::SyncJobSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListSyncJobsOutput < Struct.new(
      :sync_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the sync job.</p>
    #   @return [String]
    # @!attribute sync_source
    #   <p>The sync source.</p>
    #            <note>
    #               <p>Currently the only supported syncSource is <code>SITEWISE </code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of objects that filter the request.</p>
    #            <p>The following filter combinations are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>Filter with state</p>
    #               </li>
    #               <li>
    #                  <p>Filter with ResourceType and ResourceId</p>
    #               </li>
    #               <li>
    #                  <p>Filter with ResourceType and ExternalId</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::SyncResourceFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 50.</p>
    #            <p>Valid Range: Minimum value of 0. Maximum value of 200.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListSyncResourcesInput < Struct.new(
      :workspace_id,
      :sync_source,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sync_resources
    #   <p>The sync resources.</p>
    #   @return [Array<Types::SyncResourceSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListSyncResourcesOutput < Struct.new(
      :sync_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Metadata that you can use to manage a resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    #            <p>Valid Range: Minimum value of 1. Maximum value of 250.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListWorkspacesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_summaries
    #   <p>A list of objects that contain information about the workspaces.</p>
    #   @return [Array<Types::WorkspaceSummary>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ListWorkspacesOutput < Struct.new(
      :workspace_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata transfer job's progress.</p>
    # @!attribute total_count
    #   <p>The total count. [of what]</p>
    #   @return [Integer]
    # @!attribute succeeded_count
    #   <p>The succeeded count.</p>
    #   @return [Integer]
    # @!attribute skipped_count
    #   <p>The skipped count.</p>
    #   @return [Integer]
    # @!attribute failed_count
    #   <p>The failed count.</p>
    #   @return [Integer]
    class MetadataTransferJobProgress < Struct.new(
      :total_count,
      :succeeded_count,
      :skipped_count,
      :failed_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata transfer job status.</p>
    # @!attribute state
    #   <p>The metadata transfer job state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The metadata transfer job error.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute queued_position
    #   <p>The queued position.</p>
    #   @return [Integer]
    class MetadataTransferJobStatus < Struct.new(
      :state,
      :error,
      :queued_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata transfer job summary.</p>
    # @!attribute metadata_transfer_job_id
    #   <p>The metadata transfer job summary Id.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The metadata transfer job summary ARN.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The metadata transfer job summary creation DateTime object.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The metadata transfer job summary update DateTime object</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The metadata transfer job summary status.</p>
    #   @return [Types::MetadataTransferJobStatus]
    # @!attribute progress
    #   <p>The metadata transfer job summary progess.</p>
    #   @return [Types::MetadataTransferJobProgress]
    class MetadataTransferJobSummary < Struct.new(
      :metadata_transfer_job_id,
      :arn,
      :creation_date_time,
      :update_date_time,
      :status,
      :progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter criteria that orders the return output. It can be sorted in ascending or
    #          descending order.</p>
    # @!attribute order
    #   <p>The set order that filters results.</p>
    #   @return [String]
    # @!attribute property_name
    #   <p>The property name.</p>
    #   @return [String]
    class OrderBy < Struct.new(
      :order,
      :property_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parent entity update request.</p>
    # @!attribute update_type
    #   <p>The type of the update.</p>
    #   @return [String]
    # @!attribute parent_entity_id
    #   <p>The ID of the parent entity.</p>
    #   @return [String]
    class ParentEntityUpdateRequest < Struct.new(
      :update_type,
      :parent_entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pricing plan.</p>
    # @!attribute billable_entity_count
    #   <p>The billable entity count.</p>
    #   @return [Integer]
    # @!attribute bundle_information
    #   <p>The pricing plan's bundle information.</p>
    #   @return [Types::BundleInformation]
    # @!attribute effective_date_time
    #   <p>The effective date and time of the pricing plan.</p>
    #   @return [Time]
    # @!attribute pricing_mode
    #   <p>The pricing mode.</p>
    #   @return [String]
    # @!attribute update_date_time
    #   <p>The set date and time for updating a pricing plan.</p>
    #   @return [Time]
    # @!attribute update_reason
    #   <p>The update reason for changing a pricing plan.</p>
    #   @return [String]
    class PricingPlan < Struct.new(
      :billable_entity_count,
      :bundle_information,
      :effective_date_time,
      :pricing_mode,
      :update_date_time,
      :update_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that sets information about a property.</p>
    # @!attribute data_type
    #   <p>An object that contains information about the data type.</p>
    #   @return [Types::DataType]
    # @!attribute is_required_in_entity
    #   <p>A Boolean value that specifies whether the property is required.</p>
    #   @return [Boolean]
    # @!attribute is_external_id
    #   <p>A Boolean value that specifies whether the property ID comes from an external data
    #            store.</p>
    #   @return [Boolean]
    # @!attribute is_stored_externally
    #   <p>A Boolean value that specifies whether the property is stored externally.</p>
    #   @return [Boolean]
    # @!attribute is_time_series
    #   <p>A Boolean value that specifies whether the property consists of time series data.</p>
    #   @return [Boolean]
    # @!attribute default_value
    #   <p>An object that contains the default value.</p>
    #   @return [Types::DataValue]
    # @!attribute configuration
    #   <p>A mapping that specifies configuration information about the property. Use this field to
    #            specify information that you read from and write to an external source.</p>
    #   @return [Hash<String, String>]
    # @!attribute display_name
    #   <p>A friendly name for the property.</p>
    #   @return [String]
    class PropertyDefinitionRequest < Struct.new(
      :data_type,
      :is_required_in_entity,
      :is_external_id,
      :is_stored_externally,
      :is_time_series,
      :default_value,
      :configuration,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains response data from a property definition request.</p>
    # @!attribute data_type
    #   <p>An object that contains information about the data type.</p>
    #   @return [Types::DataType]
    # @!attribute is_time_series
    #   <p>A Boolean value that specifies whether the property consists of time series data.</p>
    #   @return [Boolean]
    # @!attribute is_required_in_entity
    #   <p>A Boolean value that specifies whether the property is required in an entity.</p>
    #   @return [Boolean]
    # @!attribute is_external_id
    #   <p>A Boolean value that specifies whether the property ID comes from an external data
    #            store.</p>
    #   @return [Boolean]
    # @!attribute is_stored_externally
    #   <p>A Boolean value that specifies whether the property is stored externally.</p>
    #   @return [Boolean]
    # @!attribute is_imported
    #   <p>A Boolean value that specifies whether the property definition is imported from an
    #            external data store.</p>
    #   @return [Boolean]
    # @!attribute is_final
    #   <p>A Boolean value that specifies whether the property definition can be updated.</p>
    #   @return [Boolean]
    # @!attribute is_inherited
    #   <p>A Boolean value that specifies whether the property definition is inherited from a
    #            parent entity.</p>
    #   @return [Boolean]
    # @!attribute default_value
    #   <p>An object that contains the default value.</p>
    #   @return [Types::DataValue]
    # @!attribute configuration
    #   <p>A mapping that specifies configuration information about the property.</p>
    #   @return [Hash<String, String>]
    # @!attribute display_name
    #   <p>A friendly name for the property.</p>
    #   @return [String]
    class PropertyDefinitionResponse < Struct.new(
      :data_type,
      :is_time_series,
      :is_required_in_entity,
      :is_external_id,
      :is_stored_externally,
      :is_imported,
      :is_final,
      :is_inherited,
      :default_value,
      :configuration,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that filters items returned by a property request.</p>
    # @!attribute property_name
    #   <p>The property name associated with this property filter.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator associated with this property filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with this property filter.</p>
    #   @return [Types::DataValue]
    class PropertyFilter < Struct.new(
      :property_name,
      :operator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute group_type
    #   <p>The group type.</p>
    #   @return [String]
    # @!attribute property_names
    #   <p>The names of properties.</p>
    #   @return [Array<String>]
    class PropertyGroupRequest < Struct.new(
      :group_type,
      :property_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The property group response</p>
    # @!attribute group_type
    #   <p>The group types.</p>
    #   @return [String]
    # @!attribute property_names
    #   <p>The names of properties.</p>
    #   @return [Array<String>]
    # @!attribute is_inherited
    #   <p>A Boolean value that specifies whether the property group is inherited from a parent
    #            entity</p>
    #   @return [Boolean]
    class PropertyGroupResponse < Struct.new(
      :group_type,
      :property_names,
      :is_inherited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The latest value of the property.</p>
    # @!attribute property_reference
    #   <p>An object that specifies information about a property.</p>
    #   @return [Types::EntityPropertyReference]
    # @!attribute property_value
    #   <p>The value of the property.</p>
    #   @return [Types::DataValue]
    class PropertyLatestValue < Struct.new(
      :property_reference,
      :property_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that sets information about a property.</p>
    # @!attribute definition
    #   <p>An object that specifies information about a property.</p>
    #   @return [Types::PropertyDefinitionRequest]
    # @!attribute value
    #   <p>The value of the property.</p>
    #   @return [Types::DataValue]
    # @!attribute update_type
    #   <p>The update type of the update property request.</p>
    #   @return [String]
    class PropertyRequest < Struct.new(
      :definition,
      :value,
      :update_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a property response.</p>
    # @!attribute definition
    #   <p>An object that specifies information about a property.</p>
    #   @return [Types::PropertyDefinitionResponse]
    # @!attribute value
    #   <p>The value of the property.</p>
    #   @return [Types::DataValue]
    # @!attribute are_all_property_values_returned
    #   <p>This flag notes whether all values of a list or map type property are returned in the API response. The maximum number of values per property returned is 50.</p>
    #   @return [Boolean]
    class PropertyResponse < Struct.new(
      :definition,
      :value,
      :are_all_property_values_returned,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is an object that contains the information of a property.</p>
    # @!attribute definition
    #   <p>This is the schema for the property.</p>
    #   @return [Types::PropertyDefinitionResponse]
    # @!attribute property_name
    #   <p>This is the name of the property.</p>
    #   @return [String]
    # @!attribute value
    #   <p>This is the value for the property.</p>
    #   @return [Types::DataValue]
    # @!attribute are_all_property_values_returned
    #   <p>This flag notes whether all values of a list or map type property are returned in the API 
    #             response. The maximum number of values per property returned is 50.</p>
    #   @return [Boolean]
    class PropertySummary < Struct.new(
      :definition,
      :property_name,
      :value,
      :are_all_property_values_returned,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a value for a time series property.</p>
    # @!attribute timestamp
    #   <p>The timestamp of a value for a time series property.</p>
    #   @deprecated
    #     This field is deprecated and will throw an error in the future. Use time instead.
    #   @return [Time]
    # @!attribute value
    #   <p>An object that specifies a value for a time series property.</p>
    #   @return [Types::DataValue]
    # @!attribute time
    #   <p>ISO8601 DateTime of a value for a time series property.</p>
    #            <p>The time for when the property value was recorded in ISO 8601 format:
    #               <i>YYYY-MM-DDThh:mm:ss[.SSSSSSSSS][Z/±HH:mm]</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>[YYYY]</i>: year</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[MM]</i>: month</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[DD]</i>: day</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[hh]</i>: hour</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[mm]</i>: minute</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[ss]</i>: seconds</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[.SSSSSSSSS]</i>: additional precision, where precedence is
    #                  maintained. For example: [.573123] is equal to 573123000 nanoseconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>Z</i>: default timezone UTC</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>± HH:mm</i>: time zone offset in Hours and Minutes.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <i>Required sub-fields</i>: YYYY-MM-DDThh:mm:ss and [Z/±HH:mm]</p>
    #   @return [String]
    class PropertyValue < Struct.new(
      :timestamp,
      :value,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies information about time series property values. This object is
    #          used and consumed by the <a href="https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_BatchPutPropertyValues.html">BatchPutPropertyValues</a> action.</p>
    # @!attribute entity_property_reference
    #   <p>An object that contains information about the entity that has the property.</p>
    #   @return [Types::EntityPropertyReference]
    # @!attribute property_values
    #   <p>A list of objects that specify time series property values.</p>
    #   @return [Array<Types::PropertyValue>]
    class PropertyValueEntry < Struct.new(
      :entity_property_reference,
      :property_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The history of values for a time series property.</p>
    # @!attribute entity_property_reference
    #   <p>An object that uniquely identifies an entity property.</p>
    #   @return [Types::EntityPropertyReference]
    # @!attribute values
    #   <p>A list of objects that contain information about the values in the history of a time
    #            series property.</p>
    #   @return [Array<Types::PropertyValue>]
    class PropertyValueHistory < Struct.new(
      :entity_property_reference,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The query timeout exception.</p>
    # @!attribute message
    #   @return [String]
    class QueryTimeoutException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies a relationship with another component type.</p>
    # @!attribute target_component_type_id
    #   <p>The ID of the target component type associated with this relationship.</p>
    #   @return [String]
    # @!attribute relationship_type
    #   <p>The type of the relationship.</p>
    #   @return [String]
    class Relationship < Struct.new(
      :target_component_type_id,
      :relationship_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A value that associates a component and an entity.</p>
    # @!attribute target_entity_id
    #   <p>The ID of the target entity associated with this relationship value.</p>
    #   @return [String]
    # @!attribute target_component_name
    #   <p>The name of the target component associated with the relationship value.</p>
    #   @return [String]
    class RelationshipValue < Struct.new(
      :target_entity_id,
      :target_component_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource wasn't found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single row in the query results.</p>
    # @!attribute row_data
    #   <p>The data in a row of query results.</p>
    #   @return [Array<JSON>]
    class Row < Struct.new(
      :row_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 destination configuration.</p>
    # @!attribute location
    #   <p>The S3 destination configuration location.</p>
    #   @return [String]
    class S3DestinationConfiguration < Struct.new(
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 destination source configuration.</p>
    # @!attribute location
    #   <p>The S3 destination source configuration location.</p>
    #   @return [String]
    class S3SourceConfiguration < Struct.new(
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The scene error.</p>
    # @!attribute code
    #   <p>The SceneError code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The SceneError message.</p>
    #   @return [String]
    class SceneError < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a scene.</p>
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #   @return [String]
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the scene.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the scene was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the scene was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The scene description.</p>
    #   @return [String]
    class SceneSummary < Struct.new(
      :scene_id,
      :content_location,
      :arn,
      :creation_date_time,
      :update_date_time,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source configuration.</p>
    # @!attribute type
    #   <p>The source configuration type.</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>The source configuration S3 configuration.</p>
    #   @return [Types::S3SourceConfiguration]
    # @!attribute iot_site_wise_configuration
    #   <p>The source configuration IoT SiteWise configuration.</p>
    #   @return [Types::IotSiteWiseSourceConfiguration]
    # @!attribute iot_twin_maker_configuration
    #   <p>The source configuration IoT TwinMaker configuration.</p>
    #   @return [Types::IotTwinMakerSourceConfiguration]
    class SourceConfiguration < Struct.new(
      :type,
      :s3_configuration,
      :iot_site_wise_configuration,
      :iot_twin_maker_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the status of an entity, component, component type, or
    #          workspace.</p>
    # @!attribute state
    #   <p>The current state of the entity, component, component type, or workspace.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message.</p>
    #   @return [Types::ErrorDetails]
    class Status < Struct.new(
      :state,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SyncJob status.</p>
    # @!attribute state
    #   <p>The SyncJob status state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The SyncJob error.</p>
    #   @return [Types::ErrorDetails]
    class SyncJobStatus < Struct.new(
      :state,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SyncJob summary.</p>
    # @!attribute arn
    #   <p>The SyncJob summary ARN.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the sync job.</p>
    #   @return [String]
    # @!attribute sync_source
    #   <p>The sync source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The SyncJob summaries status.</p>
    #   @return [Types::SyncJobStatus]
    # @!attribute creation_date_time
    #   <p>The creation date and time.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The update date and time.</p>
    #   @return [Time]
    class SyncJobSummary < Struct.new(
      :arn,
      :workspace_id,
      :sync_source,
      :status,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sync resource filter.</p>
    # @!attribute state
    #   <p>The sync resource filter's state.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The sync resource filter resource type</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The sync resource filter resource ID.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID.</p>
    #   @return [String]
    class SyncResourceFilter < Struct.new(
      :state,
      :resource_type,
      :resource_id,
      :external_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class State < SyncResourceFilter; end
      class ResourceType < SyncResourceFilter; end
      class ResourceId < SyncResourceFilter; end
      class ExternalId < SyncResourceFilter; end
      class Unknown < SyncResourceFilter; end
    end

    # <p>The sync resource status.</p>
    # @!attribute state
    #   <p>The sync resource status state.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The status error.</p>
    #   @return [Types::ErrorDetails]
    class SyncResourceStatus < Struct.new(
      :state,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The sync resource summary.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The sync resource summary status.</p>
    #   @return [Types::SyncResourceStatus]
    # @!attribute update_date_time
    #   <p>The update date and time.</p>
    #   @return [Time]
    class SyncResourceSummary < Struct.new(
      :resource_type,
      :external_id,
      :resource_id,
      :status,
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tabular conditions.</p>
    # @!attribute order_by
    #   <p>Filter criteria that orders the output. It can be sorted in ascending or descending
    #            order.</p>
    #   @return [Array<Types::OrderBy>]
    # @!attribute property_filters
    #   <p>You can filter the request using various logical operators and a key-value format. For
    #            example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #   @return [Array<Types::PropertyFilter>]
    class TabularConditions < Struct.new(
      :order_by,
      :property_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata to add to this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of tags exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both
    #            the key and its associated value are removed.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    #   @return [Boolean]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component type.</p>
    #   @return [String]
    # @!attribute property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each
    #            string in the mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::PropertyDefinitionRequest>]
    # @!attribute extends_from
    #   <p>Specifies the component type that this component type extends.</p>
    #   @return [Array<String>]
    # @!attribute functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::FunctionRequest>]
    # @!attribute property_groups
    #   <p>The property groups.</p>
    #   @return [Hash<String, Types::PropertyGroupRequest>]
    # @!attribute component_type_name
    #   <p>The component type name.</p>
    #   @return [String]
    # @!attribute composite_component_types
    #   <p>This is an object that maps strings to <code>compositeComponentTypes</code> of the <code>componentType</code>. 
    #             <code>CompositeComponentType</code> is referenced by <code>componentTypeId</code>.</p>
    #   @return [Hash<String, Types::CompositeComponentTypeRequest>]
    class UpdateComponentTypeInput < Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :property_groups,
      :component_type_name,
      :composite_component_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #   @return [String]
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the component type.</p>
    #   @return [String]
    class UpdateComponentTypeOutput < Struct.new(
      :workspace_id,
      :arn,
      :component_type_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the entity.</p>
    #   @return [String]
    # @!attribute component_updates
    #   <p>An object that maps strings to the component updates in the request. Each string in the
    #            mapping must be unique to this object.</p>
    #   @return [Hash<String, Types::ComponentUpdateRequest>]
    # @!attribute composite_component_updates
    #   <p>This is an object that maps strings to <code>compositeComponent</code> updates in the request. Each key 
    #             of the map represents the <code>componentPath</code> of the <code>compositeComponent</code>.</p>
    #   @return [Hash<String, Types::CompositeComponentUpdateRequest>]
    # @!attribute parent_entity_update
    #   <p>An object that describes the update request for a parent entity.</p>
    #   @return [Types::ParentEntityUpdateRequest]
    class UpdateEntityInput < Struct.new(
      :workspace_id,
      :entity_id,
      :entity_name,
      :description,
      :component_updates,
      :composite_component_updates,
      :parent_entity_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_date_time
    #   <p>The date and time when the entity was last updated.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of the entity update.</p>
    #   @return [String]
    class UpdateEntityOutput < Struct.new(
      :update_date_time,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pricing_mode
    #   <p>The pricing mode.</p>
    #   @return [String]
    # @!attribute bundle_names
    #   <p>The bundle names.</p>
    #   @return [Array<String>]
    class UpdatePricingPlanInput < Struct.new(
      :pricing_mode,
      :bundle_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute current_pricing_plan
    #   <p>Update the current pricing plan.</p>
    #   @return [Types::PricingPlan]
    # @!attribute pending_pricing_plan
    #   <p>Update the pending pricing plan.</p>
    #   @return [Types::PricingPlan]
    class UpdatePricingPlanOutput < Struct.new(
      :current_pricing_plan,
      :pending_pricing_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #   @return [String]
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #   @return [String]
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this scene.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>A list of capabilities that the scene uses to render.</p>
    #   @return [Array<String>]
    # @!attribute scene_metadata
    #   <p>The scene metadata.</p>
    #   @return [Hash<String, String>]
    class UpdateSceneInput < Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :description,
      :capabilities,
      :scene_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_date_time
    #   <p>The date and time when the scene was last updated.</p>
    #   @return [Time]
    class UpdateSceneOutput < Struct.new(
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are
    #            stored.</p>
    #   @return [String]
    class UpdateWorkspaceInput < Struct.new(
      :workspace_id,
      :description,
      :role,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_date_time
    #   <p>The date and time of the current update.</p>
    #   @return [Time]
    class UpdateWorkspaceOutput < Struct.new(
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Failed</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about a workspace.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #   @return [String]
    # @!attribute linked_services
    #   <p>A list of services that are linked to the workspace.</p>
    #   @return [Array<String>]
    # @!attribute creation_date_time
    #   <p>The date and time when the workspace was created.</p>
    #   @return [Time]
    # @!attribute update_date_time
    #   <p>The date and time when the workspace was last updated.</p>
    #   @return [Time]
    class WorkspaceSummary < Struct.new(
      :workspace_id,
      :arn,
      :description,
      :linked_services,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
