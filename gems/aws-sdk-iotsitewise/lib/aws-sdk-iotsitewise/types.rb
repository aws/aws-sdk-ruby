# frozen_string_literal: true

# This is generated code!

module Aws::IoTSiteWise
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an access policy that defines an identity's access to an IoT SiteWise Monitor
    #       resource.</p>
    # @!attribute id
    #   <p>The ID of the access policy.</p>
    #   @return [String]
    # @!attribute identity
    #   <p>The identity (an IAM Identity Center user, an IAM Identity Center group, or an IAM user).</p>
    #   @return [Types::Identity]
    # @!attribute resource
    #   <p>The IoT SiteWise Monitor resource (a portal or project).</p>
    #   @return [Types::Resource]
    # @!attribute permission
    #   <p>The permissions for the access policy. Note that a project <code>ADMINISTRATOR</code> is
    #         also known as a project owner.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the access policy was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the access policy was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class AccessPolicySummary < Struct.new(
      :id,
      :identity,
      :resource,
      :permission,
      :creation_date,
      :last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a definition for an action.</p>
    # @!attribute action_definition_id
    #   <p>The ID of the action definition.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The name of the action definition.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of the action definition.</p>
    #   @return [String]
    class ActionDefinition < Struct.new(
      :action_definition_id,
      :action_name,
      :action_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The JSON payload of the action.</p>
    # @!attribute string_value
    #   <p>The payload of the action in a JSON string.</p>
    #   @return [String]
    class ActionPayload < Struct.new(
      :string_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the summary of the actions, including information about where the action resolves
    #       to.</p>
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute action_definition_id
    #   <p>The ID of the action definition.</p>
    #   @return [String]
    # @!attribute target_resource
    #   <p>The resource the action will be taken on.</p>
    #   @return [Types::TargetResource]
    # @!attribute resolve_to
    #   <p>The detailed resource this action resolves to.</p>
    #   @return [Types::ResolveTo]
    class ActionSummary < Struct.new(
      :action_id,
      :action_definition_id,
      :target_resource,
      :resolve_to,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains aggregated asset property values (for example, average, minimum, and
    #       maximum).</p>
    # @!attribute timestamp
    #   <p>The date the aggregating computations occurred, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute quality
    #   <p>The quality of the aggregated data.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the aggregates.</p>
    #   @return [Types::Aggregates]
    class AggregatedValue < Struct.new(
      :timestamp,
      :quality,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the (pre-calculated) aggregate values for an asset property.</p>
    # @!attribute average
    #   <p>The average (mean) value of the time series over a time interval window.</p>
    #   @return [Float]
    # @!attribute count
    #   <p>The count of data points in the time series over a time interval window.</p>
    #   @return [Float]
    # @!attribute maximum
    #   <p>The maximum value of the time series over a time interval window.</p>
    #   @return [Float]
    # @!attribute minimum
    #   <p>The minimum value of the time series over a time interval window.</p>
    #   @return [Float]
    # @!attribute sum
    #   <p>The sum of the time series over a time interval window.</p>
    #   @return [Float]
    # @!attribute standard_deviation
    #   <p>The standard deviation of the time series over a time interval window.</p>
    #   @return [Float]
    class Aggregates < Struct.new(
      :average,
      :count,
      :maximum,
      :minimum,
      :sum,
      :standard_deviation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #   You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #   For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    # @!attribute alarm_role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IAM role that allows the alarm to perform actions and access Amazon Web Services
    #         resources and services, such as IoT Events.</p>
    #   @return [String]
    # @!attribute notification_lambda_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Lambda function that manages alarm notifications. For more
    #         information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">Managing alarm
    #           notifications</a> in the <i>IoT Events Developer Guide</i>.</p>
    #   @return [String]
    class Alarms < Struct.new(
      :alarm_role_arn,
      :notification_lambda_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to match data bindings based on a specific asset. This filter identifies all
    #       computation models referencing a particular asset in their data bindings.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset to filter data bindings by. Only data bindings referencing this
    #         specific asset are matched.</p>
    #   @return [String]
    class AssetBindingValueFilter < Struct.new(
      :asset_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a composite model in an asset. This object contains the asset's
    #       properties that you define in the composite model.</p>
    # @!attribute name
    #   <p>The name of the composite model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the composite model.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the composite model. For alarm composite models, this type is
    #           <code>AWS/ALARM</code>.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The asset properties that this composite model defines.</p>
    #   @return [Array<Types::AssetProperty>]
    # @!attribute id
    #   <p> The ID of the asset composite model. </p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset composite model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class AssetCompositeModel < Struct.new(
      :name,
      :description,
      :type,
      :properties,
      :id,
      :external_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one level between a composite model and the root of the asset.</p>
    # @!attribute id
    #   <p>The ID of the path segment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the path segment.</p>
    #   @return [String]
    class AssetCompositeModelPathSegment < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of the composite model for a specific asset.</p>
    # @!attribute id
    #   <p>The ID of the composite model that this summary describes.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>An external ID to assign to the asset model.</p>
    #            <p>If the composite model is a derived composite model, or one nested inside a component
    #         model, you can only set the external ID using <code>UpdateAssetModelCompositeModel</code> and
    #         specifying the derived ID of the model or property from the created model it's a part
    #         of.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the composite model that this summary describes.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of asset model.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.
    #      Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite
    #      models of other asset models. You can't create assets directly from this type of asset model. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the composite model that this summary describes.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path that includes all the components of the asset model for the asset.</p>
    #   @return [Array<Types::AssetCompositeModelPathSegment>]
    class AssetCompositeModelSummary < Struct.new(
      :id,
      :external_id,
      :name,
      :type,
      :description,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for the requested associate project asset action.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class AssetErrorDetails < Struct.new(
      :asset_id,
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an asset hierarchy that contains a hierarchy's name and ID.</p>
    # @!attribute id
    #   <p>The ID of the hierarchy. This ID is a <code>hierarchyId</code>.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the hierarchy, if it has one. When you update an asset hierarchy, you
    #         may assign an external ID if it doesn't already have one. You can't change the external ID of
    #         an asset hierarchy that already has one. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The hierarchy name provided in the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>
    #         API operation.</p>
    #   @return [String]
    class AssetHierarchy < Struct.new(
      :id,
      :external_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a parent asset and a child asset that are related through an
    #       asset hierarchy.</p>
    # @!attribute parent_asset_id
    #   <p>The ID of the parent asset in this asset relationship.</p>
    #   @return [String]
    # @!attribute child_asset_id
    #   <p>The ID of the child asset in this asset relationship.</p>
    #   @return [String]
    class AssetHierarchyInfo < Struct.new(
      :parent_asset_id,
      :child_asset_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to match data bindings based on a specific asset model. This filter
    #       identifies all computation models referencing a particular asset model in their data
    #       bindings.</p>
    # @!attribute asset_model_id
    #   <p>The ID of the asset model to filter data bindings by. Only data bindings referemncing this
    #         specific asset model are matched.</p>
    #   @return [String]
    class AssetModelBindingValueFilter < Struct.new(
      :asset_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a composite model in an asset model. This object contains the
    #       asset property definitions that you define in the composite model.</p>
    # @!attribute name
    #   <p>The name of the composite model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the composite model.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the composite model. For alarm composite models, this type is
    #           <code>AWS/ALARM</code>.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The asset property definitions for this composite model.</p>
    #   @return [Array<Types::AssetModelProperty>]
    # @!attribute id
    #   <p> The ID of the asset model composite model. </p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset model composite model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class AssetModelCompositeModel < Struct.new(
      :name,
      :description,
      :type,
      :properties,
      :id,
      :external_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a composite model definition in an asset model. This composite model definition
    #       is applied to all assets created from the asset model.</p>
    # @!attribute id
    #   <p>The ID to assign to the composite model, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>An external ID to assign to the composite model. The external ID must be unique among
    #         composite models within this asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the composite model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the composite model.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the composite model. For alarm composite models, this type is
    #           <code>AWS/ALARM</code>.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The asset property definitions for this composite model.</p>
    #   @return [Array<Types::AssetModelPropertyDefinition>]
    class AssetModelCompositeModelDefinition < Struct.new(
      :id,
      :external_id,
      :name,
      :description,
      :type,
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one level between a composite model and the root of the asset model.</p>
    # @!attribute id
    #   <p>The ID of the path segment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the path segment.</p>
    #   @return [String]
    class AssetModelCompositeModelPathSegment < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of the composite model.</p>
    # @!attribute id
    #   <p>The ID of the composite model that this summary describes..</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of a composite model on this asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the composite model that this summary describes..</p>
    #   @return [String]
    # @!attribute type
    #   <p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or <code> AWS/L4E_ANOMALY</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the composite model that this summary describes..</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path that includes all the pieces that make up the composite model.</p>
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    class AssetModelCompositeModelSummary < Struct.new(
      :id,
      :external_id,
      :name,
      :type,
      :description,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an asset hierarchy that contains a hierarchy's name, ID, and child asset model
    #       ID that specifies the type of asset that can be in this hierarchy.</p>
    # @!attribute id
    #   <p>The ID of the asset model hierarchy. This ID is a <code>hierarchyId</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are callling <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a> to create a
    #               <i>new</i> hierarchy: You can specify its ID here, if desired.
    #             IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #               </li>
    #               <li>
    #                  <p>If you are calling UpdateAssetModel to modify an <i>existing</i>
    #             hierarchy: This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (if any) provided in the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>
    #         operation. You can assign an external ID by specifying
    #         this value as part of a call to <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>. However, you can't change the external ID if one is already assigned. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset model hierarchy that you specify by using the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a> API operation.</p>
    #   @return [String]
    # @!attribute child_asset_model_id
    #   <p>The ID of the asset model, in UUID format. All assets in this hierarchy must be instances of the
    #           <code>childAssetModelId</code> asset model. IoT SiteWise will always return the actual
    #         asset model ID for this value. However, when you are specifying this value as part of a call to
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>, you may provide either the asset model ID or else <code>externalId:</code>
    #         followed by the asset model's external ID. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.
    #       </p>
    #   @return [String]
    class AssetModelHierarchy < Struct.new(
      :id,
      :external_id,
      :name,
      :child_asset_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset model hierarchy used in asset model creation. An asset model hierarchy
    #       determines the kind (or type) of asset that can belong to a hierarchy.</p>
    # @!attribute id
    #   <p>The ID to assign to the asset model hierarchy, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>An external ID to assign to the asset model hierarchy. The external ID must be unique
    #         among asset model hierarchies within this asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset model hierarchy definition (as specified in the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a> API operation).</p>
    #   @return [String]
    # @!attribute child_asset_model_id
    #   <p>The ID of an asset model for this hierarchy. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class AssetModelHierarchyDefinition < Struct.new(
      :id,
      :external_id,
      :name,
      :child_asset_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an asset model property.</p>
    # @!attribute id
    #   <p>The ID of the asset model property.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are callling <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a> to create a
    #               <i>new</i> property: You can specify its ID here, if desired.
    #             IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #               </li>
    #               <li>
    #                  <p>If you are calling UpdateAssetModel to modify an <i>existing</i>
    #             property: This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID (if any) provided in the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>
    #         operation. You can assign an external ID by specifying
    #         this value as part of a call to <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>. However, you can't change the external ID if one is already assigned. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset model property.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the asset model property.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to
    #         identify the type of the structure for this property.</p>
    #   @return [String]
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter exists on properties that
    #         have the <code>STRUCT</code> data type.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of the asset model property, such as <code>Newtons</code> or
    #         <code>RPM</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The property type (see <code>PropertyType</code>).</p>
    #   @return [Types::PropertyType]
    # @!attribute path
    #   <p>The structured path to the property from the root of the asset model.</p>
    #   @return [Array<Types::AssetModelPropertyPathSegment>]
    class AssetModelProperty < Struct.new(
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an <code>assetModelProperty</code> binding value.</p>
    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset model property used in data binding value.</p>
    #   @return [String]
    class AssetModelPropertyBindingValue < Struct.new(
      :asset_model_id,
      :property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to match data bindings based on a specific asset model property. This filter
    #       identifies all computation models that reference a particular property of an asset model in
    #       their data bindings.</p>
    # @!attribute asset_model_id
    #   <p>The ID of the asset model containing the filter property. This identifies the specific
    #         asset model that contains the property of interest.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the property within the asset model to filter by. Only data bindings referencing
    #         this specific property of the specified asset model are matched.</p>
    #   @return [String]
    class AssetModelPropertyBindingValueFilter < Struct.new(
      :asset_model_id,
      :property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset model property definition. This property definition is applied to all
    #       assets created from the asset model.</p>
    # @!attribute id
    #   <p>The ID to assign to the asset model property, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>An external ID to assign to the property definition. The external ID must be unique among
    #         property definitions within this asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the property definition.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the property definition.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to
    #         identify the type of the structure for this property.</p>
    #   @return [String]
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter is required on properties
    #         that have the <code>STRUCT</code> data type.</p>
    #            <p>The options for this parameter depend on the type of the composite model in which you
    #         define this property. Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite
    #         models.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of the property definition, such as <code>Newtons</code> or
    #         <code>RPM</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The property definition type (see <code>PropertyType</code>). You can only specify one
    #         type in a property definition.</p>
    #   @return [Types::PropertyType]
    class AssetModelPropertyDefinition < Struct.new(
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one level between a property and the root of the asset model.</p>
    # @!attribute id
    #   <p>The ID of the path segment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the path segment.</p>
    #   @return [String]
    class AssetModelPropertyPathSegment < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a property associated with a model. This includes information about
    #       which interfaces the property belongs to, if any.</p>
    # @!attribute id
    #   <p>The ID of the property.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the property.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the property.</p>
    #   @return [String]
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter exists on properties that
    #         have the <code>STRUCT</code> data type.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the property.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Contains a property type, which can be one of <code>attribute</code>,
    #           <code>measurement</code>, <code>metric</code>, or <code>transform</code>.</p>
    #   @return [Types::PropertyType]
    # @!attribute asset_model_composite_model_id
    #   <p> The ID of the composite model that contains the asset model property. </p>
    #   @return [String]
    # @!attribute path
    #   <p>The structured path to the property from the root of the asset model.</p>
    #   @return [Array<Types::AssetModelPropertyPathSegment>]
    # @!attribute interface_summaries
    #   <p>A list of interface summaries that describe which interfaces this property belongs to,
    #         including the interface asset model ID and the corresponding property ID in the
    #         interface.</p>
    #   @return [Array<Types::InterfaceSummary>]
    class AssetModelPropertySummary < Struct.new(
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      :asset_model_composite_model_id,
      :path,
      :interface_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #         states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute state
    #   <p>The current state of the asset model.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #   @return [Types::ErrorDetails]
    class AssetModelStatus < Struct.new(
      :state,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an asset model.</p>
    # @!attribute id
    #   <p>The ID of the asset model (used with IoT SiteWise API operations).</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset model, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_type
    #   <p>The type of asset model.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.
    #      Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite
    #      models of other asset models. You can't create assets directly from this type of asset model. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The asset model description.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the asset model was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the asset model was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the asset model.</p>
    #   @return [Types::AssetModelStatus]
    # @!attribute version
    #   <p>The version number of the asset model.</p>
    #   @return [String]
    class AssetModelSummary < Struct.new(
      :id,
      :external_id,
      :arn,
      :name,
      :asset_model_type,
      :description,
      :creation_date,
      :last_update_date,
      :status,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains asset property information.</p>
    # @!attribute id
    #   <p>The ID of the asset property.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the property.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute notification
    #   <p>The asset property's notification topic and state. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #   @return [Types::PropertyNotification]
    # @!attribute data_type
    #   <p>The data type of the asset property.</p>
    #   @return [String]
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter exists on properties that
    #         have the <code>STRUCT</code> data type.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The structured path to the property from the root of the asset.</p>
    #   @return [Array<Types::AssetPropertyPathSegment>]
    class AssetProperty < Struct.new(
      :id,
      :external_id,
      :name,
      :alias,
      :notification,
      :data_type,
      :data_type_spec,
      :unit,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a data binding value referencing a specific asset property. It's used to bind
    #       computation model variables to actual asset property values for processing.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset containing the property. This identifies the specific asset instance's
    #         property value used in the computation model.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the property within the asset. This identifies the specific property's value
    #         used in the computation model.</p>
    #   @return [String]
    class AssetPropertyBindingValue < Struct.new(
      :asset_id,
      :property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to match data bindings based on a specific asset property. This filter helps
    #       identify all computation models referencing a particular property of an asset in their data
    #       bindings.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset containing the property to filter by. This identifies the specific
    #         asset instance containing the property of interest.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the property within the asset to filter by. Only data bindings referencing this
    #         specific property of the specified asset are matched.</p>
    #   @return [String]
    class AssetPropertyBindingValueFilter < Struct.new(
      :asset_id,
      :property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one level between a property and the root of the asset.</p>
    # @!attribute id
    #   <p>The ID of the path segment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the path segment.</p>
    #   @return [String]
    class AssetPropertyPathSegment < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a property associated with an asset.</p>
    # @!attribute id
    #   <p>The ID of the property.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute unit
    #   <p> The unit of measure (such as Newtons or RPM) of the asset property. </p>
    #   @return [String]
    # @!attribute notification
    #   <p>Contains asset property value notification information. When the notification state is enabled, IoT SiteWise publishes property value
    #         updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::PropertyNotification]
    # @!attribute asset_composite_model_id
    #   <p> The ID of the composite model that contains the asset property. </p>
    #   @return [String]
    # @!attribute path
    #   <p>The structured path to the property from the root of the asset.</p>
    #   @return [Array<Types::AssetPropertyPathSegment>]
    class AssetPropertySummary < Struct.new(
      :id,
      :external_id,
      :alias,
      :unit,
      :notification,
      :asset_composite_model_id,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains asset property value information.</p>
    # @!attribute value
    #   <p>The value of the asset property (see <code>Variant</code>).</p>
    #   @return [Types::Variant]
    # @!attribute timestamp
    #   <p>The timestamp of the asset property value.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute quality
    #   <p>The quality of the asset property value.</p>
    #   @return [String]
    class AssetPropertyValue < Struct.new(
      :value,
      :timestamp,
      :quality,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about assets that are related to one another.</p>
    # @!attribute hierarchy_info
    #   <p>The assets that are related through an asset hierarchy.</p>
    #            <p>This object is present if the <code>relationshipType</code> is
    #         <code>HIERARCHY</code>.</p>
    #   @return [Types::AssetHierarchyInfo]
    # @!attribute relationship_type
    #   <p>The relationship type of the assets in this relationship. This value is one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HIERARCHY</code> – The assets are related through an asset hierarchy. If
    #             you specify this relationship type, this asset relationship includes the
    #               <code>hierarchyInfo</code> object.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssetRelationshipSummary < Struct.new(
      :hierarchy_info,
      :relationship_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the current status of an asset. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #         states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute state
    #   <p>The current status of the asset.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #   @return [Types::ErrorDetails]
    class AssetStatus < Struct.new(
      :state,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an asset.</p>
    # @!attribute id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset.</p>
    #   @return [String]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model used to create this asset.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the asset was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the asset was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the asset.</p>
    #   @return [Types::AssetStatus]
    # @!attribute hierarchies
    #   <p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>
    #   @return [Array<Types::AssetHierarchy>]
    # @!attribute description
    #   <p>A description for the asset.</p>
    #   @return [String]
    class AssetSummary < Struct.new(
      :id,
      :external_id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the parent asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.) Hierarchies allow
    #         different groupings of assets to be formed that all come from the same asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute child_asset_id
    #   <p>The ID of the child asset to be associated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class AssociateAssetsRequest < Struct.new(
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class AssociateTimeSeriesToAssetPropertyRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an associated asset.</p>
    # @!attribute id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset.</p>
    #   @return [String]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model used to create the asset.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the asset was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the asset was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the asset.</p>
    #   @return [Types::AssetStatus]
    # @!attribute hierarchies
    #   <p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>
    #   @return [Array<Types::AssetHierarchy>]
    # @!attribute description
    #   <p>A description for the asset.</p>
    #   @return [String]
    class AssociatedAssetsSummary < Struct.new(
      :id,
      :external_id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset attribute property. For more information, see
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes">Attributes</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute default_value
    #   <p>The default value of the asset model property attribute. All assets that you create from
    #         the asset model contain this attribute value. You can update an attribute's value after you
    #         create an asset. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html">Updating attribute values</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class Attribute < Struct.new(
      :default_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project to which to associate the assets.</p>
    #   @return [String]
    # @!attribute asset_ids
    #   <p>The IDs of the assets to be associated to the project.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class BatchAssociateProjectAssetsRequest < Struct.new(
      :project_id,
      :asset_ids,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of associated error information, if any.</p>
    #   @return [Array<Types::AssetErrorDetails>]
    class BatchAssociateProjectAssetsResponse < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project from which to disassociate the assets.</p>
    #   @return [String]
    # @!attribute asset_ids
    #   <p>The IDs of the assets to be disassociated from the project.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class BatchDisassociateProjectAssetsRequest < Struct.new(
      :project_id,
      :asset_ids,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of associated error information, if any.</p>
    #   @return [Array<Types::AssetErrorDetails>]
    class BatchDisassociateProjectAssetsResponse < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for an asset property aggregate entry that is associated with the
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute aggregate_types
    #   <p>The data aggregating function.</p>
    #   @return [Array<String>]
    # @!attribute resolution
    #   <p>The time interval over which to aggregate data.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #   @return [Array<String>]
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #   @return [String]
    class BatchGetAssetPropertyAggregatesEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :aggregate_types,
      :resolution,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for an asset property aggregate entry that is associated with
    #       the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #   @return [String]
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    class BatchGetAssetPropertyAggregatesErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the error code and the timestamp for an asset property aggregate entry that is
    #       associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_timestamp
    #   <p>The date the error occurred, in Unix epoch time.</p>
    #   @return [Time]
    class BatchGetAssetPropertyAggregatesErrorInfo < Struct.new(
      :error_code,
      :error_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>The list of asset property aggregate entries for the batch get request. You can specify up
    #         to 16 entries per request.</p>
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesEntry>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 4000.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class BatchGetAssetPropertyAggregatesRequest < Struct.new(
      :entries,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesErrorEntry>]
    # @!attribute success_entries
    #   <p>A list of entries that were processed successfully by this batch request. Each success entry
    #         contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesSuccessEntry>]
    # @!attribute skipped_entries
    #   <p>A list of entries that were not processed by this batch request.
    #         because these entries had been completely processed by previous paginated requests.
    #         Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>
    #   @return [Array<Types::BatchGetAssetPropertyAggregatesSkippedEntry>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class BatchGetAssetPropertyAggregatesResponse < Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for an entry that has been processed by the previous <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> request.</p>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute completion_status
    #   <p>The completion status of each entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #   @return [String]
    # @!attribute error_info
    #   <p>The error information, such as the error code and the timestamp.</p>
    #   @return [Types::BatchGetAssetPropertyAggregatesErrorInfo]
    class BatchGetAssetPropertyAggregatesSkippedEntry < Struct.new(
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains success information for an entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute aggregated_values
    #   <p>The requested aggregated asset property values (for example, average, minimum, and
    #         maximum).</p>
    #   @return [Array<Types::AggregatedValue>]
    class BatchGetAssetPropertyAggregatesSuccessEntry < Struct.new(
      :entry_id,
      :aggregated_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for an asset property value entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> API.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class BatchGetAssetPropertyValueEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for an asset property value entry that is associated with the
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> API.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #   @return [String]
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    class BatchGetAssetPropertyValueErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The error information, such as the error code and the timestamp.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_timestamp
    #   <p>The date the error occurred, in Unix epoch time.</p>
    #   @return [Time]
    class BatchGetAssetPropertyValueErrorInfo < Struct.new(
      :error_code,
      :error_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for an asset property historical value entry that is associated with
    #       the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValueHistory</a> API.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #   @return [Array<String>]
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #   @return [String]
    class BatchGetAssetPropertyValueHistoryEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of the errors (if any) associated with the batch request. Each error entry
    #       contains the <code>entryId</code> of the entry that failed.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #   @return [String]
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    class BatchGetAssetPropertyValueHistoryErrorEntry < Struct.new(
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The error information, such as the error code and the timestamp.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_timestamp
    #   <p>The date the error occurred, in Unix epoch time.</p>
    #   @return [Time]
    class BatchGetAssetPropertyValueHistoryErrorInfo < Struct.new(
      :error_code,
      :error_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>The list of asset property historical value entries for the batch get request. You can
    #         specify up to 16 entries per request.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueHistoryEntry>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 4 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 20000.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class BatchGetAssetPropertyValueHistoryRequest < Struct.new(
      :entries,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueHistoryErrorEntry>]
    # @!attribute success_entries
    #   <p>A list of entries that were processed successfully by this batch request. Each success entry
    #         contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueHistorySuccessEntry>]
    # @!attribute skipped_entries
    #   <p>A list of entries that were not processed by this batch request.
    #         because these entries had been completely processed by previous paginated requests.
    #         Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueHistorySkippedEntry>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class BatchGetAssetPropertyValueHistoryResponse < Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for an entry that has been processed by the previous <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValueHistory</a> request.</p>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute completion_status
    #   <p>The completion status of each entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValueHistory.html">BatchGetAssetPropertyValueHistory</a> API.</p>
    #   @return [String]
    # @!attribute error_info
    #   <p>The error information, such as the error code and the timestamp.</p>
    #   @return [Types::BatchGetAssetPropertyValueHistoryErrorInfo]
    class BatchGetAssetPropertyValueHistorySkippedEntry < Struct.new(
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains success information for an entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValueHistory</a> API.</p>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute asset_property_value_history
    #   <p>The requested historical values for the specified asset property.</p>
    #   @return [Array<Types::AssetPropertyValue>]
    class BatchGetAssetPropertyValueHistorySuccessEntry < Struct.new(
      :entry_id,
      :asset_property_value_history,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>The list of asset property value entries for the batch get request. You can specify up to
    #         128 entries per request.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueEntry>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class BatchGetAssetPropertyValueRequest < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueErrorEntry>]
    # @!attribute success_entries
    #   <p>A list of entries that were processed successfully by this batch request. Each success entry
    #         contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueSuccessEntry>]
    # @!attribute skipped_entries
    #   <p>A list of entries that were not processed by this batch request.
    #         because these entries had been completely processed by previous paginated requests.
    #         Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>
    #   @return [Array<Types::BatchGetAssetPropertyValueSkippedEntry>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class BatchGetAssetPropertyValueResponse < Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for an entry that has been processed by the previous <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> request.</p>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute completion_status
    #   <p>The completion status of each entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> request.</p>
    #   @return [String]
    # @!attribute error_info
    #   <p>The error information, such as the error code and the timestamp.</p>
    #   @return [Types::BatchGetAssetPropertyValueErrorInfo]
    class BatchGetAssetPropertyValueSkippedEntry < Struct.new(
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains success information for an entry that is associated with the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> API.</p>
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #   @return [String]
    # @!attribute asset_property_value
    #   <p>Contains asset property value information.</p>
    #   @return [Types::AssetPropertyValue]
    class BatchGetAssetPropertyValueSuccessEntry < Struct.new(
      :entry_id,
      :asset_property_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information from updating a batch of asset property values.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #   @return [String]
    # @!attribute timestamps
    #   <p>A list of timestamps for each  error, if any.</p>
    #   @return [Array<Types::TimeInNanos>]
    class BatchPutAssetPropertyError < Struct.new(
      :error_code,
      :error_message,
      :timestamps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for asset property value entries that are associated with the
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html">BatchPutAssetPropertyValue</a> API.</p>
    # @!attribute entry_id
    #   <p>The ID of the failed entry.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>The list of update property value errors.</p>
    #   @return [Array<Types::BatchPutAssetPropertyError>]
    class BatchPutAssetPropertyErrorEntry < Struct.new(
      :entry_id,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable_partial_entry_processing
    #   <p>This setting enables partial ingestion at entry-level. If set to <code>true</code>, we
    #         ingest all TQVs not resulting in an error. If set to <code>false</code>, an invalid TQV fails
    #         ingestion of the entire entry that contains it.</p>
    #   @return [Boolean]
    # @!attribute entries
    #   <p>The list of asset property value entries for the batch put request. You can specify up to
    #         10 entries per request.</p>
    #   @return [Array<Types::PutAssetPropertyValueEntry>]
    class BatchPutAssetPropertyValueRequest < Struct.new(
      :enable_partial_entry_processing,
      :entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch put request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #   @return [Array<Types::BatchPutAssetPropertyErrorEntry>]
    class BatchPutAssetPropertyValueResponse < Struct.new(
      :error_entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains text content to which the SiteWise Assistant refers to, and generate the final response. 
    #   It also contains information about the source.</p>
    # @!attribute reference
    #   <p>Contains information about the data source.</p>
    #   @return [Types::Reference]
    # @!attribute content
    #   <p>Contains the cited text from the data source.</p>
    #   @return [Types::Content]
    class Citation < Struct.new(
      :reference,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the column in the query results.</p>
    # @!attribute name
    #   <p>The name of the column description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the column description.</p>
    #   @return [Types::ColumnType]
    class ColumnInfo < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data type of the column.</p>
    # @!attribute scalar_type
    #   <p>The allowed data types that the column has as it's value.</p>
    #   @return [String]
    class ColumnType < Struct.new(
      :scalar_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a composite model property on an asset.</p>
    # @!attribute name
    #   <p>The name of the property.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the composite model that defines this property.</p>
    #   @return [String]
    # @!attribute asset_property
    #   <p>Contains asset property information.</p>
    #   @return [Types::Property]
    # @!attribute id
    #   <p> The ID of the composite model that contains the property. </p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the composite model that contains the property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class CompositeModelProperty < Struct.new(
      :name,
      :type,
      :asset_property,
      :id,
      :external_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for the composition relationship established by using
    #         <code>composedAssetModelId</code> in <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html">
    #                <code>CreateAssetModelCompositeModel</code>
    #             </a>.</p>
    # @!attribute composition_relationship
    #   <p>An array detailing the composition relationship for this composite model.</p>
    #   @return [Array<Types::CompositionRelationshipItem>]
    class CompositionDetails < Struct.new(
      :composition_relationship,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a composite model that composed an asset model of type
    #         <code>COMPONENT_MODEL</code>.</p>
    # @!attribute id
    #   <p>The ID of the component.</p>
    #   @return [String]
    class CompositionRelationshipItem < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of the components of the composite model.</p>
    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_type
    #   <p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or
    #           <code> AWS/L4E_ANOMALY</code>.</p>
    #   @return [String]
    class CompositionRelationshipSummary < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration of the type of anomaly detection computation model.</p>
    # @!attribute input_properties
    #   <p>Define the variable name associated with input properties, with the following format
    #           <code>${VariableName}</code>.</p>
    #   @return [String]
    # @!attribute result_property
    #   <p>Define the variable name associated with the result property, and the following format
    #           <code>${VariableName}</code>.</p>
    #   @return [String]
    class ComputationModelAnomalyDetectionConfiguration < Struct.new(
      :input_properties,
      :result_property,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the computation model.</p>
    # @!attribute anomaly_detection
    #   <p>The configuration for the anomaly detection type of computation model.</p>
    #   @return [Types::ComputationModelAnomalyDetectionConfiguration]
    class ComputationModelConfiguration < Struct.new(
      :anomaly_detection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of how a specific data binding is used across computation models. This tracks
    #       dependencies between data sources and computation models, allowing you to understand the
    #       impact of changes to data sources.</p>
    # @!attribute computation_model_ids
    #   <p>The list of computation model IDs that use this data binding. This allows identification
    #         of all computation models affected by changes to the referenced data source.</p>
    #   @return [Array<String>]
    # @!attribute matched_data_binding
    #   <p>The data binding matched by the filter criteria. Contains details about specific data
    #         binding values used by the computation models.</p>
    #   @return [Types::MatchedDataBinding]
    class ComputationModelDataBindingUsageSummary < Struct.new(
      :computation_model_ids,
      :matched_data_binding,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains computation model data binding value information, which can be one of
    #         <code>assetModelProperty</code>, <code>list</code>.</p>
    # @!attribute asset_model_property
    #   <p>Specifies an asset model property data binding value.</p>
    #   @return [Types::AssetModelPropertyBindingValue]
    # @!attribute asset_property
    #   <p>The asset property value used for computation model data binding.</p>
    #   @return [Types::AssetPropertyBindingValue]
    # @!attribute list
    #   <p>Specifies a list of data binding value.</p>
    #   @return [Array<Types::ComputationModelDataBindingValue>]
    class ComputationModelDataBindingValue < Struct.new(
      :asset_model_property,
      :asset_property,
      :list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the resource that a computation model resolves to.</p>
    # @!attribute resolve_to
    #   <p>The detailed resource this execution summary resolves to.</p>
    #   @return [Types::ResolveTo]
    class ComputationModelResolveToResourceSummary < Struct.new(
      :resolve_to,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains current status information for a computation model.</p>
    # @!attribute state
    #   <p>The current state of the computation model.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains the details of an IoT SiteWise error.</p>
    #   @return [Types::ErrorDetails]
    class ComputationModelStatus < Struct.new(
      :state,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a computation model.</p>
    # @!attribute id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the computation model, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:computation-model/${ComputationModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the computation model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the computation model.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the computation model.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The model creation date, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The time the model was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the computation model.</p>
    #   @return [Types::ComputationModelStatus]
    # @!attribute version
    #   <p>The version of the computation model.</p>
    #   @return [String]
    class ComputationModelSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :type,
      :creation_date,
      :last_update_date,
      :status,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an IoT SiteWise configuration error.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ConfigurationErrorDetails < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains current status information for the configuration.</p>
    # @!attribute state
    #   <p>The current state of the configuration.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #   @return [Types::ConfigurationErrorDetails]
    class ConfigurationStatus < Struct.new(
      :state,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #       than one operation on the same resource at the same time.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that conflicts with this operation.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource that conflicts with this operation.</p>
    #   @return [String]
    class ConflictingOperationException < Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the cited text from the data source.</p>
    # @!attribute text
    #   <p>The cited text from the data source.</p>
    #   @return [String]
    class Content < Struct.new(
      :text,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_identity
    #   <p>The identity for this access policy. Choose an IAM Identity Center user, an IAM Identity Center group, or an IAM user.</p>
    #   @return [Types::Identity]
    # @!attribute access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    #   @return [Types::Resource]
    # @!attribute access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the access policy. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    #           IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateAccessPolicyRequest < Struct.new(
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #   @return [String]
    # @!attribute access_policy_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the access policy, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>
    #            </p>
    #   @return [String]
    class CreateAccessPolicyResponse < Struct.new(
      :access_policy_id,
      :access_policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model this composite model is a part of.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_external_id
    #   <p>An external ID to assign to the composite model.</p>
    #            <p>If the composite model is a derived composite model, or one nested inside a component
    #         model, you can only set the external ID using <code>UpdateAssetModelCompositeModel</code> and
    #         specifying the derived ID of the model or property from the created model it's a part
    #         of.</p>
    #   @return [String]
    # @!attribute parent_asset_model_composite_model_id
    #   <p>The ID of the parent composite model in this asset model relationship.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_id
    #   <p>The ID of the composite model. IoT SiteWise automatically generates a unique ID for you, so this
    #         parameter is never required. However, if you prefer to supply your own ID instead, you can
    #         specify it here in UUID format. If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_description
    #   <p>A description for the composite model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_name
    #   <p>A unique name for the composite model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_type
    #   <p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or <code> AWS/L4E_ANOMALY</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute composed_asset_model_id
    #   <p>The ID of a component model which is reused to create this composite model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_properties
    #   <p>The property definitions of the composite model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models">
    #           Inline custom composite models</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per composite model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Array<Types::AssetModelPropertyDefinition>]
    # @!attribute if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The create request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Accepts <b>*</b> to reject the create request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    #   @return [String]
    # @!attribute match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the create operation.</p>
    #   @return [String]
    class CreateAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_external_id,
      :parent_asset_model_composite_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_description,
      :asset_model_composite_model_name,
      :asset_model_composite_model_type,
      :client_token,
      :composed_asset_model_id,
      :asset_model_composite_model_properties,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_composite_model_id
    #   <p>The ID of the composed asset model. You can use this ID when you call other IoT SiteWise
    #         APIs.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_path
    #   <p>The path to the composite model listing the parent composite models.</p>
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    class CreateAssetModelCompositeModelResponse < Struct.new(
      :asset_model_composite_model_id,
      :asset_model_composite_model_path,
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_name
    #   <p>A unique name for the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_type
    #   <p>The type of asset model.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.
    #      Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite
    #      models of other asset models. You can't create assets directly from this type of asset model. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute asset_model_id
    #   <p>The ID to assign to the asset model, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute asset_model_external_id
    #   <p>An external ID to assign to the asset model. The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_model_description
    #   <p>A description for the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_properties
    #   <p>The property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Array<Types::AssetModelPropertyDefinition>]
    # @!attribute asset_model_hierarchies
    #   <p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model
    #         whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Array<Types::AssetModelHierarchyDefinition>]
    # @!attribute asset_model_composite_models
    #   <p>The composite models that are part of this asset model. It groups properties
    #     (such as attributes, measurements, transforms, and metrics) and child composite models that
    #         model parts of your industrial equipment. Each composite model has a type that defines the
    #         properties that the composite model supports. Use composite models to define alarms on this asset model.</p>
    #            <note>
    #               <p>When creating custom composite models, you need to use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html">CreateAssetModelCompositeModel</a>. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html">Creating custom composite models (Components)</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #            </note>
    #   @return [Array<Types::AssetModelCompositeModelDefinition>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the asset model. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateAssetModelRequest < Struct.new(
      :asset_model_name,
      :asset_model_type,
      :asset_model_id,
      :asset_model_external_id,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format. You can use this ID when you call other IoT SiteWise API operations.</p>
    #   @return [String]
    # @!attribute asset_model_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset model, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>CREATING</code> after
    #         successfully calling this operation) and any error message.</p>
    #   @return [Types::AssetModelStatus]
    class CreateAssetModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_name
    #   <p>A friendly name for the asset.</p>
    #   @return [String]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model from which to create the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID to assign to the asset, if desired. IoT SiteWise automatically generates a unique ID for you, so this parameter is never required.
    #       However, if you prefer to supply your own ID instead, you can specify it here in UUID format.
    #       If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute asset_external_id
    #   <p>An external ID to assign to the asset. The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute asset_description
    #   <p>A description for the asset.</p>
    #   @return [String]
    class CreateAssetRequest < Struct.new(
      :asset_name,
      :asset_model_id,
      :asset_id,
      :asset_external_id,
      :client_token,
      :tags,
      :asset_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format. This ID uniquely identifies the asset within IoT SiteWise and can be used with other
    #         IoT SiteWise API operations.</p>
    #   @return [String]
    # @!attribute asset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>CREATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::AssetStatus]
    class CreateAssetResponse < Struct.new(
      :asset_id,
      :asset_arn,
      :asset_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The unique name that helps identify the job request.</p>
    #   @return [String]
    # @!attribute job_role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IAM role that allows IoT SiteWise to read Amazon S3 data.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files in the specified Amazon S3 bucket that contain your data.</p>
    #   @return [Array<Types::File>]
    # @!attribute error_report_location
    #   <p>The Amazon S3 destination where errors associated with the job creation request are saved.</p>
    #   @return [Types::ErrorReportLocation]
    # @!attribute job_configuration
    #   <p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>
    #   @return [Types::JobConfiguration]
    # @!attribute adaptive_ingestion
    #   <p>If set to true, ingest new data into IoT SiteWise storage. Measurements with notifications, metrics and transforms are 
    #      computed. If set to false, historical data is ingested into IoT SiteWise as is.</p>
    #   @return [Boolean]
    # @!attribute delete_files_after_import
    #   <p>If set to true, your data files is deleted from S3, after ingestion into IoT SiteWise storage.</p>
    #   @return [Boolean]
    class CreateBulkImportJobRequest < Struct.new(
      :job_name,
      :job_role_arn,
      :files,
      :error_report_location,
      :job_configuration,
      :adaptive_ingestion,
      :delete_files_after_import,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The unique name that helps identify the job request.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the bulk import job can be one of following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – IoT SiteWise is waiting for the current bulk import job to finish.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – The bulk import job has been canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – IoT SiteWise is processing your request to import your data from Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> – IoT SiteWise successfully completed your request to import data from Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – IoT SiteWise couldn't process your request to import data from Amazon S3.
    #           You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED_WITH_FAILURES</code> – IoT SiteWise completed your request to import data from Amazon S3 with errors.
    #           You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateBulkImportJobResponse < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_name
    #   <p>The name of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_description
    #   <p>The description of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_configuration
    #   <p>The configuration for the computation model.</p>
    #   @return [Types::ComputationModelConfiguration]
    # @!attribute computation_model_data_binding
    #   <p>The data binding for the computation model. Key is a variable name defined in configuration. 
    #     Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>
    #   @return [Hash<String, Types::ComputationModelDataBindingValue>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateComputationModelRequest < Struct.new(
      :computation_model_name,
      :computation_model_description,
      :computation_model_configuration,
      :computation_model_data_binding,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the computation model, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:computation-model/${ComputationModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute computation_model_status
    #   <p>The status of the computation model, containing a state (CREATING after successfully
    #         calling this operation) and any error messages.</p>
    #   @return [Types::ComputationModelStatus]
    class CreateComputationModelResponse < Struct.new(
      :computation_model_id,
      :computation_model_arn,
      :computation_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project in which to create the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_name
    #   <p>A friendly name for the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_description
    #   <p>A description for the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_definition
    #   <p>The dashboard definition specified in a JSON literal.</p>
    #            <ul>
    #               <li>
    #                  <p>IoT SiteWise Monitor (Classic) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>IoT SiteWise Monitor (AI-aware) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>in the <i>IoT SiteWise User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the dashboard. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateDashboardRequest < Struct.new(
      :project_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the dashboard, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>
    #            </p>
    #   @return [String]
    class CreateDashboardResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_description
    #   <p>A description about the dataset, and its functionality.</p>
    #   @return [String]
    # @!attribute dataset_source
    #   <p>The data source for the dataset.</p>
    #   @return [Types::DatasetSource]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the access policy. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    #           IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateDatasetRequest < Struct.new(
      :dataset_id,
      :dataset_name,
      :dataset_description,
      :dataset_source,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARN</a> of the dataset. 
    #     The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>
    #   @return [String]
    # @!attribute dataset_status
    #   <p>The status of the dataset. This contains the state and any error messages. 
    #     State is <code>CREATING</code> after a successfull call to this API, and any associated error message. The state is 
    #     <code>ACTIVE</code> when ready to use.</p>
    #   @return [Types::DatasetStatus]
    class CreateDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_name
    #   <p>A unique name for the gateway.</p>
    #   @return [String]
    # @!attribute gateway_platform
    #   <p>The gateway's platform. You can only specify one platform in a gateway.</p>
    #   @return [Types::GatewayPlatform]
    # @!attribute gateway_version
    #   <p>The version of the gateway to create. Specify <code>3</code> to create an MQTT-enabled, V3
    #         gateway and <code>2</code> to create a Classic streams, V2 gateway. If not specified, the
    #         default is <code>2</code> (Classic streams, V2 gateway).</p>
    #            <note>
    #               <p>When creating a V3 gateway (<code>gatewayVersion=3</code>) with the
    #             <code>GreengrassV2</code> platform, you must also specify the
    #             <code>coreDeviceOperatingSystem</code> parameter.</p>
    #            </note>
    #            <p> We recommend creating an MQTT-enabled gateway for self-hosted gateways and Siemens
    #         Industrial Edge gateways. For more information on gateway versions, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateways.html">Use Amazon Web Services IoT SiteWise Edge Edge
    #           gateways</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the gateway. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateGatewayRequest < Struct.new(
      :gateway_name,
      :gateway_platform,
      :gateway_version,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device. You can use this ID when you call other IoT SiteWise API operations.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the gateway, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>
    #            </p>
    #   @return [String]
    class CreateGatewayResponse < Struct.new(
      :gateway_id,
      :gateway_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_name
    #   <p>A friendly name for the portal.</p>
    #   @return [String]
    # @!attribute portal_description
    #   <p>A description for the portal.</p>
    #   @return [String]
    # @!attribute portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute portal_logo_image_file
    #   <p>A logo image to display in the portal. Upload a square, high-resolution image. The
    #         image is displayed on a dark background.</p>
    #   @return [Types::ImageFile]
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the portal. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute portal_auth_mode
    #   <p>The service to use to authenticate users to the portal. Choose from the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSO</code> – The portal uses IAM Identity Center to authenticate users and manage
    #             user permissions. Before you can create a portal that uses IAM Identity Center, you must enable IAM Identity Center.
    #             For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso">Enabling IAM Identity Center</a> in the
    #               <i>IoT SiteWise User Guide</i>. This option is only available in Amazon Web Services Regions other than
    #             the China Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> – The portal uses Identity and Access Management to authenticate users and manage
    #             user permissions.</p>
    #               </li>
    #            </ul>
    #            <p>You can't change this value after you create a portal.</p>
    #            <p>Default: <code>SSO</code>
    #            </p>
    #   @return [String]
    # @!attribute notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #            <important>
    #               <p>If you use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">IoT Events managed Lambda
    #             function</a> to manage your emails, you must <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">verify the sender email
    #             address in Amazon SES</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #   @return [Types::Alarms]
    # @!attribute portal_type
    #   <p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [String]
    # @!attribute portal_type_configuration
    #   <p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [Hash<String, Types::PortalTypeEntry>]
    class CreatePortalRequest < Struct.new(
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :client_token,
      :portal_logo_image_file,
      :role_arn,
      :tags,
      :portal_auth_mode,
      :notification_sender_email,
      :alarms,
      :portal_type,
      :portal_type_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the created portal.</p>
    #   @return [String]
    # @!attribute portal_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the portal, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>
    #            </p>
    #   @return [String]
    # @!attribute portal_start_url
    #   <p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that
    #         use IAM Identity Center for authentication. For portals that use IAM for authentication, you must use the
    #         IoT SiteWise console to get a URL that you can use to access the portal.</p>
    #   @return [String]
    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>CREATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::PortalStatus]
    # @!attribute sso_application_id
    #   <p>The associated IAM Identity Center application ID, if the portal uses IAM Identity Center.</p>
    #   @return [String]
    class CreatePortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :portal_start_url,
      :portal_status,
      :sso_application_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal in which to create the project.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>A friendly name for the project.</p>
    #   @return [String]
    # @!attribute project_description
    #   <p>A description for the project.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the project. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateProjectRequest < Struct.new(
      :portal_id,
      :project_name,
      :project_description,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute project_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the project, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>
    #            </p>
    #   @return [String]
    class CreateProjectResponse < Struct.new(
      :project_id,
      :project_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A .CSV file.</p>
    # @!attribute column_names
    #   <p>The column names specified in the .csv file.</p>
    #   @return [Array<String>]
    class Csv < Struct.new(
      :column_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a customer managed Amazon S3 bucket.</p>
    # @!attribute s3_resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Amazon S3 object. For more information about how to find the ARN for an
    #         Amazon S3 object, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html">Amazon S3 resources</a> in the
    #           <i>Amazon Simple Storage Service User Guide</i>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Identity and Access Management role that allows IoT SiteWise to send data to Amazon S3.</p>
    #   @return [String]
    class CustomerManagedS3Storage < Struct.new(
      :s3_resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a dashboard summary.</p>
    # @!attribute id
    #   <p>The ID of the dashboard.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dashboard</p>
    #   @return [String]
    # @!attribute description
    #   <p>The dashboard's description.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the dashboard was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the dashboard was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DashboardSummary < Struct.new(
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a value used in a data binding. It can be an asset property or an asset model
    #       property.</p>
    # @!attribute asset_model_property
    #   <p>Contains information about an <code>assetModelProperty</code> binding value.</p>
    #   @return [Types::AssetModelPropertyBindingValue]
    # @!attribute asset_property
    #   <p>The asset property value used in the data binding.</p>
    #   @return [Types::AssetPropertyBindingValue]
    class DataBindingValue < Struct.new(
      :asset_model_property,
      :asset_property,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to match specific data binding values based on criteria. This filter allows
    #       searching for data bindings by asset, asset model, asset property, or asset model
    #       property.</p>
    # @!attribute asset
    #   <p>Filter criteria for matching data bindings based on a specific asset. Used to list all
    #         data bindings referencing a particular asset or its properties.</p>
    #   @return [Types::AssetBindingValueFilter]
    # @!attribute asset_model
    #   <p>Filter criteria for matching data bindings based on a specific asset model. Used to list
    #         all data bindings referencing a particular asset model or its properties.</p>
    #   @return [Types::AssetModelBindingValueFilter]
    # @!attribute asset_property
    #   <p>Filter criteria for matching data bindings based on a specific asset property. Used to
    #         list all data bindings referencing a particular property of an asset.</p>
    #   @return [Types::AssetPropertyBindingValueFilter]
    # @!attribute asset_model_property
    #   <p>Filter criteria for matching data bindings based on a specific asset model property. Used
    #         to list all data bindings referencing a particular property of an asset model.</p>
    #   @return [Types::AssetModelPropertyBindingValueFilter]
    class DataBindingValueFilter < Struct.new(
      :asset,
      :asset_model,
      :asset_property,
      :asset_model_property,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the dataset use and it's source.</p>
    # @!attribute dataset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARN</a> of the dataset. 
    #     The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The data source for the dataset.</p>
    #   @return [Types::Source]
    class DataSetReference < Struct.new(
      :dataset_arn,
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data source for the dataset.</p>
    # @!attribute source_type
    #   <p>The type of data source for the dataset.</p>
    #   @return [String]
    # @!attribute source_format
    #   <p>The format of the dataset source associated with the dataset.</p>
    #   @return [String]
    # @!attribute source_detail
    #   <p>The details of the dataset source associated with the dataset.</p>
    #   @return [Types::SourceDetail]
    class DatasetSource < Struct.new(
      :source_type,
      :source_format,
      :source_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the dataset. This contains the state and any error messages. The state is 
    #   <code>ACTIVE</code> when ready to use.</p>
    # @!attribute state
    #   <p>The current status of the dataset.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains the details of an IoT SiteWise error.</p>
    #   @return [Types::ErrorDetails]
    class DatasetStatus < Struct.new(
      :state,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The summary details for the dataset.</p>
    # @!attribute id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARN</a> of the dataset. 
    #     The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description about the dataset, and its functionality.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The dataset creation date, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the dataset was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the dataset. This contains the state and any error messages. The state is 
    #     <code>ACTIVE</code> when ready to use.</p>
    #   @return [Types::DatasetStatus]
    class DatasetSummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single data point in a query result. </p>
    # @!attribute scalar_value
    #   <p>Indicates if the data point is a scalar value such as integer, string, double, or Boolean.
    #       </p>
    #   @return [String]
    # @!attribute array_value
    #   <p>Indicates if the data point is an array. </p>
    #   @return [Array<Types::Datum>]
    # @!attribute row_value
    #   <p>Indicates if the data point is a row.</p>
    #   @return [Types::Row]
    # @!attribute null_value
    #   <p>Indicates if the data point is null.</p>
    #   @return [Boolean]
    class Datum < Struct.new(
      :scalar_value,
      :array_value,
      :row_value,
      :null_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy to be deleted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteAccessPolicyRequest < Struct.new(
      :access_policy_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The delete request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Accepts <b>*</b> to reject the delete request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    #   @return [String]
    # @!attribute match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the delete operation.</p>
    #   @return [String]
    class DeleteAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    class DeleteAssetModelCompositeModelResponse < Struct.new(
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else
    #         externalId: followed by the external ID.</p>
    #   @return [String]
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the
    #         request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteAssetModelInterfaceRelationshipRequest < Struct.new(
      :asset_model_id,
      :interface_asset_model_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model.</p>
    #   @return [String]
    # @!attribute asset_model_arn
    #   <p>The ARN of the asset model, which has the following format.
    #         <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    class DeleteAssetModelInterfaceRelationshipResponse < Struct.new(
      :asset_model_id,
      :interface_asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model to delete. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The delete request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Accepts <b>*</b> to reject the delete request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    #   @return [String]
    # @!attribute match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the delete operation.</p>
    #   @return [String]
    class DeleteAssetModelRequest < Struct.new(
      :asset_model_id,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>DELETING</code> after
    #         successfully calling this operation) and any error message.</p>
    #   @return [Types::AssetModelStatus]
    class DeleteAssetModelResponse < Struct.new(
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to delete. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteAssetRequest < Struct.new(
      :asset_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>DELETING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::AssetStatus]
    class DeleteAssetResponse < Struct.new(
      :asset_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteComputationModelRequest < Struct.new(
      :computation_model_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_status
    #   <p>The status of the computation model. It contains a state (DELETING after successfully
    #         calling this operation) and any error messages.</p>
    #   @return [Types::ComputationModelStatus]
    class DeleteComputationModelResponse < Struct.new(
      :computation_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteDashboardRequest < Struct.new(
      :dashboard_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteDashboardResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      :dataset_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_status
    #   <p>The status of the dataset. This contains the state and any error messages. 
    #     State is <code>DELETING</code> after a successfull call to this API, and any associated error message.</p>
    #   @return [Types::DatasetStatus]
    class DeleteDatasetResponse < Struct.new(
      :dataset_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to delete.</p>
    #   @return [String]
    class DeleteGatewayRequest < Struct.new(
      :gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeletePortalRequest < Struct.new(
      :portal_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>DELETING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::PortalStatus]
    class DeletePortalResponse < Struct.new(
      :portal_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteProjectRequest < Struct.new(
      :project_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteProjectResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteTimeSeriesRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #   @return [String]
    class DescribeAccessPolicyRequest < Struct.new(
      :access_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #   @return [String]
    # @!attribute access_policy_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the access policy, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>
    #            </p>
    #   @return [String]
    # @!attribute access_policy_identity
    #   <p>The identity (IAM Identity Center user, IAM Identity Center group, or IAM user) to which this access policy
    #         applies.</p>
    #   @return [Types::Identity]
    # @!attribute access_policy_resource
    #   <p>The IoT SiteWise Monitor resource (portal or project) to which this access policy provides
    #         access.</p>
    #   @return [Types::Resource]
    # @!attribute access_policy_permission
    #   <p>The access policy permission. Note that a project <code>ADMINISTRATOR</code> is also known
    #         as a project owner.</p>
    #   @return [String]
    # @!attribute access_policy_creation_date
    #   <p>The date the access policy was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute access_policy_last_update_date
    #   <p>The date the access policy was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribeAccessPolicyResponse < Struct.new(
      :access_policy_id,
      :access_policy_arn,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :access_policy_creation_date,
      :access_policy_last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    class DescribeActionRequest < Struct.new(
      :action_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    # @!attribute target_resource
    #   <p>The resource the action will be taken on.</p>
    #   @return [Types::TargetResource]
    # @!attribute action_definition_id
    #   <p>The ID of the action definition.</p>
    #   @return [String]
    # @!attribute action_payload
    #   <p>The JSON payload of the action.</p>
    #   @return [Types::ActionPayload]
    # @!attribute execution_time
    #   <p>The time the action was executed.</p>
    #   @return [Time]
    # @!attribute resolve_to
    #   <p>The detailed resource this action resolves to.</p>
    #   @return [Types::ResolveTo]
    class DescribeActionResponse < Struct.new(
      :action_id,
      :target_resource,
      :action_definition_id,
      :action_payload,
      :execution_time,
      :resolve_to,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_composite_model_id
    #   <p>The ID of a composite model on this asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class DescribeAssetCompositeModelRequest < Struct.new(
      :asset_id,
      :asset_composite_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format. This ID uniquely identifies the asset within IoT SiteWise and can be used with other
    #         IoT SiteWise APIs.</p>
    #   @return [String]
    # @!attribute asset_composite_model_id
    #   <p>The ID of a composite model on this asset.</p>
    #   @return [String]
    # @!attribute asset_composite_model_external_id
    #   <p>An external ID to assign to the asset model.</p>
    #            <p>If the composite model is a component-based composite model, or one nested inside a
    #         component model, you can only set the external ID using
    #           <code>UpdateAssetModelCompositeModel</code> and specifying the derived ID of the model or
    #         property from the created model it's a part of.</p>
    #   @return [String]
    # @!attribute asset_composite_model_path
    #   <p>The path to the composite model listing the parent composite models.</p>
    #   @return [Array<Types::AssetCompositeModelPathSegment>]
    # @!attribute asset_composite_model_name
    #   <p>The unique, friendly name for the composite model.</p>
    #   @return [String]
    # @!attribute asset_composite_model_description
    #   <p>A description for the composite model.</p>
    #   @return [String]
    # @!attribute asset_composite_model_type
    #   <p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or
    #           <code> AWS/L4E_ANOMALY</code>.</p>
    #   @return [String]
    # @!attribute asset_composite_model_properties
    #   <p>The property definitions of the composite model that was used to create the asset.</p>
    #   @return [Array<Types::AssetProperty>]
    # @!attribute asset_composite_model_summaries
    #   <p>The list of composite model summaries.</p>
    #   @return [Array<Types::AssetCompositeModelSummary>]
    # @!attribute action_definitions
    #   <p>The available actions for a composite model on this asset.</p>
    #   @return [Array<Types::ActionDefinition>]
    class DescribeAssetCompositeModelResponse < Struct.new(
      :asset_id,
      :asset_composite_model_id,
      :asset_composite_model_external_id,
      :asset_composite_model_path,
      :asset_composite_model_name,
      :asset_composite_model_description,
      :asset_composite_model_type,
      :asset_composite_model_properties,
      :asset_composite_model_summaries,
      :action_definitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class DescribeAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_external_id
    #   <p>The external ID of a composite model on this asset model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_path
    #   <p>The path to the composite model listing the parent composite models.</p>
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    # @!attribute asset_model_composite_model_name
    #   <p>The unique, friendly name for the composite model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_description
    #   <p>The description for the composite model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_type
    #   <p>The composite model type. Valid values are <code>AWS/ALARM</code>, <code>CUSTOM</code>, or
    #           <code> AWS/L4E_ANOMALY</code>.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_properties
    #   <p>The property definitions of the composite model.</p>
    #   @return [Array<Types::AssetModelProperty>]
    # @!attribute composition_details
    #   <p>Metadata for the composition relationship established by using
    #           <code>composedAssetModelId</code> in <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html">
    #                  <code>CreateAssetModelCompositeModel</code>
    #               </a>. For instance, an array detailing the
    #         path of the composition relationship for this composite model.</p>
    #   @return [Types::CompositionDetails]
    # @!attribute asset_model_composite_model_summaries
    #   <p>The list of composite model summaries for the composite model.</p>
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
    # @!attribute action_definitions
    #   <p>The available actions for a composite model on this asset model.</p>
    #   @return [Array<Types::ActionDefinition>]
    class DescribeAssetModelCompositeModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_external_id,
      :asset_model_composite_model_path,
      :asset_model_composite_model_name,
      :asset_model_composite_model_description,
      :asset_model_composite_model_type,
      :asset_model_composite_model_properties,
      :composition_details,
      :asset_model_composite_model_summaries,
      :action_definitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else
    #         externalId: followed by the external ID.</p>
    #   @return [String]
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    #   @return [String]
    class DescribeAssetModelInterfaceRelationshipRequest < Struct.new(
      :asset_model_id,
      :interface_asset_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model.</p>
    #   @return [String]
    # @!attribute property_mappings
    #   <p>A list of property mappings between the interface asset model and the asset model where
    #         the interface is applied.</p>
    #   @return [Array<Types::PropertyMapping>]
    # @!attribute hierarchy_mappings
    #   <p>A list of hierarchy mappings between the interface asset model and the asset model where
    #         the interface is applied.</p>
    #   @return [Array<Types::HierarchyMapping>]
    class DescribeAssetModelInterfaceRelationshipResponse < Struct.new(
      :asset_model_id,
      :interface_asset_model_id,
      :property_mappings,
      :hierarchy_mappings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute exclude_properties
    #   <p> Whether or not to exclude asset model properties from the response. </p>
    #   @return [Boolean]
    # @!attribute asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class DescribeAssetModelRequest < Struct.new(
      :asset_model_id,
      :exclude_properties,
      :asset_model_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_model_external_id
    #   <p>The external ID of the asset model, if any.</p>
    #   @return [String]
    # @!attribute asset_model_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset model, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_model_name
    #   <p>The name of the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_type
    #   <p>The type of asset model.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – (default) An asset model that you can use to create assets.
    #      Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that you can include in the composite
    #      models of other asset models. You can't create assets directly from this type of asset model. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute asset_model_description
    #   <p>The asset model's description.</p>
    #   @return [String]
    # @!attribute asset_model_properties
    #   <p>The list of asset properties for the asset model.</p>
    #            <p>This object doesn't include properties that you define in composite models. You can find
    #         composite model properties in the <code>assetModelCompositeModels</code> object.</p>
    #   @return [Array<Types::AssetModelProperty>]
    # @!attribute asset_model_hierarchies
    #   <p>A list of asset model hierarchies that each contain a <code>childAssetModelId</code> and a
    #           <code>hierarchyId</code> (named <code>id</code>). A hierarchy specifies allowed parent/child
    #         asset relationships for an asset model.</p>
    #   @return [Array<Types::AssetModelHierarchy>]
    # @!attribute asset_model_composite_models
    #   <p>The list of built-in composite models for the asset model, such as those with those of
    #         type <code>AWS/ALARMS</code>.</p>
    #   @return [Array<Types::AssetModelCompositeModel>]
    # @!attribute asset_model_composite_model_summaries
    #   <p>The list of the immediate child custom composite model summaries for the asset
    #         model.</p>
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
    # @!attribute asset_model_creation_date
    #   <p>The date the asset model was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute asset_model_last_update_date
    #   <p>The date the asset model was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute asset_model_status
    #   <p>The current status of the asset model, which contains a state and any error
    #         message.</p>
    #   @return [Types::AssetModelStatus]
    # @!attribute asset_model_version
    #   <p>The version of the asset model. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute interface_details
    #   <p>A list of interface details that describe the interfaces implemented by this asset model,
    #         including interface asset model IDs and property mappings.</p>
    #   @return [Array<Types::InterfaceRelationship>]
    # @!attribute e_tag
    #   <p>The entity tag (ETag) is a hash of the retrieved version of the asset model. It's used to make
    #       concurrent updates safely to the resource. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.
    #       </p>
    #            <p>See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html"> Optimistic locking for asset
    #           model writes</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class DescribeAssetModelResponse < Struct.new(
      :asset_model_id,
      :asset_model_external_id,
      :asset_model_arn,
      :asset_model_name,
      :asset_model_type,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :asset_model_composite_model_summaries,
      :asset_model_creation_date,
      :asset_model_last_update_date,
      :asset_model_status,
      :asset_model_version,
      :interface_details,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class DescribeAssetPropertyRequest < Struct.new(
      :asset_id,
      :property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_external_id
    #   <p>The external ID of the asset. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_name
    #   <p>The name of the asset.</p>
    #   @return [String]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_property
    #   <p>The asset property's definition, alias, and notification state.</p>
    #            <p>This response includes this object for normal asset properties. If you describe an asset
    #         property in a composite model, this response includes the asset property information in
    #           <code>compositeModel</code>.</p>
    #   @return [Types::Property]
    # @!attribute composite_model
    #   <p>The composite model that declares this asset property, if this asset property exists in a
    #         composite model.</p>
    #   @return [Types::CompositeModelProperty]
    class DescribeAssetPropertyResponse < Struct.new(
      :asset_id,
      :asset_external_id,
      :asset_name,
      :asset_model_id,
      :asset_property,
      :composite_model,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute exclude_properties
    #   <p> Whether or not to exclude asset properties from the response. </p>
    #   @return [Boolean]
    class DescribeAssetRequest < Struct.new(
      :asset_id,
      :exclude_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_external_id
    #   <p>The external ID of the asset, if any.</p>
    #   @return [String]
    # @!attribute asset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_name
    #   <p>The name of the asset.</p>
    #   @return [String]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model that was used to create the asset.</p>
    #   @return [String]
    # @!attribute asset_properties
    #   <p>The list of asset properties for the asset.</p>
    #            <p>This object doesn't include properties that you define in composite models. You can find
    #         composite model properties in the <code>assetCompositeModels</code> object.</p>
    #   @return [Array<Types::AssetProperty>]
    # @!attribute asset_hierarchies
    #   <p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>
    #   @return [Array<Types::AssetHierarchy>]
    # @!attribute asset_composite_models
    #   <p>The composite models for the asset.</p>
    #   @return [Array<Types::AssetCompositeModel>]
    # @!attribute asset_creation_date
    #   <p>The date the asset was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute asset_last_update_date
    #   <p>The date the asset was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute asset_status
    #   <p>The current status of the asset, which contains a state and any error message.</p>
    #   @return [Types::AssetStatus]
    # @!attribute asset_description
    #   <p>A description for the asset.</p>
    #   @return [String]
    # @!attribute asset_composite_model_summaries
    #   <p>The list of the immediate child custom composite model summaries for the asset.</p>
    #   @return [Array<Types::AssetCompositeModelSummary>]
    class DescribeAssetResponse < Struct.new(
      :asset_id,
      :asset_external_id,
      :asset_arn,
      :asset_name,
      :asset_model_id,
      :asset_properties,
      :asset_hierarchies,
      :asset_composite_models,
      :asset_creation_date,
      :asset_last_update_date,
      :asset_status,
      :asset_description,
      :asset_composite_model_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    class DescribeBulkImportJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The unique name that helps identify the job request.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the bulk import job can be one of following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – IoT SiteWise is waiting for the current bulk import job to finish.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – The bulk import job has been canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – IoT SiteWise is processing your request to import your data from Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> – IoT SiteWise successfully completed your request to import data from Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – IoT SiteWise couldn't process your request to import data from Amazon S3.
    #           You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED_WITH_FAILURES</code> – IoT SiteWise completed your request to import data from Amazon S3 with errors.
    #           You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute job_role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IAM role that allows IoT SiteWise to read Amazon S3 data.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files in the specified Amazon S3 bucket that contain your data.</p>
    #   @return [Array<Types::File>]
    # @!attribute error_report_location
    #   <p>The Amazon S3 destination where errors associated with the job creation request are saved.</p>
    #   @return [Types::ErrorReportLocation]
    # @!attribute job_configuration
    #   <p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>
    #   @return [Types::JobConfiguration]
    # @!attribute job_creation_date
    #   <p>The date the job was created, in Unix epoch TIME.</p>
    #   @return [Time]
    # @!attribute job_last_update_date
    #   <p>The date the job was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute adaptive_ingestion
    #   <p>If set to true, ingest new data into IoT SiteWise storage. Measurements with notifications, metrics and transforms are 
    #      computed. If set to false, historical data is ingested into IoT SiteWise as is.</p>
    #   @return [Boolean]
    # @!attribute delete_files_after_import
    #   <p>If set to true, your data files is deleted from S3, after ingestion into IoT SiteWise storage.</p>
    #   @return [Boolean]
    class DescribeBulkImportJobResponse < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :job_role_arn,
      :files,
      :error_report_location,
      :job_configuration,
      :job_creation_date,
      :job_last_update_date,
      :adaptive_ingestion,
      :delete_files_after_import,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute resolve_to_resource_type
    #   <p>The type of the resolved resource.</p>
    #   @return [String]
    # @!attribute resolve_to_resource_id
    #   <p>The ID of the resolved resource.</p>
    #   @return [String]
    class DescribeComputationModelExecutionSummaryRequest < Struct.new(
      :computation_model_id,
      :resolve_to_resource_type,
      :resolve_to_resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute resolve_to
    #   <p>The detailed resource this execution summary resolves to.</p>
    #   @return [Types::ResolveTo]
    # @!attribute computation_model_execution_summary
    #   <p>Contains the execution summary of the computation model.</p>
    #   @return [Hash<String, String>]
    class DescribeComputationModelExecutionSummaryResponse < Struct.new(
      :computation_model_id,
      :resolve_to,
      :computation_model_execution_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    class DescribeComputationModelRequest < Struct.new(
      :computation_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the computation model, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:computation-model/${ComputationModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute computation_model_name
    #   <p>The name of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_description
    #   <p>The description of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_configuration
    #   <p>The configuration for the computation model.</p>
    #   @return [Types::ComputationModelConfiguration]
    # @!attribute computation_model_data_binding
    #   <p>The data binding for the computation model. Key is a variable name defined in configuration. 
    #     Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>
    #   @return [Hash<String, Types::ComputationModelDataBindingValue>]
    # @!attribute computation_model_creation_date
    #   <p>The model creation date, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute computation_model_last_update_date
    #   <p>The date the model was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute computation_model_status
    #   <p>The current status of the asset model, which contains a state and an error message if
    #         any.</p>
    #   @return [Types::ComputationModelStatus]
    # @!attribute computation_model_version
    #   <p>The version of the computation model.</p>
    #   @return [String]
    # @!attribute action_definitions
    #   <p>The available actions for this computation model.</p>
    #   @return [Array<Types::ActionDefinition>]
    class DescribeComputationModelResponse < Struct.new(
      :computation_model_id,
      :computation_model_arn,
      :computation_model_name,
      :computation_model_description,
      :computation_model_configuration,
      :computation_model_data_binding,
      :computation_model_creation_date,
      :computation_model_last_update_date,
      :computation_model_status,
      :computation_model_version,
      :action_definitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #   @return [String]
    class DescribeDashboardRequest < Struct.new(
      :dashboard_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the dashboard, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>
    #            </p>
    #   @return [String]
    # @!attribute dashboard_name
    #   <p>The name of the dashboard.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The ID of the project that the dashboard is in.</p>
    #   @return [String]
    # @!attribute dashboard_description
    #   <p>The dashboard's description.</p>
    #   @return [String]
    # @!attribute dashboard_definition
    #   <p>The dashboard's definition JSON literal. For detailed information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Creating
    #           dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute dashboard_creation_date
    #   <p>The date the dashboard was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute dashboard_last_update_date
    #   <p>The date the dashboard was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribeDashboardResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :dashboard_name,
      :project_id,
      :dashboard_description,
      :dashboard_definition,
      :dashboard_creation_date,
      :dashboard_last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      :dataset_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARN</a> of the dataset. 
    #     The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_description
    #   <p>A description about the dataset, and its functionality.</p>
    #   @return [String]
    # @!attribute dataset_source
    #   <p>The data source for the dataset.</p>
    #   @return [Types::DatasetSource]
    # @!attribute dataset_status
    #   <p>The status of the dataset. This contains the state and any error messages. 
    #     State is <code>CREATING</code> after a successfull call to this API, and any associated error message. The state is 
    #     <code>ACTIVE</code> when ready to use.</p>
    #   @return [Types::DatasetStatus]
    # @!attribute dataset_creation_date
    #   <p>The dataset creation date, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute dataset_last_update_date
    #   <p>The date the dataset was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute dataset_version
    #   <p>The version of the dataset.</p>
    #   @return [String]
    class DescribeDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_name,
      :dataset_description,
      :dataset_source,
      :dataset_status,
      :dataset_creation_date,
      :dataset_last_update_date,
      :dataset_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DescribeDefaultEncryptionConfigurationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The key ARN of the customer managed key used for KMS encryption if you use
    #           <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    # @!attribute configuration_status
    #   <p>The status of the account configuration. This contains the
    #         <code>ConfigurationState</code>. If there's an error, it also contains the
    #           <code>ErrorDetails</code>.</p>
    #   @return [Types::ConfigurationStatus]
    class DescribeDefaultEncryptionConfigurationResponse < Struct.new(
      :encryption_type,
      :kms_key_arn,
      :configuration_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #   @return [String]
    class DescribeExecutionRequest < Struct.new(
      :execution_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of action exectued.</p>
    #   @return [String]
    # @!attribute target_resource
    #   <p>The resource the action will be taken on. This can include asset-based resources and
    #         computation model resources.</p>
    #   @return [Types::TargetResource]
    # @!attribute target_resource_version
    #   <p>The version of the target resource.</p>
    #   @return [String]
    # @!attribute resolve_to
    #   <p>The detailed resource this execution resolves to.</p>
    #   @return [Types::ResolveTo]
    # @!attribute execution_start_time
    #   <p>The time the process started.</p>
    #   @return [Time]
    # @!attribute execution_end_time
    #   <p>The time the process ended.</p>
    #   @return [Time]
    # @!attribute execution_status
    #   <p>The status of the execution process.</p>
    #   @return [Types::ExecutionStatus]
    # @!attribute execution_result
    #   <p>The result of the execution.</p>
    #   @return [Hash<String, String>]
    # @!attribute execution_details
    #   <p>Provides detailed information about the execution of your anomaly detection models. This
    #         includes model metrics and training timestamps for both training and inference actions.</p>
    #            <ul>
    #               <li>
    #                  <p> The training action (Amazon Web Services/ANOMALY_DETECTION_TRAINING), includes performance metrics
    #             that help you compare different versions of your anomaly detection models. These metrics
    #             provide insights into the model's performance during the training process. </p>
    #               </li>
    #               <li>
    #                  <p> The inference action (Amazon Web Services/ANOMALY_DETECTION_INFERENCE), includes information about
    #             the results of executing your anomaly detection models. This helps you understand the
    #             output of your models and assess their performance. </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute execution_entity_version
    #   <p>Entity version used for the execution.</p>
    #   @return [String]
    class DescribeExecutionResponse < Struct.new(
      :execution_id,
      :action_type,
      :target_resource,
      :target_resource_version,
      :resolve_to,
      :execution_start_time,
      :execution_end_time,
      :execution_status,
      :execution_result,
      :execution_details,
      :execution_entity_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway that defines the capability configuration.</p>
    #   @return [String]
    # @!attribute capability_namespace
    #   <p>The namespace of the capability configuration.
    #         For example, if you configure OPC UA
    #         sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:3</code>.</p>
    #   @return [String]
    class DescribeGatewayCapabilityConfigurationRequest < Struct.new(
      :gateway_id,
      :capability_namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway that defines the capability configuration.</p>
    #   @return [String]
    # @!attribute capability_namespace
    #   <p>The namespace of the gateway capability.</p>
    #   @return [String]
    # @!attribute capability_configuration
    #   <p>The JSON document that defines the gateway capability's configuration. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute capability_sync_status
    #   <p>The synchronization status of the gateway capability configuration. The sync status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code> - The gateway is running with the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_SYNC</code> - The gateway hasn't received the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYNC_FAILED</code> - The gateway rejected the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> - The gateway hasn't reported its sync status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_APPLICABLE</code> - The gateway doesn't support this capability. This is most common when integrating partner data sources, because the data integration is handled externally by the partner.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeGatewayCapabilityConfigurationResponse < Struct.new(
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      :capability_sync_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #   @return [String]
    class DescribeGatewayRequest < Struct.new(
      :gateway_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the gateway, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>
    #            </p>
    #   @return [String]
    # @!attribute gateway_platform
    #   <p>The gateway's platform.</p>
    #   @return [Types::GatewayPlatform]
    # @!attribute gateway_version
    #   <p>The version of the gateway. A value of <code>3</code> indicates an MQTT-enabled, V3
    #         gateway, while <code>2</code> indicates a Classic streams, V2 gateway.</p>
    #   @return [String]
    # @!attribute gateway_capability_summaries
    #   <p>A list of gateway capability summaries that each contain a namespace and status. Each
    #         gateway capability defines data sources for the gateway. To retrieve a capability
    #         configuration's definition, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html">DescribeGatewayCapabilityConfiguration</a>.</p>
    #   @return [Array<Types::GatewayCapabilitySummary>]
    # @!attribute creation_date
    #   <p>The date the gateway was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the gateway was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribeGatewayResponse < Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_arn,
      :gateway_platform,
      :gateway_version,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DescribeLoggingOptionsRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_options
    #   <p>The current logging options.</p>
    #   @return [Types::LoggingOptions]
    class DescribeLoggingOptionsResponse < Struct.new(
      :logging_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    class DescribePortalRequest < Struct.new(
      :portal_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    # @!attribute portal_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the portal, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>
    #            </p>
    #   @return [String]
    # @!attribute portal_name
    #   <p>The name of the portal.</p>
    #   @return [String]
    # @!attribute portal_description
    #   <p>The portal's description.</p>
    #   @return [String]
    # @!attribute portal_client_id
    #   <p>The IAM Identity Center application generated client ID (used with IAM Identity Center API operations). IoT SiteWise includes
    #           <code>portalClientId</code> for only portals that use IAM Identity Center to authenticate users.</p>
    #   @return [String]
    # @!attribute portal_start_url
    #   <p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that
    #         use IAM Identity Center for authentication. For portals that use IAM for authentication, you must use the
    #         IoT SiteWise console to get a URL that you can use to access the portal.</p>
    #   @return [String]
    # @!attribute portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #   @return [String]
    # @!attribute portal_status
    #   <p>The current status of the portal, which contains a state and any error message.</p>
    #   @return [Types::PortalStatus]
    # @!attribute portal_creation_date
    #   <p>The date the portal was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute portal_last_update_date
    #   <p>The date the portal was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute portal_logo_image_location
    #   <p>The portal's logo image, which is available at a URL.</p>
    #   @return [Types::ImageLocation]
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute portal_auth_mode
    #   <p>The service to use to authenticate users to the portal.</p>
    #   @return [String]
    # @!attribute notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #   @return [String]
    # @!attribute alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.</p>
    #   @return [Types::Alarms]
    # @!attribute portal_type
    #   <p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [String]
    # @!attribute portal_type_configuration
    #   <p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [Hash<String, Types::PortalTypeEntry>]
    class DescribePortalResponse < Struct.new(
      :portal_id,
      :portal_arn,
      :portal_name,
      :portal_description,
      :portal_client_id,
      :portal_start_url,
      :portal_contact_email,
      :portal_status,
      :portal_creation_date,
      :portal_last_update_date,
      :portal_logo_image_location,
      :role_arn,
      :portal_auth_mode,
      :notification_sender_email,
      :alarms,
      :portal_type,
      :portal_type_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    class DescribeProjectRequest < Struct.new(
      :project_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute project_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the project, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>
    #            </p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute portal_id
    #   <p>The ID of the portal that the project is in.</p>
    #   @return [String]
    # @!attribute project_description
    #   <p>The project's description.</p>
    #   @return [String]
    # @!attribute project_creation_date
    #   <p>The date the project was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute project_last_update_date
    #   <p>The date the project was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribeProjectResponse < Struct.new(
      :project_id,
      :project_arn,
      :project_name,
      :portal_id,
      :project_description,
      :project_creation_date,
      :project_last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DescribeStorageConfigurationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute multi_layer_storage
    #   <p>Contains information about the storage destination.</p>
    #   @return [Types::MultiLayerStorage]
    # @!attribute disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>The number of days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute configuration_status
    #   <p>Contains current status information for the configuration.</p>
    #   @return [Types::ConfigurationStatus]
    # @!attribute last_update_date
    #   <p>The date the storage configuration was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute warm_tier
    #   <p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>
    #   @return [String]
    # @!attribute warm_tier_retention_period
    #   <p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>
    #   @return [Types::WarmTierRetentionPeriod]
    # @!attribute disallow_ingest_null_na_n
    #   <p>Describes the configuration for ingesting NULL and NaN data. By default the feature is
    #         allowed. The feature is disallowed if the value is <code>true</code>.</p>
    #   @return [Boolean]
    class DescribeStorageConfigurationResponse < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :last_update_date,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class DescribeTimeSeriesRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the time series.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to identify the type of the structure for this time series.</p>
    #   @return [String]
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this time series. This parameter is required for time series
    #         that have the <code>STRUCT</code> data type.</p>
    #            <p>The options for this parameter depend on the type of the composite model
    #         in which you created the asset property that is associated with your time series.
    #         Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite models.</p>
    #   @return [String]
    # @!attribute time_series_creation_date
    #   <p>The date that the time series was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute time_series_last_update_date
    #   <p>The date that the time series was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute time_series_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the time series, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}</code>
    #            </p>
    #   @return [String]
    class DescribeTimeSeriesResponse < Struct.new(
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      :time_series_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed error information. </p>
    # @!attribute code
    #   <p>The error code. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message. </p>
    #   @return [String]
    class DetailedError < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the parent asset from which to disassociate the child asset.
    #         This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.) Hierarchies allow
    #         different groupings of assets to be formed that all come from the same asset model. You can
    #         use the hierarchy ID to identify the correct asset to disassociate. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute child_asset_id
    #   <p>The ID of the child asset to disassociate. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DisassociateAssetsRequest < Struct.new(
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DisassociateTimeSeriesFromAssetPropertyRequest < Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an IoT SiteWise error.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute details
    #   <p> A list of detailed errors. </p>
    #   @return [Array<Types::DetailedError>]
    class ErrorDetails < Struct.new(
      :code,
      :message,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 destination where errors associated with the job creation request are saved.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket to which errors associated with the bulk import job are
    #         sent.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Amazon S3 uses the prefix as a folder name to organize data in the bucket. Each Amazon S3 object has
    #         a key that is its unique identifier in the bucket. Each object in a bucket has exactly one
    #         key. The prefix must end with a forward slash (/). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html">Organizing objects
    #           using prefixes</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #   @return [String]
    class ErrorReportLocation < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_resource
    #   <p>The resource the action will be taken on.</p>
    #   @return [Types::TargetResource]
    # @!attribute action_definition_id
    #   <p>The ID of the action definition.</p>
    #   @return [String]
    # @!attribute action_payload
    #   <p>The JSON payload of the action.</p>
    #   @return [Types::ActionPayload]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute resolve_to
    #   <p>The detailed resource this action resolves to.</p>
    #   @return [Types::ResolveTo]
    class ExecuteActionRequest < Struct.new(
      :target_resource,
      :action_definition_id,
      :action_payload,
      :client_token,
      :resolve_to,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    class ExecuteActionResponse < Struct.new(
      :action_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_statement
    #   <p>The IoT SiteWise query statement.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at one time.</p>
    #            <ul>
    #               <li>
    #                  <p>Minimum is 1</p>
    #               </li>
    #               <li>
    #                  <p>Maximum is 20000</p>
    #               </li>
    #               <li>
    #                  <p>Default is 250</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class ExecuteQueryRequest < Struct.new(
      :query_statement,
      :next_token,
      :max_results,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute columns
    #   <p>Represents a single column in the query results.</p>
    #   @return [Array<Types::ColumnInfo>]
    # @!attribute rows
    #   <p>Represents a single row in the query results.</p>
    #   @return [Array<Types::Row>]
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #   @return [String]
    class ExecuteQueryResponse < Struct.new(
      :columns,
      :rows,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the execution.</p>
    # @!attribute state
    #   <p>The current state of the computation model.</p>
    #   @return [String]
    class ExecutionStatus < Struct.new(
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the execution summary of the computation model.</p>
    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of action exectued.</p>
    #   @return [String]
    # @!attribute target_resource
    #   <p>The resource the action will be taken on. This can include asset-based resources and
    #         computation model resources.</p>
    #   @return [Types::TargetResource]
    # @!attribute target_resource_version
    #   <p>The version of the target resource.</p>
    #   @return [String]
    # @!attribute resolve_to
    #   <p>The detailed resource this execution resolves to.</p>
    #   @return [Types::ResolveTo]
    # @!attribute execution_start_time
    #   <p>The time the process started.</p>
    #   @return [Time]
    # @!attribute execution_end_time
    #   <p>The time the process ended.</p>
    #   @return [Time]
    # @!attribute execution_status
    #   <p>The status of the execution process.</p>
    #   @return [Types::ExecutionStatus]
    # @!attribute execution_entity_version
    #   <p>The execution entity version associated with the summary.</p>
    #   @return [String]
    class ExecutionSummary < Struct.new(
      :execution_id,
      :action_type,
      :target_resource,
      :target_resource_version,
      :resolve_to,
      :execution_start_time,
      :execution_end_time,
      :execution_status,
      :execution_entity_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains expression variable information.</p>
    # @!attribute name
    #   <p>The friendly name of the variable to be used in the expression.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The variable that identifies an asset property from which to use values.</p>
    #   @return [Types::VariableValue]
    class ExpressionVariable < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The file in Amazon S3 where your data is saved. </p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket from which data is imported.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the Amazon S3 object that contains your data. Each object has a key that is a unique
    #         identifier. Each object has exactly one key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID to identify a specific version of the Amazon S3 object that contains your
    #         data.</p>
    #   @return [String]
    class File < Struct.new(
      :bucket,
      :key,
      :version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The file format of the data in S3.</p>
    # @!attribute csv
    #   <p>The file is in .CSV format.</p>
    #   @return [Types::Csv]
    # @!attribute parquet
    #   <p>The file is in parquet format.</p>
    #   @return [Types::Parquet]
    class FileFormat < Struct.new(
      :csv,
      :parquet,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The forwarding configuration for a given property.</p>
    # @!attribute state
    #   <p>The forwarding state for the given property. </p>
    #   @return [String]
    class ForwardingConfig < Struct.new(
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a gateway capability configuration.</p>
    # @!attribute capability_namespace
    #   <p>The namespace of the capability configuration.
    #         For example, if you configure OPC UA
    #         sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:3</code>.</p>
    #   @return [String]
    # @!attribute capability_sync_status
    #   <p>The synchronization status of the gateway capability configuration. The sync status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code> - The gateway is running with the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_SYNC</code> - The gateway hasn't received the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYNC_FAILED</code> - The gateway rejected the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> - The gateway hasn't reported its sync status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_APPLICABLE</code> - The gateway doesn't support this capability. This is most common when integrating partner data sources, because the data integration is handled externally by the partner.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GatewayCapabilitySummary < Struct.new(
      :capability_namespace,
      :capability_sync_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The gateway's platform configuration. You can only specify one platform type in a
    #       gateway.</p>
    #          <p>(Legacy only) For Greengrass V1 gateways, specify the <code>greengrass</code> parameter
    #       with a valid Greengrass group ARN.</p>
    #          <p>For Greengrass V2 gateways, specify the <code>greengrassV2</code> parameter with a valid
    #       core device thing name. If creating a V3 gateway (<code>gatewayVersion=3</code>), you must
    #       also specify the <code>coreDeviceOperatingSystem</code>.</p>
    #          <p>For Siemens Industrial Edge gateways, specify the <code>siemensIE</code> parameter with a
    #       valid IoT Core thing name.</p>
    # @!attribute greengrass
    #   <p>A gateway that runs on IoT Greengrass.</p>
    #   @return [Types::Greengrass]
    # @!attribute greengrass_v2
    #   <p>A gateway that runs on IoT Greengrass V2.</p>
    #   @return [Types::GreengrassV2]
    # @!attribute siemens_ie
    #   <p>A SiteWise Edge gateway that runs on a Siemens Industrial Edge Device.</p>
    #   @return [Types::SiemensIE]
    class GatewayPlatform < Struct.new(
      :greengrass,
      :greengrass_v2,
      :siemens_ie,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a gateway.</p>
    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_platform
    #   <p>The gateway's platform configuration. You can only specify one platform type in a
    #         gateway.</p>
    #            <p>(Legacy only) For Greengrass V1 gateways, specify the <code>greengrass</code> parameter
    #         with a valid Greengrass group ARN.</p>
    #            <p>For Greengrass V2 gateways, specify the <code>greengrassV2</code> parameter with a valid
    #         core device thing name. If creating a V3 gateway (<code>gatewayVersion=3</code>), you must
    #         also specify the <code>coreDeviceOperatingSystem</code>.</p>
    #            <p>For Siemens Industrial Edge gateways, specify the <code>siemensIE</code> parameter with a
    #         valid IoT Core thing name.</p>
    #   @return [Types::GatewayPlatform]
    # @!attribute gateway_version
    #   <p>The version of the gateway. A value of <code>3</code> indicates an MQTT-enabled, V3
    #         gateway, while <code>2</code> indicates a Classic streams, V2 gateway.</p>
    #   @return [String]
    # @!attribute gateway_capability_summaries
    #   <p>A list of gateway capability summaries that each contain a namespace and status. Each
    #         gateway capability defines data sources for the gateway. To retrieve a capability
    #         configuration's definition, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html">DescribeGatewayCapabilityConfiguration</a>.</p>
    #   @return [Array<Types::GatewayCapabilitySummary>]
    # @!attribute creation_date
    #   <p>The date the gateway was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the gateway was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class GatewaySummary < Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_platform,
      :gateway_version,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute aggregate_types
    #   <p>The data aggregating function.</p>
    #   @return [Array<String>]
    # @!attribute resolution
    #   <p>The time interval over which to aggregate data.</p>
    #   @return [String]
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #   @return [Array<String>]
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 2500.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class GetAssetPropertyAggregatesRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :aggregate_types,
      :resolution,
      :qualities,
      :start_date,
      :end_date,
      :time_ordering,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute aggregated_values
    #   <p>The requested aggregated values.</p>
    #   @return [Array<Types::AggregatedValue>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetAssetPropertyAggregatesResponse < Struct.new(
      :aggregated_values,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #   @return [Array<String>]
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs
    #         first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is equal to 4 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is equal to the value of
    #               <code>maxResults</code>. The maximum value of <code>maxResults</code> is 20000.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class GetAssetPropertyValueHistoryRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_property_value_history
    #   <p>The asset property's value history.</p>
    #   @return [Array<Types::AssetPropertyValue>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetAssetPropertyValueHistoryResponse < Struct.new(
      :asset_property_value_history,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class GetAssetPropertyValueRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute property_value
    #   <p>The current asset property value.</p>
    #   @return [Types::AssetPropertyValue]
    class GetAssetPropertyValueResponse < Struct.new(
      :property_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute start_time_in_seconds
    #   <p>The exclusive start of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    #   @return [Integer]
    # @!attribute start_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>startTimeInSeconds</code>.</p>
    #   @return [Integer]
    # @!attribute end_time_in_seconds
    #   <p>The inclusive end of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    #   @return [Integer]
    # @!attribute end_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>endTimeInSeconds</code>.</p>
    #   @return [Integer]
    # @!attribute quality
    #   <p>The quality of the asset property value. You can use this parameter as a filter to choose
    #         only the asset property values that have a specific quality.</p>
    #   @return [String]
    # @!attribute interval_in_seconds
    #   <p>The time interval in seconds over which to interpolate data. Each interval starts when the
    #         previous one ends.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 10.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The interpolation type.</p>
    #            <p>Valid values: <code>LINEAR_INTERPOLATION | LOCF_INTERPOLATION</code>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINEAR_INTERPOLATION</code> – Estimates missing data using <a href="https://en.wikipedia.org/wiki/Linear_interpolation">linear
    #             interpolation</a>.</p>
    #                  <p>For example, you can use this operation to return the interpolated temperature values
    #             for a wind turbine every 24 hours over a duration of 7 days. If the interpolation starts
    #             July 1, 2021, at 9 AM, IoT SiteWise returns the first interpolated value on July 2, 2021, at 9 AM,
    #             the second interpolated value on July 3, 2021, at 9 AM, and so on.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCF_INTERPOLATION</code> – Estimates missing data using last observation
    #             carried forward interpolation</p>
    #                  <p>If no data point is found for an interval, IoT SiteWise returns the last observed data point
    #             for the previous interval and carries forward this interpolated value until a new data
    #             point is found.</p>
    #                  <p>For example, you can get the state of an on-off valve every 24 hours over a duration
    #             of 7 days. If the interpolation starts July 1, 2021, at 9 AM, IoT SiteWise returns the last
    #             observed data point between July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as the first
    #             interpolated value. If a data point isn't found after 9 AM on July 2, 2021, IoT SiteWise uses the
    #             same interpolated value for the rest of the days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute interval_window_in_seconds
    #   <p>The query interval for the window, in seconds. IoT SiteWise computes each interpolated value by
    #         using data points from the timestamp of each interval, minus the window to the timestamp of
    #         each interval plus the window. If not specified, the window ranges between the start time
    #         minus the interval and the end time plus the interval.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If you specify a value for the <code>intervalWindowInSeconds</code> parameter, the
    #               value for the <code>type</code> parameter must be
    #               <code>LINEAR_INTERPOLATION</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>If a data point isn't found during the specified query window, IoT SiteWise won't return an
    #               interpolated value for the interval. This indicates that there's a gap in the ingested
    #               data points.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For example, you can get the interpolated temperature values for a wind turbine every 24
    #         hours over a duration of 7 days. If the interpolation starts on July 1, 2021, at 9 AM with a
    #         window of 2 hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM
    #         plus 2 hours) on July 2, 2021 to compute the first interpolated value. Next, IoT SiteWise uses the
    #         data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July 3, 2021 to
    #         compute the second interpolated value, and so on. </p>
    #   @return [Integer]
    class GetInterpolatedAssetPropertyValuesRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :start_time_in_seconds,
      :start_time_offset_in_nanos,
      :end_time_in_seconds,
      :end_time_offset_in_nanos,
      :quality,
      :interval_in_seconds,
      :next_token,
      :max_results,
      :type,
      :interval_window_in_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interpolated_asset_property_values
    #   <p>The requested interpolated values.</p>
    #   @return [Array<Types::InterpolatedAssetPropertyValue>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetInterpolatedAssetPropertyValuesResponse < Struct.new(
      :interpolated_asset_property_values,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a gateway that runs on IoT Greengrass. To create a gateway that runs on IoT Greengrass,
    #       you must add the IoT SiteWise connector to a Greengrass group and deploy it. Your Greengrass
    #       group must also have permissions to upload data to IoT SiteWise. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html">Ingesting data using a
    #         gateway</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Greengrass group. For more information about how to find a group's
    #         ARN, see <a href="https://docs.aws.amazon.com/greengrass/v1/apireference/listgroups-get.html">ListGroups</a> and <a href="https://docs.aws.amazon.com/greengrass/v1/apireference/getgroup-get.html">GetGroup</a> in the <i>IoT Greengrass V1
    #           API Reference</i>.</p>
    #   @return [String]
    class Greengrass < Struct.new(
      :group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a gateway that runs on IoT Greengrass V2. To create a gateway that runs on IoT Greengrass V2,
    #       you must deploy the IoT SiteWise Edge component to your gateway device. Your <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html">Greengrass
    #         device role</a> must use the <code>AWSIoTSiteWiseEdgeAccess</code> policy. For more
    #       information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html">Using IoT SiteWise at the edge</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute core_device_thing_name
    #   <p>The name of the IoT thing for your IoT Greengrass V2 core device.</p>
    #   @return [String]
    # @!attribute core_device_operating_system
    #   <p>The operating system of the core device in IoT Greengrass V2. Specifying the operating system is
    #         required for MQTT-enabled, V3 gateways (<code>gatewayVersion</code>
    #               <code>3</code>) and not applicable for Classic stream, V2 gateways
    #           (<code>gatewayVersion</code>
    #               <code>2</code>).</p>
    #   @return [String]
    class GreengrassV2 < Struct.new(
      :core_device_thing_name,
      :core_device_operating_system,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for a group identity in an access policy.</p>
    # @!attribute id
    #   <p>The IAM Identity Center ID of the group.</p>
    #   @return [String]
    class GroupIdentity < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Maps a hierarchy from an interface asset model to a hierarchy in the asset model where the
    #       interface is applied.</p>
    # @!attribute asset_model_hierarchy_id
    #   <p>The ID of the hierarchy in the asset model where the interface is applied.</p>
    #   @return [String]
    # @!attribute interface_asset_model_hierarchy_id
    #   <p>The ID of the hierarchy in the interface asset model.</p>
    #   @return [String]
    class HierarchyMapping < Struct.new(
      :asset_model_hierarchy_id,
      :interface_asset_model_hierarchy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Identity and Access Management role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #         <i>IAM User Guide</i>.</p>
    # @!attribute arn
    #   <p>The ARN of the IAM role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>.</p>
    #   @return [String]
    class IAMRoleIdentity < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Identity and Access Management user.</p>
    # @!attribute arn
    #   <p>The ARN of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If you delete the IAM user, access policies that contain this identity include an
    #           empty <code>arn</code>. You can delete the access policy for the IAM user that no longer
    #           exists.</p>
    #            </note>
    #   @return [String]
    class IAMUserIdentity < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an identity that can access an IoT SiteWise Monitor resource.</p>
    #          <note>
    #             <p>Currently, you can't use Amazon Web Services API operations to retrieve IAM Identity Center identity IDs. You can
    #         find the IAM Identity Center identity IDs in the URL of user and group pages in the <a href="https://console.aws.amazon.com/singlesignon">IAM Identity Center console</a>.</p>
    #          </note>
    # @!attribute user
    #   <p>An IAM Identity Center user identity.</p>
    #   @return [Types::UserIdentity]
    # @!attribute group
    #   <p>An IAM Identity Center group identity.</p>
    #   @return [Types::GroupIdentity]
    # @!attribute iam_user
    #   <p>An IAM user identity.</p>
    #   @return [Types::IAMUserIdentity]
    # @!attribute iam_role
    #   <p>An IAM role identity.</p>
    #   @return [Types::IAMRoleIdentity]
    class Identity < Struct.new(
      :user,
      :group,
      :iam_user,
      :iam_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an image that is one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>An image file. Choose this option to upload a new image.</p>
    #             </li>
    #             <li>
    #                <p>The ID of an existing image. Choose this option to keep an existing image.</p>
    #             </li>
    #          </ul>
    # @!attribute id
    #   <p>The ID of an existing image. Specify this parameter to keep an existing image.</p>
    #   @return [String]
    # @!attribute file
    #   <p>Contains an image file.</p>
    #   @return [Types::ImageFile]
    class Image < Struct.new(
      :id,
      :file,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an image file.</p>
    # @!attribute data
    #   <p>The image file contents, represented as a base64-encoded string. The file size must be
    #         less than 1 MB.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The file type of the image.</p>
    #   @return [String]
    class ImageFile < Struct.new(
      :data,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an image that is uploaded to IoT SiteWise and available at a URL.</p>
    # @!attribute id
    #   <p>The ID of the image.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL where the image is available. The URL is valid for 15 minutes so that you can view
    #         and download the image</p>
    #   @return [String]
    class ImageLocation < Struct.new(
      :id,
      :url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the relationship between an asset model and an interface asset
    #       model that is applied to it.</p>
    # @!attribute id
    #   <p>The ID of the asset model that has the interface applied to it.</p>
    #   @return [String]
    class InterfaceRelationship < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an interface relationship, which defines how an
    #       interface is applied to an asset model. This summary provides the essential identifiers needed
    #       to retrieve detailed information about the relationship.</p>
    # @!attribute id
    #   <p>The ID of the asset model that has the interface applied to it.</p>
    #   @return [String]
    class InterfaceRelationshipSummary < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an interface that a property belongs to.</p>
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model that contains this property.</p>
    #   @return [String]
    # @!attribute interface_asset_model_property_id
    #   <p>The ID of the property in the interface asset model that corresponds to this
    #         property.</p>
    #   @return [String]
    class InterfaceSummary < Struct.new(
      :interface_asset_model_id,
      :interface_asset_model_property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>IoT SiteWise can't process your request right now. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an interpolated asset property value.</p>
    # @!attribute timestamp
    #   <p>Contains a timestamp with optional nanosecond granularity.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute value
    #   <p>Contains an asset property value (of a single type only).</p>
    #   @return [Types::Variant]
    class InterpolatedAssetPropertyValue < Struct.new(
      :timestamp,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters. Check your request and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This contains the SiteWise Assistant's response and the corresponding citation.</p>
    # @!attribute message
    #   <p>The text message of the SiteWise Assistant's response.</p>
    #   @return [String]
    # @!attribute citations
    #   <p>A list of citations, and related information for the SiteWise Assistant's response.</p>
    #   @return [Array<Types::Citation>]
    class InvocationOutput < Struct.new(
      :message,
      :citations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute conversation_id
    #   <p>The ID assigned to a conversation. IoT SiteWise automatically generates a unique ID for you, and this parameter is never required. 
    #     However, if you prefer to have your own ID, you must specify it here in UUID format. If you specify your own ID, it must be globally unique.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A text message sent to the SiteWise Assistant by the user.</p>
    #   @return [String]
    # @!attribute enable_trace
    #   <p>Specifies if to turn trace on or not. It is used to track the SiteWise Assistant's 
    #     reasoning, and data access process.</p>
    #   @return [Boolean]
    class InvokeAssistantRequest < Struct.new(
      :conversation_id,
      :message,
      :enable_trace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Contains the response, citation, and trace from the SiteWise Assistant.</p>
    #   @return [Types::ResponseStream]
    # @!attribute conversation_id
    #   <p>The ID of the conversation, in UUID format. This ID uniquely identifies the conversation within IoT SiteWise.</p>
    #   @return [String]
    class InvokeAssistantResponse < Struct.new(
      :body,
      :conversation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>
    # @!attribute file_format
    #   <p>The file format of the data in S3.</p>
    #   @return [Types::FileFormat]
    class JobConfiguration < Struct.new(
      :file_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the job summary information.</p>
    # @!attribute id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name that helps identify the job request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the bulk import job can be one of following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – IoT SiteWise is waiting for the current bulk import job to finish.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – The bulk import job has been canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – IoT SiteWise is processing your request to import your data from Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> – IoT SiteWise successfully completed your request to import data from Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – IoT SiteWise couldn't process your request to import data from Amazon S3.
    #           You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED_WITH_FAILURES</code> – IoT SiteWise completed your request to import data from Amazon S3 with errors.
    #           You can use logs saved in the specified error report location in Amazon S3 to troubleshoot issues.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class JobSummary < Struct.new(
      :id,
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The source details for the Kendra dataset source.</p>
    # @!attribute knowledge_base_arn
    #   <p>The <code>knowledgeBaseArn</code> details for the Kendra dataset source.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The <code>roleARN</code> details for the Kendra dataset source.</p>
    #   @return [String]
    class KendraSourceDetail < Struct.new(
      :knowledge_base_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the quota for a resource. For example, this can occur if you're trying to
    #       associate more than the allowed number of child assets or attempting to create more than the
    #       allowed number of properties for an asset model.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_type
    #   <p>The type of identity (IAM Identity Center user, IAM Identity Center group, or IAM user). This parameter is required
    #         if you specify <code>identityId</code>.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>The ID of the identity. This parameter is required if you specify <code>USER</code> or
    #           <code>GROUP</code> for <code>identityType</code>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource (portal or project). This parameter is required if you specify
    #           <code>resourceId</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource. This parameter is required if you specify
    #           <code>resourceType</code>.</p>
    #   @return [String]
    # @!attribute iam_arn
    #   <p>The ARN of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>. This parameter is required if you specify
    #           <code>IAM</code> for <code>identityType</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListAccessPoliciesRequest < Struct.new(
      :identity_type,
      :identity_id,
      :resource_type,
      :resource_id,
      :iam_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_summaries
    #   <p>A list that summarizes each access policy.</p>
    #   @return [Array<Types::AccessPolicySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAccessPoliciesResponse < Struct.new(
      :access_policy_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute target_resource_id
    #   <p>The ID of the target resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    # @!attribute resolve_to_resource_type
    #   <p>The type of the resolved resource.</p>
    #   @return [String]
    # @!attribute resolve_to_resource_id
    #   <p>The ID of the resolved resource.</p>
    #   @return [String]
    class ListActionsRequest < Struct.new(
      :target_resource_type,
      :target_resource_id,
      :next_token,
      :max_results,
      :resolve_to_resource_type,
      :resolve_to_resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_summaries
    #   <p>A list that summarizes the actions associated with the specified asset.</p>
    #   @return [Array<Types::ActionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListActionsResponse < Struct.new(
      :action_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    # @!attribute asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class ListAssetModelCompositeModelsRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results,
      :asset_model_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_composite_model_summaries
    #   <p>A list that summarizes each composite model.</p>
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetModelCompositeModelsResponse < Struct.new(
      :asset_model_composite_model_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 50.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p> Filters the requested list of asset model properties. You can choose one of the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all asset model properties for a given asset
    #             model ID. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASE</code> – The list includes only base asset model properties for a given
    #             asset model ID. </p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>BASE</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class ListAssetModelPropertiesRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results,
      :filter,
      :asset_model_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_property_summaries
    #   <p>A list that summarizes the properties associated with the specified asset model.</p>
    #   @return [Array<Types::AssetModelPropertySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetModelPropertiesResponse < Struct.new(
      :asset_model_property_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_types
    #   <p>The type of asset model. If you don't provide an <code>assetModelTypes</code>, all types
    #         of asset models are returned.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ASSET_MODEL</b> – An asset model that you can use
    #             to create assets. Can't be included as a component in another asset model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPONENT_MODEL</b> – A reusable component that
    #             you can include in the composite models of other asset models. You can't create
    #             assets directly from this type of asset model. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>INTERFACE</b> – An interface is a type of model
    #             that defines a standard structure that can be applied to different asset models.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    # @!attribute asset_model_version
    #   <p>The version alias that specifies the latest or active version of the asset model. 
    #             The details are returned in the response. The default value is <code>LATEST</code>. See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html">
    #             Asset model versions</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class ListAssetModelsRequest < Struct.new(
      :asset_model_types,
      :next_token,
      :max_results,
      :asset_model_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_summaries
    #   <p>A list that summarizes each asset model.</p>
    #   @return [Array<Types::AssetModelSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetModelsResponse < Struct.new(
      :asset_model_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 50.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p> Filters the requested list of asset properties. You can choose one of the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all asset properties for a given asset model ID.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASE</code> – The list includes only base asset properties for a given asset
    #             model ID. </p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>BASE</code>
    #            </p>
    #   @return [String]
    class ListAssetPropertiesRequest < Struct.new(
      :asset_id,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_property_summaries
    #   <p>A list that summarizes the properties associated with the specified asset.</p>
    #   @return [Array<Types::AssetPropertySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetPropertiesResponse < Struct.new(
      :asset_property_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute traversal_type
    #   <p>The type of traversal to use to identify asset relationships. Choose the following
    #         option:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PATH_TO_ROOT</code> – Identify the asset's parent assets up to the root
    #             asset. The asset that you specify in <code>assetId</code> is the first result in the list
    #             of <code>assetRelationshipSummaries</code>, and the root asset is the last result.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    class ListAssetRelationshipsRequest < Struct.new(
      :asset_id,
      :traversal_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_relationship_summaries
    #   <p>A list that summarizes each asset relationship.</p>
    #   @return [Array<Types::AssetRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetRelationshipsResponse < Struct.new(
      :asset_relationship_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model by which to filter the list of assets. This parameter is
    #         required if you choose <code>ALL</code> for <code>filter</code>. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filter for the requested list of assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all assets for a given asset model ID. The
    #               <code>assetModelId</code> parameter is required if you filter by
    #             <code>ALL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset
    #             hierarchy tree.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>ALL</code>
    #            </p>
    #   @return [String]
    class ListAssetsRequest < Struct.new(
      :next_token,
      :max_results,
      :asset_model_id,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_summaries
    #   <p>A list that summarizes each asset.</p>
    #   @return [Array<Types::AssetSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetsResponse < Struct.new(
      :asset_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to query. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute hierarchy_id
    #   <p>(Optional) If you don't provide a <code>hierarchyId</code>, all the immediate assets in
    #         the <code>traversalDirection</code> will be returned. </p>
    #            <p> The ID of the hierarchy by which child assets are associated to the asset.
    #         (This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.)</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute traversal_direction
    #   <p>The direction to list associated assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> – The list includes all child assets associated to the
    #             asset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARENT</code> – The list includes the asset's parent asset.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>CHILD</code>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListAssociatedAssetsRequest < Struct.new(
      :asset_id,
      :hierarchy_id,
      :traversal_direction,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_summaries
    #   <p>A list that summarizes the associated assets.</p>
    #   @return [Array<Types::AssociatedAssetsSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssociatedAssetsResponse < Struct.new(
      :asset_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>You can use a filter to select the bulk import jobs that you want to retrieve.</p>
    #   @return [String]
    class ListBulkImportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_summaries
    #   <p>One or more job summaries to list.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListBulkImportJobsResponse < Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListCompositionRelationshipsRequest < Struct.new(
      :asset_model_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute composition_relationship_summaries
    #   <p>A list that summarizes each composition relationship.</p>
    #   @return [Array<Types::CompositionRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListCompositionRelationshipsResponse < Struct.new(
      :composition_relationship_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_binding_value_filter
    #   <p>A filter used to limit the returned data binding usages based on specific data binding
    #         values. You can filter by asset, asset model, asset property, or asset model property to find
    #         all computation models using these specific data sources.</p>
    #   @return [Types::DataBindingValueFilter]
    # @!attribute next_token
    #   <p>The token used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned for each paginated request.</p>
    #   @return [Integer]
    class ListComputationModelDataBindingUsagesRequest < Struct.new(
      :data_binding_value_filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_binding_usage_summaries
    #   <p>A list of summaries describing the data binding usages across computation models. Each
    #         summary includes the computation model IDs and the matched data binding details.</p>
    #   @return [Array<Types::ComputationModelDataBindingUsageSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of paginated results, or null if there are no additional
    #         results.</p>
    #   @return [String]
    class ListComputationModelDataBindingUsagesResponse < Struct.new(
      :data_binding_usage_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model for which to list resolved resources.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned for each paginated request.</p>
    #   @return [Integer]
    class ListComputationModelResolveToResourcesRequest < Struct.new(
      :computation_model_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_resolve_to_resource_summaries
    #   <p>A list of summaries describing the distinct resources that this computation model resolves
    #         to when actions were executed.</p>
    #   @return [Array<Types::ComputationModelResolveToResourceSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of paginated results, or null if there are no additional
    #         results.</p>
    #   @return [String]
    class ListComputationModelResolveToResourcesResponse < Struct.new(
      :computation_model_resolve_to_resource_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_type
    #   <p>The type of computation model. If a <code>computationModelType</code> is not provided, all
    #         types of computation models are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    class ListComputationModelsRequest < Struct.new(
      :computation_model_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_summaries
    #   <p>A list summarizing each computation model.</p>
    #   @return [Array<Types::ComputationModelSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListComputationModelsResponse < Struct.new(
      :computation_model_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListDashboardsRequest < Struct.new(
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_summaries
    #   <p>A list that summarizes each dashboard in the project.</p>
    #   @return [Array<Types::DashboardSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDashboardsResponse < Struct.new(
      :dashboard_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_type
    #   <p>The type of data source for the dataset.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      :source_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_summaries
    #   <p>A list that summarizes the dataset response.</p>
    #   @return [Array<Types::DatasetSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      :dataset_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_resource_type
    #   <p>The type of the target resource.</p>
    #   @return [String]
    # @!attribute target_resource_id
    #   <p>The ID of the target resource.</p>
    #   @return [String]
    # @!attribute resolve_to_resource_type
    #   <p>The type of the resolved resource.</p>
    #   @return [String]
    # @!attribute resolve_to_resource_id
    #   <p>The ID of the resolved resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned for each paginated request.</p>
    #   @return [Integer]
    # @!attribute action_type
    #   <p>The type of action exectued.</p>
    #   @return [String]
    class ListExecutionsRequest < Struct.new(
      :target_resource_type,
      :target_resource_id,
      :resolve_to_resource_type,
      :resolve_to_resource_id,
      :next_token,
      :max_results,
      :action_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_summaries
    #   <p>Contains the list of execution summaries of the computation models.</p>
    #   @return [Array<Types::ExecutionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListExecutionsResponse < Struct.new(
      :execution_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListGatewaysRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_summaries
    #   <p>A list that summarizes each gateway.</p>
    #   @return [Array<Types::GatewaySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListGatewaysResponse < Struct.new(
      :gateway_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50</p>
    #   @return [Integer]
    class ListInterfaceRelationshipsRequest < Struct.new(
      :interface_asset_model_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute interface_relationship_summaries
    #   <p>A list that summarizes each interface relationship.</p>
    #   @return [Array<Types::InterfaceRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListInterfaceRelationshipsResponse < Struct.new(
      :interface_relationship_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListPortalsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_summaries
    #   <p>A list that summarizes each portal.</p>
    #   @return [Array<Types::PortalSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListPortalsResponse < Struct.new(
      :portal_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListProjectAssetsRequest < Struct.new(
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_ids
    #   <p>A list that contains the IDs of each asset associated with the project.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListProjectAssetsResponse < Struct.new(
      :asset_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #   @return [Integer]
    class ListProjectsRequest < Struct.new(
      :portal_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_summaries
    #   <p>A list that summarizes each project in the portal.</p>
    #   @return [Array<Types::ProjectSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListProjectsResponse < Struct.new(
      :project_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute alias_prefix
    #   <p>The alias prefix of the time series.</p>
    #   @return [String]
    # @!attribute time_series_type
    #   <p>The type of the time series. The time series type can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASSOCIATED</code> – The time series is associated with an asset
    #             property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISASSOCIATED</code> – The time series isn't associated with any asset
    #             property.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListTimeSeriesRequest < Struct.new(
      :next_token,
      :max_results,
      :asset_id,
      :alias_prefix,
      :time_series_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_series_summaries
    #   <p>One or more time series summaries to list.</p>
    #   @return [Array<Types::TimeSeriesSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListTimeSeriesResponse < Struct.new(
      :time_series_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains location information about the cited text and where it's stored.</p>
    # @!attribute uri
    #   <p>The URI of the location.</p>
    #   @return [String]
    class Location < Struct.new(
      :uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains logging options.</p>
    # @!attribute level
    #   <p>The IoT SiteWise logging verbosity level.</p>
    #   @return [String]
    class LoggingOptions < Struct.new(
      :level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a data binding that matches the specified filter criteria.</p>
    # @!attribute value
    #   <p>The value of the matched data binding.</p>
    #   @return [Types::DataBindingValue]
    class MatchedDataBinding < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset measurement property. For more information, see
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#measurements">Measurements</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute processing_config
    #   <p>The processing configuration for the given measurement property.
    #         You can configure measurements to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #         By default, measurements are forwarded to the cloud.</p>
    #   @return [Types::MeasurementProcessingConfig]
    class Measurement < Struct.new(
      :processing_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The processing configuration for the given measurement property.
    #       You can configure measurements to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #       By default, measurements are forwarded to the cloud.</p>
    # @!attribute forwarding_config
    #   <p>The forwarding configuration for the given measurement property. </p>
    #   @return [Types::ForwardingConfig]
    class MeasurementProcessingConfig < Struct.new(
      :forwarding_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset metric property. With metrics, you can calculate aggregate functions,
    #       such as an average, maximum, or minimum, as specified through an expression. A metric maps
    #       several values to a single value (such as a sum).</p>
    #          <p>The maximum number of dependent/cascading variables used in any one metric calculation is
    #       10. Therefore, a <i>root</i> metric can have
    #       up to 10 cascading metrics in its computational dependency
    #       tree. Additionally, a metric can only have a data type of <code>DOUBLE</code> and consume
    #       properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#metrics">Metrics</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute expression
    #   <p>The mathematical expression that defines the metric aggregation function. You can specify
    #         up to 10 variables per expression. You can specify up to 10 functions
    #         per expression. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>The list of variables used in the expression.</p>
    #   @return [Array<Types::ExpressionVariable>]
    # @!attribute window
    #   <p>The window (time interval) over which IoT SiteWise computes the metric's aggregation expression.
    #         IoT SiteWise computes one data point per <code>window</code>.</p>
    #   @return [Types::MetricWindow]
    # @!attribute processing_config
    #   <p>The processing configuration for the given metric property.
    #         You can configure metrics to be computed at the edge or in the Amazon Web Services Cloud.
    #         By default, metrics are forwarded to the cloud.</p>
    #   @return [Types::MetricProcessingConfig]
    class Metric < Struct.new(
      :expression,
      :variables,
      :window,
      :processing_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expression] = '' unless options.key?(:expression)
        options[:variables] = [] unless options.key?(:variables)
        super
      end
    end

    # <p>The processing configuration for the given metric property.
    #       You can configure metrics to be computed at the edge or in the Amazon Web Services Cloud.
    #       By default, metrics are forwarded to the cloud.</p>
    # @!attribute compute_location
    #   <p>The compute location for the given metric property. </p>
    #   @return [String]
    class MetricProcessingConfig < Struct.new(
      :compute_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a time interval window used for data aggregate computations (for example,
    #       average, sum, count, and so on).</p>
    # @!attribute tumbling
    #   <p>The tumbling time interval window.</p>
    #   @return [Types::TumblingWindow]
    class MetricWindow < Struct.new(
      :tumbling,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains IoT SiteWise Monitor error details.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class MonitorErrorDetails < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the storage destination.</p>
    # @!attribute customer_managed_s3_storage
    #   <p>Contains information about a customer managed Amazon S3 bucket.</p>
    #   @return [Types::CustomerManagedS3Storage]
    class MultiLayerStorage < Struct.new(
      :customer_managed_s3_storage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A parquet file.</p>
    class Parquet < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an IoT SiteWise Monitor portal.</p>
    # @!attribute id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    class PortalResource < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the current status of a portal.</p>
    # @!attribute state
    #   <p>The current state of the portal.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #   @return [Types::MonitorErrorDetails]
    class PortalStatus < Struct.new(
      :state,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a portal summary.</p>
    # @!attribute id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the portal.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The portal's description.</p>
    #   @return [String]
    # @!attribute start_url
    #   <p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that
    #         use IAM Identity Center for authentication. For portals that use IAM for authentication, you must use the
    #         IoT SiteWise console to get a URL that you can use to access the portal.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the portal was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the portal was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Contains information about the current status of a portal.</p>
    #   @return [Types::PortalStatus]
    # @!attribute portal_type
    #   <p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [String]
    class PortalSummary < Struct.new(
      :id,
      :name,
      :description,
      :start_url,
      :creation_date,
      :last_update_date,
      :role_arn,
      :status,
      :portal_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration entry associated with the specific portal type. The <code>portalTypeConfiguration</code> is a map of the <code>portalTypeKey</code> to the 
    #       <code>PortalTypeEntry</code>.</p>
    # @!attribute portal_tools
    #   <p>The array of tools associated with the specified portal type. The possible values are <code>ASSISTANT</code> and <code>DASHBOARD</code>.</p>
    #   @return [Array<String>]
    class PortalTypeEntry < Struct.new(
      :portal_tools,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The precondition in one or more of the request-header fields evaluated to
    #         <code>FALSE</code>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource on which precondition failed with this operation.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource on which precondition failed with this operation.</p>
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a specific IoT SiteWise Monitor project.</p>
    # @!attribute id
    #   <p>The ID of the project.</p>
    #   @return [String]
    class ProjectResource < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains project summary information.</p>
    # @!attribute id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The project's description.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date the project was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_update_date
    #   <p>The date the project was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class ProjectSummary < Struct.new(
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains asset property information.</p>
    # @!attribute id
    #   <p>The ID of the asset property.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the asset property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the property.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute notification
    #   <p>The asset property's notification topic and state. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #   @return [Types::PropertyNotification]
    # @!attribute data_type
    #   <p>The property data type.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The property type (see <code>PropertyType</code>). A property contains one type.</p>
    #   @return [Types::PropertyType]
    # @!attribute path
    #   <p>The structured path to the property from the root of the asset.</p>
    #   @return [Array<Types::AssetPropertyPathSegment>]
    class Property < Struct.new(
      :id,
      :external_id,
      :name,
      :alias,
      :notification,
      :data_type,
      :unit,
      :type,
      :path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Maps a property from an interface asset model to a property in the asset model where the
    #       interface is applied.</p>
    # @!attribute asset_model_property_id
    #   <p>The ID of the property in the asset model where the interface is applied.</p>
    #   @return [String]
    # @!attribute interface_asset_model_property_id
    #   <p>The ID of the property in the interface asset model.</p>
    #   @return [String]
    class PropertyMapping < Struct.new(
      :asset_model_property_id,
      :interface_asset_model_property_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration options for mapping properties from an interface asset model to an
    #       asset model where the interface is applied.</p>
    # @!attribute match_by_property_name
    #   <p>If true, properties are matched by name between the interface asset model and the asset
    #         model where the interface is applied.</p>
    #   @return [Boolean]
    # @!attribute create_missing_property
    #   <p>If true, missing properties from the interface asset model are automatically created in
    #         the asset model where the interface is applied.</p>
    #   @return [Boolean]
    # @!attribute overrides
    #   <p>A list of specific property mappings that override the automatic mapping by name when an
    #         interface is applied to an asset model.</p>
    #   @return [Array<Types::PropertyMapping>]
    class PropertyMappingConfiguration < Struct.new(
      :match_by_property_name,
      :create_missing_property,
      :overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:match_by_property_name] = false unless options.key?(:match_by_property_name)
        options[:create_missing_property] = false unless options.key?(:create_missing_property)
        super
      end
    end

    # <p>Contains asset property value notification information. When the notification state is enabled, IoT SiteWise publishes property value
    #       updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute topic
    #   <p>The MQTT topic to which IoT SiteWise publishes property value update notifications.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current notification state.</p>
    #   @return [String]
    class PropertyNotification < Struct.new(
      :topic,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a property type, which can be one of <code>attribute</code>,
    #         <code>measurement</code>, <code>metric</code>, or <code>transform</code>.</p>
    # @!attribute attribute
    #   <p>Specifies an asset attribute property. An attribute generally contains static information,
    #         such as the serial number of an <a href="https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications">IIoT</a> wind turbine.</p>
    #   @return [Types::Attribute]
    # @!attribute measurement
    #   <p>Specifies an asset measurement property. A measurement represents a device's raw sensor
    #         data stream, such as timestamped temperature values or timestamped power values.</p>
    #   @return [Types::Measurement]
    # @!attribute transform
    #   <p>Specifies an asset transform property. A transform contains a mathematical expression that
    #         maps a property's data points from one form to another, such as a unit conversion from Celsius
    #         to Fahrenheit.</p>
    #   @return [Types::Transform]
    # @!attribute metric
    #   <p>Specifies an asset metric property. A metric contains a mathematical expression that uses
    #         aggregate functions to process all input data points over a time interval and output a single
    #         data point, such as to calculate the average hourly temperature.</p>
    #   @return [Types::Metric]
    class PropertyType < Struct.new(
      :attribute,
      :measurement,
      :transform,
      :metric,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value type of null asset property data with BAD and UNCERTAIN qualities.</p>
    # @!attribute value_type
    #   <p>The type of null asset property data.</p>
    #   @return [String]
    class PropertyValueNullValue < Struct.new(
      :value_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. This can be either the actual ID in UUID format, or else
    #         externalId: followed by the external ID.</p>
    #   @return [String]
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model. This can be either the actual ID in UUID format, or
    #         else externalId: followed by the external ID.</p>
    #   @return [String]
    # @!attribute property_mapping_configuration
    #   <p>The configuration for mapping properties from the interface asset model to the asset model
    #         where the interface is applied. This configuration controls how properties are matched and
    #         created during the interface application process.</p>
    #   @return [Types::PropertyMappingConfiguration]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the
    #         request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class PutAssetModelInterfaceRelationshipRequest < Struct.new(
      :asset_model_id,
      :interface_asset_model_id,
      :property_mapping_configuration,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    # @!attribute interface_asset_model_id
    #   <p>The ID of the interface asset model.</p>
    #   @return [String]
    # @!attribute asset_model_arn
    #   <p>The ARN of the asset model, which has the following format.
    #         <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    class PutAssetModelInterfaceRelationshipResponse < Struct.new(
      :asset_model_id,
      :interface_asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of value updates for an asset property in the list of asset entries
    #       consumed by the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html">BatchPutAssetPropertyValue</a> API
    #       operation.</p>
    # @!attribute entry_id
    #   <p>The user specified ID for the entry. You can use this ID to identify which entries
    #         failed.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset to update.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property for this entry.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_values
    #   <p>The list of property values to upload. You can specify up to 10
    #           <code>propertyValues</code> array elements. </p>
    #   @return [Array<Types::AssetPropertyValue>]
    class PutAssetPropertyValueEntry < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key ID of the customer managed key used for KMS encryption. This is required if you
    #         use <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    class PutDefaultEncryptionConfigurationRequest < Struct.new(
      :encryption_type,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Key ARN of the KMS key used for KMS encryption if you use
    #           <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    # @!attribute configuration_status
    #   <p>The status of the account configuration. This contains the
    #         <code>ConfigurationState</code>. If there is an error, it also contains the
    #           <code>ErrorDetails</code>.</p>
    #   @return [Types::ConfigurationStatus]
    class PutDefaultEncryptionConfigurationResponse < Struct.new(
      :encryption_type,
      :kms_key_arn,
      :configuration_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_options
    #   <p>The logging options to set.</p>
    #   @return [Types::LoggingOptions]
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutLoggingOptionsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute multi_layer_storage
    #   <p>Identifies a storage destination. If you specified <code>MULTI_LAYER_STORAGE</code> for the storage type,
    #         you must specify a <code>MultiLayerStorage</code> object.</p>
    #   @return [Types::MultiLayerStorage]
    # @!attribute disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>The number of days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute warm_tier
    #   <p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>
    #   @return [String]
    # @!attribute warm_tier_retention_period
    #   <p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>
    #   @return [Types::WarmTierRetentionPeriod]
    # @!attribute disallow_ingest_null_na_n
    #   <p>Describes the configuration for ingesting NULL and NaN data. By default the feature is
    #         allowed. The feature is disallowed if the value is <code>true</code>.</p>
    #   @return [Boolean]
    class PutStorageConfigurationRequest < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute multi_layer_storage
    #   <p>Contains information about the storage destination.</p>
    #   @return [Types::MultiLayerStorage]
    # @!attribute disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>The number of days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute configuration_status
    #   <p>Contains current status information for the configuration.</p>
    #   @return [Types::ConfigurationStatus]
    # @!attribute warm_tier
    #   <p>A service managed storage tier optimized for analytical queries. It stores periodically uploaded, buffered and historical data ingested with the CreaeBulkImportJob API.</p>
    #   @return [String]
    # @!attribute warm_tier_retention_period
    #   <p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>
    #   @return [Types::WarmTierRetentionPeriod]
    # @!attribute disallow_ingest_null_na_n
    #   <p>Describes the configuration for ingesting NULL and NaN data. By default the feature is
    #         allowed. The feature is disallowed if the value is <code>true</code>.</p>
    #   @return [Boolean]
    class PutStorageConfigurationResponse < Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The query timed out.</p>
    # @!attribute message
    #   @return [String]
    class QueryTimeoutException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the reference information.</p>
    # @!attribute dataset
    #   <p>Contains the dataset reference information.</p>
    #   @return [Types::DataSetReference]
    class Reference < Struct.new(
      :dataset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed resource this execution summary resolves to.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset that the resource resolves to.</p>
    #   @return [String]
    class ResolveTo < Struct.new(
      :asset_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an IoT SiteWise Monitor resource ID for a portal or project.</p>
    # @!attribute portal
    #   <p>A portal resource.</p>
    #   @return [Types::PortalResource]
    # @!attribute project
    #   <p>A project resource.</p>
    #   @return [Types::ProjectResource]
    class Resource < Struct.new(
      :portal,
      :project,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource already exists.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that already exists.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource that already exists.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response, citation, and trace from the SiteWise Assistant.</p>
    # @!attribute trace
    #   <p>Contains tracing information of the SiteWise Assistant's reasoning and data access.</p>
    #   @return [Types::Trace]
    # @!attribute output
    #   <p>Contains the SiteWise Assistant's response.</p>
    #   @return [Types::InvocationOutput]
    # @!attribute access_denied_exception
    #   <p>Access is denied.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute conflicting_operation_exception
    #   <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #         than one operation on the same resource at the same time.</p>
    #   @return [Types::ConflictingOperationException]
    # @!attribute internal_failure_exception
    #   <p>IoT SiteWise can't process your request right now. Try again later.</p>
    #   @return [Types::InternalFailureException]
    # @!attribute invalid_request_exception
    #   <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #         unsupported characters. Check your request and try again.</p>
    #   @return [Types::InvalidRequestException]
    # @!attribute limit_exceeded_exception
    #   <p>You've reached the quota for a resource. For example, this can occur if you're trying to
    #         associate more than the allowed number of child assets or attempting to create more than the
    #         allowed number of properties for an asset model.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::LimitExceededException]
    # @!attribute resource_not_found_exception
    #   <p>The requested resource can't be found.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute throttling_exception
    #   <p>Your request exceeded a rate limit. For example, you might have exceeded the number of
    #         IoT SiteWise assets that can be created per second, the allowed number of messages per second, and so
    #         on.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::ThrottlingException]
    class ResponseStream < Struct.new(
      :trace,
      :output,
      :access_denied_exception,
      :conflicting_operation_exception,
      :internal_failure_exception,
      :invalid_request_exception,
      :limit_exceeded_exception,
      :resource_not_found_exception,
      :throttling_exception,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Trace < ResponseStream; end
      class Output < ResponseStream; end
      class AccessDeniedException < ResponseStream; end
      class ConflictingOperationException < ResponseStream; end
      class InternalFailureException < ResponseStream; end
      class InvalidRequestException < ResponseStream; end
      class LimitExceededException < ResponseStream; end
      class ResourceNotFoundException < ResponseStream; end
      class ThrottlingException < ResponseStream; end
      class Unknown < ResponseStream; end
    end

    # <p>The number of days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    # @!attribute number_of_days
    #   <p>The number of days that your data is kept.</p>
    #            <note>
    #               <p>If you specified a value for this parameter, the <code>unlimited</code> parameter must
    #           be <code>false</code>.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute unlimited
    #   <p>If true, your data is kept indefinitely.</p>
    #            <note>
    #               <p>If configured to <code>true</code>, you must not specify a value for the
    #             <code>numberOfDays</code> parameter.</p>
    #            </note>
    #   @return [Boolean]
    class RetentionPeriod < Struct.new(
      :number_of_days,
      :unlimited,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single row in the query results.</p>
    # @!attribute data
    #   <p>List of data points in a single row of the result set.</p>
    #   @return [Array<Types::Datum>]
    class Row < Struct.new(
      :data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested service is unavailable.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a SiteWise Edge gateway that runs on a Siemens Industrial Edge
    #       Device.</p>
    # @!attribute iot_core_thing_name
    #   <p>The name of the IoT Thing for your SiteWise Edge gateway.</p>
    #   @return [String]
    class SiemensIE < Struct.new(
      :iot_core_thing_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data source for the dataset.</p>
    # @!attribute arn
    #   <p>Contains the ARN of the dataset. If the source is Kendra, it's the ARN of the Kendra index.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Contains the location information where the cited text is originally stored. 
    #     For example, if the data source is Kendra, and the text synchronized is from an S3 bucket, then the location refers to an S3 object.</p>
    #   @return [Types::Location]
    class Source < Struct.new(
      :arn,
      :location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the dataset source associated with the dataset.</p>
    # @!attribute kendra
    #   <p>Contains details about the Kendra dataset source.</p>
    #   @return [Types::KendraSourceDetail]
    class SourceDetail < Struct.new(
      :kendra,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource the action will be taken on. This can include asset-based resources and
    #       computation model resources.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    class TargetResource < Struct.new(
      :asset_id,
      :computation_model_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeded a rate limit. For example, you might have exceeded the number of
    #       IoT SiteWise assets that can be created per second, the allowed number of messages per second, and so
    #       on.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a timestamp with optional nanosecond granularity.</p>
    # @!attribute time_in_seconds
    #   <p>The timestamp date, in seconds, in the Unix epoch format. Fractional nanosecond data is
    #         provided by <code>offsetInNanos</code>.</p>
    #   @return [Integer]
    # @!attribute offset_in_nanos
    #   <p>The nanosecond offset from <code>timeInSeconds</code>.</p>
    #   @return [Integer]
    class TimeInNanos < Struct.new(
      :time_in_seconds,
      :offset_in_nanos,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a time series (data stream).</p>
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property, in UUID format.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the time series.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to identify the type of the structure for this time series.</p>
    #   @return [String]
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this time series. This parameter is required for time series
    #         that have the <code>STRUCT</code> data type.</p>
    #            <p>The options for this parameter depend on the type of the composite model
    #         in which you created the asset property that is associated with your time series.
    #         Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite models.</p>
    #   @return [String]
    # @!attribute time_series_creation_date
    #   <p>The date that the time series was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute time_series_last_update_date
    #   <p>The date that the time series was last updated, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute time_series_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the time series, which has the following format.</p>
    #            <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:time-series/${TimeSeriesId}</code>
    #            </p>
    #   @return [String]
    class TimeSeriesSummary < Struct.new(
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      :time_series_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the quota for the number of tags allowed for a resource. For more
    #       information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag naming limits and
    #         requirements</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource with too many tags.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains tracing information of the SiteWise Assistant's reasoning and data access.</p>
    # @!attribute text
    #   <p>The cited text from the data source.</p>
    #   @return [String]
    class Trace < Struct.new(
      :text,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset transform property. A transform is a one-to-one mapping of a property's
    #       data points from one form to another. For example, you can use a transform to convert a
    #       Celsius data stream to Fahrenheit by applying the transformation expression to each data point
    #       of the Celsius stream. A transform can only have a data type of <code>DOUBLE</code> and
    #       consume properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#transforms">Transforms</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute expression
    #   <p>The mathematical expression that defines the transformation function. You can specify up
    #         to 10 variables per expression. You can specify up to 10 functions per
    #         expression. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>The list of variables used in the expression.</p>
    #   @return [Array<Types::ExpressionVariable>]
    # @!attribute processing_config
    #   <p>The processing configuration for the given transform property.
    #         You can configure transforms to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #         You can also configure transforms to be computed at the edge or in the cloud.</p>
    #   @return [Types::TransformProcessingConfig]
    class Transform < Struct.new(
      :expression,
      :variables,
      :processing_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The processing configuration for the given transform property.
    #       You can configure transforms to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #       You can also configure transforms to be computed at the edge or in the cloud.</p>
    # @!attribute compute_location
    #   <p>The compute location for the given transform property. </p>
    #   @return [String]
    # @!attribute forwarding_config
    #   <p>The forwarding configuration for a given property.</p>
    #   @return [Types::ForwardingConfig]
    class TransformProcessingConfig < Struct.new(
      :compute_location,
      :forwarding_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a tumbling window, which is a repeating fixed-sized, non-overlapping, and
    #       contiguous time window. You can use this window in metrics to aggregate data from properties
    #       and other assets.</p>
    #          <p>You can use <code>m</code>, <code>h</code>, <code>d</code>, and <code>w</code> when you
    #       specify an interval or offset. Note that <code>m</code> represents minutes, <code>h</code>
    #       represents hours, <code>d</code> represents days, and <code>w</code> represents weeks. You can
    #       also use <code>s</code> to represent seconds in <code>offset</code>.</p>
    #          <p>The <code>interval</code> and <code>offset</code> parameters support the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601 format</a>. For example,
    #         <code>PT5S</code> represents 5 seconds, <code>PT5M</code> represents 5 minutes, and
    #         <code>PT5H</code> represents 5 hours.</p>
    # @!attribute interval
    #   <p>The time interval for the tumbling window. The interval time must be between 1 minute and
    #         1 week.</p>
    #            <p>IoT SiteWise computes the <code>1w</code> interval the end of Sunday at midnight each week (UTC),
    #         the <code>1d</code> interval at the end of each day at midnight (UTC), the <code>1h</code>
    #         interval at the end of each hour, and so on. </p>
    #            <p>When IoT SiteWise aggregates data points for metric computations, the start of each interval is
    #         exclusive and the end of each interval is inclusive. IoT SiteWise places the computed data point at
    #         the end of the interval.</p>
    #   @return [String]
    # @!attribute offset
    #   <p>The offset for the tumbling window. The <code>offset</code> parameter accepts the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>The offset time.</p>
    #                  <p>For example, if you specify <code>18h</code> for <code>offset</code> and
    #               <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the following
    #             ways:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you create the metric before or at 6 PM (UTC), you get the first aggregation
    #                 result at 6 PM (UTC) on the day when you create the metric.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you create the metric after 6 PM (UTC), you get the first aggregation result at
    #                 6 PM (UTC) the next day.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The ISO 8601 format.</p>
    #                  <p>For example, if you specify <code>PT18H</code> for <code>offset</code> and
    #               <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the following
    #             ways:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you create the metric before or at 6 PM (UTC), you get the first aggregation
    #                 result at 6 PM (UTC) on the day when you create the metric.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you create the metric after 6 PM (UTC), you get the first aggregation result at
    #                 6 PM (UTC) the next day.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The 24-hour clock.</p>
    #                  <p>For example, if you specify <code>00:03:00</code> for <code>offset</code>,
    #               <code>5m</code> for <code>interval</code>, and you create the metric at 2 PM (UTC), you
    #             get the first aggregation result at 2:03 PM (UTC). You get the second aggregation result
    #             at 2:08 PM (UTC). </p>
    #               </li>
    #               <li>
    #                  <p>The offset time zone.</p>
    #                  <p>For example, if you specify <code>2021-07-23T18:00-08</code> for <code>offset</code>
    #             and <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the
    #             following ways:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you create the metric before or at 6 PM (PST), you get the first aggregation
    #                 result at 6 PM (PST) on the day when you create the metric.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you create the metric after 6 PM (PST), you get the first aggregation result at
    #                 6 PM (PST) the next day.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    class TumblingWindow < Struct.new(
      :interval,
      :offset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #   @return [String]
    # @!attribute access_policy_identity
    #   <p>The identity for this access policy. Choose an IAM Identity Center user, an IAM Identity Center group, or an IAM user.</p>
    #   @return [Types::Identity]
    # @!attribute access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    #   @return [Types::Resource]
    # @!attribute access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateAccessPolicyRequest < Struct.new(
      :access_policy_id,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateAccessPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model, in UUID format.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_id
    #   <p>The ID of a composite model on this asset model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_external_id
    #   <p>An external ID to assign to the asset model. You can only set the external ID of the asset
    #         model if it wasn't set when it was created, or you're setting it to the exact same thing as
    #         when it was created.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_description
    #   <p>A description for the composite model.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_name
    #   <p>A unique name for the composite model.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute asset_model_composite_model_properties
    #   <p>The property definitions of the composite model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models">
    #           Inline custom composite models</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per composite model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Array<Types::AssetModelProperty>]
    # @!attribute if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The update request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Accepts <b>*</b> to reject the update request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    #   @return [String]
    # @!attribute match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the update operation.</p>
    #   @return [String]
    class UpdateAssetModelCompositeModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_external_id,
      :asset_model_composite_model_description,
      :asset_model_composite_model_name,
      :client_token,
      :asset_model_composite_model_properties,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_composite_model_path
    #   <p>The path to the composite model listing the parent composite models.</p>
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    class UpdateAssetModelCompositeModelResponse < Struct.new(
      :asset_model_composite_model_path,
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model to update. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_model_external_id
    #   <p>An external ID to assign to the asset model. The asset model must not already have an
    #         external ID. The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_model_name
    #   <p>A unique name for the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_description
    #   <p>A description for the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_properties
    #   <p>The updated property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Array<Types::AssetModelProperty>]
    # @!attribute asset_model_hierarchies
    #   <p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset
    #         model whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Array<Types::AssetModelHierarchy>]
    # @!attribute asset_model_composite_models
    #   <p>The composite models that are part of this asset model. It groups properties
    #     (such as attributes, measurements, transforms, and metrics) and child composite models that
    #         model parts of your industrial equipment. Each composite model has a type that defines the
    #         properties that the composite model supports. Use composite models to define alarms on this asset model.</p>
    #            <note>
    #               <p>When creating custom composite models, you need to use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html">CreateAssetModelCompositeModel</a>. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html">Creating custom composite models (Components)</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #            </note>
    #   @return [Array<Types::AssetModelCompositeModel>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The expected current entity tag (ETag) for the asset model’s latest or active version (specified using <code>matchForVersionType</code>).   
    #       The update request is rejected if the tag does not match the latest or active version's current entity tag.
    #       See <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html">Optimistic locking for asset model writes</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Accepts <b>*</b> to reject the update request if an active version 
    #       (specified using <code>matchForVersionType</code> as <code>ACTIVE</code>) already exists for the asset model.</p>
    #   @return [String]
    # @!attribute match_for_version_type
    #   <p>Specifies the asset model version type (<code>LATEST</code> or <code>ACTIVE</code>) used in 
    #     conjunction with <code>If-Match</code> or <code>If-None-Match</code> headers to determine the target ETag for the update operation.</p>
    #   @return [String]
    class UpdateAssetModelRequest < Struct.new(
      :asset_model_id,
      :asset_model_external_id,
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>UPDATING</code> after
    #         successfully calling this operation) and any error message.</p>
    #   @return [Types::AssetModelStatus]
    class UpdateAssetModelResponse < Struct.new(
      :asset_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to be updated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property to be updated. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the alias is removed from the property.</p>
    #   @return [String]
    # @!attribute property_notification_state
    #   <p>The MQTT notification state (enabled or disabled) for this asset property.
    #         When the notification state is enabled, IoT SiteWise publishes property value
    #         updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute property_unit
    #   <p>The unit of measure (such as Newtons or RPM) of the asset property. If you don't specify a
    #         value for this parameter, the service uses the value of the <code>assetModelProperty</code> in
    #         the asset model.</p>
    #   @return [String]
    class UpdateAssetPropertyRequest < Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :property_notification_state,
      :client_token,
      :property_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to update. This can be either the actual ID in UUID format, or else <code>externalId:</code> followed by the external ID, if it has one.
    #       For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references">Referencing objects with external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_external_id
    #   <p>An external ID to assign to the asset. The asset must not already have an external ID.
    #         The external ID must be unique within your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset_name
    #   <p>A friendly name for the asset.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute asset_description
    #   <p>A description for the asset.</p>
    #   @return [String]
    class UpdateAssetRequest < Struct.new(
      :asset_id,
      :asset_external_id,
      :asset_name,
      :client_token,
      :asset_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>UPDATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::AssetStatus]
    class UpdateAssetResponse < Struct.new(
      :asset_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_name
    #   <p>The name of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_description
    #   <p>The description of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_configuration
    #   <p>The configuration for the computation model.</p>
    #   @return [Types::ComputationModelConfiguration]
    # @!attribute computation_model_data_binding
    #   <p>The data binding for the computation model. Key is a variable name defined in configuration. 
    #     Value is a <code>ComputationModelDataBindingValue</code> referenced by the variable.</p>
    #   @return [Hash<String, Types::ComputationModelDataBindingValue>]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the
    #         request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateComputationModelRequest < Struct.new(
      :computation_model_id,
      :computation_model_name,
      :computation_model_description,
      :computation_model_configuration,
      :computation_model_data_binding,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_status
    #   <p>The status of the computation model. It contains a state (UPDATING after successfully
    #         calling this operation) and an error message if any.</p>
    #   @return [Types::ComputationModelStatus]
    class UpdateComputationModelResponse < Struct.new(
      :computation_model_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard to update.</p>
    #   @return [String]
    # @!attribute dashboard_name
    #   <p>A new friendly name for the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_description
    #   <p>A new description for the dashboard.</p>
    #   @return [String]
    # @!attribute dashboard_definition
    #   <p>The new dashboard definition, as specified in a JSON literal.</p>
    #            <ul>
    #               <li>
    #                  <p>IoT SiteWise Monitor (Classic) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>IoT SiteWise Monitor (AI-aware) see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html">Create dashboards (CLI)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>in the <i>IoT SiteWise User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateDashboardRequest < Struct.new(
      :dashboard_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateDashboardResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_description
    #   <p>A description about the dataset, and its functionality.</p>
    #   @return [String]
    # @!attribute dataset_source
    #   <p>The data source for the dataset.</p>
    #   @return [Types::DatasetSource]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateDatasetRequest < Struct.new(
      :dataset_id,
      :dataset_name,
      :dataset_description,
      :dataset_source,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARN</a> of the dataset. 
    #     The format is <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dataset/${DatasetId}</code>.</p>
    #   @return [String]
    # @!attribute dataset_status
    #   <p>The status of the dataset. This contains the state and any error messages. 
    #     State is <code>UPDATING</code> after a successfull call to this API, and any associated error message. The state is 
    #     <code>ACTIVE</code> when ready to use.</p>
    #   @return [Types::DatasetStatus]
    class UpdateDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to be updated.</p>
    #   @return [String]
    # @!attribute capability_namespace
    #   <p>The namespace of the gateway capability configuration to be updated.
    #         For example, if you configure OPC UA
    #         sources for an MQTT-enabled gateway, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:3</code>.</p>
    #   @return [String]
    # @!attribute capability_configuration
    #   <p>The JSON document that defines the configuration for the gateway capability. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    class UpdateGatewayCapabilityConfigurationRequest < Struct.new(
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute capability_namespace
    #   <p>The namespace of the gateway capability.</p>
    #   @return [String]
    # @!attribute capability_sync_status
    #   <p>The synchronization status of the gateway capability configuration. The sync status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code> - The gateway is running with the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_SYNC</code> - The gateway hasn't received the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYNC_FAILED</code> - The gateway rejected the latest configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code> - The gateway hasn't reported its sync status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_APPLICABLE</code> - The gateway doesn't support this capability. This is most common when integrating partner data sources, because the data integration is handled externally by the partner.</p>
    #               </li>
    #            </ul>
    #            <p>After you update a capability configuration, its sync status is <code>OUT_OF_SYNC</code>
    #         until the gateway receives and applies or rejects the updated configuration.</p>
    #   @return [String]
    class UpdateGatewayCapabilityConfigurationResponse < Struct.new(
      :capability_namespace,
      :capability_sync_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to update.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>A unique name for the gateway.</p>
    #   @return [String]
    class UpdateGatewayRequest < Struct.new(
      :gateway_id,
      :gateway_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal to update.</p>
    #   @return [String]
    # @!attribute portal_name
    #   <p>A new friendly name for the portal.</p>
    #   @return [String]
    # @!attribute portal_description
    #   <p>A new description for the portal.</p>
    #   @return [String]
    # @!attribute portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #   @return [String]
    # @!attribute portal_logo_image
    #   <p>Contains an image that is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An image file. Choose this option to upload a new image.</p>
    #               </li>
    #               <li>
    #                  <p>The ID of an existing image. Choose this option to keep an existing image.</p>
    #               </li>
    #            </ul>
    #   @return [Types::Image]
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #   @return [String]
    # @!attribute alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #   @return [Types::Alarms]
    # @!attribute portal_type
    #   <p>Define the type of portal. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [String]
    # @!attribute portal_type_configuration
    #   <p>The configuration entry associated with the specific portal type. The value for IoT SiteWise Monitor (Classic) is <code>SITEWISE_PORTAL_V1</code>. The value for IoT SiteWise Monitor (AI-aware) is <code>SITEWISE_PORTAL_V2</code>.</p>
    #   @return [Hash<String, Types::PortalTypeEntry>]
    class UpdatePortalRequest < Struct.new(
      :portal_id,
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :portal_logo_image,
      :role_arn,
      :client_token,
      :notification_sender_email,
      :alarms,
      :portal_type,
      :portal_type_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>UPDATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::PortalStatus]
    class UpdatePortalResponse < Struct.new(
      :portal_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project to update.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>A new friendly name for the project.</p>
    #   @return [String]
    # @!attribute project_description
    #   <p>A new description for the project.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateProjectRequest < Struct.new(
      :project_id,
      :project_name,
      :project_description,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateProjectResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for a user identity in an access policy.</p>
    # @!attribute id
    #   <p>The IAM Identity Center ID of the user.</p>
    #   @return [String]
    class UserIdentity < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The validation failed for this query.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a property value used in an expression.</p>
    # @!attribute property_id
    #   <p>The ID of the property to use as the variable. You can use the property <code>name</code>
    #         if it's from the same asset model. If the property has an external ID, you can specify
    #           <code>externalId:</code> followed by the external ID. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute hierarchy_id
    #   <p>The ID of the hierarchy to query for the property ID. You can use the hierarchy's name
    #         instead of the hierarchy's ID. If the hierarchy has an external ID, you can specify
    #           <code>externalId:</code> followed by the external ID. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids">Using external IDs</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You use a hierarchy ID instead of a model ID because you can have several hierarchies
    #         using the same model and therefore the same <code>propertyId</code>. For example, you might
    #         have separately grouped assets that come from the same asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [String]
    # @!attribute property_path
    #   <p>The path of the property.</p>
    #   @return [Array<Types::AssetModelPropertyPathSegment>]
    class VariableValue < Struct.new(
      :property_id,
      :hierarchy_id,
      :property_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an asset property value (of a single type only).</p>
    # @!attribute string_value
    #   <p> Asset property data of type string (sequence of characters). The allowed pattern:
    #         "^$|[^\u0000-\u001F\u007F]+". The max length is 1024. </p>
    #   @return [String]
    # @!attribute integer_value
    #   <p>Asset property data of type integer (whole number).</p>
    #   @return [Integer]
    # @!attribute double_value
    #   <p> Asset property data of type double (floating point number). The min value is -10^10. The
    #         max value is 10^10. Double.NaN is allowed. </p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>Asset property data of type Boolean (true or false).</p>
    #   @return [Boolean]
    # @!attribute null_value
    #   <p>The type of null asset property data with BAD and UNCERTAIN qualities.</p>
    #   @return [Types::PropertyValueNullValue]
    class Variant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value,
      :null_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Set this period to specify how long your data is stored in the warm tier before it is deleted. You can set this only if cold tier is enabled.</p>
    # @!attribute number_of_days
    #   <p>The number of days the data is stored in the warm tier.</p>
    #   @return [Integer]
    # @!attribute unlimited
    #   <p>If set to true, the data is stored indefinitely in the warm tier.</p>
    #   @return [Boolean]
    class WarmTierRetentionPeriod < Struct.new(
      :number_of_days,
      :unlimited,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
