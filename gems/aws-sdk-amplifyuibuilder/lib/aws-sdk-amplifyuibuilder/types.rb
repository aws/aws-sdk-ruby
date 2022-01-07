# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AmplifyUIBuilder
  module Types

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
    # @!attribute [rw] binding_properties
    #   The information to connect a component's properties to data at
    #   runtime.
    #   @return [Hash<String,Types::ComponentBindingPropertiesValue>]
    #
    # @!attribute [rw] children
    #   A list of the component's `ComponentChild` instances.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] collection_properties
    #   The data binding configuration for the component's properties. Use
    #   this for a collection component.
    #   @return [Hash<String,Types::ComponentDataConfiguration>]
    #
    # @!attribute [rw] component_type
    #   The type of the component. This can be an Amplify custom UI
    #   component or another custom component.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that the component was created.
    #   @return [Time]
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
    # @!attribute [rw] modified_at
    #   The time that the component was modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Describes the component's properties that can be overriden in a
    #   customized instance of the component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] properties
    #   Describes the component's properties.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the component in its original source system, such
    #   as Figma.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] variants
    #   A list of the component's variants. A variant is a unique style
    #   configuration of a main component.
    #   @return [Array<Types::ComponentVariant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Component AWS API Documentation
    #
    class Component < Struct.new(
      :app_id,
      :binding_properties,
      :children,
      :collection_properties,
      :component_type,
      :created_at,
      :environment_name,
      :id,
      :modified_at,
      :name,
      :overrides,
      :properties,
      :source_id,
      :tags,
      :variants)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a component at runtime.
    # You can use `ComponentBindingPropertiesValue` to add exposed
    # properties to a component to allow different values to be entered when
    # a component is reused in different places in an app.
    #
    # @note When making an API call, you may pass ComponentBindingPropertiesValue
    #   data as a hash:
    #
    #       {
    #         binding_properties: {
    #           bucket: "String",
    #           default_value: "String",
    #           field: "String",
    #           key: "String",
    #           model: "String",
    #           predicates: [
    #             {
    #               and: {
    #                 # recursive PredicateList
    #               },
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               or: {
    #                 # recursive PredicateList
    #               },
    #             },
    #           ],
    #           user_attribute: "String",
    #         },
    #         default_value: "String",
    #         type: "String",
    #       }
    #
    # @!attribute [rw] binding_properties
    #   Describes the properties to customize with data at runtime.
    #   @return [Types::ComponentBindingPropertiesValueProperties]
    #
    # @!attribute [rw] default_value
    #   The default value of the property.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The property type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentBindingPropertiesValue AWS API Documentation
    #
    class ComponentBindingPropertiesValue < Struct.new(
      :binding_properties,
      :default_value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data binding configuration for a specific property
    # using data stored in Amazon Web Services. For Amazon Web Services
    # connected properties, you can bind a property to data stored in an
    # Amazon S3 bucket, an Amplify DataStore model or an authenticated user
    # attribute.
    #
    # @note When making an API call, you may pass ComponentBindingPropertiesValueProperties
    #   data as a hash:
    #
    #       {
    #         bucket: "String",
    #         default_value: "String",
    #         field: "String",
    #         key: "String",
    #         model: "String",
    #         predicates: [
    #           {
    #             and: {
    #               # recursive PredicateList
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             or: {
    #               # recursive PredicateList
    #             },
    #           },
    #         ],
    #         user_attribute: "String",
    #       }
    #
    # @!attribute [rw] bucket
    #   An Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value to assign to the property.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to bind the data to.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The storage key for an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   An Amplify DataStore model.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentBindingPropertiesValueProperties AWS API Documentation
    #
    class ComponentBindingPropertiesValueProperties < Struct.new(
      :bucket,
      :default_value,
      :field,
      :key,
      :model,
      :predicates,
      :user_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # A nested UI configuration within a parent `Component`.
    #
    # @note When making an API call, you may pass ComponentChild
    #   data as a hash:
    #
    #       {
    #         children: [
    #           {
    #             children: {
    #               # recursive ComponentChildList
    #             },
    #             component_type: "String", # required
    #             name: "String", # required
    #             properties: { # required
    #               "String" => {
    #                 binding_properties: {
    #                   field: "String",
    #                   property: "String", # required
    #                 },
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 collection_binding_properties: {
    #                   field: "String",
    #                   property: "String", # required
    #                 },
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   field: "String",
    #                   operand: "String",
    #                   operator: "String",
    #                   property: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                 },
    #                 configured: false,
    #                 default_value: "String",
    #                 event: "String",
    #                 imported_value: "String",
    #                 model: "String",
    #                 type: "String",
    #                 user_attribute: "String",
    #                 value: "String",
    #               },
    #             },
    #           },
    #         ],
    #         component_type: "String", # required
    #         name: "String", # required
    #         properties: { # required
    #           "String" => {
    #             binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               },
    #             },
    #             collection_binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             concat: [
    #               {
    #                 # recursive ComponentProperty
    #               },
    #             ],
    #             condition: {
    #               else: {
    #                 # recursive ComponentProperty
    #               },
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               property: "String",
    #               then: {
    #                 # recursive ComponentProperty
    #               },
    #             },
    #             configured: false,
    #             default_value: "String",
    #             event: "String",
    #             imported_value: "String",
    #             model: "String",
    #             type: "String",
    #             user_attribute: "String",
    #             value: "String",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] children
    #   The list of `ComponentChild` instances for this component.
    #   @return [Array<Types::ComponentChild>]
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
    #   Describes the properties of the child component.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentChild AWS API Documentation
    #
    class ComponentChild < Struct.new(
      :children,
      :component_type,
      :name,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a conditional expression to set a component property. Use
    # `ComponentConditionProperty` to set a property to different values
    # conditionally, based on the value of another property.
    #
    # @note When making an API call, you may pass ComponentConditionProperty
    #   data as a hash:
    #
    #       {
    #         else: {
    #           binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             },
    #           },
    #           collection_binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             },
    #           ],
    #           condition: {
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             property: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #           },
    #           configured: false,
    #           default_value: "String",
    #           event: "String",
    #           imported_value: "String",
    #           model: "String",
    #           type: "String",
    #           user_attribute: "String",
    #           value: "String",
    #         },
    #         field: "String",
    #         operand: "String",
    #         operator: "String",
    #         property: "String",
    #         then: {
    #           binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             },
    #           },
    #           collection_binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             },
    #           ],
    #           condition: {
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             property: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #           },
    #           configured: false,
    #           default_value: "String",
    #           event: "String",
    #           imported_value: "String",
    #           model: "String",
    #           type: "String",
    #           user_attribute: "String",
    #           value: "String",
    #         },
    #       }
    #
    # @!attribute [rw] else
    #   The value to assign to the property if the condition is not met.
    #   @return [Types::ComponentProperty]
    #
    # @!attribute [rw] field
    #   The name of a field. Specify this when the property is a data model.
    #   @return [String]
    #
    # @!attribute [rw] operand
    #   The value of the property to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use to perform the evaluation, such as `eq` to
    #   represent equals.
    #   @return [String]
    #
    # @!attribute [rw] property
    #   The name of the conditional property.
    #   @return [String]
    #
    # @!attribute [rw] then
    #   The value to assign to the property if the condition is met.
    #   @return [Types::ComponentProperty]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentConditionProperty AWS API Documentation
    #
    class ComponentConditionProperty < Struct.new(
      :else,
      :field,
      :operand,
      :operator,
      :property,
      :then)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for binding a component's properties to
    # data.
    #
    # @note When making an API call, you may pass ComponentDataConfiguration
    #   data as a hash:
    #
    #       {
    #         identifiers: ["String"],
    #         model: "String", # required
    #         predicate: {
    #           and: [
    #             {
    #               # recursive Predicate
    #             },
    #           ],
    #           field: "String",
    #           operand: "String",
    #           operator: "String",
    #           or: [
    #             {
    #               # recursive Predicate
    #             },
    #           ],
    #         },
    #         sort: [
    #           {
    #             direction: "ASC", # required, accepts ASC, DESC
    #             field: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] identifiers
    #   A list of IDs to use to bind data to a component. Use this property
    #   to bind specifically chosen data, rather than data retrieved from a
    #   query.
    #   @return [Array<String>]
    #
    # @!attribute [rw] model
    #   The name of the data model to use to bind data to a component.
    #   @return [String]
    #
    # @!attribute [rw] predicate
    #   Represents the conditional logic to use when binding data to a
    #   component. Use this property to retrieve only a subset of the data
    #   in a collection.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] sort
    #   Describes how to sort the component's properties.
    #   @return [Array<Types::SortProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentDataConfiguration AWS API Documentation
    #
    class ComponentDataConfiguration < Struct.new(
      :identifiers,
      :model,
      :predicate,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for all of a component's properties. Use
    # `ComponentProperty` to specify the values to render or bind by
    # default.
    #
    # @note When making an API call, you may pass ComponentProperty
    #   data as a hash:
    #
    #       {
    #         binding_properties: {
    #           field: "String",
    #           property: "String", # required
    #         },
    #         bindings: {
    #           "String" => {
    #             element: "String", # required
    #             property: "String", # required
    #           },
    #         },
    #         collection_binding_properties: {
    #           field: "String",
    #           property: "String", # required
    #         },
    #         concat: [
    #           {
    #             binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               },
    #             },
    #             collection_binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             concat: {
    #               # recursive ComponentPropertyList
    #             },
    #             condition: {
    #               else: {
    #                 # recursive ComponentProperty
    #               },
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               property: "String",
    #               then: {
    #                 # recursive ComponentProperty
    #               },
    #             },
    #             configured: false,
    #             default_value: "String",
    #             event: "String",
    #             imported_value: "String",
    #             model: "String",
    #             type: "String",
    #             user_attribute: "String",
    #             value: "String",
    #           },
    #         ],
    #         condition: {
    #           else: {
    #             binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               },
    #             },
    #             collection_binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             concat: [
    #               {
    #                 # recursive ComponentProperty
    #               },
    #             ],
    #             condition: {
    #               # recursive ComponentConditionProperty
    #             },
    #             configured: false,
    #             default_value: "String",
    #             event: "String",
    #             imported_value: "String",
    #             model: "String",
    #             type: "String",
    #             user_attribute: "String",
    #             value: "String",
    #           },
    #           field: "String",
    #           operand: "String",
    #           operator: "String",
    #           property: "String",
    #           then: {
    #             binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               },
    #             },
    #             collection_binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             concat: [
    #               {
    #                 # recursive ComponentProperty
    #               },
    #             ],
    #             condition: {
    #               # recursive ComponentConditionProperty
    #             },
    #             configured: false,
    #             default_value: "String",
    #             event: "String",
    #             imported_value: "String",
    #             model: "String",
    #             type: "String",
    #             user_attribute: "String",
    #             value: "String",
    #           },
    #         },
    #         configured: false,
    #         default_value: "String",
    #         event: "String",
    #         imported_value: "String",
    #         model: "String",
    #         type: "String",
    #         user_attribute: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] binding_properties
    #   The information to bind the component property to data at runtime.
    #   @return [Types::ComponentPropertyBindingProperties]
    #
    # @!attribute [rw] bindings
    #   The information to bind the component property to form data.
    #   @return [Hash<String,Types::FormBindingElement>]
    #
    # @!attribute [rw] collection_binding_properties
    #   The information to bind the component property to data at runtime.
    #   Use this for collection components.
    #   @return [Types::ComponentPropertyBindingProperties]
    #
    # @!attribute [rw] concat
    #   A list of component properties to concatenate to create the value to
    #   assign to this component property.
    #   @return [Array<Types::ComponentProperty>]
    #
    # @!attribute [rw] condition
    #   The conditional expression to use to assign a value to the component
    #   property..
    #   @return [Types::ComponentConditionProperty]
    #
    # @!attribute [rw] configured
    #   Specifies whether the user configured the property in Amplify Studio
    #   after importing it.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_value
    #   The default value to assign to the component property.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   An event that occurs in your app. Use this for workflow data
    #   binding.
    #   @return [String]
    #
    # @!attribute [rw] imported_value
    #   The default value assigned to property when the component is
    #   imported into an app.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The data model to use to assign a value to the component property.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The component type.
    #   @return [String]
    #
    # @!attribute [rw] user_attribute
    #   An authenticated user attribute to use to assign a value to the
    #   component property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to assign to the component property.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentProperty AWS API Documentation
    #
    class ComponentProperty < Struct.new(
      :binding_properties,
      :bindings,
      :collection_binding_properties,
      :concat,
      :condition,
      :configured,
      :default_value,
      :event,
      :imported_value,
      :model,
      :type,
      :user_attribute,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a component property to a binding property. This enables
    # exposed properties on the top level component to propagate data to the
    # component's property values.
    #
    # @note When making an API call, you may pass ComponentPropertyBindingProperties
    #   data as a hash:
    #
    #       {
    #         field: "String",
    #         property: "String", # required
    #       }
    #
    # @!attribute [rw] field
    #   The data field to bind the property to.
    #   @return [String]
    #
    # @!attribute [rw] property
    #   The component property to bind to the data field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentPropertyBindingProperties AWS API Documentation
    #
    class ComponentPropertyBindingProperties < Struct.new(
      :field,
      :property)
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
    # @!attribute [rw] component_type
    #   The component type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :app_id,
      :component_type,
      :environment_name,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the style configuration of a unique variation of a main
    # component.
    #
    # @note When making an API call, you may pass ComponentVariant
    #   data as a hash:
    #
    #       {
    #         overrides: {
    #           "String" => {
    #             "String" => "String",
    #           },
    #         },
    #         variant_values: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] overrides
    #   The properties of the component variant that can be overriden when
    #   customizing an instance of the component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] variant_values
    #   The combination of variants that comprise this variant.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ComponentVariant AWS API Documentation
    #
    class ComponentVariant < Struct.new(
      :overrides,
      :variant_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents all of the information that is required to create a
    # component.
    #
    # @note When making an API call, you may pass CreateComponentData
    #   data as a hash:
    #
    #       {
    #         binding_properties: { # required
    #           "String" => {
    #             binding_properties: {
    #               bucket: "String",
    #               default_value: "String",
    #               field: "String",
    #               key: "String",
    #               model: "String",
    #               predicates: [
    #                 {
    #                   and: {
    #                     # recursive PredicateList
    #                   },
    #                   field: "String",
    #                   operand: "String",
    #                   operator: "String",
    #                   or: {
    #                     # recursive PredicateList
    #                   },
    #                 },
    #               ],
    #               user_attribute: "String",
    #             },
    #             default_value: "String",
    #             type: "String",
    #           },
    #         },
    #         children: [
    #           {
    #             children: {
    #               # recursive ComponentChildList
    #             },
    #             component_type: "String", # required
    #             name: "String", # required
    #             properties: { # required
    #               "String" => {
    #                 binding_properties: {
    #                   field: "String",
    #                   property: "String", # required
    #                 },
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 collection_binding_properties: {
    #                   field: "String",
    #                   property: "String", # required
    #                 },
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   field: "String",
    #                   operand: "String",
    #                   operator: "String",
    #                   property: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                 },
    #                 configured: false,
    #                 default_value: "String",
    #                 event: "String",
    #                 imported_value: "String",
    #                 model: "String",
    #                 type: "String",
    #                 user_attribute: "String",
    #                 value: "String",
    #               },
    #             },
    #           },
    #         ],
    #         collection_properties: {
    #           "String" => {
    #             identifiers: ["String"],
    #             model: "String", # required
    #             predicate: {
    #               and: [
    #                 {
    #                   # recursive Predicate
    #                 },
    #               ],
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               or: [
    #                 {
    #                   # recursive Predicate
    #                 },
    #               ],
    #             },
    #             sort: [
    #               {
    #                 direction: "ASC", # required, accepts ASC, DESC
    #                 field: "String", # required
    #               },
    #             ],
    #           },
    #         },
    #         component_type: "ComponentType", # required
    #         name: "ComponentName", # required
    #         overrides: { # required
    #           "String" => {
    #             "String" => "String",
    #           },
    #         },
    #         properties: { # required
    #           "String" => {
    #             binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               },
    #             },
    #             collection_binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             concat: [
    #               {
    #                 # recursive ComponentProperty
    #               },
    #             ],
    #             condition: {
    #               else: {
    #                 # recursive ComponentProperty
    #               },
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               property: "String",
    #               then: {
    #                 # recursive ComponentProperty
    #               },
    #             },
    #             configured: false,
    #             default_value: "String",
    #             event: "String",
    #             imported_value: "String",
    #             model: "String",
    #             type: "String",
    #             user_attribute: "String",
    #             value: "String",
    #           },
    #         },
    #         source_id: "String",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         variants: [ # required
    #           {
    #             overrides: {
    #               "String" => {
    #                 "String" => "String",
    #               },
    #             },
    #             variant_values: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] binding_properties
    #   The data binding information for the component's properties.
    #   @return [Hash<String,Types::ComponentBindingPropertiesValue>]
    #
    # @!attribute [rw] children
    #   A list of child components that are instances of the main component.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] collection_properties
    #   The data binding configuration for customizing a component's
    #   properties. Use this for a collection component.
    #   @return [Hash<String,Types::ComponentDataConfiguration>]
    #
    # @!attribute [rw] component_type
    #   The component type. This can be an Amplify custom UI component or
    #   another custom component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Describes the component properties that can be overriden to
    #   customize an instance of the component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] properties
    #   Describes the component's properties.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the component in its original source system, such
    #   as Figma.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the component data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] variants
    #   A list of the unique variants of this component.
    #   @return [Array<Types::ComponentVariant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponentData AWS API Documentation
    #
    class CreateComponentData < Struct.new(
      :binding_properties,
      :children,
      :collection_properties,
      :component_type,
      :name,
      :overrides,
      :properties,
      :source_id,
      :tags,
      :variants)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateComponentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         client_token: "String",
    #         component_to_create: { # required
    #           binding_properties: { # required
    #             "String" => {
    #               binding_properties: {
    #                 bucket: "String",
    #                 default_value: "String",
    #                 field: "String",
    #                 key: "String",
    #                 model: "String",
    #                 predicates: [
    #                   {
    #                     and: {
    #                       # recursive PredicateList
    #                     },
    #                     field: "String",
    #                     operand: "String",
    #                     operator: "String",
    #                     or: {
    #                       # recursive PredicateList
    #                     },
    #                   },
    #                 ],
    #                 user_attribute: "String",
    #               },
    #               default_value: "String",
    #               type: "String",
    #             },
    #           },
    #           children: [
    #             {
    #               children: {
    #                 # recursive ComponentChildList
    #               },
    #               component_type: "String", # required
    #               name: "String", # required
    #               properties: { # required
    #                 "String" => {
    #                   binding_properties: {
    #                     field: "String",
    #                     property: "String", # required
    #                   },
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   collection_binding_properties: {
    #                     field: "String",
    #                     property: "String", # required
    #                   },
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     field: "String",
    #                     operand: "String",
    #                     operator: "String",
    #                     property: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                   },
    #                   configured: false,
    #                   default_value: "String",
    #                   event: "String",
    #                   imported_value: "String",
    #                   model: "String",
    #                   type: "String",
    #                   user_attribute: "String",
    #                   value: "String",
    #                 },
    #               },
    #             },
    #           ],
    #           collection_properties: {
    #             "String" => {
    #               identifiers: ["String"],
    #               model: "String", # required
    #               predicate: {
    #                 and: [
    #                   {
    #                     # recursive Predicate
    #                   },
    #                 ],
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 or: [
    #                   {
    #                     # recursive Predicate
    #                   },
    #                 ],
    #               },
    #               sort: [
    #                 {
    #                   direction: "ASC", # required, accepts ASC, DESC
    #                   field: "String", # required
    #                 },
    #               ],
    #             },
    #           },
    #           component_type: "ComponentType", # required
    #           name: "ComponentName", # required
    #           overrides: { # required
    #             "String" => {
    #               "String" => "String",
    #             },
    #           },
    #           properties: { # required
    #             "String" => {
    #               binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               collection_binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 property: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #               },
    #               configured: false,
    #               default_value: "String",
    #               event: "String",
    #               imported_value: "String",
    #               model: "String",
    #               type: "String",
    #               user_attribute: "String",
    #               value: "String",
    #             },
    #           },
    #           source_id: "String",
    #           tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           variants: [ # required
    #             {
    #               overrides: {
    #                 "String" => {
    #                   "String" => "String",
    #                 },
    #               },
    #               variant_values: {
    #                 "String" => "String",
    #               },
    #             },
    #           ],
    #         },
    #         environment_name: "String", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to associate with the component.
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
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponentRequest AWS API Documentation
    #
    class CreateComponentRequest < Struct.new(
      :app_id,
      :client_token,
      :component_to_create,
      :environment_name)
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

    # Represents all of the information that is required to create a theme.
    #
    # @note When making an API call, you may pass CreateThemeData
    #   data as a hash:
    #
    #       {
    #         name: "ThemeName", # required
    #         overrides: [
    #           {
    #             key: "String",
    #             value: {
    #               children: {
    #                 # recursive ThemeValuesList
    #               },
    #               value: "String",
    #             },
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         values: [ # required
    #           {
    #             key: "String",
    #             value: {
    #               children: {
    #                 # recursive ThemeValuesList
    #               },
    #               value: "String",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the theme.
    #   @return [String]
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
    # @!attribute [rw] values
    #   A list of key-value pairs that deﬁnes the properties of the theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateThemeData AWS API Documentation
    #
    class CreateThemeData < Struct.new(
      :name,
      :overrides,
      :tags,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateThemeRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         client_token: "String",
    #         environment_name: "String", # required
    #         theme_to_create: { # required
    #           name: "ThemeName", # required
    #           overrides: [
    #             {
    #               key: "String",
    #               value: {
    #                 children: {
    #                   # recursive ThemeValuesList
    #                 },
    #                 value: "String",
    #               },
    #             },
    #           ],
    #           tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           values: [ # required
    #             {
    #               key: "String",
    #               value: {
    #                 children: {
    #                   # recursive ThemeValuesList
    #                 },
    #                 value: "String",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app associated with the theme.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
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
      :client_token,
      :environment_name,
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

    # @note When making an API call, you may pass DeleteComponentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteThemeRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #       }
    #
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

    # @note When making an API call, you may pass ExchangeCodeForTokenRequest
    #   data as a hash:
    #
    #       {
    #         provider: "figma", # required, accepts figma
    #         request: { # required
    #           code: "SyntheticExchangeCodeForTokenRequestBodyString", # required
    #           redirect_uri: "String", # required
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass ExchangeCodeForTokenRequestBody
    #   data as a hash:
    #
    #       {
    #         code: "SyntheticExchangeCodeForTokenRequestBodyString", # required
    #         redirect_uri: "String", # required
    #       }
    #
    # @!attribute [rw] code
    #   The access code to send in the request.
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The location of the application that will receive the access code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExchangeCodeForTokenRequestBody AWS API Documentation
    #
    class ExchangeCodeForTokenRequestBody < Struct.new(
      :code,
      :redirect_uri)
      SENSITIVE = [:code]
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

    # @note When making an API call, you may pass ExportComponentsRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to export components to.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportComponentsRequest AWS API Documentation
    #
    class ExportComponentsRequest < Struct.new(
      :app_id,
      :environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Represents the configuration of the exported components.
    #   @return [Array<Types::Component>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportComponentsResponse AWS API Documentation
    #
    class ExportComponentsResponse < Struct.new(
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportThemesRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app to export the themes to.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportThemesRequest AWS API Documentation
    #
    class ExportThemesRequest < Struct.new(
      :app_id,
      :environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Represents the configuration of the exported themes.
    #   @return [Array<Types::Theme>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportThemesResponse AWS API Documentation
    #
    class ExportThemesResponse < Struct.new(
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes how to bind a component property to form data.
    #
    # @note When making an API call, you may pass FormBindingElement
    #   data as a hash:
    #
    #       {
    #         element: "String", # required
    #         property: "String", # required
    #       }
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

    # @note When making an API call, you may pass GetComponentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetThemeRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListComponentsRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of components to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :app_id,
      :environment_name,
      :max_results,
      :next_token)
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

    # @note When making an API call, you may pass ListThemesRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment that is a part of the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of theme results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListThemesRequest AWS API Documentation
    #
    class ListThemesRequest < Struct.new(
      :app_id,
      :environment_name,
      :max_results,
      :next_token)
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

    # Stores information for generating Amplify DataStore queries. Use a
    # `Predicate` to retrieve a subset of the data in a collection.
    #
    # @note When making an API call, you may pass Predicate
    #   data as a hash:
    #
    #       {
    #         and: [
    #           {
    #             and: {
    #               # recursive PredicateList
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             or: {
    #               # recursive PredicateList
    #             },
    #           },
    #         ],
    #         field: "String",
    #         operand: "String",
    #         operator: "String",
    #         or: [
    #           {
    #             and: {
    #               # recursive PredicateList
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             or: {
    #               # recursive PredicateList
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] and
    #   A list of predicates to combine logically.
    #   @return [Array<Types::Predicate>]
    #
    # @!attribute [rw] field
    #   The field to query.
    #   @return [String]
    #
    # @!attribute [rw] operand
    #   The value to use when performing the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use to perform the evaluation.
    #   @return [String]
    #
    # @!attribute [rw] or
    #   A list of predicates to combine logically.
    #   @return [Array<Types::Predicate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Predicate AWS API Documentation
    #
    class Predicate < Struct.new(
      :and,
      :field,
      :operand,
      :operator,
      :or)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RefreshTokenRequest
    #   data as a hash:
    #
    #       {
    #         provider: "figma", # required, accepts figma
    #         refresh_token_body: { # required
    #           token: "SyntheticRefreshTokenRequestBodyString", # required
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass RefreshTokenRequestBody
    #   data as a hash:
    #
    #       {
    #         token: "SyntheticRefreshTokenRequestBodyString", # required
    #       }
    #
    # @!attribute [rw] token
    #   The token to use to refresh a previously issued access token that
    #   might have expired.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/RefreshTokenRequestBody AWS API Documentation
    #
    class RefreshTokenRequestBody < Struct.new(
      :token)
      SENSITIVE = [:token]
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
    # @note When making an API call, you may pass SortProperty
    #   data as a hash:
    #
    #       {
    #         direction: "ASC", # required, accepts ASC, DESC
    #         field: "String", # required
    #       }
    #
    # @!attribute [rw] direction
    #   The direction of the sort, either ascending or descending.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to perform the sort on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/SortProperty AWS API Documentation
    #
    class SortProperty < Struct.new(
      :direction,
      :field)
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
    # @!attribute [rw] created_at
    #   The time that the theme was created.
    #   @return [Time]
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
    # @!attribute [rw] modified_at
    #   The time that the theme was modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the theme.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize a theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] tags
    #   One or more key-value pairs to use when tagging the theme.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] values
    #   A list of key-value pairs that defines the properties of the theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/Theme AWS API Documentation
    #
    class Theme < Struct.new(
      :app_id,
      :created_at,
      :environment_name,
      :id,
      :modified_at,
      :name,
      :overrides,
      :tags,
      :values)
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
    # @note When making an API call, you may pass ThemeValue
    #   data as a hash:
    #
    #       {
    #         children: [
    #           {
    #             key: "String",
    #             value: {
    #               children: {
    #                 # recursive ThemeValuesList
    #               },
    #               value: "String",
    #             },
    #           },
    #         ],
    #         value: "String",
    #       }
    #
    # @!attribute [rw] children
    #   A list of key-value pairs that define the theme's properties.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] value
    #   The value of a theme property.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ThemeValue AWS API Documentation
    #
    class ThemeValue < Struct.new(
      :children,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that defines a property of a theme.
    #
    # @note When making an API call, you may pass ThemeValues
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: {
    #           children: [
    #             {
    #               key: "String",
    #               value: {
    #                 # recursive ThemeValue
    #               },
    #             },
    #           ],
    #           value: "String",
    #         },
    #       }
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

    # Updates and saves all of the information about a component, based on
    # component ID.
    #
    # @note When making an API call, you may pass UpdateComponentData
    #   data as a hash:
    #
    #       {
    #         binding_properties: {
    #           "String" => {
    #             binding_properties: {
    #               bucket: "String",
    #               default_value: "String",
    #               field: "String",
    #               key: "String",
    #               model: "String",
    #               predicates: [
    #                 {
    #                   and: {
    #                     # recursive PredicateList
    #                   },
    #                   field: "String",
    #                   operand: "String",
    #                   operator: "String",
    #                   or: {
    #                     # recursive PredicateList
    #                   },
    #                 },
    #               ],
    #               user_attribute: "String",
    #             },
    #             default_value: "String",
    #             type: "String",
    #           },
    #         },
    #         children: [
    #           {
    #             children: {
    #               # recursive ComponentChildList
    #             },
    #             component_type: "String", # required
    #             name: "String", # required
    #             properties: { # required
    #               "String" => {
    #                 binding_properties: {
    #                   field: "String",
    #                   property: "String", # required
    #                 },
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 collection_binding_properties: {
    #                   field: "String",
    #                   property: "String", # required
    #                 },
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   field: "String",
    #                   operand: "String",
    #                   operator: "String",
    #                   property: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                 },
    #                 configured: false,
    #                 default_value: "String",
    #                 event: "String",
    #                 imported_value: "String",
    #                 model: "String",
    #                 type: "String",
    #                 user_attribute: "String",
    #                 value: "String",
    #               },
    #             },
    #           },
    #         ],
    #         collection_properties: {
    #           "String" => {
    #             identifiers: ["String"],
    #             model: "String", # required
    #             predicate: {
    #               and: [
    #                 {
    #                   # recursive Predicate
    #                 },
    #               ],
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               or: [
    #                 {
    #                   # recursive Predicate
    #                 },
    #               ],
    #             },
    #             sort: [
    #               {
    #                 direction: "ASC", # required, accepts ASC, DESC
    #                 field: "String", # required
    #               },
    #             ],
    #           },
    #         },
    #         component_type: "ComponentType",
    #         id: "Uuid",
    #         name: "ComponentName",
    #         overrides: {
    #           "String" => {
    #             "String" => "String",
    #           },
    #         },
    #         properties: {
    #           "String" => {
    #             binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               },
    #             },
    #             collection_binding_properties: {
    #               field: "String",
    #               property: "String", # required
    #             },
    #             concat: [
    #               {
    #                 # recursive ComponentProperty
    #               },
    #             ],
    #             condition: {
    #               else: {
    #                 # recursive ComponentProperty
    #               },
    #               field: "String",
    #               operand: "String",
    #               operator: "String",
    #               property: "String",
    #               then: {
    #                 # recursive ComponentProperty
    #               },
    #             },
    #             configured: false,
    #             default_value: "String",
    #             event: "String",
    #             imported_value: "String",
    #             model: "String",
    #             type: "String",
    #             user_attribute: "String",
    #             value: "String",
    #           },
    #         },
    #         source_id: "String",
    #         variants: [
    #           {
    #             overrides: {
    #               "String" => {
    #                 "String" => "String",
    #               },
    #             },
    #             variant_values: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] binding_properties
    #   The data binding information for the component's properties.
    #   @return [Hash<String,Types::ComponentBindingPropertiesValue>]
    #
    # @!attribute [rw] children
    #   The components that are instances of the main component.
    #   @return [Array<Types::ComponentChild>]
    #
    # @!attribute [rw] collection_properties
    #   The configuration for binding a component's properties to a data
    #   model. Use this for a collection component.
    #   @return [Hash<String,Types::ComponentDataConfiguration>]
    #
    # @!attribute [rw] component_type
    #   The type of the component. This can be an Amplify custom UI
    #   component or another custom component.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the component to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component to update.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize the
    #   component.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] properties
    #   Describes the component's properties.
    #   @return [Hash<String,Types::ComponentProperty>]
    #
    # @!attribute [rw] source_id
    #   The unique ID of the component in its original source system, such
    #   as Figma.
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of the unique variants of the main component being updated.
    #   @return [Array<Types::ComponentVariant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponentData AWS API Documentation
    #
    class UpdateComponentData < Struct.new(
      :binding_properties,
      :children,
      :collection_properties,
      :component_type,
      :id,
      :name,
      :overrides,
      :properties,
      :source_id,
      :variants)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateComponentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         client_token: "String",
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         updated_component: { # required
    #           binding_properties: {
    #             "String" => {
    #               binding_properties: {
    #                 bucket: "String",
    #                 default_value: "String",
    #                 field: "String",
    #                 key: "String",
    #                 model: "String",
    #                 predicates: [
    #                   {
    #                     and: {
    #                       # recursive PredicateList
    #                     },
    #                     field: "String",
    #                     operand: "String",
    #                     operator: "String",
    #                     or: {
    #                       # recursive PredicateList
    #                     },
    #                   },
    #                 ],
    #                 user_attribute: "String",
    #               },
    #               default_value: "String",
    #               type: "String",
    #             },
    #           },
    #           children: [
    #             {
    #               children: {
    #                 # recursive ComponentChildList
    #               },
    #               component_type: "String", # required
    #               name: "String", # required
    #               properties: { # required
    #                 "String" => {
    #                   binding_properties: {
    #                     field: "String",
    #                     property: "String", # required
    #                   },
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   collection_binding_properties: {
    #                     field: "String",
    #                     property: "String", # required
    #                   },
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     field: "String",
    #                     operand: "String",
    #                     operator: "String",
    #                     property: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                   },
    #                   configured: false,
    #                   default_value: "String",
    #                   event: "String",
    #                   imported_value: "String",
    #                   model: "String",
    #                   type: "String",
    #                   user_attribute: "String",
    #                   value: "String",
    #                 },
    #               },
    #             },
    #           ],
    #           collection_properties: {
    #             "String" => {
    #               identifiers: ["String"],
    #               model: "String", # required
    #               predicate: {
    #                 and: [
    #                   {
    #                     # recursive Predicate
    #                   },
    #                 ],
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 or: [
    #                   {
    #                     # recursive Predicate
    #                   },
    #                 ],
    #               },
    #               sort: [
    #                 {
    #                   direction: "ASC", # required, accepts ASC, DESC
    #                   field: "String", # required
    #                 },
    #               ],
    #             },
    #           },
    #           component_type: "ComponentType",
    #           id: "Uuid",
    #           name: "ComponentName",
    #           overrides: {
    #             "String" => {
    #               "String" => "String",
    #             },
    #           },
    #           properties: {
    #             "String" => {
    #               binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               collection_binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 property: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #               },
    #               configured: false,
    #               default_value: "String",
    #               event: "String",
    #               imported_value: "String",
    #               model: "String",
    #               type: "String",
    #               user_attribute: "String",
    #               value: "String",
    #             },
    #           },
    #           source_id: "String",
    #           variants: [
    #             {
    #               overrides: {
    #                 "String" => {
    #                   "String" => "String",
    #                 },
    #               },
    #               variant_values: {
    #                 "String" => "String",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @!attribute [rw] updated_component
    #   The configuration of the updated component.
    #   @return [Types::UpdateComponentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponentRequest AWS API Documentation
    #
    class UpdateComponentRequest < Struct.new(
      :app_id,
      :client_token,
      :environment_name,
      :id,
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

    # Saves the data binding information for a theme.
    #
    # @note When making an API call, you may pass UpdateThemeData
    #   data as a hash:
    #
    #       {
    #         id: "Uuid",
    #         name: "ThemeName",
    #         overrides: [
    #           {
    #             key: "String",
    #             value: {
    #               children: {
    #                 # recursive ThemeValuesList
    #               },
    #               value: "String",
    #             },
    #           },
    #         ],
    #         values: [ # required
    #           {
    #             key: "String",
    #             value: {
    #               children: {
    #                 # recursive ThemeValuesList
    #               },
    #               value: "String",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The unique ID of the theme to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the theme to update.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Describes the properties that can be overriden to customize the
    #   theme.
    #   @return [Array<Types::ThemeValues>]
    #
    # @!attribute [rw] values
    #   A list of key-value pairs that define the theme's properties.
    #   @return [Array<Types::ThemeValues>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateThemeData AWS API Documentation
    #
    class UpdateThemeData < Struct.new(
      :id,
      :name,
      :overrides,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThemeRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "String", # required
    #         client_token: "String",
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         updated_theme: { # required
    #           id: "Uuid",
    #           name: "ThemeName",
    #           overrides: [
    #             {
    #               key: "String",
    #               value: {
    #                 children: {
    #                   # recursive ThemeValuesList
    #                 },
    #                 value: "String",
    #               },
    #             },
    #           ],
    #           values: [ # required
    #             {
    #               key: "String",
    #               value: {
    #                 children: {
    #                   # recursive ThemeValuesList
    #                 },
    #                 value: "String",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @!attribute [rw] updated_theme
    #   The configuration of the updated theme.
    #   @return [Types::UpdateThemeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateThemeRequest AWS API Documentation
    #
    class UpdateThemeRequest < Struct.new(
      :app_id,
      :client_token,
      :environment_name,
      :id,
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

  end
end
