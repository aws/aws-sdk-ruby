# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AmplifyUIBuilder
  module Types

    # Represents the event action configuration for an element of a
    # `Component` or `ComponentChild`. Use for the workflow feature in
    # Amplify Studio that allows you to bind events and actions to
    # components. `ActionParameters` defines the action that is performed
    # when an event occurs on the component.
    #
    # @!attribute [rw] type
    #   The type of navigation action. Valid values are `url` and `anchor`.
    #   This value is required for a navigation action.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] url
    #   The URL to the location to open. Specify this value for a navigation
    #   action.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] anchor
    #   The HTML anchor link to the location to open. Specify this value for
    #   a navigation action.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] target
    #   The element within the same component to modify when the action
    #   occurs.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] global
    #   Specifies whether the user should be signed out globally. Specify
    #   this value for an auth sign out action.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] model
    #   The name of the data model. Use when the action performs an
    #   operation on an Amplify DataStore model.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the component that the `ActionParameters` apply to.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] fields
    #   A dictionary of key-value pairs mapping Amplify Studio properties to
    #   fields in a data model. Use when the action performs an operation on
    #   an Amplify DataStore model.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] state
    #   A key-value pair that specifies the state property name and its
    #   initial value.
    #   @return [Types::MutationActionSetStateParameter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ActionParameters AWS API Documentation
    #
    class ActionParameters < Struct.new(
      :type,
      :url,
      :anchor,
      :target,
      :global,
      :model,
      :id,
      :fields,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the feature flags that you can specify for a code generation
    # job.
    #
    # @!attribute [rw] is_relationship_supported
    #   Specifes whether a code generation job supports data relationships.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_non_model_supported
    #   Specifies whether a code generation job supports non models.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenFeatureFlags AWS API Documentation
    #
    class CodegenFeatureFlags < Struct.new(
      :is_relationship_supported,
      :is_non_model_supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the enums in a generic data schema.
    #
    # @!attribute [rw] values
    #   The list of enum values in the generic data schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenGenericDataEnum AWS API Documentation
    #
    class CodegenGenericDataEnum < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a field in a generic data schema.
    #
    # @!attribute [rw] data_type
    #   The data type for the generic data field.
    #   @return [String]
    #
    # @!attribute [rw] data_type_value
    #   The value of the data type for the generic data field.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Specifies whether the generic data field is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_only
    #   Specifies whether the generic data field is read-only.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_array
    #   Specifies whether the generic data field is an array.
    #   @return [Boolean]
    #
    # @!attribute [rw] relationship
    #   The relationship of the generic data schema.
    #   @return [Types::CodegenGenericDataRelationshipType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenGenericDataField AWS API Documentation
    #
    class CodegenGenericDataField < Struct.new(
      :data_type,
      :data_type_value,
      :required,
      :read_only,
      :is_array,
      :relationship)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a model in a generic data schema.
    #
    # @!attribute [rw] fields
    #   The fields in the generic data model.
    #   @return [Hash<String,Types::CodegenGenericDataField>]
    #
    # @!attribute [rw] is_join_table
    #   Specifies whether the generic data model is a join table.
    #   @return [Boolean]
    #
    # @!attribute [rw] primary_keys
    #   The primary keys of the generic data model.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenGenericDataModel AWS API Documentation
    #
    class CodegenGenericDataModel < Struct.new(
      :fields,
      :is_join_table,
      :primary_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a non-model in a generic data schema.
    #
    # @!attribute [rw] fields
    #   The fields in a generic data schema non model.
    #   @return [Hash<String,Types::CodegenGenericDataField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenGenericDataNonModel AWS API Documentation
    #
    class CodegenGenericDataNonModel < Struct.new(
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the relationship between generic data models.
    #
    # @!attribute [rw] type
    #   The data relationship type.
    #   @return [String]
    #
    # @!attribute [rw] related_model_name
    #   The name of the related model in the data relationship.
    #   @return [String]
    #
    # @!attribute [rw] related_model_fields
    #   The related model fields in the data relationship.
    #   @return [Array<String>]
    #
    # @!attribute [rw] can_unlink_associated_model
    #   Specifies whether the relationship can unlink the associated model.
    #   @return [Boolean]
    #
    # @!attribute [rw] related_join_field_name
    #   The name of the related join field in the data relationship.
    #   @return [String]
    #
    # @!attribute [rw] related_join_table_name
    #   The name of the related join table in the data relationship.
    #   @return [String]
    #
    # @!attribute [rw] belongs_to_field_on_related_model
    #   The value of the `belongsTo` field on the related data model.
    #   @return [String]
    #
    # @!attribute [rw] associated_fields
    #   The associated fields of the data relationship.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_has_many_index
    #   Specifies whether the `@index` directive is supported for a
    #   `hasMany` data relationship.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenGenericDataRelationshipType AWS API Documentation
    #
    class CodegenGenericDataRelationshipType < Struct.new(
      :type,
      :related_model_name,
      :related_model_fields,
      :can_unlink_associated_model,
      :related_join_field_name,
      :related_join_table_name,
      :belongs_to_field_on_related_model,
      :associated_fields,
      :is_has_many_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for a code generation job that is
    # associated with an Amplify app.
    #
    # @!attribute [rw] id
    #   The unique ID for the code generation job.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The ID of the Amplify app associated with the code generation job.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment associated with the code
    #   generation job.
    #   @return [String]
    #
    # @!attribute [rw] render_config
    #   Describes the configuration information for rendering the UI
    #   component associated the code generation job.
    #   @return [Types::CodegenJobRenderConfig]
    #
    # @!attribute [rw] generic_data_schema
    #   Describes the data schema for a code generation job.
    #   @return [Types::CodegenJobGenericDataSchema]
    #
    # @!attribute [rw] auto_generate_forms
    #   Specifies whether to autogenerate forms in the code generation job.
    #   @return [Boolean]
    #
    # @!attribute [rw] features
    #   Describes the feature flags that you can specify for a code
    #   generation job.
    #   @return [Types::CodegenFeatureFlags]
    #
    # @!attribute [rw] status
    #   The status of the code generation job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The customized status message for the code generation job.
    #   @return [String]
    #
    # @!attribute [rw] asset
    #   The `CodegenJobAsset` to use for the code generation job.
    #   @return [Types::CodegenJobAsset]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the code generation
    #   job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The time that the code generation job was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time that the code generation job was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenJob AWS API Documentation
    #
    class CodegenJob < Struct.new(
      :id,
      :app_id,
      :environment_name,
      :render_config,
      :generic_data_schema,
      :auto_generate_forms,
      :features,
      :status,
      :status_message,
      :asset,
      :tags,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asset for a code generation job.
    #
    # @!attribute [rw] download_url
    #   The URL to use to access the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenJobAsset AWS API Documentation
    #
    class CodegenJobAsset < Struct.new(
      :download_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data schema for a code generation job.
    #
    # @!attribute [rw] data_source_type
    #   The type of the data source for the schema. Currently, the only
    #   valid value is an Amplify `DataStore`.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   The name of a `CodegenGenericDataModel`.
    #   @return [Hash<String,Types::CodegenGenericDataModel>]
    #
    # @!attribute [rw] enums
    #   The name of a `CodegenGenericDataEnum`.
    #   @return [Hash<String,Types::CodegenGenericDataEnum>]
    #
    # @!attribute [rw] non_models
    #   The name of a `CodegenGenericDataNonModel`.
    #   @return [Hash<String,Types::CodegenGenericDataNonModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenJobGenericDataSchema AWS API Documentation
    #
    class CodegenJobGenericDataSchema < Struct.new(
      :data_source_type,
      :models,
      :enums,
      :non_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration information for rendering the UI component
    # associated the code generation job.
    #
    # @note CodegenJobRenderConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CodegenJobRenderConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CodegenJobRenderConfig corresponding to the set member.
    #
    # @!attribute [rw] react
    #   The name of the `ReactStartCodegenJobData` object.
    #   @return [Types::ReactStartCodegenJobData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenJobRenderConfig AWS API Documentation
    #
    class CodegenJobRenderConfig < Struct.new(
      :react,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class React < CodegenJobRenderConfig; end
      class Unknown < CodegenJobRenderConfig; end
    end

    # A summary of the basic information about the code generation job.
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the code generation
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment associated with the code
    #   generation job.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID for the code generation job summary.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the code generation job summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time that the code generation job summary was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CodegenJobSummary AWS API Documentation
    #
    class CodegenJobSummary < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration settings for a user interface (UI) element
    # for an Amplify app. A component is configured as a primary,
    # stand-alone UI element. Use `ComponentChild` to configure an instance
    # of a `Component`. A `ComponentChild` instance inherits the
    # configuration of the main `Component`.
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the component.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the component in its original source system, such
    #   as Figma.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of the component. This can be an Amplify custom UI
    #   component or another custom component.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Describes the component's properties. You can't specify `tags` as
    #   a valid property for `properties`.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] children
    #   A list of the component's `ComponentChild` instances.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] variants
    #   A list of the component's variants. A variant is a unique style
    #   configuration of a main component.
    #   @return [Array<Types::ComponentVariant>]
    #
    # @!attribute [rw] overrides
    #   Describes the component's properties that can be overriden in a
    #   customized instance of the component. You can't specify `tags` as a
    #   valid property for `overrides`.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] binding_properties
    #   The information to connect a component's properties to data at
    #   runtime. You can't specify `tags` as a valid property for
    #   `bindingProperties`.
    #   @return [Hash<String,Types::ComponentBindingPropertiesValue>]
    #
    # @!attribute [rw] collection_properties
    #   The data binding configuration for the component's properties. Use
    #   this for a collection component. You can't specify `tags` as a
    #   valid property for `collectionProperties`.
    #   @return [Hash<String,Types::ComponentDataConfiguration>]
    #
    # @!attribute [rw] created_at
    #   The time that the component was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time that the component was modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] events
    #   Describes the events that can be raised on the component. Use for
    #   the workflow feature in Amplify Studio that allows you to bind
    #   events and actions to components.
    #   @return [Hash<String,Types::ComponentEvent>]
    #
    # @!attribute [rw] schema_version
    #   The schema version of the component when it was imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Component AWS API Documentation
    #
    class Component < Struct.new(
      :app_id,
      :environment_name,
      :source_id,
      :id,
      :name,
      :component_type,
      :properties,
      :children,
      :variants,
      :overrides,
      :binding_properties,
      :collection_properties,
      :created_at,
      :modified_at,
      :tags,
      :events,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a component at runtime.
    # You can use `ComponentBindingPropertiesValue` to add exposed
    # properties to a component to allow different values to be entered when
    # a component is reused in different places in an app.
    #
    # @!attribute [rw] type
    #   The property type.
    #   @return [String]
    #
    # @!attribute [rw] binding_properties
    #   Describes the properties to customize with data at runtime.
    #   @return [Types::ComponentBindingPropertiesValueProperties]
    #
    # @!attribute [rw] default_value
    #   The default value of the property.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentBindingPropertiesValue AWS API Documentation
    #
    class ComponentBindingPropertiesValue < Struct.new(
      :type,
      :binding_properties,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a specific property
    # using data stored in Amazon Web Services. For Amazon Web Services
    # connected properties, you can bind a property to data stored in an
    # Amazon S3 bucket, an Amplify DataStore model or an authenticated user
    # attribute.
    #
    # @!attribute [rw] model
    #   An Amplify DataStore model.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to bind the data to.
    #   @return [String]
    #
    # @!attribute [rw] predicates
    #   A list of predicates for binding a component's properties to data.
    #   @return [Array<Types::Predicate>]
    #
    # @!attribute [rw] user_attribute
    #   An authenticated user attribute.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   An Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The storage key for an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value to assign to the property.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   The name of a component slot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentBindingPropertiesValueProperties AWS API Documentation
    #
    class ComponentBindingPropertiesValueProperties < Struct.new(
      :model,
      :field,
      :predicates,
      :user_attribute,
      :bucket,
      :key,
      :default_value,
      :slot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A nested UI configuration within a parent `Component`.
    #
    # @!attribute [rw] component_type
    #   The type of the child component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the child component.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Describes the properties of the child component. You can't specify
    #   `tags` as a valid property for `properties`.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] children
    #   The list of `ComponentChild` instances for this component.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] events
    #   Describes the events that can be raised on the child component. Use
    #   for the workflow feature in Amplify Studio that allows you to bind
    #   events and actions to components.
    #   @return [Hash<String,Types::ComponentEvent>]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the child component in its original source system,
    #   such as Figma.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentChild AWS API Documentation
    #
    class ComponentChild < Struct.new(
      :component_type,
      :name,
      :properties,
      :children,
      :events,
      :source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a conditional expression to set a component property. Use
    # `ComponentConditionProperty` to set a property to different values
    # conditionally, based on the value of another property.
    #
    # @!attribute [rw] property
    #   The name of the conditional property.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The name of a field. Specify this when the property is a data model.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use to perform the evaluation, such as `eq` to
    #   represent equals.
    #   @return [String]
    #
    # @!attribute [rw] operand
    #   The value of the property to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] then
    #   The value to assign to the property if the condition is met.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] else
    #   The value to assign to the property if the condition is not met.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] operand_type
    #   The type of the property to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentConditionProperty AWS API Documentation
    #
    class ComponentConditionProperty < Struct.new(
      :property,
      :field,
      :operator,
      :operand,
      :then,
      :else,
      :operand_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for binding a component's properties to
    # data.
    #
    # @!attribute [rw] model
    #   The name of the data model to use to bind data to a component.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Describes how to sort the component's properties.
    #   @return [Array<Types::SortProperty>]
    #
    # @!attribute [rw] predicate
    #   Represents the conditional logic to use when binding data to a
    #   component. Use this property to retrieve only a subset of the data
    #   in a collection.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] identifiers
    #   A list of IDs to use to bind data to a component. Use this property
    #   to bind specifically chosen data, rather than data retrieved from a
    #   query.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentDataConfiguration AWS API Documentation
    #
    class ComponentDataConfiguration < Struct.new(
      :model,
      :sort,
      :predicate,
      :identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of an event. You can bind an event and a
    # corresponding action to a `Component` or a `ComponentChild`. A button
    # click is an example of an event.
    #
    # @!attribute [rw] action
    #   The action to perform when a specific event is raised.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Describes information about the action.
    #   @return [Types::ActionParameters]
    #
    # @!attribute [rw] binding_event
    #   Binds an event to an action on a component. When you specify a
    #   `bindingEvent`, the event is called when the action is performed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentEvent AWS API Documentation
    #
    class ComponentEvent < Struct.new(
      :action,
      :parameters,
      :binding_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for all of a component's properties. Use
    # `ComponentProperty` to specify the values to render or bind by
    # default.
    #
    # @!attribute [rw] value
    #   The value to assign to the component property.
    #   @return [String]
    #
    # @!attribute [rw] binding_properties
    #   The information to bind the component property to data at runtime.
    #   @return [Types::ComponentPropertyBindingProperties]
    #
    # @!attribute [rw] collection_binding_properties
    #   The information to bind the component property to data at runtime.
    #   Use this for collection components.
    #   @return [Types::ComponentPropertyBindingProperties]
    #
    # @!attribute [rw] default_value
    #   The default value to assign to the component property.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The data model to use to assign a value to the component property.
    #   @return [String]
    #
    # @!attribute [rw] bindings
    #   The information to bind the component property to form data.
    #   @return [Hash<String,Types::FormBindingElement>]
    #
    # @!attribute [rw] event
    #   An event that occurs in your app. Use this for workflow data
    #   binding.
    #   @return [String]
    #
    # @!attribute [rw] user_attribute
    #   An authenticated user attribute to use to assign a value to the
    #   component property.
    #   @return [String]
    #
    # @!attribute [rw] concat
    #   A list of component properties to concatenate to create the value to
    #   assign to this component property.
    #   @return [Array<Types::ComponentProperty>]
    #
    # @!attribute [rw] condition
    #   The conditional expression to use to assign a value to the component
    #   property.
    #   @return [Types::ComponentConditionProperty]
    #
    # @!attribute [rw] configured
    #   Specifies whether the user configured the property in Amplify Studio
    #   after importing it.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The component type.
    #   @return [String]
    #
    # @!attribute [rw] imported_value
    #   The default value assigned to the property when the component is
    #   imported into an app.
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component that is affected by an event.
    #   @return [String]
    #
    # @!attribute [rw] property
    #   The name of the component's property that is affected by an event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentProperty AWS API Documentation
    #
    class ComponentProperty < Struct.new(
      :value,
      :binding_properties,
      :collection_binding_properties,
      :default_value,
      :model,
      :bindings,
      :event,
      :user_attribute,
      :concat,
      :condition,
      :configured,
      :type,
      :imported_value,
      :component_name,
      :property)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a component property to a binding property. This enables
    # exposed properties on the top level component to propagate data to the
    # component's property values.
    #
    # @!attribute [rw] property
    #   The component property to bind to the data field.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The data field to bind the property to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentPropertyBindingProperties AWS API Documentation
    #
    class ComponentPropertyBindingProperties < Struct.new(
      :property,
      :field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a component. This is a read-only data type that
    # is returned by `ListComponents`.
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the component.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The component type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :component_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the style configuration of a unique variation of a main
    # component.
    #
    # @!attribute [rw] variant_values
    #   The combination of variants that comprise this variant. You can't
    #   specify `tags` as a valid property for `variantValues`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] overrides
    #   The properties of the component variant that can be overriden when
    #   customizing an instance of the component. You can't specify `tags`
    #   as a valid property for `overrides`.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentVariant AWS API Documentation
    #
    class ComponentVariant < Struct.new(
      :variant_values,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents all of the information that is required to create a
    # component.
    #
    # @!attribute [rw] name
    #   The name of the component
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the component in its original source system, such
    #   as Figma.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The component type. This can be an Amplify custom UI component or
    #   another custom component.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Describes the component's properties.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] children
    #   A list of child components that are instances of the main component.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] variants
    #   A list of the unique variants of this component.
    #   @return [Array<Types::ComponentVariant>]
    #
    # @!attribute [rw] overrides
    #   Describes the component properties that can be overriden to
    #   customize an instance of the component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] binding_properties
    #   The data binding information for the component's properties.
    #   @return [Hash<String,Types::ComponentBindingPropertiesValue>]
    #
    # @!attribute [rw] collection_properties
    #   The data binding configuration for customizing a component's
    #   properties. Use this for a collection component.
    #   @return [Hash<String,Types::ComponentDataConfiguration>]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the component data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] events
    #   The event configuration for the component. Use for the workflow
    #   feature in Amplify Studio that allows you to bind events and actions
    #   to components.
    #   @return [Hash<String,Types::ComponentEvent>]
    #
    # @!attribute [rw] schema_version
    #   The schema version of the component when it was imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponentData AWS API Documentation
    #
    class CreateComponentData < Struct.new(
      :name,
      :source_id,
      :component_type,
      :properties,
      :children,
      :variants,
      :overrides,
      :binding_properties,
      :collection_properties,
      :tags,
      :events,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to associate with the component.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] component_to_create
    #   Represents the configuration of the component to create.
    #   @return [Types::CreateComponentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponentRequest AWS API Documentation
    #
    class CreateComponentRequest < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :component_to_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   Describes the configuration of the new component.
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponentResponse AWS API Documentation
    #
    class CreateComponentResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents all of the information that is required to create a form.
    #
    # @!attribute [rw] name
    #   The name of the form.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The type of data source to use to create the form.
    #   @return [Types::FormDataTypeConfig]
    #
    # @!attribute [rw] form_action_type
    #   Specifies whether to perform a create or update action on the form.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The configuration information for the form's fields.
    #   @return [Hash<String,Types::FieldConfig>]
    #
    # @!attribute [rw] style
    #   The configuration for the form's style.
    #   @return [Types::FormStyle]
    #
    # @!attribute [rw] sectional_elements
    #   The configuration information for the visual helper elements for the
    #   form. These elements are not associated with any data.
    #   @return [Hash<String,Types::SectionalElement>]
    #
    # @!attribute [rw] schema_version
    #   The schema version of the form.
    #   @return [String]
    #
    # @!attribute [rw] cta
    #   The `FormCTA` object that stores the call to action configuration
    #   for the form.
    #   @return [Types::FormCTA]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the form data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] label_decorator
    #   Specifies an icon or decoration to display on the form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateFormData AWS API Documentation
    #
    class CreateFormData < Struct.new(
      :name,
      :data_type,
      :form_action_type,
      :fields,
      :style,
      :sectional_elements,
      :schema_version,
      :cta,
      :tags,
      :label_decorator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to associate with the form.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] form_to_create
    #   Represents the configuration of the form to create.
    #   @return [Types::CreateFormData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateFormRequest AWS API Documentation
    #
    class CreateFormRequest < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :form_to_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   Describes the configuration of the new form.
    #   @return [Types::Form]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateFormResponse AWS API Documentation
    #
    class CreateFormResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents all of the information that is required to create a theme.
    #
    # @!attribute [rw] name
    #   The name of the theme.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key-value pairs that deﬁnes the properties of the theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize an
    #   instance of the theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the theme data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateThemeData AWS API Documentation
    #
    class CreateThemeData < Struct.new(
      :name,
      :values,
      :overrides,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the theme.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] theme_to_create
    #   Represents the configuration of the theme to create.
    #   @return [Types::CreateThemeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateThemeRequest AWS API Documentation
    #
    class CreateThemeRequest < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :theme_to_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   Describes the configuration of the new theme.
    #   @return [Types::Theme]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateThemeResponse AWS API Documentation
    #
    class CreateThemeResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the component to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the component to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/DeleteComponentRequest AWS API Documentation
    #
    class DeleteComponentRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the form to delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the form to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/DeleteFormRequest AWS API Documentation
    #
    class DeleteFormRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the theme to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the theme to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/DeleteThemeRequest AWS API Documentation
    #
    class DeleteThemeRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider
    #   The third-party provider for the token. The only valid value is
    #   `figma`.
    #   @return [String]
    #
    # @!attribute [rw] request
    #   Describes the configuration of the request.
    #   @return [Types::ExchangeCodeForTokenRequestBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExchangeCodeForTokenRequest AWS API Documentation
    #
    class ExchangeCodeForTokenRequest < Struct.new(
      :provider,
      :request)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a request to exchange an access code
    # for a token.
    #
    # @!attribute [rw] code
    #   The access code to send in the request.
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The location of the application that will receive the access code.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the client to request the token from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExchangeCodeForTokenRequestBody AWS API Documentation
    #
    class ExchangeCodeForTokenRequestBody < Struct.new(
      :code,
      :redirect_uri,
      :client_id)
      SENSITIVE = [:code, :client_id]
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The date and time when the new access token expires.
    #   @return [Integer]
    #
    # @!attribute [rw] refresh_token
    #   The token to use to refresh a previously issued access token that
    #   might have expired.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExchangeCodeForTokenResponse AWS API Documentation
    #
    class ExchangeCodeForTokenResponse < Struct.new(
      :access_token,
      :expires_in,
      :refresh_token)
      SENSITIVE = [:access_token, :refresh_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to export components to.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportComponentsRequest AWS API Documentation
    #
    class ExportComponentsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Represents the configuration of the exported components.
    #   @return [Array<Types::Component>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportComponentsResponse AWS API Documentation
    #
    class ExportComponentsResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to export forms to.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportFormsRequest AWS API Documentation
    #
    class ExportFormsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Represents the configuration of the exported forms.
    #   @return [Array<Types::Form>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportFormsResponse AWS API Documentation
    #
    class ExportFormsResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to export the themes to.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportThemesRequest AWS API Documentation
    #
    class ExportThemesRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Represents the configuration of the exported themes.
    #   @return [Array<Types::Theme>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportThemesResponse AWS API Documentation
    #
    class ExportThemesResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration information for a field in a table.
    #
    # @!attribute [rw] label
    #   The label for the field.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Specifies the field position.
    #   @return [Types::FieldPosition]
    #
    # @!attribute [rw] excluded
    #   Specifies whether to hide a field.
    #   @return [Boolean]
    #
    # @!attribute [rw] input_type
    #   Describes the configuration for the default input value to display
    #   for a field.
    #   @return [Types::FieldInputConfig]
    #
    # @!attribute [rw] validations
    #   The validations to perform on the value in the field.
    #   @return [Array<Types::FieldValidationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FieldConfig AWS API Documentation
    #
    class FieldConfig < Struct.new(
      :label,
      :position,
      :excluded,
      :input_type,
      :validations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for the default input values to display
    # for a field.
    #
    # @!attribute [rw] type
    #   The input type for the field.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Specifies a field that requires input.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_only
    #   Specifies a read only field.
    #   @return [Boolean]
    #
    # @!attribute [rw] placeholder
    #   The text to display as a placeholder for the field.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for the field.
    #   @return [String]
    #
    # @!attribute [rw] descriptive_text
    #   The text to display to describe the field.
    #   @return [String]
    #
    # @!attribute [rw] default_checked
    #   Specifies whether a field has a default value.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_country_code
    #   The default country code for a phone number.
    #   @return [String]
    #
    # @!attribute [rw] value_mappings
    #   The information to use to customize the input fields with data at
    #   runtime.
    #   @return [Types::ValueMappings]
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   The minimum value to display for the field.
    #   @return [Float]
    #
    # @!attribute [rw] max_value
    #   The maximum value to display for the field.
    #   @return [Float]
    #
    # @!attribute [rw] step
    #   The stepping increment for a numeric value in a field.
    #   @return [Float]
    #
    # @!attribute [rw] value
    #   The value for the field.
    #   @return [String]
    #
    # @!attribute [rw] is_array
    #   Specifies whether to render the field as an array. This property is
    #   ignored if the `dataSourceType` for the form is a Data Store.
    #   @return [Boolean]
    #
    # @!attribute [rw] file_uploader_config
    #   The configuration for the file uploader field.
    #   @return [Types::FileUploaderFieldConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FieldInputConfig AWS API Documentation
    #
    class FieldInputConfig < Struct.new(
      :type,
      :required,
      :read_only,
      :placeholder,
      :default_value,
      :descriptive_text,
      :default_checked,
      :default_country_code,
      :value_mappings,
      :name,
      :min_value,
      :max_value,
      :step,
      :value,
      :is_array,
      :file_uploader_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the field position.
    #
    # @note FieldPosition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FieldPosition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FieldPosition corresponding to the set member.
    #
    # @!attribute [rw] fixed
    #   The field position is fixed and doesn't change in relation to other
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] right_of
    #   The field position is to the right of the field specified by the
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] below
    #   The field position is below the field specified by the string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FieldPosition AWS API Documentation
    #
    class FieldPosition < Struct.new(
      :fixed,
      :right_of,
      :below,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Fixed < FieldPosition; end
      class RightOf < FieldPosition; end
      class Below < FieldPosition; end
      class Unknown < FieldPosition; end
    end

    # Describes the validation configuration for a field.
    #
    # @!attribute [rw] type
    #   The validation to perform on an object type.``
    #   @return [String]
    #
    # @!attribute [rw] str_values
    #   The validation to perform on a string value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_values
    #   The validation to perform on a number value.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] validation_message
    #   The validation message to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FieldValidationConfiguration AWS API Documentation
    #
    class FieldValidationConfiguration < Struct.new(
      :type,
      :str_values,
      :num_values,
      :validation_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for the file uploader field.
    #
    # @!attribute [rw] access_level
    #   The access level to assign to the uploaded files in the Amazon S3
    #   bucket where they are stored. The valid values for this property are
    #   `private`, `protected`, or `public`. For detailed information about
    #   the permissions associated with each access level, see [File access
    #   levels][1] in the *Amplify documentation*.
    #
    #
    #
    #   [1]: https://docs.amplify.aws/lib/storage/configureaccess/q/platform/js/
    #   @return [String]
    #
    # @!attribute [rw] accepted_file_types
    #   The file types that are allowed to be uploaded by the file uploader.
    #   Provide this information in an array of strings specifying the valid
    #   file extensions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] show_thumbnails
    #   Specifies whether to display or hide the image preview after
    #   selecting a file for upload. The default value is `true` to display
    #   the image preview.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_resumable
    #   Allows the file upload operation to be paused and resumed. The
    #   default value is `false`.
    #
    #   When `isResumable` is set to `true`, the file uploader uses a
    #   multipart upload to break the files into chunks before upload. The
    #   progress of the upload isn't continuous, because the file uploader
    #   uploads a chunk at a time.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_file_count
    #   Specifies the maximum number of files that can be selected to
    #   upload. The default value is an unlimited number of files.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum file size in bytes that the file uploader will accept.
    #   The default value is an unlimited file size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FileUploaderFieldConfig AWS API Documentation
    #
    class FileUploaderFieldConfig < Struct.new(
      :access_level,
      :accepted_file_types,
      :show_thumbnails,
      :is_resumable,
      :max_file_count,
      :max_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration settings for a `Form` user interface (UI)
    # element for an Amplify app. A form is a component you can add to your
    # project by specifying a data source as the default configuration for
    # the form.
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the form.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the form.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the form.
    #   @return [String]
    #
    # @!attribute [rw] form_action_type
    #   The operation to perform on the specified form.
    #   @return [String]
    #
    # @!attribute [rw] style
    #   Stores the configuration for the form's style.
    #   @return [Types::FormStyle]
    #
    # @!attribute [rw] data_type
    #   The type of data source to use to create the form.
    #   @return [Types::FormDataTypeConfig]
    #
    # @!attribute [rw] fields
    #   Stores the information about the form's fields.
    #   @return [Hash<String,Types::FieldConfig>]
    #
    # @!attribute [rw] sectional_elements
    #   Stores the visual helper elements for the form that are not
    #   associated with any data.
    #   @return [Hash<String,Types::SectionalElement>]
    #
    # @!attribute [rw] schema_version
    #   The schema version of the form when it was imported.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the form.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] cta
    #   Stores the call to action configuration for the form.
    #   @return [Types::FormCTA]
    #
    # @!attribute [rw] label_decorator
    #   Specifies an icon or decoration to display on the form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Form AWS API Documentation
    #
    class Form < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :form_action_type,
      :style,
      :data_type,
      :fields,
      :sectional_elements,
      :schema_version,
      :tags,
      :cta,
      :label_decorator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how to bind a component property to form data.
    #
    # @!attribute [rw] element
    #   The name of the component to retrieve a value from.
    #   @return [String]
    #
    # @!attribute [rw] property
    #   The property to retrieve a value from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormBindingElement AWS API Documentation
    #
    class FormBindingElement < Struct.new(
      :element,
      :property)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for a button UI element that is a part of
    # a form.
    #
    # @!attribute [rw] excluded
    #   Specifies whether the button is visible on the form.
    #   @return [Boolean]
    #
    # @!attribute [rw] children
    #   Describes the button's properties.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the button.
    #   @return [Types::FieldPosition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormButton AWS API Documentation
    #
    class FormButton < Struct.new(
      :excluded,
      :children,
      :position)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the call to action button configuration for the form.
    #
    # @!attribute [rw] position
    #   The position of the button.
    #   @return [String]
    #
    # @!attribute [rw] clear
    #   Displays a clear button.
    #   @return [Types::FormButton]
    #
    # @!attribute [rw] cancel
    #   Displays a cancel button.
    #   @return [Types::FormButton]
    #
    # @!attribute [rw] submit
    #   Displays a submit button.
    #   @return [Types::FormButton]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormCTA AWS API Documentation
    #
    class FormCTA < Struct.new(
      :position,
      :clear,
      :cancel,
      :submit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data type configuration for the data source associated
    # with a form.
    #
    # @!attribute [rw] data_source_type
    #   The data source type, either an Amplify DataStore model or a custom
    #   data type.
    #   @return [String]
    #
    # @!attribute [rw] data_type_name
    #   The unique name of the data type you are using as the data source
    #   for the form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormDataTypeConfig AWS API Documentation
    #
    class FormDataTypeConfig < Struct.new(
      :data_source_type,
      :data_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a form's input fields
    # at runtime.You can use `FormInputBindingPropertiesValue` to add
    # exposed properties to a form to allow different values to be entered
    # when a form is reused in different places in an app.
    #
    # @!attribute [rw] type
    #   The property type.
    #   @return [String]
    #
    # @!attribute [rw] binding_properties
    #   Describes the properties to customize with data at runtime.
    #   @return [Types::FormInputBindingPropertiesValueProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormInputBindingPropertiesValue AWS API Documentation
    #
    class FormInputBindingPropertiesValue < Struct.new(
      :type,
      :binding_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a specific property
    # using data stored in Amazon Web Services. For Amazon Web Services
    # connected properties, you can bind a property to data stored in an
    # Amplify DataStore model.
    #
    # @!attribute [rw] model
    #   An Amplify DataStore model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormInputBindingPropertiesValueProperties AWS API Documentation
    #
    class FormInputBindingPropertiesValueProperties < Struct.new(
      :model)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for an input field on a form. Use
    # `FormInputValueProperty` to specify the values to render or bind by
    # default.
    #
    # @!attribute [rw] value
    #   The value to assign to the input field.
    #   @return [String]
    #
    # @!attribute [rw] binding_properties
    #   The information to bind fields to data at runtime.
    #   @return [Types::FormInputValuePropertyBindingProperties]
    #
    # @!attribute [rw] concat
    #   A list of form properties to concatenate to create the value to
    #   assign to this field property.
    #   @return [Array<Types::FormInputValueProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormInputValueProperty AWS API Documentation
    #
    class FormInputValueProperty < Struct.new(
      :value,
      :binding_properties,
      :concat)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a form property to a binding property. This enables exposed
    # properties on the top level form to propagate data to the form's
    # property values.
    #
    # @!attribute [rw] property
    #   The form property to bind to the data field.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The data field to bind the property to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormInputValuePropertyBindingProperties AWS API Documentation
    #
    class FormInputValuePropertyBindingProperties < Struct.new(
      :property,
      :field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for the form's style.
    #
    # @!attribute [rw] horizontal_gap
    #   The spacing for the horizontal gap.
    #   @return [Types::FormStyleConfig]
    #
    # @!attribute [rw] vertical_gap
    #   The spacing for the vertical gap.
    #   @return [Types::FormStyleConfig]
    #
    # @!attribute [rw] outer_padding
    #   The size of the outer padding for the form.
    #   @return [Types::FormStyleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormStyle AWS API Documentation
    #
    class FormStyle < Struct.new(
      :horizontal_gap,
      :vertical_gap,
      :outer_padding)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration settings for the form's style properties.
    #
    # @note FormStyleConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FormStyleConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FormStyleConfig corresponding to the set member.
    #
    # @!attribute [rw] token_reference
    #   A reference to a design token to use to bind the form's style
    #   properties to an existing theme.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the style setting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormStyleConfig AWS API Documentation
    #
    class FormStyleConfig < Struct.new(
      :token_reference,
      :value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TokenReference < FormStyleConfig; end
      class Value < FormStyleConfig; end
      class Unknown < FormStyleConfig; end
    end

    # Describes the basic information about a form.
    #
    # @!attribute [rw] app_id
    #   The unique ID for the app associated with the form summary.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The form's data source type.
    #   @return [Types::FormDataTypeConfig]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] form_action_type
    #   The type of operation to perform on the form.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the form.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/FormSummary AWS API Documentation
    #
    class FormSummary < Struct.new(
      :app_id,
      :data_type,
      :environment_name,
      :form_action_type,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the code generation
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app associated with the code generation job.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the code generation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetCodegenJobRequest AWS API Documentation
    #
    class GetCodegenJobRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The configuration settings for the code generation job.
    #   @return [Types::CodegenJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetCodegenJobResponse AWS API Documentation
    #
    class GetCodegenJobResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetComponentRequest AWS API Documentation
    #
    class GetComponentRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component
    #   Represents the configuration settings for the component.
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetComponentResponse AWS API Documentation
    #
    class GetComponentResponse < Struct.new(
      :component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetFormRequest AWS API Documentation
    #
    class GetFormRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] form
    #   Represents the configuration settings for the form.
    #   @return [Types::Form]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetFormResponse AWS API Documentation
    #
    class GetFormResponse < Struct.new(
      :form)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetMetadataRequest AWS API Documentation
    #
    class GetMetadataRequest < Struct.new(
      :app_id,
      :environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] features
    #   Represents the configuration settings for the features metadata.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetMetadataResponse AWS API Documentation
    #
    class GetMetadataResponse < Struct.new(
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID for the theme.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetThemeRequest AWS API Documentation
    #
    class GetThemeRequest < Struct.new(
      :app_id,
      :environment_name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme
    #   Represents the configuration settings for the theme.
    #   @return [Types::Theme]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetThemeResponse AWS API Documentation
    #
    class GetThemeResponse < Struct.new(
      :theme)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Please retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalid or out-of-range value was supplied for the input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListCodegenJobsRequest AWS API Documentation
    #
    class ListCodegenJobsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The list of code generation jobs for the Amplify app.
    #   @return [Array<Types::CodegenJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListCodegenJobsResponse AWS API Documentation
    #
    class ListCodegenJobsResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of components to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The list of components for the Amplify app.
    #   @return [Array<Types::ComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListComponentsResponse AWS API Documentation
    #
    class ListComponentsResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of forms to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListFormsRequest AWS API Documentation
    #
    class ListFormsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The list of forms for the Amplify app.
    #   @return [Array<Types::FormSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListFormsResponse AWS API Documentation
    #
    class ListFormsResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of theme results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListThemesRequest AWS API Documentation
    #
    class ListThemesRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The list of themes for the Amplify app.
    #   @return [Array<Types::ThemeSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's returned if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListThemesResponse AWS API Documentation
    #
    class ListThemesResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the state configuration when an action modifies a property
    # of another element within the same component.
    #
    # @!attribute [rw] component_name
    #   The name of the component that is being modified.
    #   @return [String]
    #
    # @!attribute [rw] property
    #   The name of the component property to apply the state configuration
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] set
    #   The state configuration to assign to the property.
    #   @return [Types::ComponentProperty]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/MutationActionSetStateParameter AWS API Documentation
    #
    class MutationActionSetStateParameter < Struct.new(
      :component_name,
      :property,
      :set)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information for generating Amplify DataStore queries. Use a
    # `Predicate` to retrieve a subset of the data in a collection.
    #
    # @!attribute [rw] or
    #   A list of predicates to combine logically.
    #   @return [Array<Types::Predicate>]
    #
    # @!attribute [rw] and
    #   A list of predicates to combine logically.
    #   @return [Array<Types::Predicate>]
    #
    # @!attribute [rw] field
    #   The field to query.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use to perform the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] operand
    #   The value to use when performing the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] operand_type
    #   The type of value to use when performing the evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Predicate AWS API Documentation
    #
    class Predicate < Struct.new(
      :or,
      :and,
      :field,
      :operator,
      :operand,
      :operand_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores the metadata information about a feature on a form.
    #
    # @!attribute [rw] new_value
    #   The new information to store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/PutMetadataFlagBody AWS API Documentation
    #
    class PutMetadataFlagBody < Struct.new(
      :new_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the metadata.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The metadata information to store.
    #   @return [Types::PutMetadataFlagBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/PutMetadataFlagRequest AWS API Documentation
    #
    class PutMetadataFlagRequest < Struct.new(
      :app_id,
      :environment_name,
      :feature_name,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the code generation job configuration for a React project.
    #
    # @!attribute [rw] module
    #   The JavaScript module type.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ECMAScript specification to use.
    #   @return [String]
    #
    # @!attribute [rw] script
    #   The file type to use for a JavaScript project.
    #   @return [String]
    #
    # @!attribute [rw] render_type_declarations
    #   Specifies whether the code generation job should render type
    #   declaration files.
    #   @return [Boolean]
    #
    # @!attribute [rw] inline_source_map
    #   Specifies whether the code generation job should render inline
    #   source maps.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ReactStartCodegenJobData AWS API Documentation
    #
    class ReactStartCodegenJobData < Struct.new(
      :module,
      :target,
      :script,
      :render_type_declarations,
      :inline_source_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider
    #   The third-party provider for the token. The only valid value is
    #   `figma`.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token_body
    #   Information about the refresh token request.
    #   @return [Types::RefreshTokenRequestBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/RefreshTokenRequest AWS API Documentation
    #
    class RefreshTokenRequest < Struct.new(
      :provider,
      :refresh_token_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a refresh token.
    #
    # @!attribute [rw] token
    #   The token to use to refresh a previously issued access token that
    #   might have expired.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The ID of the client to request the token from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/RefreshTokenRequestBody AWS API Documentation
    #
    class RefreshTokenRequestBody < Struct.new(
      :token,
      :client_id)
      SENSITIVE = [:token, :client_id]
      include Aws::Structure
    end

    # @!attribute [rw] access_token
    #   The access token.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The date and time when the new access token expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/RefreshTokenResponse AWS API Documentation
    #
    class RefreshTokenResponse < Struct.new(
      :access_token,
      :expires_in)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # The resource specified in the request conflicts with an existing
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist, or access was denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores the configuration information for a visual helper element for a
    # form. A sectional element can be a header, a text block, or a divider.
    # These elements are static and not associated with any data.
    #
    # @!attribute [rw] type
    #   The type of sectional element. Valid values are `Heading`, `Text`,
    #   and `Divider`.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Specifies the position of the text in a field for a `Text` sectional
    #   element.
    #   @return [Types::FieldPosition]
    #
    # @!attribute [rw] text
    #   The text for a `Text` sectional element.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   Specifies the size of the font for a `Heading` sectional element.
    #   Valid values are `1 | 2 | 3 | 4 | 5 | 6`.
    #   @return [Integer]
    #
    # @!attribute [rw] orientation
    #   Specifies the orientation for a `Divider` sectional element. Valid
    #   values are `horizontal` or `vertical`.
    #   @return [String]
    #
    # @!attribute [rw] excluded
    #   Excludes a sectional element that was generated by default for a
    #   specified data model.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/SectionalElement AWS API Documentation
    #
    class SectionalElement < Struct.new(
      :type,
      :position,
      :text,
      :level,
      :orientation,
      :excluded)
      SENSITIVE = []
      include Aws::Structure
    end

    # You exceeded your service quota. Service quotas, also referred to as
    # limits, are the maximum number of service resources or operations for
    # your Amazon Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how to sort the data that you bind to a component.
    #
    # @!attribute [rw] field
    #   The field to perform the sort on.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   The direction of the sort, either ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/SortProperty AWS API Documentation
    #
    class SortProperty < Struct.new(
      :field,
      :direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code generation job resource configuration.
    #
    # @!attribute [rw] render_config
    #   The code generation configuration for the codegen job.
    #   @return [Types::CodegenJobRenderConfig]
    #
    # @!attribute [rw] generic_data_schema
    #   The data schema to use for a code generation job.
    #   @return [Types::CodegenJobGenericDataSchema]
    #
    # @!attribute [rw] auto_generate_forms
    #   Specifies whether to autogenerate forms in the code generation job.
    #   @return [Boolean]
    #
    # @!attribute [rw] features
    #   The feature flags for a code generation job.
    #   @return [Types::CodegenFeatureFlags]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the code generation
    #   job data.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/StartCodegenJobData AWS API Documentation
    #
    class StartCodegenJobData < Struct.new(
      :render_config,
      :generic_data_schema,
      :auto_generate_forms,
      :features,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to ensure that the code generation job
    #   request completes only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] codegen_job_to_create
    #   The code generation job resource configuration.
    #   @return [Types::StartCodegenJobData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/StartCodegenJobRequest AWS API Documentation
    #
    class StartCodegenJobRequest < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :codegen_job_to_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   The code generation job for a UI component that is associated with
    #   an Amplify app.
    #   @return [Types::CodegenJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/StartCodegenJobResponse AWS API Documentation
    #
    class StartCodegenJobResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A theme is a collection of style settings that apply globally to the
    # components associated with an Amplify application.
    #
    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app associated with the theme.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the theme.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the theme was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time that the theme was modified.
    #   @return [Time]
    #
    # @!attribute [rw] values
    #   A list of key-value pairs that defines the properties of the theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize a theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the theme.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Theme AWS API Documentation
    #
    class Theme < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :created_at,
      :modified_at,
      :values,
      :overrides,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the basic information about a theme.
    #
    # @!attribute [rw] app_id
    #   The unique ID for the app associated with the theme summary.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the theme.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the theme.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ThemeSummary AWS API Documentation
    #
    class ThemeSummary < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a theme's properties.
    #
    # @!attribute [rw] value
    #   The value of a theme property.
    #   @return [String]
    #
    # @!attribute [rw] children
    #   A list of key-value pairs that define the theme's properties.
    #   @return [Array<Types::ThemeValues>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ThemeValue AWS API Documentation
    #
    class ThemeValue < Struct.new(
      :value,
      :children)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that defines a property of a theme.
    #
    # @!attribute [rw] key
    #   The name of the property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [Types::ThemeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ThemeValues AWS API Documentation
    #
    class ThemeValues < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permission to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates and saves all of the information about a component, based on
    # component ID.
    #
    # @!attribute [rw] id
    #   The unique ID of the component to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component to update.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the component in its original source system, such
    #   as Figma.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of the component. This can be an Amplify custom UI
    #   component or another custom component.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Describes the component's properties.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] children
    #   The components that are instances of the main component.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] variants
    #   A list of the unique variants of the main component being updated.
    #   @return [Array<Types::ComponentVariant>]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize the
    #   component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] binding_properties
    #   The data binding information for the component's properties.
    #   @return [Hash<String,Types::ComponentBindingPropertiesValue>]
    #
    # @!attribute [rw] collection_properties
    #   The configuration for binding a component's properties to a data
    #   model. Use this for a collection component.
    #   @return [Hash<String,Types::ComponentDataConfiguration>]
    #
    # @!attribute [rw] events
    #   The event configuration for the component. Use for the workflow
    #   feature in Amplify Studio that allows you to bind events and actions
    #   to components.
    #   @return [Hash<String,Types::ComponentEvent>]
    #
    # @!attribute [rw] schema_version
    #   The schema version of the component when it was imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponentData AWS API Documentation
    #
    class UpdateComponentData < Struct.new(
      :id,
      :name,
      :source_id,
      :component_type,
      :properties,
      :children,
      :variants,
      :overrides,
      :binding_properties,
      :collection_properties,
      :events,
      :schema_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID for the component.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] updated_component
    #   The configuration of the updated component.
    #   @return [Types::UpdateComponentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponentRequest AWS API Documentation
    #
    class UpdateComponentRequest < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   Describes the configuration of the updated component.
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponentResponse AWS API Documentation
    #
    class UpdateComponentResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates and saves all of the information about a form, based on form
    # ID.
    #
    # @!attribute [rw] name
    #   The name of the form.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The type of data source to use to create the form.
    #   @return [Types::FormDataTypeConfig]
    #
    # @!attribute [rw] form_action_type
    #   Specifies whether to perform a create or update action on the form.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The configuration information for the form's fields.
    #   @return [Hash<String,Types::FieldConfig>]
    #
    # @!attribute [rw] style
    #   The configuration for the form's style.
    #   @return [Types::FormStyle]
    #
    # @!attribute [rw] sectional_elements
    #   The configuration information for the visual helper elements for the
    #   form. These elements are not associated with any data.
    #   @return [Hash<String,Types::SectionalElement>]
    #
    # @!attribute [rw] schema_version
    #   The schema version of the form.
    #   @return [String]
    #
    # @!attribute [rw] cta
    #   The `FormCTA` object that stores the call to action configuration
    #   for the form.
    #   @return [Types::FormCTA]
    #
    # @!attribute [rw] label_decorator
    #   Specifies an icon or decoration to display on the form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateFormData AWS API Documentation
    #
    class UpdateFormData < Struct.new(
      :name,
      :data_type,
      :form_action_type,
      :fields,
      :style,
      :sectional_elements,
      :schema_version,
      :cta,
      :label_decorator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID for the form.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] updated_form
    #   The request accepts the following data in JSON format.
    #   @return [Types::UpdateFormData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateFormRequest AWS API Documentation
    #
    class UpdateFormRequest < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_form)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   Describes the configuration of the updated form.
    #   @return [Types::Form]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateFormResponse AWS API Documentation
    #
    class UpdateFormResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Saves the data binding information for a theme.
    #
    # @!attribute [rw] id
    #   The unique ID of the theme to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the theme to update.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key-value pairs that define the theme's properties.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize the
    #   theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateThemeData AWS API Documentation
    #
    class UpdateThemeData < Struct.new(
      :id,
      :name,
      :values,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] updated_theme
    #   The configuration of the updated theme.
    #   @return [Types::UpdateThemeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateThemeRequest AWS API Documentation
    #
    class UpdateThemeRequest < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_theme)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity
    #   Describes the configuration of the updated theme.
    #   @return [Types::Theme]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateThemeResponse AWS API Documentation
    #
    class UpdateThemeResponse < Struct.new(
      :entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a complex object with a display value. Use `ValueMapping`
    # to store how to represent complex objects when they are displayed.
    #
    # @!attribute [rw] display_value
    #   The value to display for the complex object.
    #   @return [Types::FormInputValueProperty]
    #
    # @!attribute [rw] value
    #   The complex object.
    #   @return [Types::FormInputValueProperty]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ValueMapping AWS API Documentation
    #
    class ValueMapping < Struct.new(
      :display_value,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a value map.
    #
    # @!attribute [rw] values
    #   The value and display value pairs.
    #   @return [Array<Types::ValueMapping>]
    #
    # @!attribute [rw] binding_properties
    #   The information to bind fields to data at runtime.
    #   @return [Hash<String,Types::FormInputBindingPropertiesValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ValueMappings AWS API Documentation
    #
    class ValueMappings < Struct.new(
      :values,
      :binding_properties)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
