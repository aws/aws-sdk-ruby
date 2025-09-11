# frozen_string_literal: true

# This is generated code!

module Aws::AmplifyUIBuilder
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents the event action configuration for an element of a <code>Component</code> or
    #         <code>ComponentChild</code>. Use for the workflow feature in Amplify Studio
    #       that allows you to bind events and actions to components. <code>ActionParameters</code>
    #       defines the action that is performed when an event occurs on the component.</p>
    # @!attribute type
    #   <p>The type of navigation action. Valid values are <code>url</code> and <code>anchor</code>.
    #         This value is required for a navigation action.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute url
    #   <p>The URL to the location to open. Specify this value for a navigation action.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute anchor
    #   <p>The HTML anchor link to the location to open. Specify this value for a navigation
    #         action.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute target
    #   <p>The element within the same component to modify when the action occurs.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute global
    #   <p>Specifies whether the user should be signed out globally. Specify this value for an auth
    #         sign out action.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute model
    #   <p>The name of the data model. Use when the action performs an operation on an Amplify DataStore model.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the component that the <code>ActionParameters</code> apply to.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute fields
    #   <p>A dictionary of key-value pairs mapping Amplify Studio properties to fields
    #         in a data model. Use when the action performs an operation on an Amplify
    #         DataStore model.</p>
    #   @return [Hash<String, Types::ComponentProperty>]
    # @!attribute state
    #   <p>A key-value pair that specifies the state property name and its initial value.</p>
    #   @return [Types::MutationActionSetStateParameter]
    class ActionParameters < Struct.new(
      :type,
      :url,
      :anchor,
      :target,
      :global,
      :model,
      :id,
      :fields,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the API configuration for a code generation job.</p>
    # @!attribute graph_ql_config
    #   <p>The configuration for an application using GraphQL APIs.</p>
    #   @return [Types::GraphQLRenderConfig]
    # @!attribute data_store_config
    #   <p>The configuration for an application using DataStore APIs.</p>
    #   @return [Types::DataStoreRenderConfig]
    # @!attribute no_api_config
    #   <p>The configuration for an application with no API being used.</p>
    #   @return [Types::NoApiRenderConfig]
    class ApiConfiguration < Struct.new(
      :graph_ql_config,
      :data_store_config,
      :no_api_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GraphQLConfig < ApiConfiguration; end
      class DataStoreConfig < ApiConfiguration; end
      class NoApiConfig < ApiConfiguration; end
      class Unknown < ApiConfiguration; end
    end

    # <p>Dependency package that may be required for the project code to run.</p>
    # @!attribute name
    #   <p>Name of the dependency package.</p>
    #   @return [String]
    # @!attribute supported_version
    #   <p>Indicates the version of the supported dependency package.</p>
    #   @return [String]
    # @!attribute is_sem_ver
    #   <p>Determines if the dependency package is using Semantic versioning. If set to true, it indicates that the dependency package uses Semantic versioning.</p>
    #   @return [Boolean]
    # @!attribute reason
    #   <p>Indicates the reason to include the dependency package in your project code.</p>
    #   @return [String]
    class CodegenDependency < Struct.new(
      :name,
      :supported_version,
      :is_sem_ver,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the feature flags that you can specify for a code generation job.</p>
    # @!attribute is_relationship_supported
    #   <p>Specifes whether a code generation job supports data relationships.</p>
    #   @return [Boolean]
    # @!attribute is_non_model_supported
    #   <p>Specifies whether a code generation job supports non models.</p>
    #   @return [Boolean]
    class CodegenFeatureFlags < Struct.new(
      :is_relationship_supported,
      :is_non_model_supported,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the enums in a generic data schema.</p>
    # @!attribute values
    #   <p>The list of enum values in the generic data schema.</p>
    #   @return [Array<String>]
    class CodegenGenericDataEnum < Struct.new(
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a field in a generic data schema.</p>
    # @!attribute data_type
    #   <p>The data type for the generic data field.</p>
    #   @return [String]
    # @!attribute data_type_value
    #   <p>The value of the data type for the generic data field.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Specifies whether the generic data field is required.</p>
    #   @return [Boolean]
    # @!attribute read_only
    #   <p>Specifies whether the generic data field is read-only.</p>
    #   @return [Boolean]
    # @!attribute is_array
    #   <p>Specifies whether the generic data field is an array.</p>
    #   @return [Boolean]
    # @!attribute relationship
    #   <p>The relationship of the generic data schema.</p>
    #   @return [Types::CodegenGenericDataRelationshipType]
    class CodegenGenericDataField < Struct.new(
      :data_type,
      :data_type_value,
      :required,
      :read_only,
      :is_array,
      :relationship,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a model in a generic data schema.</p>
    # @!attribute fields
    #   <p>The fields in the generic data model.</p>
    #   @return [Hash<String, Types::CodegenGenericDataField>]
    # @!attribute is_join_table
    #   <p>Specifies whether the generic data model is a join table.</p>
    #   @return [Boolean]
    # @!attribute primary_keys
    #   <p>The primary keys of the generic data model.</p>
    #   @return [Array<String>]
    class CodegenGenericDataModel < Struct.new(
      :fields,
      :is_join_table,
      :primary_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a non-model in a generic data schema.</p>
    # @!attribute fields
    #   <p>The fields in a generic data schema non model.</p>
    #   @return [Hash<String, Types::CodegenGenericDataField>]
    class CodegenGenericDataNonModel < Struct.new(
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the relationship between generic data models.</p>
    # @!attribute type
    #   <p>The data relationship type.</p>
    #   @return [String]
    # @!attribute related_model_name
    #   <p>The name of the related model in the data relationship.</p>
    #   @return [String]
    # @!attribute related_model_fields
    #   <p>The related model fields in the data relationship.</p>
    #   @return [Array<String>]
    # @!attribute can_unlink_associated_model
    #   <p>Specifies whether the relationship can unlink the associated model.</p>
    #   @return [Boolean]
    # @!attribute related_join_field_name
    #   <p>The name of the related join field in the data relationship.</p>
    #   @return [String]
    # @!attribute related_join_table_name
    #   <p>The name of the related join table in the data relationship.</p>
    #   @return [String]
    # @!attribute belongs_to_field_on_related_model
    #   <p>The value of the <code>belongsTo</code> field on the related data model. </p>
    #   @return [String]
    # @!attribute associated_fields
    #   <p>The associated fields of the data relationship.</p>
    #   @return [Array<String>]
    # @!attribute is_has_many_index
    #   <p>Specifies whether the <code>@index</code> directive is supported for a <code>hasMany</code> data relationship.</p>
    #   @return [Boolean]
    class CodegenGenericDataRelationshipType < Struct.new(
      :type,
      :related_model_name,
      :related_model_fields,
      :can_unlink_associated_model,
      :related_join_field_name,
      :related_join_table_name,
      :belongs_to_field_on_related_model,
      :associated_fields,
      :is_has_many_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for a code generation job that is associated with an Amplify app.</p>
    # @!attribute id
    #   <p>The unique ID for the code generation job.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The ID of the Amplify app associated with the code generation job.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment associated with the code generation job.</p>
    #   @return [String]
    # @!attribute render_config
    #   <p>Describes the configuration information for rendering the UI component associated with the code generation job.</p>
    #   @return [Types::CodegenJobRenderConfig]
    # @!attribute generic_data_schema
    #   <p>Describes the data schema for a code generation job.</p>
    #   @return [Types::CodegenJobGenericDataSchema]
    # @!attribute auto_generate_forms
    #   <p>Specifies whether to autogenerate forms in the code generation job.</p>
    #   @return [Boolean]
    # @!attribute features
    #   <p>Describes the feature flags that you can specify for a code generation job.</p>
    #   @return [Types::CodegenFeatureFlags]
    # @!attribute status
    #   <p>The status of the code generation job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The customized status message for the code generation job.</p>
    #   @return [String]
    # @!attribute asset
    #   <p>The <code>CodegenJobAsset</code> to use for the code generation job.</p>
    #   @return [Types::CodegenJobAsset]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the code generation job.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   <p>The time that the code generation job was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time that the code generation job was modified.</p>
    #   @return [Time]
    # @!attribute dependencies
    #   <p>Lists the dependency packages that may be required for the project code to run.</p>
    #   @return [Array<Types::CodegenDependency>]
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
      :modified_at,
      :dependencies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an asset for a code generation job.</p>
    # @!attribute download_url
    #   <p>The URL to use to access the asset.</p>
    #   @return [String]
    class CodegenJobAsset < Struct.new(
      :download_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data schema for a code generation job.</p>
    # @!attribute data_source_type
    #   <p>The type of the data source for the schema. Currently, the only valid value is an Amplify <code>DataStore</code>.</p>
    #   @return [String]
    # @!attribute models
    #   <p>The name of a <code>CodegenGenericDataModel</code>.</p>
    #   @return [Hash<String, Types::CodegenGenericDataModel>]
    # @!attribute enums
    #   <p>The name of a <code>CodegenGenericDataEnum</code>.</p>
    #   @return [Hash<String, Types::CodegenGenericDataEnum>]
    # @!attribute non_models
    #   <p>The name of a <code>CodegenGenericDataNonModel</code>.</p>
    #   @return [Hash<String, Types::CodegenGenericDataNonModel>]
    class CodegenJobGenericDataSchema < Struct.new(
      :data_source_type,
      :models,
      :enums,
      :non_models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration information for rendering the UI component associated with the code generation job.</p>
    # @!attribute react
    #   <p>The name of the <code>ReactStartCodegenJobData</code> object.</p>
    #   @return [Types::ReactStartCodegenJobData]
    class CodegenJobRenderConfig < Struct.new(
      :react,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class React < CodegenJobRenderConfig; end
      class Unknown < CodegenJobRenderConfig; end
    end

    # <p>A summary of the basic information about the code generation job.</p>
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the code generation job.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment associated with the code generation job.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID for the code generation job summary.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the code generation job summary was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time that the code generation job summary was modified.</p>
    #   @return [Time]
    class CodegenJobSummary < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings for a user interface (UI) element for an Amplify app. A component is configured as a primary, stand-alone UI element. Use
    #         <code>ComponentChild</code> to configure an instance of a <code>Component</code>. A
    #         <code>ComponentChild</code> instance inherits the configuration of the main
    #         <code>Component</code>.</p>
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the component.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The unique ID of the component in its original source system, such as Figma.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The type of the component. This can be an Amplify custom UI component or
    #         another custom component.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Describes the component's properties. You can't specify <code>tags</code> as a valid
    #         property for <code>properties</code>.</p>
    #   @return [Hash<String, Types::ComponentProperty>]
    # @!attribute children
    #   <p>A list of the component's <code>ComponentChild</code> instances.</p>
    #   @return [Array<Types::ComponentChild>]
    # @!attribute variants
    #   <p>A list of the component's variants. A variant is a unique style configuration of a main
    #         component.</p>
    #   @return [Array<Types::ComponentVariant>]
    # @!attribute overrides
    #   <p>Describes the component's properties that can be overriden in a customized instance of the
    #         component. You can't specify <code>tags</code> as a valid property for
    #         <code>overrides</code>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute binding_properties
    #   <p>The information to connect a component's properties to data at runtime. You can't specify
    #           <code>tags</code> as a valid property for <code>bindingProperties</code>.</p>
    #            <p/>
    #   @return [Hash<String, Types::ComponentBindingPropertiesValue>]
    # @!attribute collection_properties
    #   <p>The data binding configuration for the component's properties. Use this for a collection
    #         component. You can't specify <code>tags</code> as a valid property for
    #           <code>collectionProperties</code>.</p>
    #   @return [Hash<String, Types::ComponentDataConfiguration>]
    # @!attribute created_at
    #   <p>The time that the component was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time that the component was modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute events
    #   <p>Describes the events that can be raised on the component. Use for the workflow feature in
    #           Amplify Studio that allows you to bind events and actions to
    #         components.</p>
    #   @return [Hash<String, Types::ComponentEvent>]
    # @!attribute schema_version
    #   <p>The schema version of the component when it was imported.</p>
    #   @return [String]
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
      :schema_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data binding configuration for a component at runtime. You can use
    #         <code>ComponentBindingPropertiesValue</code> to add exposed properties to a component to
    #       allow different values to be entered when a component is reused in different places in an
    #       app.</p>
    # @!attribute type
    #   <p>The property type.</p>
    #   @return [String]
    # @!attribute binding_properties
    #   <p>Describes the properties to customize with data at runtime.</p>
    #   @return [Types::ComponentBindingPropertiesValueProperties]
    # @!attribute default_value
    #   <p>The default value of the property.</p>
    #   @return [String]
    class ComponentBindingPropertiesValue < Struct.new(
      :type,
      :binding_properties,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data binding configuration for a specific property using data stored in
    #         Amazon Web Services. For Amazon Web Services connected properties, you can bind a property to
    #       data stored in an Amazon S3 bucket, an Amplify DataStore model or an
    #       authenticated user attribute.</p>
    # @!attribute model
    #   <p>An Amplify DataStore model.</p>
    #   @return [String]
    # @!attribute field
    #   <p>The field to bind the data to.</p>
    #   @return [String]
    # @!attribute predicates
    #   <p>A list of predicates for binding a component's properties to data.</p>
    #   @return [Array<Types::Predicate>]
    # @!attribute user_attribute
    #   <p>An authenticated user attribute.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>An Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The storage key for an Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value to assign to the property.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>The name of a component slot.</p>
    #   @return [String]
    class ComponentBindingPropertiesValueProperties < Struct.new(
      :model,
      :field,
      :predicates,
      :user_attribute,
      :bucket,
      :key,
      :default_value,
      :slot_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A nested UI configuration within a parent <code>Component</code>.</p>
    # @!attribute component_type
    #   <p>The type of the child component. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the child component.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Describes the properties of the child component. You can't specify <code>tags</code> as a
    #         valid property for <code>properties</code>.</p>
    #   @return [Hash<String, Types::ComponentProperty>]
    # @!attribute children
    #   <p>The list of <code>ComponentChild</code> instances for this component.</p>
    #   @return [Array<Types::ComponentChild>]
    # @!attribute events
    #   <p>Describes the events that can be raised on the child component. Use for the workflow
    #         feature in Amplify Studio that allows you to bind events and actions to
    #         components.</p>
    #   @return [Hash<String, Types::ComponentEvent>]
    # @!attribute source_id
    #   <p>The unique ID of the child component in its original source system, such as Figma.</p>
    #   @return [String]
    class ComponentChild < Struct.new(
      :component_type,
      :name,
      :properties,
      :children,
      :events,
      :source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a conditional expression to set a component property. Use
    #         <code>ComponentConditionProperty</code> to set a property to different values conditionally,
    #       based on the value of another property.</p>
    # @!attribute property
    #   <p>The name of the conditional property.</p>
    #   @return [String]
    # @!attribute field
    #   <p>The name of a field. Specify this when the property is a data model.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to use to perform the evaluation, such as <code>eq</code> to represent
    #         equals.</p>
    #   @return [String]
    # @!attribute operand
    #   <p>The value of the property to evaluate.</p>
    #   @return [String]
    # @!attribute then
    #   <p>The value to assign to the property if the condition is met.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute else
    #   <p>The value to assign to the property if the condition is not met.</p>
    #   @return [Types::ComponentProperty]
    # @!attribute operand_type
    #   <p>The type of the property to evaluate.</p>
    #   @return [String]
    class ComponentConditionProperty < Struct.new(
      :property,
      :field,
      :operator,
      :operand,
      :then,
      :else,
      :operand_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for binding a component's properties to data.</p>
    # @!attribute model
    #   <p>The name of the data model to use to bind data to a component.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>Describes how to sort the component's properties.</p>
    #   @return [Array<Types::SortProperty>]
    # @!attribute predicate
    #   <p>Represents the conditional logic to use when binding data to a component. Use this
    #         property to retrieve only a subset of the data in a collection.</p>
    #   @return [Types::Predicate]
    # @!attribute identifiers
    #   <p>A list of IDs to use to bind data to a component. Use this property to bind specifically
    #         chosen data, rather than data retrieved from a query.</p>
    #   @return [Array<String>]
    class ComponentDataConfiguration < Struct.new(
      :model,
      :sort,
      :predicate,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of an event. You can bind an event and a corresponding action
    #       to a <code>Component</code> or a <code>ComponentChild</code>. A button click is an example of
    #       an event. </p>
    # @!attribute action
    #   <p>The action to perform when a specific event is raised.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Describes information about the action.</p>
    #   @return [Types::ActionParameters]
    # @!attribute binding_event
    #   <p>Binds an event to an action on a component. When you specify a <code>bindingEvent</code>,
    #         the event is called when the action is performed.</p>
    #   @return [String]
    class ComponentEvent < Struct.new(
      :action,
      :parameters,
      :binding_event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for all of a component's properties. Use
    #         <code>ComponentProperty</code> to specify the values to render or bind by default.</p>
    # @!attribute value
    #   <p>The value to assign to the component property.</p>
    #   @return [String]
    # @!attribute binding_properties
    #   <p>The information to bind the component property to data at runtime.</p>
    #   @return [Types::ComponentPropertyBindingProperties]
    # @!attribute collection_binding_properties
    #   <p>The information to bind the component property to data at runtime. Use this for collection
    #         components.</p>
    #   @return [Types::ComponentPropertyBindingProperties]
    # @!attribute default_value
    #   <p>The default value to assign to the component property.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The data model to use to assign a value to the component property.</p>
    #   @return [String]
    # @!attribute bindings
    #   <p>The information to bind the component property to form data.</p>
    #   @return [Hash<String, Types::FormBindingElement>]
    # @!attribute event
    #   <p>An event that occurs in your app. Use this for workflow data binding.</p>
    #   @return [String]
    # @!attribute user_attribute
    #   <p>An authenticated user attribute to use to assign a value to the component property.</p>
    #   @return [String]
    # @!attribute concat
    #   <p>A list of component properties to concatenate to create the value to assign to this
    #         component property.</p>
    #   @return [Array<Types::ComponentProperty>]
    # @!attribute condition
    #   <p>The conditional expression to use to assign a value to the component property.</p>
    #   @return [Types::ComponentConditionProperty]
    # @!attribute configured
    #   <p>Specifies whether the user configured the property in Amplify Studio after
    #         importing it.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>The component type.</p>
    #   @return [String]
    # @!attribute imported_value
    #   <p>The default value assigned to the property when the component is imported into an
    #         app.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component that is affected by an event.</p>
    #   @return [String]
    # @!attribute property
    #   <p>The name of the component's property that is affected by an event.</p>
    #   @return [String]
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
      :property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Associates a component property to a binding property. This enables exposed properties on
    #       the top level component to propagate data to the component's property values.</p>
    # @!attribute property
    #   <p>The component property to bind to the data field.</p>
    #   @return [String]
    # @!attribute field
    #   <p>The data field to bind the property to.</p>
    #   @return [String]
    class ComponentPropertyBindingProperties < Struct.new(
      :property,
      :field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a component. This is a read-only data type that is returned by
    #         <code>ListComponents</code>.</p>
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the component.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The component type.</p>
    #   @return [String]
    class ComponentSummary < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :component_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the style configuration of a unique variation of a main component.</p>
    # @!attribute variant_values
    #   <p>The combination of variants that comprise this variant. You can't specify
    #           <code>tags</code> as a valid property for <code>variantValues</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute overrides
    #   <p>The properties of the component variant that can be overriden when customizing an instance
    #         of the component. You can't specify <code>tags</code> as a valid property for
    #           <code>overrides</code>.</p>
    #   @return [Hash<String, Hash<String, String>>]
    class ComponentVariant < Struct.new(
      :variant_values,
      :overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents all of the information that is required to create a component.</p>
    # @!attribute name
    #   <p>The name of the component</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The unique ID of the component in its original source system, such as Figma.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The component type. This can be an Amplify custom UI component or another
    #         custom component.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Describes the component's properties.</p>
    #   @return [Hash<String, Types::ComponentProperty>]
    # @!attribute children
    #   <p>A list of child components that are instances of the main component.</p>
    #   @return [Array<Types::ComponentChild>]
    # @!attribute variants
    #   <p>A list of the unique variants of this component.</p>
    #   @return [Array<Types::ComponentVariant>]
    # @!attribute overrides
    #   <p>Describes the component properties that can be overriden to customize an instance of the
    #         component.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute binding_properties
    #   <p>The data binding information for the component's properties.</p>
    #   @return [Hash<String, Types::ComponentBindingPropertiesValue>]
    # @!attribute collection_properties
    #   <p>The data binding configuration for customizing a component's properties. Use this for a
    #         collection component.</p>
    #   @return [Hash<String, Types::ComponentDataConfiguration>]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the component data.</p>
    #   @return [Hash<String, String>]
    # @!attribute events
    #   <p>The event configuration for the component. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components.</p>
    #   @return [Hash<String, Types::ComponentEvent>]
    # @!attribute schema_version
    #   <p>The schema version of the component when it was imported.</p>
    #   @return [String]
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
      :schema_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to associate with the component.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #   @return [String]
    # @!attribute component_to_create
    #   <p>Represents the configuration of the component to create.</p>
    #   @return [Types::CreateComponentData]
    class CreateComponentInput < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :component_to_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the new component.</p>
    #   @return [Types::Component]
    class CreateComponentOutput < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents all of the information that is required to create a form.</p>
    # @!attribute name
    #   <p>The name of the form.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The type of data source to use to create the form.</p>
    #   @return [Types::FormDataTypeConfig]
    # @!attribute form_action_type
    #   <p>Specifies whether to perform a create or update action on the form.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The configuration information for the form's fields.</p>
    #   @return [Hash<String, Types::FieldConfig>]
    # @!attribute style
    #   <p>The configuration for the form's style.</p>
    #   @return [Types::FormStyle]
    # @!attribute sectional_elements
    #   <p>The configuration information for the visual helper elements for the form. These elements
    #         are not associated with any data.</p>
    #   @return [Hash<String, Types::SectionalElement>]
    # @!attribute schema_version
    #   <p>The schema version of the form.</p>
    #   @return [String]
    # @!attribute cta
    #   <p>The <code>FormCTA</code> object that stores the call to action configuration for the
    #         form.</p>
    #   @return [Types::FormCTA]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the form data.</p>
    #   @return [Hash<String, String>]
    # @!attribute label_decorator
    #   <p>Specifies an icon or decoration to display on the form.</p>
    #   @return [String]
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
      :label_decorator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to associate with the form.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #   @return [String]
    # @!attribute form_to_create
    #   <p>Represents the configuration of the form to create.</p>
    #   @return [Types::CreateFormData]
    class CreateFormInput < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :form_to_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the new form.</p>
    #   @return [Types::Form]
    class CreateFormOutput < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents all of the information that is required to create a theme.</p>
    # @!attribute name
    #   <p>The name of the theme.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key-value pairs that deﬁnes the properties of the theme.</p>
    #   @return [Array<Types::ThemeValues>]
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize an instance of the
    #         theme.</p>
    #   @return [Array<Types::ThemeValues>]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the theme data.</p>
    #   @return [Hash<String, String>]
    class CreateThemeData < Struct.new(
      :name,
      :values,
      :overrides,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the theme.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #   @return [String]
    # @!attribute theme_to_create
    #   <p>Represents the configuration of the theme to create.</p>
    #   @return [Types::CreateThemeData]
    class CreateThemeInput < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :theme_to_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the new theme.</p>
    #   @return [Types::Theme]
    class CreateThemeOutput < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the DataStore configuration for an API for a code generation job.</p>
    class DataStoreRenderConfig < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the component to
    #         delete.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the component to delete.</p>
    #   @return [String]
    class DeleteComponentInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the form to delete.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the form to delete.</p>
    #   @return [String]
    class DeleteFormInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the theme to
    #         delete.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the theme to delete.</p>
    #   @return [String]
    class DeleteThemeInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    #   @return [String]
    # @!attribute request
    #   <p>Describes the configuration of the request.</p>
    #   @return [Types::ExchangeCodeForTokenRequestBody]
    class ExchangeCodeForTokenInput < Struct.new(
      :provider,
      :request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>The access token.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>The date and time when the new access token expires.</p>
    #   @return [Integer]
    # @!attribute refresh_token
    #   <p>The token to use to refresh a previously issued access token that might have
    #         expired.</p>
    #   @return [String]
    class ExchangeCodeForTokenOutput < Struct.new(
      :access_token,
      :expires_in,
      :refresh_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a request to exchange an access code for a token.</p>
    # @!attribute code
    #   <p>The access code to send in the request.</p>
    #   @return [String]
    # @!attribute redirect_uri
    #   <p>The location of the application that will receive the access code.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the client to request the token from.</p>
    #   @return [String]
    class ExchangeCodeForTokenRequestBody < Struct.new(
      :code,
      :redirect_uri,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to export components to.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ExportComponentsInput < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>Represents the configuration of the exported components.</p>
    #   @return [Array<Types::Component>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ExportComponentsOutput < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to export forms to.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ExportFormsInput < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>Represents the configuration of the exported forms.</p>
    #   @return [Array<Types::Form>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ExportFormsOutput < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to export the themes to.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ExportThemesInput < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>Represents the configuration of the exported themes.</p>
    #   @return [Array<Types::Theme>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ExportThemesOutput < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration information for a field in a table.</p>
    # @!attribute label
    #   <p>The label for the field.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Specifies the field position.</p>
    #   @return [Types::FieldPosition]
    # @!attribute excluded
    #   <p>Specifies whether to hide a field.</p>
    #   @return [Boolean]
    # @!attribute input_type
    #   <p>Describes the configuration for the default input value to display for a field.</p>
    #   @return [Types::FieldInputConfig]
    # @!attribute validations
    #   <p>The validations to perform on the value in the field.</p>
    #   @return [Array<Types::FieldValidationConfiguration>]
    class FieldConfig < Struct.new(
      :label,
      :position,
      :excluded,
      :input_type,
      :validations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for the default input values to display for a field.</p>
    # @!attribute type
    #   <p>The input type for the field. </p>
    #   @return [String]
    # @!attribute required
    #   <p>Specifies a field that requires input.</p>
    #   @return [Boolean]
    # @!attribute read_only
    #   <p>Specifies a read only field.</p>
    #   @return [Boolean]
    # @!attribute placeholder
    #   <p>The text to display as a placeholder for the field.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value for the field.</p>
    #   @return [String]
    # @!attribute descriptive_text
    #   <p>The text to display to describe the field.</p>
    #   @return [String]
    # @!attribute default_checked
    #   <p>Specifies whether a field has a default value.</p>
    #   @return [Boolean]
    # @!attribute default_country_code
    #   <p>The default country code for a phone number.</p>
    #   @return [String]
    # @!attribute value_mappings
    #   <p>The information to use to customize the input fields with data at runtime.</p>
    #   @return [Types::ValueMappings]
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>The minimum value to display for the field.</p>
    #   @return [Float]
    # @!attribute max_value
    #   <p>The maximum value to display for the field.</p>
    #   @return [Float]
    # @!attribute step
    #   <p>The stepping increment for a numeric value in a field.</p>
    #   @return [Float]
    # @!attribute value
    #   <p>The value for the field.</p>
    #   @return [String]
    # @!attribute is_array
    #   <p>Specifies whether to render the field as an array. This property is ignored if the
    #           <code>dataSourceType</code> for the form is a Data Store.</p>
    #   @return [Boolean]
    # @!attribute file_uploader_config
    #   <p>The configuration for the file uploader field.</p>
    #   @return [Types::FileUploaderFieldConfig]
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
      :file_uploader_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the field position.</p>
    # @!attribute fixed
    #   <p>The field position is fixed and doesn't change in relation to other fields.</p>
    #   @return [String]
    # @!attribute right_of
    #   <p>The field position is to the right of the field specified by the string.</p>
    #   @return [String]
    # @!attribute below
    #   <p>The field position is below the field specified by the string.</p>
    #   @return [String]
    class FieldPosition < Struct.new(
      :fixed,
      :right_of,
      :below,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Fixed < FieldPosition; end
      class RightOf < FieldPosition; end
      class Below < FieldPosition; end
      class Unknown < FieldPosition; end
    end

    # <p>Describes the validation configuration for a field.</p>
    # @!attribute type
    #   <p>The validation to perform on an object type.<code/>
    #            </p>
    #   @return [String]
    # @!attribute str_values
    #   <p>The validation to perform on a string value.</p>
    #   @return [Array<String>]
    # @!attribute num_values
    #   <p>The validation to perform on a number value.</p>
    #   @return [Array<Integer>]
    # @!attribute validation_message
    #   <p>The validation message to display.</p>
    #   @return [String]
    class FieldValidationConfiguration < Struct.new(
      :type,
      :str_values,
      :num_values,
      :validation_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for the file uploader field.</p>
    # @!attribute access_level
    #   <p>The access level to assign to the uploaded files in the Amazon S3 bucket where
    #         they are stored. The valid values for this property are <code>private</code>,
    #           <code>protected</code>, or <code>public</code>. For detailed information about the
    #         permissions associated with each access level, see <a href="https://docs.amplify.aws/lib/storage/configureaccess/q/platform/js/">File access
    #           levels</a> in the <i>Amplify documentation</i>.</p>
    #   @return [String]
    # @!attribute accepted_file_types
    #   <p>The file types that are allowed to be uploaded by the file uploader. Provide this
    #         information in an array of strings specifying the valid file extensions.</p>
    #   @return [Array<String>]
    # @!attribute show_thumbnails
    #   <p>Specifies whether to display or hide the image preview after selecting a file for upload.
    #         The default value is <code>true</code> to display the image preview.</p>
    #   @return [Boolean]
    # @!attribute is_resumable
    #   <p>Allows the file upload operation to be paused and resumed. The default value is
    #           <code>false</code>.</p>
    #            <p>When <code>isResumable</code> is set to <code>true</code>, the file uploader uses a
    #         multipart upload to break the files into chunks before upload. The progress of the upload
    #         isn't continuous, because the file uploader uploads a chunk at a time.</p>
    #   @return [Boolean]
    # @!attribute max_file_count
    #   <p>Specifies the maximum number of files that can be selected to upload. The default value is
    #         an unlimited number of files.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum file size in bytes that the file uploader will accept. The default value is an
    #         unlimited file size.</p>
    #   @return [Integer]
    class FileUploaderFieldConfig < Struct.new(
      :access_level,
      :accepted_file_types,
      :show_thumbnails,
      :is_resumable,
      :max_file_count,
      :max_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings for a <code>Form</code> user interface (UI) element
    #       for an Amplify app. A form is a component you can add to your project by specifying a data
    #       source as the default configuration for the form.</p>
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the form.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the form.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the form.</p>
    #   @return [String]
    # @!attribute form_action_type
    #   <p>The operation to perform on the specified form.</p>
    #   @return [String]
    # @!attribute style
    #   <p>Stores the configuration for the form's style.</p>
    #   @return [Types::FormStyle]
    # @!attribute data_type
    #   <p>The type of data source to use to create the form.</p>
    #   @return [Types::FormDataTypeConfig]
    # @!attribute fields
    #   <p>Stores the information about the form's fields.</p>
    #   @return [Hash<String, Types::FieldConfig>]
    # @!attribute sectional_elements
    #   <p>Stores the visual helper elements for the form that are not associated with any
    #         data.</p>
    #   @return [Hash<String, Types::SectionalElement>]
    # @!attribute schema_version
    #   <p>The schema version of the form when it was imported.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the form.</p>
    #   @return [Hash<String, String>]
    # @!attribute cta
    #   <p>Stores the call to action configuration for the form.</p>
    #   @return [Types::FormCTA]
    # @!attribute label_decorator
    #   <p>Specifies an icon or decoration to display on the form.</p>
    #   @return [String]
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
      :label_decorator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how to bind a component property to form data.</p>
    # @!attribute element
    #   <p>The name of the component to retrieve a value from.</p>
    #   @return [String]
    # @!attribute property
    #   <p>The property to retrieve a value from.</p>
    #   @return [String]
    class FormBindingElement < Struct.new(
      :element,
      :property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for a button UI element that is a part of a form.</p>
    # @!attribute excluded
    #   <p>Specifies whether the button is visible on the form.</p>
    #   @return [Boolean]
    # @!attribute children
    #   <p>Describes the button's properties.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The position of the button.</p>
    #   @return [Types::FieldPosition]
    class FormButton < Struct.new(
      :excluded,
      :children,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the call to action button configuration for the form.</p>
    # @!attribute position
    #   <p>The position of the button.</p>
    #   @return [String]
    # @!attribute clear
    #   <p>Displays a clear button.</p>
    #   @return [Types::FormButton]
    # @!attribute cancel
    #   <p>Displays a cancel button.</p>
    #   @return [Types::FormButton]
    # @!attribute submit
    #   <p>Displays a submit button.</p>
    #   @return [Types::FormButton]
    class FormCTA < Struct.new(
      :position,
      :clear,
      :cancel,
      :submit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data type configuration for the data source associated with a form.</p>
    # @!attribute data_source_type
    #   <p>The data source type, either an Amplify DataStore model or a custom data type.</p>
    #   @return [String]
    # @!attribute data_type_name
    #   <p>The unique name of the data type you are using as the data source for the form.</p>
    #   @return [String]
    class FormDataTypeConfig < Struct.new(
      :data_source_type,
      :data_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data binding configuration for a form's input fields at runtime.You can use
    #         <code>FormInputBindingPropertiesValue</code> to add exposed properties to a form to allow
    #       different values to be entered when a form is reused in different places in an app.</p>
    # @!attribute type
    #   <p>The property type.</p>
    #   @return [String]
    # @!attribute binding_properties
    #   <p>Describes the properties to customize with data at runtime.</p>
    #   @return [Types::FormInputBindingPropertiesValueProperties]
    class FormInputBindingPropertiesValue < Struct.new(
      :type,
      :binding_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data binding configuration for a specific property using data stored in
    #         Amazon Web Services. For Amazon Web Services connected properties, you can bind a property to
    #       data stored in an Amplify DataStore model.</p>
    # @!attribute model
    #   <p>An Amplify DataStore model.</p>
    #   @return [String]
    class FormInputBindingPropertiesValueProperties < Struct.new(
      :model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for an input field on a form. Use
    #         <code>FormInputValueProperty</code> to specify the values to render or bind by
    #       default.</p>
    # @!attribute value
    #   <p>The value to assign to the input field.</p>
    #   @return [String]
    # @!attribute binding_properties
    #   <p>The information to bind fields to data at runtime.</p>
    #   @return [Types::FormInputValuePropertyBindingProperties]
    # @!attribute concat
    #   <p>A list of form properties to concatenate to create the value to assign to this field
    #         property.</p>
    #   @return [Array<Types::FormInputValueProperty>]
    class FormInputValueProperty < Struct.new(
      :value,
      :binding_properties,
      :concat,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Associates a form property to a binding property. This enables exposed properties on the
    #       top level form to propagate data to the form's property values.</p>
    # @!attribute property
    #   <p>The form property to bind to the data field.</p>
    #   @return [String]
    # @!attribute field
    #   <p>The data field to bind the property to.</p>
    #   @return [String]
    class FormInputValuePropertyBindingProperties < Struct.new(
      :property,
      :field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for the form's style.</p>
    # @!attribute horizontal_gap
    #   <p>The spacing for the horizontal gap.</p>
    #   @return [Types::FormStyleConfig]
    # @!attribute vertical_gap
    #   <p>The spacing for the vertical gap.</p>
    #   @return [Types::FormStyleConfig]
    # @!attribute outer_padding
    #   <p>The size of the outer padding for the form.</p>
    #   @return [Types::FormStyleConfig]
    class FormStyle < Struct.new(
      :horizontal_gap,
      :vertical_gap,
      :outer_padding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration settings for the form's style properties.</p>
    # @!attribute token_reference
    #   <p>A reference to a design token to use to bind the form's style properties to an existing
    #         theme.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the style setting.</p>
    #   @return [String]
    class FormStyleConfig < Struct.new(
      :token_reference,
      :value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TokenReference < FormStyleConfig; end
      class Value < FormStyleConfig; end
      class Unknown < FormStyleConfig; end
    end

    # <p>Describes the basic information about a form.</p>
    # @!attribute app_id
    #   <p>The unique ID for the app associated with the form summary.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The form's data source type.</p>
    #   @return [Types::FormDataTypeConfig]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute form_action_type
    #   <p>The type of operation to perform on the form.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the form.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the form.</p>
    #   @return [String]
    class FormSummary < Struct.new(
      :app_id,
      :data_type,
      :environment_name,
      :form_action_type,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the code generation job.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app associated with the code generation job.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the code generation job.</p>
    #   @return [String]
    class GetCodegenJobRequest < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The configuration settings for the code generation job.</p>
    #   @return [Types::CodegenJob]
    class GetCodegenJobResponse < Struct.new(
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the component.</p>
    #   @return [String]
    class GetComponentInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>Represents the configuration settings for the component.</p>
    #   @return [Types::Component]
    class GetComponentOutput < Struct.new(
      :component,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the form.</p>
    #   @return [String]
    class GetFormInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute form
    #   <p>Represents the configuration settings for the form.</p>
    #   @return [Types::Form]
    class GetFormOutput < Struct.new(
      :form,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    class GetMetadataInput < Struct.new(
      :app_id,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute features
    #   <p>Represents the configuration settings for the features metadata.</p>
    #   @return [Hash<String, String>]
    class GetMetadataOutput < Struct.new(
      :features,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID for the theme.</p>
    #   @return [String]
    class GetThemeInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute theme
    #   <p>Represents the configuration settings for the theme.</p>
    #   @return [Types::Theme]
    class GetThemeOutput < Struct.new(
      :theme,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the GraphQL configuration for an API for a code generation job.</p>
    # @!attribute types_file_path
    #   <p>The path to the GraphQL types file, relative to the component output directory.</p>
    #   @return [String]
    # @!attribute queries_file_path
    #   <p>The path to the GraphQL queries file, relative to the component output directory.</p>
    #   @return [String]
    # @!attribute mutations_file_path
    #   <p>The path to the GraphQL mutations file, relative to the component output directory.</p>
    #   @return [String]
    # @!attribute subscriptions_file_path
    #   <p>The path to the GraphQL subscriptions file, relative to the component output directory.</p>
    #   @return [String]
    # @!attribute fragments_file_path
    #   <p>The path to the GraphQL fragments file, relative to the component output directory.</p>
    #   @return [String]
    class GraphQLRenderConfig < Struct.new(
      :types_file_path,
      :queries_file_path,
      :mutations_file_path,
      :subscriptions_file_path,
      :fragments_file_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error has occurred. Please retry your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid or out-of-range value was supplied for the input parameter.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of jobs to retrieve.</p>
    #   @return [Integer]
    class ListCodegenJobsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The list of code generation jobs for the Amplify app.</p>
    #   @return [Array<Types::CodegenJobSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListCodegenJobsResponse < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of components to retrieve.</p>
    #   @return [Integer]
    class ListComponentsInput < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The list of components for the Amplify app.</p>
    #   @return [Array<Types::ComponentSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListComponentsOutput < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of forms to retrieve.</p>
    #   @return [Integer]
    class ListFormsInput < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The list of forms for the Amplify app.</p>
    #   @return [Array<Types::FormSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListFormsOutput < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key value pairs for a specified Amazon Resource Name (ARN).</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of theme results to return in the response.</p>
    #   @return [Integer]
    class ListThemesInput < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The list of themes for the Amplify app.</p>
    #   @return [Array<Types::ThemeSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's returned if more results are available.</p>
    #   @return [String]
    class ListThemesOutput < Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the state configuration when an action modifies a property of another element
    #       within the same component.</p>
    # @!attribute component_name
    #   <p>The name of the component that is being modified.</p>
    #   @return [String]
    # @!attribute property
    #   <p>The name of the component property to apply the state configuration to.</p>
    #   @return [String]
    # @!attribute set
    #   <p>The state configuration to assign to the property.</p>
    #   @return [Types::ComponentProperty]
    class MutationActionSetStateParameter < Struct.new(
      :component_name,
      :property,
      :set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for an application with no API being used.</p>
    class NoApiRenderConfig < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information for generating Amplify DataStore queries. Use a
    #         <code>Predicate</code> to retrieve a subset of the data in a collection.</p>
    # @!attribute or
    #   <p>A list of predicates to combine logically.</p>
    #   @return [Array<Types::Predicate>]
    # @!attribute and
    #   <p>A list of predicates to combine logically.</p>
    #   @return [Array<Types::Predicate>]
    # @!attribute field
    #   <p>The field to query.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to use to perform the evaluation.</p>
    #   @return [String]
    # @!attribute operand
    #   <p>The value to use when performing the evaluation.</p>
    #   @return [String]
    # @!attribute operand_type
    #   <p>The type of value to use when performing the evaluation.</p>
    #   @return [String]
    class Predicate < Struct.new(
      :or,
      :and,
      :field,
      :operator,
      :operand,
      :operand_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores the metadata information about a feature on a form.</p>
    # @!attribute new_value
    #   <p>The new information to store.</p>
    #   @return [String]
    class PutMetadataFlagBody < Struct.new(
      :new_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute feature_name
    #   <p>The name of the feature associated with the metadata.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The metadata information to store.</p>
    #   @return [Types::PutMetadataFlagBody]
    class PutMetadataFlagInput < Struct.new(
      :app_id,
      :environment_name,
      :feature_name,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the code generation job configuration for a React project.</p>
    # @!attribute module
    #   <p>The JavaScript module type.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The ECMAScript specification to use.</p>
    #   @return [String]
    # @!attribute script
    #   <p>The file type to use for a JavaScript project.</p>
    #   @return [String]
    # @!attribute render_type_declarations
    #   <p>Specifies whether the code generation job should render type declaration files.</p>
    #   @return [Boolean]
    # @!attribute inline_source_map
    #   <p>Specifies whether the code generation job should render inline source maps.</p>
    #   @return [Boolean]
    # @!attribute api_configuration
    #   <p>The API configuration for the code generation job.</p>
    #   @return [Types::ApiConfiguration]
    # @!attribute dependencies
    #   <p>Lists the dependency packages that may be required for the project code to run.</p>
    #   @return [Hash<String, String>]
    class ReactStartCodegenJobData < Struct.new(
      :module,
      :target,
      :script,
      :render_type_declarations,
      :inline_source_map,
      :api_configuration,
      :dependencies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:render_type_declarations] = false unless options.key?(:render_type_declarations)
        options[:inline_source_map] = false unless options.key?(:inline_source_map)
        super
      end
    end

    # @!attribute provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    #   @return [String]
    # @!attribute refresh_token_body
    #   <p>Information about the refresh token request.</p>
    #   @return [Types::RefreshTokenRequestBody]
    class RefreshTokenInput < Struct.new(
      :provider,
      :refresh_token_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_token
    #   <p>The access token.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>The date and time when the new access token expires.</p>
    #   @return [Integer]
    class RefreshTokenOutput < Struct.new(
      :access_token,
      :expires_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a refresh token.</p>
    # @!attribute token
    #   <p>The token to use to refresh a previously issued access token that might have
    #         expired.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The ID of the client to request the token from.</p>
    #   @return [String]
    class RefreshTokenRequestBody < Struct.new(
      :token,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified in the request conflicts with an existing resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource does not exist, or access was denied.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores the configuration information for a visual helper element for a form. A sectional
    #       element can be a header, a text block, or a divider. These elements are static and not
    #       associated with any data.</p>
    # @!attribute type
    #   <p>The type of sectional element. Valid values are <code>Heading</code>, <code>Text</code>,
    #         and <code>Divider</code>.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Specifies the position of the text in a field for a <code>Text</code> sectional
    #         element.</p>
    #   @return [Types::FieldPosition]
    # @!attribute text
    #   <p>The text for a <code>Text</code> sectional element.</p>
    #   @return [String]
    # @!attribute level
    #   <p>Specifies the size of the font for a <code>Heading</code> sectional element. Valid values
    #         are <code>1 | 2 | 3 | 4 | 5 | 6</code>.</p>
    #   @return [Integer]
    # @!attribute orientation
    #   <p>Specifies the orientation for a <code>Divider</code> sectional element. Valid values are
    #           <code>horizontal</code> or <code>vertical</code>.</p>
    #   @return [String]
    # @!attribute excluded
    #   <p>Excludes a sectional element that was generated by default for a specified data
    #         model.</p>
    #   @return [Boolean]
    class SectionalElement < Struct.new(
      :type,
      :position,
      :text,
      :level,
      :orientation,
      :excluded,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the
    #       maximum number of service resources or operations for your Amazon Web Services account. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how to sort the data that you bind to a component.</p>
    # @!attribute field
    #   <p>The field to perform the sort on.</p>
    #   @return [String]
    # @!attribute direction
    #   <p>The direction of the sort, either ascending or descending.</p>
    #   @return [String]
    class SortProperty < Struct.new(
      :field,
      :direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The code generation job resource configuration.</p>
    # @!attribute render_config
    #   <p>The code generation configuration for the codegen job.</p>
    #   @return [Types::CodegenJobRenderConfig]
    # @!attribute generic_data_schema
    #   <p>The data schema to use for a code generation job.</p>
    #   @return [Types::CodegenJobGenericDataSchema]
    # @!attribute auto_generate_forms
    #   <p>Specifies whether to autogenerate forms in the code generation job.</p>
    #   @return [Boolean]
    # @!attribute features
    #   <p>The feature flags for a code generation job.</p>
    #   @return [Types::CodegenFeatureFlags]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the code generation job data.</p>
    #   @return [Hash<String, String>]
    class StartCodegenJobData < Struct.new(
      :render_config,
      :generic_data_schema,
      :auto_generate_forms,
      :features,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The idempotency token used to ensure that the code generation job request completes only once.</p>
    #   @return [String]
    # @!attribute codegen_job_to_create
    #   <p>The code generation job resource configuration.</p>
    #   @return [Types::StartCodegenJobData]
    class StartCodegenJobRequest < Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :codegen_job_to_create,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>The code generation job for a UI component that is associated with an Amplify app.</p>
    #   @return [Types::CodegenJob]
    class StartCodegenJobResponse < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to tag a resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key value pairs for a specified Amazon Resource Name (ARN).</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A theme is a collection of style settings that apply globally to the components associated
    #       with an Amplify application.</p>
    # @!attribute app_id
    #   <p>The unique ID for the Amplify app associated with the theme.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID for the theme.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the theme.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that the theme was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The time that the theme was modified.</p>
    #   @return [Time]
    # @!attribute values
    #   <p>A list of key-value pairs that defines the properties of the theme.</p>
    #   @return [Array<Types::ThemeValues>]
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize a theme.</p>
    #   @return [Array<Types::ThemeValues>]
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the theme.</p>
    #   @return [Hash<String, String>]
    class Theme < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :created_at,
      :modified_at,
      :values,
      :overrides,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the basic information about a theme.</p>
    # @!attribute app_id
    #   <p>The unique ID for the app associated with the theme summary.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the theme.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the theme.</p>
    #   @return [String]
    class ThemeSummary < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a theme's properties.</p>
    # @!attribute value
    #   <p>The value of a theme property.</p>
    #   @return [String]
    # @!attribute children
    #   <p>A list of key-value pairs that define the theme's properties.</p>
    #   @return [Array<Types::ThemeValues>]
    class ThemeValue < Struct.new(
      :value,
      :children,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair that defines a property of a theme.</p>
    # @!attribute key
    #   <p>The name of the property.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the property.</p>
    #   @return [Types::ThemeValue]
    class ThemeValues < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You don't have permission to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to untag a resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to use to untag a resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates and saves all of the information about a component, based on component ID.</p>
    # @!attribute id
    #   <p>The unique ID of the component to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the component to update.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The unique ID of the component in its original source system, such as Figma.</p>
    #   @return [String]
    # @!attribute component_type
    #   <p>The type of the component. This can be an Amplify custom UI component or
    #         another custom component.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>Describes the component's properties.</p>
    #   @return [Hash<String, Types::ComponentProperty>]
    # @!attribute children
    #   <p>The components that are instances of the main component.</p>
    #   @return [Array<Types::ComponentChild>]
    # @!attribute variants
    #   <p>A list of the unique variants of the main component being updated.</p>
    #   @return [Array<Types::ComponentVariant>]
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize the component.</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute binding_properties
    #   <p>The data binding information for the component's properties.</p>
    #   @return [Hash<String, Types::ComponentBindingPropertiesValue>]
    # @!attribute collection_properties
    #   <p>The configuration for binding a component's properties to a data model. Use this for a
    #         collection component.</p>
    #   @return [Hash<String, Types::ComponentDataConfiguration>]
    # @!attribute events
    #   <p>The event configuration for the component. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components.</p>
    #   @return [Hash<String, Types::ComponentEvent>]
    # @!attribute schema_version
    #   <p>The schema version of the component when it was imported.</p>
    #   @return [String]
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
      :schema_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID for the component.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #   @return [String]
    # @!attribute updated_component
    #   <p>The configuration of the updated component.</p>
    #   @return [Types::UpdateComponentData]
    class UpdateComponentInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_component,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the updated component.</p>
    #   @return [Types::Component]
    class UpdateComponentOutput < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates and saves all of the information about a form, based on form ID.</p>
    # @!attribute name
    #   <p>The name of the form.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The type of data source to use to create the form.</p>
    #   @return [Types::FormDataTypeConfig]
    # @!attribute form_action_type
    #   <p>Specifies whether to perform a create or update action on the form.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The configuration information for the form's fields.</p>
    #   @return [Hash<String, Types::FieldConfig>]
    # @!attribute style
    #   <p>The configuration for the form's style.</p>
    #   @return [Types::FormStyle]
    # @!attribute sectional_elements
    #   <p>The configuration information for the visual helper elements for the form. These elements
    #         are not associated with any data.</p>
    #   @return [Hash<String, Types::SectionalElement>]
    # @!attribute schema_version
    #   <p>The schema version of the form.</p>
    #   @return [String]
    # @!attribute cta
    #   <p>The <code>FormCTA</code> object that stores the call to action configuration for the
    #         form.</p>
    #   @return [Types::FormCTA]
    # @!attribute label_decorator
    #   <p>Specifies an icon or decoration to display on the form.</p>
    #   @return [String]
    class UpdateFormData < Struct.new(
      :name,
      :data_type,
      :form_action_type,
      :fields,
      :style,
      :sectional_elements,
      :schema_version,
      :cta,
      :label_decorator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID for the form.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #   @return [String]
    # @!attribute updated_form
    #   <p>The request accepts the following data in JSON format.</p>
    #   @return [Types::UpdateFormData]
    class UpdateFormInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_form,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the updated form.</p>
    #   @return [Types::Form]
    class UpdateFormOutput < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Saves the data binding information for a theme.</p>
    # @!attribute id
    #   <p>The unique ID of the theme to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the theme to update.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key-value pairs that define the theme's properties.</p>
    #   @return [Array<Types::ThemeValues>]
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize the theme.</p>
    #   @return [Array<Types::ThemeValues>]
    class UpdateThemeData < Struct.new(
      :id,
      :name,
      :values,
      :overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID for the theme.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #   @return [String]
    # @!attribute updated_theme
    #   <p>The configuration of the updated theme.</p>
    #   @return [Types::UpdateThemeData]
    class UpdateThemeInput < Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_theme,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the updated theme.</p>
    #   @return [Types::Theme]
    class UpdateThemeOutput < Struct.new(
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Associates a complex object with a display value. Use <code>ValueMapping</code> to store
    #       how to represent complex objects when they are displayed.</p>
    # @!attribute display_value
    #   <p>The value to display for the complex object.</p>
    #   @return [Types::FormInputValueProperty]
    # @!attribute value
    #   <p>The complex object.</p>
    #   @return [Types::FormInputValueProperty]
    class ValueMapping < Struct.new(
      :display_value,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data binding configuration for a value map.</p>
    # @!attribute values
    #   <p>The value and display value pairs.</p>
    #   @return [Array<Types::ValueMapping>]
    # @!attribute binding_properties
    #   <p>The information to bind fields to data at runtime.</p>
    #   @return [Hash<String, Types::FormInputBindingPropertiesValue>]
    class ValueMappings < Struct.new(
      :values,
      :binding_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
