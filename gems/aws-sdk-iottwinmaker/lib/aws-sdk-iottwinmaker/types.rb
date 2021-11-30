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
    # @!attribute [rw] entry
    #   An object that contains information about errors returned by the
    #   `BatchPutProperty` action.
    #   @return [Types::PropertyValueEntry]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    class BatchPutPropertyError < Struct.new(
      :entry,
      :error_code,
      :error_message)
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

    # @note When making an API call, you may pass BatchPutPropertyValuesRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             entity_property_reference: { # required
    #               component_name: "Name",
    #               entity_id: "EntityId",
    #               external_id_property: {
    #                 "String" => "String",
    #               },
    #               property_name: "Name", # required
    #             },
    #             property_values: [
    #               {
    #                 timestamp: Time.now, # required
    #                 value: { # required
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   expression: "Expression",
    #                   integer_value: 1,
    #                   list_value: [
    #                     {
    #                       # recursive DataValue
    #                     },
    #                   ],
    #                   long_value: 1,
    #                   map_value: {
    #                     "String" => {
    #                       # recursive DataValue
    #                     },
    #                   },
    #                   relationship_value: {
    #                     target_component_name: "Name",
    #                     target_entity_id: "EntityId",
    #                   },
    #                   string_value: "String",
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] entries
    #   An object that maps strings to the property value entries to set.
    #   Each string in the mapping must be unique to this object.
    #   @return [Array<Types::PropertyValueEntry>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the properties to set.
    #   @return [String]
    #
    class BatchPutPropertyValuesRequest < Struct.new(
      :entries,
      :workspace_id)
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

    # An object that sets information about a component type create or
    # update request.
    #
    # @note When making an API call, you may pass ComponentRequest
    #   data as a hash:
    #
    #       {
    #         component_type_id: "ComponentTypeId",
    #         description: "Description",
    #         properties: {
    #           "Name" => {
    #             definition: {
    #               configuration: {
    #                 "Name" => "Value",
    #               },
    #               data_type: {
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     expression: "Expression",
    #                     integer_value: 1,
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     long_value: 1,
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       },
    #                     },
    #                     relationship_value: {
    #                       target_component_name: "Name",
    #                       target_entity_id: "EntityId",
    #                     },
    #                     string_value: "String",
    #                   },
    #                 ],
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 relationship: {
    #                   relationship_type: "String",
    #                   target_component_type_id: "ComponentTypeId",
    #                 },
    #                 type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #                 unit_of_measure: "String",
    #               },
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 expression: "Expression",
    #                 integer_value: 1,
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   },
    #                 ],
    #                 long_value: 1,
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   },
    #                 },
    #                 relationship_value: {
    #                   target_component_name: "Name",
    #                   target_entity_id: "EntityId",
    #                 },
    #                 string_value: "String",
    #               },
    #               is_external_id: false,
    #               is_required_in_entity: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #             },
    #             update_type: "UPDATE", # accepts UPDATE, DELETE
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component request.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   An object that maps strings to the properties to set in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyRequest>]
    #
    class ComponentRequest < Struct.new(
      :component_type_id,
      :description,
      :properties)
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
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] defined_in
    #   The name of the property definition set in the request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   An object that maps strings to the properties to set in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyResponse>]
    #
    # @!attribute [rw] status
    #   The status of the component type.
    #   @return [Types::Status]
    #
    class ComponentResponse < Struct.new(
      :component_name,
      :component_type_id,
      :defined_in,
      :description,
      :properties,
      :status)
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
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the component type.
    #   @return [Types::Status]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the component type was last updated.
    #   @return [Time]
    #
    class ComponentTypeSummary < Struct.new(
      :arn,
      :component_type_id,
      :creation_date_time,
      :description,
      :status,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The component update request.
    #
    # @note When making an API call, you may pass ComponentUpdateRequest
    #   data as a hash:
    #
    #       {
    #         component_type_id: "ComponentTypeId",
    #         description: "Description",
    #         property_updates: {
    #           "Name" => {
    #             definition: {
    #               configuration: {
    #                 "Name" => "Value",
    #               },
    #               data_type: {
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     expression: "Expression",
    #                     integer_value: 1,
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     long_value: 1,
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       },
    #                     },
    #                     relationship_value: {
    #                       target_component_name: "Name",
    #                       target_entity_id: "EntityId",
    #                     },
    #                     string_value: "String",
    #                   },
    #                 ],
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 relationship: {
    #                   relationship_type: "String",
    #                   target_component_type_id: "ComponentTypeId",
    #                 },
    #                 type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #                 unit_of_measure: "String",
    #               },
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 expression: "Expression",
    #                 integer_value: 1,
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   },
    #                 ],
    #                 long_value: 1,
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   },
    #                 },
    #                 relationship_value: {
    #                   target_component_name: "Name",
    #                   target_entity_id: "EntityId",
    #                 },
    #                 string_value: "String",
    #               },
    #               is_external_id: false,
    #               is_required_in_entity: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #             },
    #             update_type: "UPDATE", # accepts UPDATE, DELETE
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         },
    #         update_type: "CREATE", # accepts CREATE, UPDATE, DELETE
    #       }
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
    #
    # @!attribute [rw] property_updates
    #   An object that maps strings to the properties to set in the
    #   component type update. Each string in the mapping must be unique to
    #   this object.
    #   @return [Hash<String,Types::PropertyRequest>]
    #
    # @!attribute [rw] update_type
    #   The update type of the component update request.
    #   @return [String]
    #
    class ComponentUpdateRequest < Struct.new(
      :component_type_id,
      :description,
      :property_updates,
      :update_type)
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

    # @note When making an API call, you may pass CreateComponentTypeRequest
    #   data as a hash:
    #
    #       {
    #         component_type_id: "ComponentTypeId", # required
    #         description: "Description",
    #         extends_from: ["ComponentTypeId"],
    #         functions: {
    #           "Name" => {
    #             implemented_by: {
    #               is_native: false,
    #               lambda: {
    #                 arn: "LambdaArn", # required
    #               },
    #             },
    #             required_properties: ["Name"],
    #             scope: "ENTITY", # accepts ENTITY, WORKSPACE
    #           },
    #         },
    #         is_singleton: false,
    #         property_definitions: {
    #           "Name" => {
    #             configuration: {
    #               "Name" => "Value",
    #             },
    #             data_type: {
    #               allowed_values: [
    #                 {
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   expression: "Expression",
    #                   integer_value: 1,
    #                   list_value: {
    #                     # recursive DataValueList
    #                   },
    #                   long_value: 1,
    #                   map_value: {
    #                     "String" => {
    #                       # recursive DataValue
    #                     },
    #                   },
    #                   relationship_value: {
    #                     target_component_name: "Name",
    #                     target_entity_id: "EntityId",
    #                   },
    #                   string_value: "String",
    #                 },
    #               ],
    #               nested_type: {
    #                 # recursive DataType
    #               },
    #               relationship: {
    #                 relationship_type: "String",
    #                 target_component_type_id: "ComponentTypeId",
    #               },
    #               type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #               unit_of_measure: "String",
    #             },
    #             default_value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #             is_external_id: false,
    #             is_required_in_entity: false,
    #             is_stored_externally: false,
    #             is_time_series: false,
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
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
    # @!attribute [rw] is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyDefinitionRequest>]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the component type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    class CreateComponentTypeRequest < Struct.new(
      :component_type_id,
      :description,
      :extends_from,
      :functions,
      :is_singleton,
      :property_definitions,
      :tags,
      :workspace_id)
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

    # @note When making an API call, you may pass CreateEntityRequest
    #   data as a hash:
    #
    #       {
    #         components: {
    #           "Name" => {
    #             component_type_id: "ComponentTypeId",
    #             description: "Description",
    #             properties: {
    #               "Name" => {
    #                 definition: {
    #                   configuration: {
    #                     "Name" => "Value",
    #                   },
    #                   data_type: {
    #                     allowed_values: [
    #                       {
    #                         boolean_value: false,
    #                         double_value: 1.0,
    #                         expression: "Expression",
    #                         integer_value: 1,
    #                         list_value: {
    #                           # recursive DataValueList
    #                         },
    #                         long_value: 1,
    #                         map_value: {
    #                           "String" => {
    #                             # recursive DataValue
    #                           },
    #                         },
    #                         relationship_value: {
    #                           target_component_name: "Name",
    #                           target_entity_id: "EntityId",
    #                         },
    #                         string_value: "String",
    #                       },
    #                     ],
    #                     nested_type: {
    #                       # recursive DataType
    #                     },
    #                     relationship: {
    #                       relationship_type: "String",
    #                       target_component_type_id: "ComponentTypeId",
    #                     },
    #                     type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #                     unit_of_measure: "String",
    #                   },
    #                   default_value: {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     expression: "Expression",
    #                     integer_value: 1,
    #                     list_value: [
    #                       {
    #                         # recursive DataValue
    #                       },
    #                     ],
    #                     long_value: 1,
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       },
    #                     },
    #                     relationship_value: {
    #                       target_component_name: "Name",
    #                       target_entity_id: "EntityId",
    #                     },
    #                     string_value: "String",
    #                   },
    #                   is_external_id: false,
    #                   is_required_in_entity: false,
    #                   is_stored_externally: false,
    #                   is_time_series: false,
    #                 },
    #                 update_type: "UPDATE", # accepts UPDATE, DELETE
    #                 value: {
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   expression: "Expression",
    #                   integer_value: 1,
    #                   list_value: [
    #                     {
    #                       # recursive DataValue
    #                     },
    #                   ],
    #                   long_value: 1,
    #                   map_value: {
    #                     "String" => {
    #                       # recursive DataValue
    #                     },
    #                   },
    #                   relationship_value: {
    #                     target_component_name: "Name",
    #                     target_entity_id: "EntityId",
    #                   },
    #                   string_value: "String",
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         description: "Description",
    #         entity_id: "EntityId",
    #         entity_name: "EntityName", # required
    #         parent_entity_id: "ParentEntityId",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] components
    #   An object that maps strings to the components in the entity. Each
    #   string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::ComponentRequest>]
    #
    # @!attribute [rw] description
    #   The description of the entity.
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
    # @!attribute [rw] parent_entity_id
    #   The ID of the entity's parent entity.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the entity.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the entity.
    #   @return [String]
    #
    class CreateEntityRequest < Struct.new(
      :components,
      :description,
      :entity_id,
      :entity_name,
      :parent_entity_id,
      :tags,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the entity.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the entity.
    #   @return [String]
    #
    class CreateEntityResponse < Struct.new(
      :arn,
      :creation_date_time,
      :entity_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSceneRequest
    #   data as a hash:
    #
    #       {
    #         capabilities: ["SceneCapability"],
    #         content_location: "S3Url", # required
    #         description: "Description",
    #         scene_id: "Id", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] capabilities
    #   A list of capabilities that the scene uses to render itself.
    #   @return [Array<String>]
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
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the scene.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    class CreateSceneRequest < Struct.new(
      :capabilities,
      :content_location,
      :description,
      :scene_id,
      :tags,
      :workspace_id)
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

    # @note When making an API call, you may pass CreateWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         role: "RoleArn", # required
    #         s3_location: "S3Location", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the execution role associated with the workspace.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The ARN of the S3 bucket where resources associated with the
    #   workspace are stored.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage the workspace
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class CreateWorkspaceRequest < Struct.new(
      :description,
      :role,
      :s3_location,
      :tags,
      :workspace_id)
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
    # @note When making an API call, you may pass DataConnector
    #   data as a hash:
    #
    #       {
    #         is_native: false,
    #         lambda: {
    #           arn: "LambdaArn", # required
    #         },
    #       }
    #
    # @!attribute [rw] is_native
    #   A Boolean value that specifies whether the data connector is native
    #   to TwinMaker.
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda
    #   The Lambda function associated with this data connector.
    #   @return [Types::LambdaFunction]
    #
    class DataConnector < Struct.new(
      :is_native,
      :lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies the data type of a property.
    #
    # @note When making an API call, you may pass DataType
    #   data as a hash:
    #
    #       {
    #         allowed_values: [
    #           {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             expression: "Expression",
    #             integer_value: 1,
    #             list_value: {
    #               # recursive DataValueList
    #             },
    #             long_value: 1,
    #             map_value: {
    #               "String" => {
    #                 # recursive DataValue
    #               },
    #             },
    #             relationship_value: {
    #               target_component_name: "Name",
    #               target_entity_id: "EntityId",
    #             },
    #             string_value: "String",
    #           },
    #         ],
    #         nested_type: {
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           ],
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           relationship: {
    #             relationship_type: "String",
    #             target_component_type_id: "ComponentTypeId",
    #           },
    #           type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #           unit_of_measure: "String",
    #         },
    #         relationship: {
    #           relationship_type: "String",
    #           target_component_type_id: "ComponentTypeId",
    #         },
    #         type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #         unit_of_measure: "String",
    #       }
    #
    # @!attribute [rw] allowed_values
    #   The allowed values for this data type.
    #   @return [Array<Types::DataValue>]
    #
    # @!attribute [rw] nested_type
    #   The nested type in the data type.
    #   @return [Types::DataType]
    #
    # @!attribute [rw] relationship
    #   A relationship that associates a component with another component.
    #   @return [Types::Relationship]
    #
    # @!attribute [rw] type
    #   The underlying type of the data type.
    #   @return [String]
    #
    # @!attribute [rw] unit_of_measure
    #   The unit of measure used in this data type.
    #   @return [String]
    #
    class DataType < Struct.new(
      :allowed_values,
      :nested_type,
      :relationship,
      :type,
      :unit_of_measure)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies a value for a property.
    #
    # @note When making an API call, you may pass DataValue
    #   data as a hash:
    #
    #       {
    #         boolean_value: false,
    #         double_value: 1.0,
    #         expression: "Expression",
    #         integer_value: 1,
    #         list_value: [
    #           {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             expression: "Expression",
    #             integer_value: 1,
    #             list_value: {
    #               # recursive DataValueList
    #             },
    #             long_value: 1,
    #             map_value: {
    #               "String" => {
    #                 # recursive DataValue
    #               },
    #             },
    #             relationship_value: {
    #               target_component_name: "Name",
    #               target_entity_id: "EntityId",
    #             },
    #             string_value: "String",
    #           },
    #         ],
    #         long_value: 1,
    #         map_value: {
    #           "String" => {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             expression: "Expression",
    #             integer_value: 1,
    #             list_value: [
    #               {
    #                 # recursive DataValue
    #               },
    #             ],
    #             long_value: 1,
    #             map_value: {
    #               # recursive DataValueMap
    #             },
    #             relationship_value: {
    #               target_component_name: "Name",
    #               target_entity_id: "EntityId",
    #             },
    #             string_value: "String",
    #           },
    #         },
    #         relationship_value: {
    #           target_component_name: "Name",
    #           target_entity_id: "EntityId",
    #         },
    #         string_value: "String",
    #       }
    #
    # @!attribute [rw] boolean_value
    #   A Boolean value.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   A double value.
    #   @return [Float]
    #
    # @!attribute [rw] expression
    #   An expression that produces the value.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   An integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] list_value
    #   A list of multiple values.
    #   @return [Array<Types::DataValue>]
    #
    # @!attribute [rw] long_value
    #   A long value.
    #   @return [Integer]
    #
    # @!attribute [rw] map_value
    #   An object that maps strings to multiple `DataValue` objects.
    #   @return [Hash<String,Types::DataValue>]
    #
    # @!attribute [rw] relationship_value
    #   A value that relates a component to another component.
    #   @return [Types::RelationshipValue]
    #
    # @!attribute [rw] string_value
    #   A string value.
    #   @return [String]
    #
    class DataValue < Struct.new(
      :boolean_value,
      :double_value,
      :expression,
      :integer_value,
      :list_value,
      :long_value,
      :map_value,
      :relationship_value,
      :string_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteComponentTypeRequest
    #   data as a hash:
    #
    #       {
    #         component_type_id: "ComponentTypeId", # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type to delete.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    class DeleteComponentTypeRequest < Struct.new(
      :component_type_id,
      :workspace_id)
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

    # @note When making an API call, you may pass DeleteEntityRequest
    #   data as a hash:
    #
    #       {
    #         entity_id: "EntityId", # required
    #         is_recursive: false,
    #         workspace_id: "Id", # required
    #       }
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
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the entity to delete.
    #   @return [String]
    #
    class DeleteEntityRequest < Struct.new(
      :entity_id,
      :is_recursive,
      :workspace_id)
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

    # @note When making an API call, you may pass DeleteSceneRequest
    #   data as a hash:
    #
    #       {
    #         scene_id: "Id", # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene to delete.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class DeleteSceneRequest < Struct.new(
      :scene_id,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSceneResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "Id", # required
    #       }
    #
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
    # @note When making an API call, you may pass EntityPropertyReference
    #   data as a hash:
    #
    #       {
    #         component_name: "Name",
    #         entity_id: "EntityId",
    #         external_id_property: {
    #           "String" => "String",
    #         },
    #         property_name: "Name", # required
    #       }
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] external_id_property
    #   A mapping of external IDs to property names. External IDs uniquely
    #   identify properties from external data stores.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] property_name
    #   The name of the property.
    #   @return [String]
    #
    class EntityPropertyReference < Struct.new(
      :component_name,
      :entity_id,
      :external_id_property,
      :property_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an entity.
    #
    # @!attribute [rw] arn
    #   The ARN of the entity.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the entity.
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
    # @!attribute [rw] has_child_entities
    #   A Boolean value that specifies whether the entity has child entities
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the parent entity.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the entity.
    #   @return [Types::Status]
    #
    # @!attribute [rw] update_date_time
    #   The last date and time when the entity was updated.
    #   @return [Time]
    #
    class EntitySummary < Struct.new(
      :arn,
      :creation_date_time,
      :description,
      :entity_id,
      :entity_name,
      :has_child_entities,
      :parent_entity_id,
      :status,
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

    # The function request body.
    #
    # @note When making an API call, you may pass FunctionRequest
    #   data as a hash:
    #
    #       {
    #         implemented_by: {
    #           is_native: false,
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           },
    #         },
    #         required_properties: ["Name"],
    #         scope: "ENTITY", # accepts ENTITY, WORKSPACE
    #       }
    #
    # @!attribute [rw] implemented_by
    #   The data connector.
    #   @return [Types::DataConnector]
    #
    # @!attribute [rw] required_properties
    #   The required properties of the function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The scope of the function.
    #   @return [String]
    #
    class FunctionRequest < Struct.new(
      :implemented_by,
      :required_properties,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function response.
    #
    # @!attribute [rw] implemented_by
    #   The data connector.
    #   @return [Types::DataConnector]
    #
    # @!attribute [rw] is_inherited
    #   Indicates whether this function is inherited.
    #   @return [Boolean]
    #
    # @!attribute [rw] required_properties
    #   The required properties of the function.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The scope of the function.
    #   @return [String]
    #
    class FunctionResponse < Struct.new(
      :implemented_by,
      :is_inherited,
      :required_properties,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComponentTypeRequest
    #   data as a hash:
    #
    #       {
    #         component_type_id: "ComponentTypeId", # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    class GetComponentTypeRequest < Struct.new(
      :component_type_id,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
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
    # @!attribute [rw] is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyDefinitionResponse>]
    #
    # @!attribute [rw] status
    #   The current status of the component type.
    #   @return [Types::Status]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the component was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    class GetComponentTypeResponse < Struct.new(
      :arn,
      :component_type_id,
      :creation_date_time,
      :description,
      :extends_from,
      :functions,
      :is_abstract,
      :is_schema_initialized,
      :is_singleton,
      :property_definitions,
      :status,
      :update_date_time,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEntityRequest
    #   data as a hash:
    #
    #       {
    #         entity_id: "EntityId", # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class GetEntityRequest < Struct.new(
      :entity_id,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the entity.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   An object that maps strings to the components in the entity. Each
    #   string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::ComponentResponse>]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the entity.
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
    # @!attribute [rw] has_child_entities
    #   A Boolean value that specifies whether the entity has associated
    #   child entities.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the parent entity for this entity.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the entity.
    #   @return [Types::Status]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the entity was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class GetEntityResponse < Struct.new(
      :arn,
      :components,
      :creation_date_time,
      :description,
      :entity_id,
      :entity_name,
      :has_child_entities,
      :parent_entity_id,
      :status,
      :update_date_time,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPropertyValueHistoryRequest
    #   data as a hash:
    #
    #       {
    #         component_name: "Name",
    #         component_type_id: "ComponentTypeId",
    #         end_date_time: Time.now, # required
    #         entity_id: "EntityId",
    #         interpolation: {
    #           interpolation_type: "LINEAR", # accepts LINEAR
    #           interval_in_seconds: 1,
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #         order_by_time: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         property_filters: [
    #           {
    #             operator: "String",
    #             property_name: "String",
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         ],
    #         selected_properties: ["String"], # required
    #         start_date_time: Time.now, # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   The date and time of the latest property value to return.
    #   @return [Time]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @!attribute [rw] interpolation
    #   An object that specifies the interpolation type and the interval
    #   over which to interpolate data.
    #   @return [Types::InterpolationParameters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] order_by_time
    #   The time direction to use in the result order.
    #   @return [String]
    #
    # @!attribute [rw] property_filters
    #   A list of objects that filter the property value history request.
    #   @return [Array<Types::PropertyFilter>]
    #
    # @!attribute [rw] selected_properties
    #   A list of properties whose value histories the request retrieves.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_date_time
    #   The date and time of the earliest property value to return.
    #   @return [Time]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class GetPropertyValueHistoryRequest < Struct.new(
      :component_name,
      :component_type_id,
      :end_date_time,
      :entity_id,
      :interpolation,
      :max_results,
      :next_token,
      :order_by_time,
      :property_filters,
      :selected_properties,
      :start_date_time,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] property_values
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Array<Types::PropertyValueHistory>]
    #
    class GetPropertyValueHistoryResponse < Struct.new(
      :next_token,
      :property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPropertyValueRequest
    #   data as a hash:
    #
    #       {
    #         component_name: "Name",
    #         component_type_id: "ComponentTypeId",
    #         entity_id: "EntityId",
    #         selected_properties: ["String"], # required
    #         workspace_id: "Id", # required
    #       }
    #
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
    class GetPropertyValueRequest < Struct.new(
      :component_name,
      :component_type_id,
      :entity_id,
      :selected_properties,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] property_values
    #   An object that maps strings to the properties and latest property
    #   values in the response. Each string in the mapping must be unique to
    #   this object.
    #   @return [Hash<String,Types::PropertyLatestValue>]
    #
    class GetPropertyValueResponse < Struct.new(
      :property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSceneRequest
    #   data as a hash:
    #
    #       {
    #         scene_id: "Id", # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    class GetSceneRequest < Struct.new(
      :scene_id,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the scene.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   A list of capabilities that the scene uses to render.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the scene was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the scene.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the scene was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    class GetSceneResponse < Struct.new(
      :arn,
      :capabilities,
      :content_location,
      :creation_date_time,
      :description,
      :scene_id,
      :update_date_time,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "IdOrArn", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class GetWorkspaceRequest < Struct.new(
      :workspace_id)
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
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the execution role associated with the workspace.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The ARN of the S3 bucket where resources associated with the
    #   workspace are stored.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the workspace was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class GetWorkspaceResponse < Struct.new(
      :arn,
      :creation_date_time,
      :description,
      :role,
      :s3_location,
      :update_date_time,
      :workspace_id)
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
    # @note When making an API call, you may pass InterpolationParameters
    #   data as a hash:
    #
    #       {
    #         interpolation_type: "LINEAR", # accepts LINEAR
    #         interval_in_seconds: 1,
    #       }
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
    # @note When making an API call, you may pass LambdaFunction
    #   data as a hash:
    #
    #       {
    #         arn: "LambdaArn", # required
    #       }
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
    # @note ListComponentTypesFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] extends_from
    #   The component type that the component types in the list extend.
    #   @return [String]
    #
    # @!attribute [rw] is_abstract
    #   A Boolean value that specifies whether the component types in the
    #   list are abstract.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace
    #   The namespace to which the component types in the list belong.
    #   @return [String]
    #
    class ListComponentTypesFilter < Struct.new(
      :extends_from,
      :is_abstract,
      :namespace,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ExtendsFrom < ListComponentTypesFilter; end
      class IsAbstract < ListComponentTypesFilter; end
      class Namespace < ListComponentTypesFilter; end
      class Unknown < ListComponentTypesFilter; end
    end

    # @note When making an API call, you may pass ListComponentTypesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             extends_from: "ComponentTypeId",
    #             is_abstract: false,
    #             namespace: "String",
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] filters
    #   A list of objects that filter the request.
    #   @return [Array<Types::ListComponentTypesFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class ListComponentTypesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_type_summaries
    #   A list of objects that contain information about the component
    #   types.
    #   @return [Array<Types::ComponentTypeSummary>]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to display.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class ListComponentTypesResponse < Struct.new(
      :component_type_summaries,
      :max_results,
      :next_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters items in a list of entities.
    #
    # @note ListEntitiesFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type in the entities in the list.
    #   @return [String]
    #
    # @!attribute [rw] parent_entity_id
    #   The parent of the entities in the list.
    #   @return [String]
    #
    class ListEntitiesFilter < Struct.new(
      :component_type_id,
      :parent_entity_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ComponentTypeId < ListEntitiesFilter; end
      class ParentEntityId < ListEntitiesFilter; end
      class Unknown < ListEntitiesFilter; end
    end

    # @note When making an API call, you may pass ListEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             component_type_id: "ComponentTypeId",
    #             parent_entity_id: "ParentEntityId",
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] filters
    #   A list of objects that filter the request.
    #   @return [Array<Types::ListEntitiesFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class ListEntitiesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :workspace_id)
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

    # @note When making an API call, you may pass ListScenesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to display.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scenes.
    #   @return [String]
    #
    class ListScenesRequest < Struct.new(
      :max_results,
      :next_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] scene_summaries
    #   A list of objects that contain information about the scenes.
    #   @return [Array<Types::SceneSummary>]
    #
    class ListScenesResponse < Struct.new(
      :next_token,
      :scene_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         resource_arn: "TwinMakerArn", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that you can use to manage a resource.
    #   @return [Hash<String,String>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to display.
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

    # @!attribute [rw] next_token
    #   The string that specifies the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] workspace_summaries
    #   A list of objects that contain information about the workspaces.
    #   @return [Array<Types::WorkspaceSummary>]
    #
    class ListWorkspacesResponse < Struct.new(
      :next_token,
      :workspace_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parent entity update request.
    #
    # @note When making an API call, you may pass ParentEntityUpdateRequest
    #   data as a hash:
    #
    #       {
    #         parent_entity_id: "ParentEntityId",
    #         update_type: "UPDATE", # required, accepts UPDATE, DELETE
    #       }
    #
    # @!attribute [rw] parent_entity_id
    #   The ID of the parent entity.
    #   @return [String]
    #
    # @!attribute [rw] update_type
    #   The type of the update.
    #   @return [String]
    #
    class ParentEntityUpdateRequest < Struct.new(
      :parent_entity_id,
      :update_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that sets information about a property.
    #
    # @note When making an API call, you may pass PropertyDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         configuration: {
    #           "Name" => "Value",
    #         },
    #         data_type: {
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           ],
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           relationship: {
    #             relationship_type: "String",
    #             target_component_type_id: "ComponentTypeId",
    #           },
    #           type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #           unit_of_measure: "String",
    #         },
    #         default_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #         is_external_id: false,
    #         is_required_in_entity: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #       }
    #
    # @!attribute [rw] configuration
    #   A mapping that specifies configuration information about the
    #   property. Use this field to specify information that you read from
    #   and write to an external source.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data_type
    #   An object that contains information about the data type.
    #   @return [Types::DataType]
    #
    # @!attribute [rw] default_value
    #   An object that contains the default value.
    #   @return [Types::DataValue]
    #
    # @!attribute [rw] is_external_id
    #   A Boolean value that specifies whether the property ID comes from an
    #   external data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_required_in_entity
    #   A Boolean value that specifies whether the property is required.
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
    class PropertyDefinitionRequest < Struct.new(
      :configuration,
      :data_type,
      :default_value,
      :is_external_id,
      :is_required_in_entity,
      :is_stored_externally,
      :is_time_series)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains response data from a property definition
    # request.
    #
    # @!attribute [rw] configuration
    #   A mapping that specifies configuration information about the
    #   property.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] data_type
    #   An object that contains information about the data type.
    #   @return [Types::DataType]
    #
    # @!attribute [rw] default_value
    #   An object that contains the default value.
    #   @return [Types::DataValue]
    #
    # @!attribute [rw] is_external_id
    #   A Boolean value that specifies whether the property ID comes from an
    #   external data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_final
    #   A Boolean value that specifies whether the property definition can
    #   be updated.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_imported
    #   A Boolean value that specifies whether the property definition is
    #   imported from an external data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_inherited
    #   A Boolean value that specifies whether the property definition is
    #   inherited from a parent entity.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_required_in_entity
    #   A Boolean value that specifies whether the property is required in
    #   an entity.
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
    class PropertyDefinitionResponse < Struct.new(
      :configuration,
      :data_type,
      :default_value,
      :is_external_id,
      :is_final,
      :is_imported,
      :is_inherited,
      :is_required_in_entity,
      :is_stored_externally,
      :is_time_series)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that filters items returned by a property request.
    #
    # @note When making an API call, you may pass PropertyFilter
    #   data as a hash:
    #
    #       {
    #         operator: "String",
    #         property_name: "String",
    #         value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #       }
    #
    # @!attribute [rw] operator
    #   The operator associated with this property filter.
    #   @return [String]
    #
    # @!attribute [rw] property_name
    #   The property name associated with this property filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with this property filter.
    #   @return [Types::DataValue]
    #
    class PropertyFilter < Struct.new(
      :operator,
      :property_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The latest value of the property.
    #
    # @!attribute [rw] property_reference
    #   An object that specifies information about a property.&gt;
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
    # @note When making an API call, you may pass PropertyRequest
    #   data as a hash:
    #
    #       {
    #         definition: {
    #           configuration: {
    #             "Name" => "Value",
    #           },
    #           data_type: {
    #             allowed_values: [
    #               {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 expression: "Expression",
    #                 integer_value: 1,
    #                 list_value: {
    #                   # recursive DataValueList
    #                 },
    #                 long_value: 1,
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   },
    #                 },
    #                 relationship_value: {
    #                   target_component_name: "Name",
    #                   target_entity_id: "EntityId",
    #                 },
    #                 string_value: "String",
    #               },
    #             ],
    #             nested_type: {
    #               # recursive DataType
    #             },
    #             relationship: {
    #               relationship_type: "String",
    #               target_component_type_id: "ComponentTypeId",
    #             },
    #             type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #             unit_of_measure: "String",
    #           },
    #           default_value: {
    #             boolean_value: false,
    #             double_value: 1.0,
    #             expression: "Expression",
    #             integer_value: 1,
    #             list_value: [
    #               {
    #                 # recursive DataValue
    #               },
    #             ],
    #             long_value: 1,
    #             map_value: {
    #               "String" => {
    #                 # recursive DataValue
    #               },
    #             },
    #             relationship_value: {
    #               target_component_name: "Name",
    #               target_entity_id: "EntityId",
    #             },
    #             string_value: "String",
    #           },
    #           is_external_id: false,
    #           is_required_in_entity: false,
    #           is_stored_externally: false,
    #           is_time_series: false,
    #         },
    #         update_type: "UPDATE", # accepts UPDATE, DELETE
    #         value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #       }
    #
    # @!attribute [rw] definition
    #   An object that specifies information about a property.
    #   @return [Types::PropertyDefinitionRequest]
    #
    # @!attribute [rw] update_type
    #   The update type of the update property request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [Types::DataValue]
    #
    class PropertyRequest < Struct.new(
      :definition,
      :update_type,
      :value)
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
    # @note When making an API call, you may pass PropertyValue
    #   data as a hash:
    #
    #       {
    #         timestamp: Time.now, # required
    #         value: { # required
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #       }
    #
    # @!attribute [rw] timestamp
    #   The timestamp of a value for a time series property.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   An object that specifies a value for a time series property.
    #   @return [Types::DataValue]
    #
    class PropertyValue < Struct.new(
      :timestamp,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies information about time series property
    # values.
    #
    # @note When making an API call, you may pass PropertyValueEntry
    #   data as a hash:
    #
    #       {
    #         entity_property_reference: { # required
    #           component_name: "Name",
    #           entity_id: "EntityId",
    #           external_id_property: {
    #             "String" => "String",
    #           },
    #           property_name: "Name", # required
    #         },
    #         property_values: [
    #           {
    #             timestamp: Time.now, # required
    #             value: { # required
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         ],
    #       }
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

    # An object that specifies a relationship with another component type.
    #
    # @note When making an API call, you may pass Relationship
    #   data as a hash:
    #
    #       {
    #         relationship_type: "String",
    #         target_component_type_id: "ComponentTypeId",
    #       }
    #
    # @!attribute [rw] relationship_type
    #   The type of the relationship.
    #   @return [String]
    #
    # @!attribute [rw] target_component_type_id
    #   The ID of the target component type associated with this
    #   relationship.
    #   @return [String]
    #
    class Relationship < Struct.new(
      :relationship_type,
      :target_component_type_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value that associates a component and an entity.
    #
    # @note When making an API call, you may pass RelationshipValue
    #   data as a hash:
    #
    #       {
    #         target_component_name: "Name",
    #         target_entity_id: "EntityId",
    #       }
    #
    # @!attribute [rw] target_component_name
    #   The name of the target component associated with the relationship
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] target_entity_id
    #   The ID of the target entity associated with this relationship value.
    #   @return [String]
    #
    class RelationshipValue < Struct.new(
      :target_component_name,
      :target_entity_id)
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

    # An object that contains information about a scene.
    #
    # @!attribute [rw] arn
    #   The ARN of the scene.
    #   @return [String]
    #
    # @!attribute [rw] content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the scene was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The scene description.
    #   @return [String]
    #
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the scene was last updated.
    #   @return [Time]
    #
    class SceneSummary < Struct.new(
      :arn,
      :content_location,
      :creation_date_time,
      :description,
      :scene_id,
      :update_date_time)
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
    # @!attribute [rw] error
    #   The error message.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] state
    #   The current state of the entity, component, component type, or
    #   workspace.
    #   @return [String]
    #
    class Status < Struct.new(
      :error,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TwinMakerArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TwinMakerArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateComponentTypeRequest
    #   data as a hash:
    #
    #       {
    #         component_type_id: "ComponentTypeId", # required
    #         description: "Description",
    #         extends_from: ["ComponentTypeId"],
    #         functions: {
    #           "Name" => {
    #             implemented_by: {
    #               is_native: false,
    #               lambda: {
    #                 arn: "LambdaArn", # required
    #               },
    #             },
    #             required_properties: ["Name"],
    #             scope: "ENTITY", # accepts ENTITY, WORKSPACE
    #           },
    #         },
    #         is_singleton: false,
    #         property_definitions: {
    #           "Name" => {
    #             configuration: {
    #               "Name" => "Value",
    #             },
    #             data_type: {
    #               allowed_values: [
    #                 {
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   expression: "Expression",
    #                   integer_value: 1,
    #                   list_value: {
    #                     # recursive DataValueList
    #                   },
    #                   long_value: 1,
    #                   map_value: {
    #                     "String" => {
    #                       # recursive DataValue
    #                     },
    #                   },
    #                   relationship_value: {
    #                     target_component_name: "Name",
    #                     target_entity_id: "EntityId",
    #                   },
    #                   string_value: "String",
    #                 },
    #               ],
    #               nested_type: {
    #                 # recursive DataType
    #               },
    #               relationship: {
    #                 relationship_type: "String",
    #                 target_component_type_id: "ComponentTypeId",
    #               },
    #               type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #               unit_of_measure: "String",
    #             },
    #             default_value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #             is_external_id: false,
    #             is_required_in_entity: false,
    #             is_stored_externally: false,
    #             is_time_series: false,
    #           },
    #         },
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] component_type_id
    #   The ID of the component type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component type.
    #   @return [String]
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
    # @!attribute [rw] is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #   @return [Boolean]
    #
    # @!attribute [rw] property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #   @return [Hash<String,Types::PropertyDefinitionRequest>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    class UpdateComponentTypeRequest < Struct.new(
      :component_type_id,
      :description,
      :extends_from,
      :functions,
      :is_singleton,
      :property_definitions,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the component type.
    #   @return [String]
    #
    class UpdateComponentTypeResponse < Struct.new(
      :arn,
      :component_type_id,
      :state,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEntityRequest
    #   data as a hash:
    #
    #       {
    #         component_updates: {
    #           "Name" => {
    #             component_type_id: "ComponentTypeId",
    #             description: "Description",
    #             property_updates: {
    #               "Name" => {
    #                 definition: {
    #                   configuration: {
    #                     "Name" => "Value",
    #                   },
    #                   data_type: {
    #                     allowed_values: [
    #                       {
    #                         boolean_value: false,
    #                         double_value: 1.0,
    #                         expression: "Expression",
    #                         integer_value: 1,
    #                         list_value: {
    #                           # recursive DataValueList
    #                         },
    #                         long_value: 1,
    #                         map_value: {
    #                           "String" => {
    #                             # recursive DataValue
    #                           },
    #                         },
    #                         relationship_value: {
    #                           target_component_name: "Name",
    #                           target_entity_id: "EntityId",
    #                         },
    #                         string_value: "String",
    #                       },
    #                     ],
    #                     nested_type: {
    #                       # recursive DataType
    #                     },
    #                     relationship: {
    #                       relationship_type: "String",
    #                       target_component_type_id: "ComponentTypeId",
    #                     },
    #                     type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #                     unit_of_measure: "String",
    #                   },
    #                   default_value: {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     expression: "Expression",
    #                     integer_value: 1,
    #                     list_value: [
    #                       {
    #                         # recursive DataValue
    #                       },
    #                     ],
    #                     long_value: 1,
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       },
    #                     },
    #                     relationship_value: {
    #                       target_component_name: "Name",
    #                       target_entity_id: "EntityId",
    #                     },
    #                     string_value: "String",
    #                   },
    #                   is_external_id: false,
    #                   is_required_in_entity: false,
    #                   is_stored_externally: false,
    #                   is_time_series: false,
    #                 },
    #                 update_type: "UPDATE", # accepts UPDATE, DELETE
    #                 value: {
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   expression: "Expression",
    #                   integer_value: 1,
    #                   list_value: [
    #                     {
    #                       # recursive DataValue
    #                     },
    #                   ],
    #                   long_value: 1,
    #                   map_value: {
    #                     "String" => {
    #                       # recursive DataValue
    #                     },
    #                   },
    #                   relationship_value: {
    #                     target_component_name: "Name",
    #                     target_entity_id: "EntityId",
    #                   },
    #                   string_value: "String",
    #                 },
    #               },
    #             },
    #             update_type: "CREATE", # accepts CREATE, UPDATE, DELETE
    #           },
    #         },
    #         description: "Description",
    #         entity_id: "EntityId", # required
    #         entity_name: "EntityName",
    #         parent_entity_update: {
    #           parent_entity_id: "ParentEntityId",
    #           update_type: "UPDATE", # required, accepts UPDATE, DELETE
    #         },
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] component_updates
    #   An object that maps strings to the component updates in the request.
    #   Each string in the mapping must be unique to this object.
    #   @return [Hash<String,Types::ComponentUpdateRequest>]
    #
    # @!attribute [rw] description
    #   The description of the entity.
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
    # @!attribute [rw] parent_entity_update
    #   An object that describes the update request for a parent entity.
    #   @return [Types::ParentEntityUpdateRequest]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the entity.
    #   @return [String]
    #
    class UpdateEntityRequest < Struct.new(
      :component_updates,
      :description,
      :entity_id,
      :entity_name,
      :parent_entity_update,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The current state of the entity update.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the entity was last updated.
    #   @return [Time]
    #
    class UpdateEntityResponse < Struct.new(
      :state,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSceneRequest
    #   data as a hash:
    #
    #       {
    #         capabilities: ["SceneCapability"],
    #         content_location: "S3Url",
    #         description: "Description",
    #         scene_id: "Id", # required
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] capabilities
    #   A list of capabilities that the scene uses to render.
    #   @return [Array<String>]
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
    # @!attribute [rw] scene_id
    #   The ID of the scene.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that contains the scene.
    #   @return [String]
    #
    class UpdateSceneRequest < Struct.new(
      :capabilities,
      :content_location,
      :description,
      :scene_id,
      :workspace_id)
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

    # @note When making an API call, you may pass UpdateWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         role: "RoleArn",
    #         workspace_id: "Id", # required
    #       }
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the execution role associated with the workspace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class UpdateWorkspaceRequest < Struct.new(
      :description,
      :role,
      :workspace_id)
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
    # @!attribute [rw] arn
    #   The ARN of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The date and time when the workspace was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    class WorkspaceSummary < Struct.new(
      :arn,
      :creation_date_time,
      :description,
      :update_date_time,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
