# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTTwinMaker
  module Types

    # Access is denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error returned by the `BatchPutProperty` action.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] entry
    #   An object that contains information about errors returned by the
    #   `BatchPutProperty` action.
    #   @return [Types::PropertyValueEntry]
    #
    class BatchPutPropertyError < Struct.new(
      :error_code,
      :error_message,
      :entry)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about errors returned by the
    # `BatchPutProperty` action.
    #
    # @!attribute [rw] errors
    #   A list of objects that contain information about errors returned by
    #   the `BatchPutProperty` action.
    #   @return [Array<Types::BatchPutPropertyError>]
    #
    class BatchPutPropertyErrorEntry < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the properties to set.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   An object that maps strings to the property value entries to set.
    #   Each string in the mapping must be unique to this object.
    #   @return [Array<Types::PropertyValueEntry>]
    #
    class BatchPutPropertyValuesRequest < Struct.new(
      :workspace_id,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   Entries that caused errors in the batch put operation.
    #   @return [Array<Types::BatchPutPropertyErrorEntry>]
    #
    class BatchPutPropertyValuesResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the pricing bundle.
    #
    # @!attribute [rw] bundle_names
    #   The bundle names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pricing_tier
    #   The pricing tier.
    #   @return [String]
    #
    class BundleInformation < Struct.new(
      :bundle_names,
      :pricing_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the column in the query results.
    #
    # @!attribute [rw] name
    #   The name of the column description.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the column description.
    #   @return [String]
    #
    class ColumnDescription < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The component property group request.
    #
    # @!attribute [rw] group_type
    #   The group type.
    #   @return [String]
    #
    # @!attribute [rw] property_names
    #   The property names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] update_type
    #   The update type.
    #   @return [String]
    #
    class ComponentPropertyGroupRequest < Struct.new(
      :group_type,
      :property_names,
      :update_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The component property group response.
    #
    # @!attribute [rw] group_type
    #   The group type.
    #   @return [String]
    #
    # @!attribute [rw] property_names
    #   The names of properties
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_inherited
    #   A Boolean value that specifies whether the property group is
    #   inherited from a parent entity
    #   @return [Boolean]
    #
    class ComponentPropertyGroupResponse < Struct.new(
      :group_type,
      :property_names,
      :is_inherited)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that sets information about a component type create or
    # update request.
    #
    # @!attribute [rw] description
    #   The description of the component request.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   An object that maps strings to the properties to set in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyRequest>]
    #
    # @!attribute [rw] property_groups
    #   The property groups.
    #   @return [Hash<String,Types::ComponentPropertyGroupRequest>]
    #
    class ComponentRequest < Struct.new(
      :description,
      :component_type_id,
      :properties,
      :property_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that returns information about a component type create or
    # update request.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the component type.
    #   @return [Types::Status]
    #
    # @!attribute [rw] defined_in
    #   The name of the property definition set in the request.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   An object that maps strings to the properties to set in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyResponse>]
    #
    # @!attribute [rw] property_groups
    #   The property groups.
    #   @return [Hash<String,Types::ComponentPropertyGroupResponse>]
    #
    # @!attribute [rw] sync_source
    #   The syncSource of the sync job, if this entity was created by a sync
    #   job.
    #   @return [String]
    #
    class ComponentResponse < Struct.new(
      :component_name,
      :description,
      :component_type_id,
      :status,
      :defined_in,
      :properties,
      :property_groups,
      :sync_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a component type.
    #
    # @!attribute [rw] arn
    #   The ARN of the component type.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the component type was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the component type was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the component type.
    #   @return [Types::Status]
    #
    # @!attribute [rw] component_type_name
    #   The component type name.
    #   @return [String]
    #
    class ComponentTypeSummary < Struct.new(
      :arn,
      :component_type_id,
      :creation_date_time,
      :update_date_time,
      :description,
      :status,
      :component_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The component update request.
    #
    # @!attribute [rw] update_type
    #   The update type of the component update request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] property_updates
    #   An object that maps strings to the properties to set in the
    #   component type update. Each string in the mapping must be unique to
    #   this object.
    #   @return [Hash<String,Types::PropertyRequest>]
    #
    # @!attribute [rw] property_group_updates
    #   The property group updates.
    #   @return [Hash<String,Types::ComponentPropertyGroupRequest>]
    #
    class ComponentUpdateRequest < Struct.new(
      :update_type,
      :description,
      :component_type_id,
      :property_updates,
      :property_group_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector failed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConnectorFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector timed out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ConnectorTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    # @!attribute [rw] is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyDefinitionRequest>]
    #
    # @!attribute [rw] extends_from
    #   Specifies the parent component type to extend.
    #   @return [Array<String>]
    #
    # @!attribute [rw] functions
    #   An object that maps strings to the functions in the component type.
    #   Each string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::FunctionRequest>]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the component type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] property_groups
    #   @return [Hash<String,Types::PropertyGroupRequest>]
    #
    # @!attribute [rw] component_type_name
    #   A friendly name for the component type.
    #   @return [String]
    #
    class CreateComponentTypeRequest < Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :tags,
      :property_groups,
      :component_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the component type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of the component type.
    #   @return [String]
    #
    class CreateComponentTypeResponse < Struct.new(
      :arn,
      :creation_date_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the entity.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   An object that maps strings to the components in the entity. Each
    #   string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::ComponentRequest>]
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the entity's parent entity.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the entity.
    #   @return [Hash<String,String>]
    #
    class CreateEntityRequest < Struct.new(
      :workspace_id,
      :entity_id,
      :entity_name,
      :description,
      :components,
      :parent_entity_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the entity.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of the entity.
    #   @return [String]
    #
    class CreateEntityResponse < Struct.new(
      :entity_id,
      :arn,
      :creation_date_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for this scene.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   A list of capabilities that the scene uses to render itself.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the scene.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] scene_metadata
    #   The request metadata.
    #   @return [Hash<String,String>]
    #
    class CreateSceneRequest < Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :description,
      :capabilities,
      :tags,
      :scene_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the scene.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the scene was created.
    #   @return [Time]
    #
    class CreateSceneResponse < Struct.new(
      :arn,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The workspace ID.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   The sync source.
    #
    #   <note markdown="1"> Currently the only supported syncSoource is `SITEWISE `.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sync_role
    #   The SyncJob IAM role. This IAM role is used by the SyncJob to read
    #   from the syncSource, and create, update, or delete the corresponding
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The SyncJob tags.
    #   @return [Hash<String,String>]
    #
    class CreateSyncJobRequest < Struct.new(
      :workspace_id,
      :sync_source,
      :sync_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The SyncJob ARN.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time for the SyncJob creation.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The SyncJob response state.
    #   @return [String]
    #
    class CreateSyncJobResponse < Struct.new(
      :arn,
      :creation_date_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The ARN of the S3 bucket where resources associated with the
    #   workspace are stored.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the execution role associated with the workspace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the workspace
    #   @return [Hash<String,String>]
    #
    class CreateWorkspaceRequest < Struct.new(
      :workspace_id,
      :description,
      :s3_location,
      :role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the workspace was created.
    #   @return [Time]
    #
    class CreateWorkspaceResponse < Struct.new(
      :arn,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data connector.
    #
    # @!attribute [rw] lambda
    #   The Lambda function associated with this data connector.
    #   @return [Types::LambdaFunction]
    #
    # @!attribute [rw] is_native
    #   A Boolean value that specifies whether the data connector is native
    #   to IoT TwinMaker.
    #   @return [Boolean]
    #
    class DataConnector < Struct.new(
      :lambda,
      :is_native)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies the data type of a property.
    #
    # @!attribute [rw] type
    #   The underlying type of the data type.
    #   @return [String]
    #
    # @!attribute [rw] nested_type
    #   The nested type in the data type.
    #   @return [Types::DataType]
    #
    # @!attribute [rw] allowed_values
    #   The allowed values for this data type.
    #   @return [Array<Types::DataValue>]
    #
    # @!attribute [rw] unit_of_measure
    #   The unit of measure used in this data type.
    #   @return [String]
    #
    # @!attribute [rw] relationship
    #   A relationship that associates a component with another component.
    #   @return [Types::Relationship]
    #
    class DataType < Struct.new(
      :type,
      :nested_type,
      :allowed_values,
      :unit_of_measure,
      :relationship)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies a value for a property.
    #
    # @!attribute [rw] boolean_value
    #   A Boolean value.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   A double value.
    #   @return [Float]
    #
    # @!attribute [rw] integer_value
    #   An integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] long_value
    #   A long value.
    #   @return [Integer]
    #
    # @!attribute [rw] string_value
    #   A string value.
    #   @return [String]
    #
    # @!attribute [rw] list_value
    #   A list of multiple values.
    #   @return [Array<Types::DataValue>]
    #
    # @!attribute [rw] map_value
    #   An object that maps strings to multiple `DataValue` objects.
    #   @return [Hash<String,Types::DataValue>]
    #
    # @!attribute [rw] relationship_value
    #   A value that relates a component to another component.
    #   @return [Types::RelationshipValue]
    #
    # @!attribute [rw] expression
    #   An expression that produces the value.
    #   @return [String]
    #
    class DataValue < Struct.new(
      :boolean_value,
      :double_value,
      :integer_value,
      :long_value,
      :string_value,
      :list_value,
      :map_value,
      :relationship_value,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type to delete.
    #   @return [String]
    #
    class DeleteComponentTypeRequest < Struct.new(
      :workspace_id,
      :component_type_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The current state of the component type to be deleted.
    #   @return [String]
    #
    class DeleteComponentTypeResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the entity to delete.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity to delete.
    #   @return [String]
    #
    # @!attribute [rw] is_recursive
    #   A Boolean value that specifies whether the operation deletes child
    #   entities.
    #   @return [Boolean]
    #
    class DeleteEntityRequest < Struct.new(
      :workspace_id,
      :entity_id,
      :is_recursive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The current state of the deleted entity.
    #   @return [String]
    #
    class DeleteEntityResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene to delete.
    #   @return [String]
    #
    class DeleteSceneRequest < Struct.new(
      :workspace_id,
      :scene_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSceneResponse < Aws::EmptyStructure; end

    # @!attribute [rw] workspace_id
    #   The workspace ID.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   The sync source.
    #
    #   <note markdown="1"> Currently the only supported syncSource is `SITEWISE `.
    #
    #    </note>
    #   @return [String]
    #
    class DeleteSyncJobRequest < Struct.new(
      :workspace_id,
      :sync_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The SyncJob response state.
    #   @return [String]
    #
    class DeleteSyncJobResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete.
    #   @return [String]
    #
    class DeleteWorkspaceRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWorkspaceResponse < Aws::EmptyStructure; end

    # An object that uniquely identifies an entity property.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] external_id_property
    #   A mapping of external IDs to property names. External IDs uniquely
    #   identify properties from external data stores.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] property_name
    #   The name of the property.
    #   @return [String]
    #
    class EntityPropertyReference < Struct.new(
      :component_name,
      :external_id_property,
      :entity_id,
      :property_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an entity.
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the entity.
    #   @return [String]
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the parent entity.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the entity.
    #   @return [Types::Status]
    #
    # @!attribute [rw] description
    #   The description of the entity.
    #   @return [String]
    #
    # @!attribute [rw] has_child_entities
    #   A Boolean value that specifies whether the entity has child entities
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The last date and time when the entity was updated.
    #   @return [Time]
    #
    class EntitySummary < Struct.new(
      :entity_id,
      :entity_name,
      :arn,
      :parent_entity_id,
      :status,
      :description,
      :has_child_entities,
      :creation_date_time,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error details.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    class ErrorDetails < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] query_statement
    #   The query statement.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ExecuteQueryRequest < Struct.new(
      :workspace_id,
      :query_statement,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_descriptions
    #   A list of ColumnDescription objects.
    #   @return [Array<Types::ColumnDescription>]
    #
    # @!attribute [rw] rows
    #   Represents a single row in the query results.
    #   @return [Array<Types::Row>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ExecuteQueryResponse < Struct.new(
      :column_descriptions,
      :rows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function request body.
    #
    # @!attribute [rw] required_properties
    #   The required properties of the function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The scope of the function.
    #   @return [String]
    #
    # @!attribute [rw] implemented_by
    #   The data connector.
    #   @return [Types::DataConnector]
    #
    class FunctionRequest < Struct.new(
      :required_properties,
      :scope,
      :implemented_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function response.
    #
    # @!attribute [rw] required_properties
    #   The required properties of the function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The scope of the function.
    #   @return [String]
    #
    # @!attribute [rw] implemented_by
    #   The data connector.
    #   @return [Types::DataConnector]
    #
    # @!attribute [rw] is_inherited
    #   Indicates whether this function is inherited.
    #   @return [Boolean]
    #
    class FunctionResponse < Struct.new(
      :required_properties,
      :scope,
      :implemented_by,
      :is_inherited)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    class GetComponentTypeRequest < Struct.new(
      :workspace_id,
      :component_type_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    # @!attribute [rw] is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyDefinitionResponse>]
    #
    # @!attribute [rw] extends_from
    #   The name of the parent component type that this component type
    #   extends.
    #   @return [Array<String>]
    #
    # @!attribute [rw] functions
    #   An object that maps strings to the functions in the component type.
    #   Each string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::FunctionResponse>]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the component type was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the component was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The ARN of the component type.
    #   @return [String]
    #
    # @!attribute [rw] is_abstract
    #   A Boolean value that specifies whether the component type is
    #   abstract.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_schema_initialized
    #   A Boolean value that specifies whether the component type has a
    #   schema initializer and that the schema initializer has run.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the component type.
    #   @return [Types::Status]
    #
    # @!attribute [rw] property_groups
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Hash<String,Types::PropertyGroupResponse>]
    #
    # @!attribute [rw] sync_source
    #   The syncSource of the SyncJob, if this entity was created by a
    #   SyncJob.
    #   @return [String]
    #
    # @!attribute [rw] component_type_name
    #   The component type name.
    #   @return [String]
    #
    class GetComponentTypeResponse < Struct.new(
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
      :component_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    class GetEntityRequest < Struct.new(
      :workspace_id,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the entity.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the entity.
    #   @return [Types::Status]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the entity.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   An object that maps strings to the components in the entity. Each
    #   string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::ComponentResponse>]
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the parent entity for this entity.
    #   @return [String]
    #
    # @!attribute [rw] has_child_entities
    #   A Boolean value that specifies whether the entity has associated
    #   child entities.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the entity was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] sync_source
    #   The syncSource of the sync job, if this entity was created by a sync
    #   job.
    #   @return [String]
    #
    class GetEntityResponse < Struct.new(
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
      :sync_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetPricingPlanRequest < Aws::EmptyStructure; end

    # @!attribute [rw] current_pricing_plan
    #   The chosen pricing plan for the current billing cycle.
    #   @return [Types::PricingPlan]
    #
    # @!attribute [rw] pending_pricing_plan
    #   The pending pricing plan.
    #   @return [Types::PricingPlan]
    #
    class GetPricingPlanResponse < Struct.new(
      :current_pricing_plan,
      :pending_pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] selected_properties
    #   A list of properties whose value histories the request retrieves.
    #   @return [Array<String>]
    #
    # @!attribute [rw] property_filters
    #   A list of objects that filter the property value history request.
    #   @return [Array<Types::PropertyFilter>]
    #
    # @!attribute [rw] start_date_time
    #   The date and time of the earliest property value to return.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time of the latest property value to return.
    #   @return [Time]
    #
    # @!attribute [rw] interpolation
    #   An object that specifies the interpolation type and the interval
    #   over which to interpolate data.
    #   @return [Types::InterpolationParameters]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    # @!attribute [rw] order_by_time
    #   The time direction to use in the result order.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The ISO8601 DateTime of the earliest property value to return.
    #
    #   For more information about the ISO8601 DateTime format, see the data
    #   type [PropertyValue][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The ISO8601 DateTime of the latest property value to return.
    #
    #   For more information about the ISO8601 DateTime format, see the data
    #   type [PropertyValue][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_PropertyValue.html
    #   @return [String]
    #
    class GetPropertyValueHistoryRequest < Struct.new(
      :workspace_id,
      :entity_id,
      :component_name,
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
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] property_values
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Array<Types::PropertyValueHistory>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class GetPropertyValueHistoryResponse < Struct.new(
      :property_values,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_name
    #   The name of the component whose property values the operation
    #   returns.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type whose property values the operation
    #   returns.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity whose property values the operation returns.
    #   @return [String]
    #
    # @!attribute [rw] selected_properties
    #   The properties whose values the operation returns.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace whose values the operation returns.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] property_group_name
    #   The property group name.
    #   @return [String]
    #
    # @!attribute [rw] tabular_conditions
    #   The tabular conditions.
    #   @return [Types::TabularConditions]
    #
    class GetPropertyValueRequest < Struct.new(
      :component_name,
      :component_type_id,
      :entity_id,
      :selected_properties,
      :workspace_id,
      :max_results,
      :next_token,
      :property_group_name,
      :tabular_conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] property_values
    #   An object that maps strings to the properties and latest property
    #   values in the response. Each string in the mapping must be unique to
    #   this object.
    #   @return [Hash<String,Types::PropertyLatestValue>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] tabular_property_values
    #   A table of property values.
    #   @return [Array<Array<Hash<String,Types::DataValue>>>]
    #
    class GetPropertyValueResponse < Struct.new(
      :property_values,
      :next_token,
      :tabular_property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    class GetSceneRequest < Struct.new(
      :workspace_id,
      :scene_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the scene.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the scene was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the scene was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the scene.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   A list of capabilities that the scene uses to render.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scene_metadata
    #   The response metadata.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] generated_scene_metadata
    #   The generated scene metadata.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   The SceneResponse error.
    #   @return [Types::SceneError]
    #
    class GetSceneResponse < Struct.new(
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
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_source
    #   The sync source.
    #
    #   <note markdown="1"> Currently the only supported syncSource is `SITEWISE `.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The workspace ID.
    #   @return [String]
    #
    class GetSyncJobRequest < Struct.new(
      :sync_source,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The sync job ARN.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the sync job.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   The sync soucre.
    #
    #   <note markdown="1"> Currently the only supported syncSource is `SITEWISE `.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sync_role
    #   The sync IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The SyncJob response status.
    #   @return [Types::SyncJobStatus]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The update date and time.
    #   @return [Time]
    #
    class GetSyncJobResponse < Struct.new(
      :arn,
      :workspace_id,
      :sync_source,
      :sync_role,
      :status,
      :creation_date_time,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class GetWorkspaceRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The ARN of the S3 bucket where resources associated with the
    #   workspace are stored.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the execution role associated with the workspace.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the workspace was last updated.
    #   @return [Time]
    #
    class GetWorkspaceResponse < Struct.new(
      :workspace_id,
      :arn,
      :description,
      :s3_location,
      :role,
      :creation_date_time,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies how to interpolate data in a list.
    #
    # @!attribute [rw] interpolation_type
    #   The interpolation type.
    #   @return [String]
    #
    # @!attribute [rw] interval_in_seconds
    #   The interpolation time interval in seconds.
    #   @return [Integer]
    #
    class InterpolationParameters < Struct.new(
      :interpolation_type,
      :interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda function.
    #
    # @!attribute [rw] arn
    #   The ARN of the Lambda function.
    #   @return [String]
    #
    class LambdaFunction < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters items in a list of component types.
    #
    # <note markdown="1"> Only one object is accepted as a valid input.
    #
    #  </note>
    #
    # @note ListComponentTypesFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] extends_from
    #   The component type that the component types in the list extend.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to which the component types in the list belong.
    #   @return [String]
    #
    # @!attribute [rw] is_abstract
    #   A Boolean value that specifies whether the component types in the
    #   list are abstract.
    #   @return [Boolean]
    #
    class ListComponentTypesFilter < Struct.new(
      :extends_from,
      :namespace,
      :is_abstract,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ExtendsFrom < ListComponentTypesFilter; end
      class Namespace < ListComponentTypesFilter; end
      class IsAbstract < ListComponentTypesFilter; end
      class Unknown < ListComponentTypesFilter; end
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of objects that filter the request.
    #   @return [Array<Types::ListComponentTypesFilter>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    class ListComponentTypesRequest < Struct.new(
      :workspace_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] component_type_summaries
    #   A list of objects that contain information about the component
    #   types.
    #   @return [Array<Types::ComponentTypeSummary>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to display.
    #   @return [Integer]
    #
    class ListComponentTypesResponse < Struct.new(
      :workspace_id,
      :component_type_summaries,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters items in a list of entities.
    #
    # @note ListEntitiesFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] parent_entity_id
    #   The parent of the entities in the list.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type in the entities in the list.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external-Id property of a component. The external-Id property is
    #   the primary key of an external storage system.
    #   @return [String]
    #
    class ListEntitiesFilter < Struct.new(
      :parent_entity_id,
      :component_type_id,
      :external_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ParentEntityId < ListEntitiesFilter; end
      class ComponentTypeId < ListEntitiesFilter; end
      class ExternalId < ListEntitiesFilter; end
      class Unknown < ListEntitiesFilter; end
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of objects that filter the request.
    #
    #   <note markdown="1"> Only one object is accepted as a valid input.
    #
    #    </note>
    #   @return [Array<Types::ListEntitiesFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListEntitiesRequest < Struct.new(
      :workspace_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_summaries
    #   A list of objects that contain information about the entities.
    #   @return [Array<Types::EntitySummary>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListEntitiesResponse < Struct.new(
      :entity_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scenes.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to display.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListScenesRequest < Struct.new(
      :workspace_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scene_summaries
    #   A list of objects that contain information about the scenes.
    #   @return [Array<Types::SceneSummary>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListScenesResponse < Struct.new(
      :scene_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the sync job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   50.
    #
    #   Valid Range: Minimum value of 0. Maximum value of 200.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListSyncJobsRequest < Struct.new(
      :workspace_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_job_summaries
    #   The listed SyncJob summaries.
    #   @return [Array<Types::SyncJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListSyncJobsResponse < Struct.new(
      :sync_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the sync job.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   The sync source.
    #
    #   <note markdown="1"> Currently the only supported syncSource is `SITEWISE `.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of objects that filter the request.
    #
    #   The following filter combinations are supported:
    #
    #   * Filter with state
    #
    #   * Filter with ResourceType and ResourceId
    #
    #   * Filter with ResourceType and ExternalId
    #   @return [Array<Types::SyncResourceFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   50.
    #
    #   Valid Range: Minimum value of 0. Maximum value of 200.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListSyncResourcesRequest < Struct.new(
      :workspace_id,
      :sync_source,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_resources
    #   The sync resources.
    #   @return [Array<Types::SyncResourceSummary>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListSyncResourcesResponse < Struct.new(
      :sync_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Metadata that you can use to manage a resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 250.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListWorkspacesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_summaries
    #   A list of objects that contain information about the workspaces.
    #   @return [Array<Types::WorkspaceSummary>]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    class ListWorkspacesResponse < Struct.new(
      :workspace_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter criteria that orders the return output. It can be sorted in
    # ascending or descending order.
    #
    # @!attribute [rw] order
    #   The set order that filters results.
    #   @return [String]
    #
    # @!attribute [rw] property_name
    #   The property name.
    #   @return [String]
    #
    class OrderBy < Struct.new(
      :order,
      :property_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parent entity update request.
    #
    # @!attribute [rw] update_type
    #   The type of the update.
    #   @return [String]
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the parent entity.
    #   @return [String]
    #
    class ParentEntityUpdateRequest < Struct.new(
      :update_type,
      :parent_entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pricing plan.
    #
    # @!attribute [rw] billable_entity_count
    #   The billable entity count.
    #   @return [Integer]
    #
    # @!attribute [rw] bundle_information
    #   The pricing plan's bundle information.
    #   @return [Types::BundleInformation]
    #
    # @!attribute [rw] effective_date_time
    #   The effective date and time of the pricing plan.
    #   @return [Time]
    #
    # @!attribute [rw] pricing_mode
    #   The pricing mode.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The set date and time for updating a pricing plan.
    #   @return [Time]
    #
    # @!attribute [rw] update_reason
    #   The update reason for changing a pricing plan.
    #   @return [String]
    #
    class PricingPlan < Struct.new(
      :billable_entity_count,
      :bundle_information,
      :effective_date_time,
      :pricing_mode,
      :update_date_time,
      :update_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that sets information about a property.
    #
    # @!attribute [rw] data_type
    #   An object that contains information about the data type.
    #   @return [Types::DataType]
    #
    # @!attribute [rw] is_required_in_entity
    #   A Boolean value that specifies whether the property is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_external_id
    #   A Boolean value that specifies whether the property ID comes from an
    #   external data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_stored_externally
    #   A Boolean value that specifies whether the property is stored
    #   externally.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_time_series
    #   A Boolean value that specifies whether the property consists of time
    #   series data.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   An object that contains the default value.
    #   @return [Types::DataValue]
    #
    # @!attribute [rw] configuration
    #   A mapping that specifies configuration information about the
    #   property. Use this field to specify information that you read from
    #   and write to an external source.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] display_name
    #   A friendly name for the property.
    #   @return [String]
    #
    class PropertyDefinitionRequest < Struct.new(
      :data_type,
      :is_required_in_entity,
      :is_external_id,
      :is_stored_externally,
      :is_time_series,
      :default_value,
      :configuration,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains response data from a property definition
    # request.
    #
    # @!attribute [rw] data_type
    #   An object that contains information about the data type.
    #   @return [Types::DataType]
    #
    # @!attribute [rw] is_time_series
    #   A Boolean value that specifies whether the property consists of time
    #   series data.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_required_in_entity
    #   A Boolean value that specifies whether the property is required in
    #   an entity.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_external_id
    #   A Boolean value that specifies whether the property ID comes from an
    #   external data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_stored_externally
    #   A Boolean value that specifies whether the property is stored
    #   externally.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_imported
    #   A Boolean value that specifies whether the property definition is
    #   imported from an external data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_final
    #   A Boolean value that specifies whether the property definition can
    #   be updated.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_inherited
    #   A Boolean value that specifies whether the property definition is
    #   inherited from a parent entity.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   An object that contains the default value.
    #   @return [Types::DataValue]
    #
    # @!attribute [rw] configuration
    #   A mapping that specifies configuration information about the
    #   property.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] display_name
    #   A friendly name for the property.
    #   @return [String]
    #
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
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters items returned by a property request.
    #
    # @!attribute [rw] property_name
    #   The property name associated with this property filter.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator associated with this property filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with this property filter.
    #   @return [Types::DataValue]
    #
    class PropertyFilter < Struct.new(
      :property_name,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_type
    #   The group type.
    #   @return [String]
    #
    # @!attribute [rw] property_names
    #   The names of properties.
    #   @return [Array<String>]
    #
    class PropertyGroupRequest < Struct.new(
      :group_type,
      :property_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The property group response
    #
    # @!attribute [rw] group_type
    #   The group types.
    #   @return [String]
    #
    # @!attribute [rw] property_names
    #   The names of properties.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_inherited
    #   A Boolean value that specifies whether the property group is
    #   inherited from a parent entity
    #   @return [Boolean]
    #
    class PropertyGroupResponse < Struct.new(
      :group_type,
      :property_names,
      :is_inherited)
      SENSITIVE = []
      include Aws::Structure
    end

    # The latest value of the property.
    #
    # @!attribute [rw] property_reference
    #   An object that specifies information about a property.
    #   @return [Types::EntityPropertyReference]
    #
    # @!attribute [rw] property_value
    #   The value of the property.
    #   @return [Types::DataValue]
    #
    class PropertyLatestValue < Struct.new(
      :property_reference,
      :property_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that sets information about a property.
    #
    # @!attribute [rw] definition
    #   An object that specifies information about a property.
    #   @return [Types::PropertyDefinitionRequest]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [Types::DataValue]
    #
    # @!attribute [rw] update_type
    #   The update type of the update property request.
    #   @return [String]
    #
    class PropertyRequest < Struct.new(
      :definition,
      :value,
      :update_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a property response.
    #
    # @!attribute [rw] definition
    #   An object that specifies information about a property.
    #   @return [Types::PropertyDefinitionResponse]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [Types::DataValue]
    #
    class PropertyResponse < Struct.new(
      :definition,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a value for a time series
    # property.
    #
    # @!attribute [rw] timestamp
    #   The timestamp of a value for a time series property.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   An object that specifies a value for a time series property.
    #   @return [Types::DataValue]
    #
    # @!attribute [rw] time
    #   ISO8601 DateTime of a value for a time series property.
    #
    #   The time for when the property value was recorded in ISO 8601
    #   format: *YYYY-MM-DDThh:mm:ss\[.SSSSSSSSS\]\[Z/±HH:mm\]*.
    #
    #   * *\[YYYY\]*: year
    #
    #   * *\[MM\]*: month
    #
    #   * *\[DD\]*: day
    #
    #   * *\[hh\]*: hour
    #
    #   * *\[mm\]*: minute
    #
    #   * *\[ss\]*: seconds
    #
    #   * *\[.SSSSSSSSS\]*: additional precision, where precedence is
    #     maintained. For example: \[.573123\] is equal to 573123000
    #     nanoseconds.
    #
    #   * *Z*: default timezone UTC
    #
    #   * *± HH:mm*: time zone offset in Hours and Minutes.
    #
    #   *Required sub-fields*: YYYY-MM-DDThh:mm:ss and \[Z/±HH:mm\]
    #   @return [String]
    #
    class PropertyValue < Struct.new(
      :timestamp,
      :value,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies information about time series property
    # values. This object is used and consumed by the
    # [BatchPutPropertyValues][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_BatchPutPropertyValues.html
    #
    # @!attribute [rw] entity_property_reference
    #   An object that contains information about the entity that has the
    #   property.
    #   @return [Types::EntityPropertyReference]
    #
    # @!attribute [rw] property_values
    #   A list of objects that specify time series property values.
    #   @return [Array<Types::PropertyValue>]
    #
    class PropertyValueEntry < Struct.new(
      :entity_property_reference,
      :property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The history of values for a time series property.
    #
    # @!attribute [rw] entity_property_reference
    #   An object that uniquely identifies an entity property.
    #   @return [Types::EntityPropertyReference]
    #
    # @!attribute [rw] values
    #   A list of objects that contain information about the values in the
    #   history of a time series property.
    #   @return [Array<Types::PropertyValue>]
    #
    class PropertyValueHistory < Struct.new(
      :entity_property_reference,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query timeout exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class QueryTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies a relationship with another component type.
    #
    # @!attribute [rw] target_component_type_id
    #   The ID of the target component type associated with this
    #   relationship.
    #   @return [String]
    #
    # @!attribute [rw] relationship_type
    #   The type of the relationship.
    #   @return [String]
    #
    class Relationship < Struct.new(
      :target_component_type_id,
      :relationship_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value that associates a component and an entity.
    #
    # @!attribute [rw] target_entity_id
    #   The ID of the target entity associated with this relationship value.
    #   @return [String]
    #
    # @!attribute [rw] target_component_name
    #   The name of the target component associated with the relationship
    #   value.
    #   @return [String]
    #
    class RelationshipValue < Struct.new(
      :target_entity_id,
      :target_component_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource wasn't found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single row in the query results.
    #
    # @!attribute [rw] row_data
    #   The data in a row of query results.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    class Row < Struct.new(
      :row_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scene error.
    #
    # @!attribute [rw] code
    #   The SceneError code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The SceneError message.
    #   @return [String]
    #
    class SceneError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a scene.
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the scene.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the scene was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the scene was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The scene description.
    #   @return [String]
    #
    class SceneSummary < Struct.new(
      :scene_id,
      :content_location,
      :arn,
      :creation_date_time,
      :update_date_time,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the status of an entity, component,
    # component type, or workspace.
    #
    # @!attribute [rw] state
    #   The current state of the entity, component, component type, or
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message.
    #   @return [Types::ErrorDetails]
    #
    class Status < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SyncJob status.
    #
    # @!attribute [rw] state
    #   The SyncJob status state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The SyncJob error.
    #   @return [Types::ErrorDetails]
    #
    class SyncJobStatus < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SyncJob summary.
    #
    # @!attribute [rw] arn
    #   The SyncJob summary ARN.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the sync job.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   The sync source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The SyncJob summaries status.
    #   @return [Types::SyncJobStatus]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The update date and time.
    #   @return [Time]
    #
    class SyncJobSummary < Struct.new(
      :arn,
      :workspace_id,
      :sync_source,
      :status,
      :creation_date_time,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sync resource filter.
    #
    # @note SyncResourceFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] state
    #   The sync resource filter's state.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The sync resource filter resource type
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The sync resource filter resource ID.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID.
    #   @return [String]
    #
    class SyncResourceFilter < Struct.new(
      :state,
      :resource_type,
      :resource_id,
      :external_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class State < SyncResourceFilter; end
      class ResourceType < SyncResourceFilter; end
      class ResourceId < SyncResourceFilter; end
      class ExternalId < SyncResourceFilter; end
      class Unknown < SyncResourceFilter; end
    end

    # The sync resource status.
    #
    # @!attribute [rw] state
    #   The sync resource status state.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The status error.
    #   @return [Types::ErrorDetails]
    #
    class SyncResourceStatus < Struct.new(
      :state,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sync resource summary.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The sync resource summary status.
    #   @return [Types::SyncResourceStatus]
    #
    # @!attribute [rw] update_date_time
    #   The update date and time.
    #   @return [Time]
    #
    class SyncResourceSummary < Struct.new(
      :resource_type,
      :external_id,
      :resource_id,
      :status,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tabular conditions.
    #
    # @!attribute [rw] order_by
    #   Filter criteria that orders the output. It can be sorted in
    #   ascending or descending order.
    #   @return [Array<Types::OrderBy>]
    #
    # @!attribute [rw] property_filters
    #   You can filter the request using various logical operators and a
    #   key-value format. For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #   @return [Array<Types::PropertyFilter>]
    #
    class TabularConditions < Struct.new(
      :order_by,
      :property_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata to add to this resource.
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of tags exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag key names to remove from the resource. You don't
    #   specify the value. Both the key and its associated value are
    #   removed.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyDefinitionRequest>]
    #
    # @!attribute [rw] extends_from
    #   Specifies the component type that this component type extends.
    #   @return [Array<String>]
    #
    # @!attribute [rw] functions
    #   An object that maps strings to the functions in the component type.
    #   Each string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::FunctionRequest>]
    #
    # @!attribute [rw] property_groups
    #   The property groups.
    #   @return [Hash<String,Types::PropertyGroupRequest>]
    #
    # @!attribute [rw] component_type_name
    #   The component type name.
    #   @return [String]
    #
    class UpdateComponentTypeRequest < Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :property_groups,
      :component_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the component type.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the component type.
    #   @return [String]
    #
    class UpdateComponentTypeResponse < Struct.new(
      :workspace_id,
      :arn,
      :component_type_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the entity.
    #   @return [String]
    #
    # @!attribute [rw] component_updates
    #   An object that maps strings to the component updates in the request.
    #   Each string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::ComponentUpdateRequest>]
    #
    # @!attribute [rw] parent_entity_update
    #   An object that describes the update request for a parent entity.
    #   @return [Types::ParentEntityUpdateRequest]
    #
    class UpdateEntityRequest < Struct.new(
      :workspace_id,
      :entity_id,
      :entity_name,
      :description,
      :component_updates,
      :parent_entity_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_date_time
    #   The date and time when the entity was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of the entity update.
    #   @return [String]
    #
    class UpdateEntityResponse < Struct.new(
      :update_date_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pricing_mode
    #   The pricing mode.
    #   @return [String]
    #
    # @!attribute [rw] bundle_names
    #   The bundle names.
    #   @return [Array<String>]
    #
    class UpdatePricingPlanRequest < Struct.new(
      :pricing_mode,
      :bundle_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] current_pricing_plan
    #   Update the current pricing plan.
    #   @return [Types::PricingPlan]
    #
    # @!attribute [rw] pending_pricing_plan
    #   Update the pending pricing plan.
    #   @return [Types::PricingPlan]
    #
    class UpdatePricingPlanResponse < Struct.new(
      :current_pricing_plan,
      :pending_pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of this scene.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   A list of capabilities that the scene uses to render.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scene_metadata
    #   The scene metadata.
    #   @return [Hash<String,String>]
    #
    class UpdateSceneRequest < Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :description,
      :capabilities,
      :scene_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_date_time
    #   The date and time when the scene was last updated.
    #   @return [Time]
    #
    class UpdateSceneResponse < Struct.new(
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the execution role associated with the workspace.
    #   @return [String]
    #
    class UpdateWorkspaceRequest < Struct.new(
      :workspace_id,
      :description,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_date_time
    #   The date and time of the current update.
    #   @return [Time]
    #
    class UpdateWorkspaceResponse < Struct.new(
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failed
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about a workspace.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the workspace was last updated.
    #   @return [Time]
    #
    class WorkspaceSummary < Struct.new(
      :workspace_id,
      :arn,
      :description,
      :creation_date_time,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
