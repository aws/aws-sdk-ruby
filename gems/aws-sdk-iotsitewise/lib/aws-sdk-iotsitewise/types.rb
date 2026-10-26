# frozen_string_literal: true

# This is generated code!

module Aws::IoTSiteWise
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
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
      nil,
      :id,
      :identity,
      :resource,
      :permission,
      :creation_date,
      :last_update_date,
      keyword_init: true
    )
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
      nil,
      :action_definition_id,
      :action_name,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The JSON payload of the action.</p>
    # @!attribute string_value
    #   <p>The payload of the action in a JSON string.</p>
    #   @return [String]
    class ActionPayload < Struct.new(
      nil,
      :string_value,
      keyword_init: true
    )
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
      nil,
      :action_id,
      :action_definition_id,
      :target_resource,
      :resolve_to,
      keyword_init: true
    )
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
      nil,
      :timestamp,
      :quality,
      :value,
      keyword_init: true
    )
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
      nil,
      :average,
      :count,
      :maximum,
      :minimum,
      :sum,
      :standard_deviation,
      keyword_init: true
    )
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
      nil,
      :alarm_role_arn,
      :notification_lambda_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The annotation format configuration for bulk import files.</p>
    class Annotation < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of an application for list operations</p>
    # @!attribute arn
    #   <p>ARN of the application</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique identifier of the application</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the application</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the application</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the application was created</p>
    #   @return [Time]
    # @!attribute workspace_name
    #   <p>Name of the workspace this application belongs to</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :status,
      :created_at,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to match data bindings based on a specific asset. This filter identifies all
    #       computation models referencing a particular asset in their data bindings.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset to filter data bindings by. Only data bindings referencing this
    #         specific asset are matched.</p>
    #   @return [String]
    class AssetBindingValueFilter < Struct.new(
      nil,
      :asset_id,
      keyword_init: true
    )
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
      nil,
      :name,
      :description,
      :type,
      :properties,
      :id,
      :external_id,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :type,
      :description,
      :path,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :code,
      :message,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      keyword_init: true
    )
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
      nil,
      :parent_asset_id,
      :child_asset_id,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      keyword_init: true
    )
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
      nil,
      :name,
      :description,
      :type,
      :properties,
      :id,
      :external_id,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :description,
      :type,
      :properties,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :type,
      :description,
      :path,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :child_asset_model_id,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :child_asset_model_id,
      keyword_init: true
    )
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
    #            <p>The <code>VIDEO</code>, <code>ANNOTATION</code>, and <code>JSON</code> data types aren't supported for asset model properties. These types are used only by time series that store data for datasets in a workspace.</p>
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
      nil,
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      :path,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :property_id,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :property_id,
      keyword_init: true
    )
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
    #            <p>The <code>VIDEO</code>, <code>ANNOTATION</code>, and <code>JSON</code> data types aren't supported for asset model properties. These types are used only by time series that store data for datasets in a workspace.</p>
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
      nil,
      :id,
      :external_id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :state,
      :error,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :alias,
      :notification,
      :data_type,
      :data_type_spec,
      :unit,
      :path,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :alias,
      :unit,
      :notification,
      :asset_composite_model_id,
      :path,
      keyword_init: true
    )
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
      nil,
      :value,
      :timestamp,
      :quality,
      keyword_init: true
    )
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
      nil,
      :hierarchy_info,
      :relationship_type,
      keyword_init: true
    )
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
      nil,
      :state,
      :error,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a data segment entry to associate with a dataset.</p>
    # @!attribute source_dataset_id
    #   <p>The ID of the source dataset that contains the data segment.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment to associate.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment to associate.</p>
    #   @return [Types::TimeInNanos]
    class AssociateDataSegmentEntry < Struct.new(
      nil,
      :source_dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      keyword_init: true
    )
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
      nil,
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :default_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the curated dataset to associate data segments with.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute associate_data_segment_entries
    #   <p>The list of data segment entries to associate with the dataset.</p>
    #   @return [Array<Types::AssociateDataSegmentEntry>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is
    #         idempotent. If you retry a request that completed successfully using the same client token,
    #         the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class BatchAssociateDataSegmentsToDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :associate_data_segment_entries,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p>The version of the dataset after association.</p>
    #   @return [String]
    # @!attribute failed_associations
    #   <p>A list of data segment associations that failed.</p>
    #   @return [Array<Types::FailedDataSegmentAssociation>]
    class BatchAssociateDataSegmentsToDatasetResponse < Struct.new(
      nil,
      :dataset_id,
      :dataset_version,
      :failed_associations,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :asset_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of associated error information, if any.</p>
    #   @return [Array<Types::AssetErrorDetails>]
    class BatchAssociateProjectAssetsResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the session dataset from which to delete data segments.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute delete_data_segment_entries
    #   <p>The list of data segment entries to delete.</p>
    #   @return [Array<Types::DeleteDataSegmentEntry>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is
    #         idempotent. If you retry a request that completed successfully using the same client token,
    #         the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class BatchDeleteDatasetDataSegmentsRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :delete_data_segment_entries,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p>The version of the dataset after deletion.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of data segment deletions that failed.</p>
    #   @return [Array<Types::FailedDataSegmentDeletion>]
    class BatchDeleteDatasetDataSegmentsResponse < Struct.new(
      nil,
      :dataset_id,
      :dataset_version,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the curated dataset to disassociate data segments from.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute disassociate_data_segment_entries
    #   <p>The list of data segment entries to disassociate from the dataset.</p>
    #   @return [Array<Types::DisassociateDataSegmentEntry>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is
    #         idempotent. If you retry a request that completed successfully using the same client token,
    #         the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class BatchDisassociateDataSegmentsFromDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :disassociate_data_segment_entries,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p>The version of the dataset after disassociation.</p>
    #   @return [String]
    # @!attribute failed_disassociations
    #   <p>A list of data segment disassociations that failed.</p>
    #   @return [Array<Types::FailedDataSegmentDisassociation>]
    class BatchDisassociateDataSegmentsFromDatasetResponse < Struct.new(
      nil,
      :dataset_id,
      :dataset_version,
      :failed_disassociations,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :asset_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of associated error information, if any.</p>
    #   @return [Array<Types::AssetErrorDetails>]
    class BatchDisassociateProjectAssetsResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_timestamp,
      keyword_init: true
    )
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
      nil,
      :entries,
      :next_token,
      :max_results,
      keyword_init: true
    )
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
      nil,
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :aggregated_values,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_timestamp,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_timestamp,
      keyword_init: true
    )
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
      nil,
      :entries,
      :next_token,
      :max_results,
      keyword_init: true
    )
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
      nil,
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :asset_property_value_history,
      keyword_init: true
    )
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
      nil,
      :entries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :asset_property_value,
      keyword_init: true
    )
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
      nil,
      :error_code,
      :error_message,
      :timestamps,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :errors,
      keyword_init: true
    )
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
      nil,
      :enable_partial_entry_processing,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch put request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #   @return [Array<Types::BatchPutAssetPropertyErrorEntry>]
    class BatchPutAssetPropertyValueResponse < Struct.new(
      nil,
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the IoT SiteWise workspace containing the enrichment job to cancel.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the enrichment job to cancel. This is the jobId returned by CreateEnrichmentJob.</p>
    #   @return [String]
    class CancelEnrichmentJobRequest < Struct.new(
      nil,
      :workspace_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier of the cancelled enrichment job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the enrichment job after cancellation. This will be CANCELLED, indicating the job
    #   was successfully cancelled or was already in CANCELLED state (idempotent behavior).</p>
    #   @return [String]
    class CancelEnrichmentJobResponse < Struct.new(
      nil,
      :job_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for CancelPipelineExecution operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The unique identifier of the pipeline execution.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message describing why the pipeline execution is being cancelled.</p>
    #   @return [String]
    class CancelPipelineExecutionRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :pipeline_execution_id,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for CancelPipelineExecution operation.</p>
    # @!attribute state
    #   <p>The current execution state of the pipeline. Can only be CANCELLING or CANCELLED.</p>
    #   @return [String]
    class CancelPipelineExecutionResponse < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace associated with the query.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The unique identifier for the query execution to cancel.</p>
    #   @return [String]
    class CancelQueryRequest < Struct.new(
      nil,
      :workspace_name,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response for the CancelQuery operation.</p>
    # @!attribute query_id
    #   <p>The unique identifier for the cancelled query.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current query status.</p>
    #   @return [String]
    class CancelQueryResponse < Struct.new(
      nil,
      :query_id,
      :status,
      keyword_init: true
    )
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
      nil,
      :reference,
      :content,
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
    #   @return [Types::ColumnType]
    class ColumnInfo < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a column in the query results.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the column. Valid values are STRING, DOUBLE, BOOLEAN, INTEGER, TIMESTAMP, and VARIANT.</p>
    #   @return [String]
    class ColumnInformation < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data type of the column.</p>
    # @!attribute scalar_type
    #   <p>The allowed data types that the column has as it's value.</p>
    #   @return [String]
    class ColumnType < Struct.new(
      nil,
      :scalar_type,
      keyword_init: true
    )
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
      nil,
      :name,
      :type,
      :asset_property,
      :id,
      :external_id,
      keyword_init: true
    )
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
      nil,
      :composition_relationship,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a composite model that composed an asset model of type
    #         <code>COMPONENT_MODEL</code>.</p>
    # @!attribute id
    #   <p>The ID of the component.</p>
    #   @return [String]
    class CompositionRelationshipItem < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_composite_model_type,
      keyword_init: true
    )
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
      nil,
      :input_properties,
      :result_property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the computation model.</p>
    # @!attribute anomaly_detection
    #   <p>The configuration for the anomaly detection type of computation model.</p>
    #   @return [Types::ComputationModelAnomalyDetectionConfiguration]
    class ComputationModelConfiguration < Struct.new(
      nil,
      :anomaly_detection,
      keyword_init: true
    )
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
      nil,
      :computation_model_ids,
      :matched_data_binding,
      keyword_init: true
    )
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
      nil,
      :asset_model_property,
      :asset_property,
      :list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the resource that a computation model resolves to.</p>
    # @!attribute resolve_to
    #   <p>The detailed resource this execution summary resolves to.</p>
    #   @return [Types::ResolveTo]
    class ComputationModelResolveToResourceSummary < Struct.new(
      nil,
      :resolve_to,
      keyword_init: true
    )
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
      nil,
      :state,
      :error,
      keyword_init: true
    )
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
      nil,
      :id,
      :arn,
      :name,
      :description,
      :type,
      :creation_date,
      :last_update_date,
      :status,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single compute node in a pipeline DAG. Each compute node references a task and can declare dependencies on other nodes.</p>
    # @!attribute compute_node_name
    #   <p>The unique name for this compute node within the pipeline.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task to execute for this compute node.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>Environment variables specific to this compute node. These override pipeline-level environment variables with the same key.</p>
    #   @return [Hash<String, String>]
    # @!attribute depends_on
    #   <p>A list of compute node names that must complete successfully before this node can start.</p>
    #   @return [Array<String>]
    class ComputeNode < Struct.new(
      nil,
      :compute_node_name,
      :task_name,
      :environment_variables,
      :depends_on,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed execution information for a compute node within a pipeline execution.</p>
    # @!attribute compute_node_name
    #   <p>The name of the compute node.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task executed for this compute node.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The ARN of the task.</p>
    #   @return [String]
    # @!attribute task_version
    #   <p>The task version that executed for this compute node.</p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>A list of compute node names that this node depends on.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current execution status of the compute node.</p>
    #   @return [Types::ComputeNodeExecutionStatus]
    # @!attribute start_time
    #   <p>The time the compute node execution started, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the compute node execution completed, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute execution_environment_variables
    #   <p>The fully resolved environment variables used for this compute node execution.</p>
    #   @return [Hash<String, String>]
    # @!attribute execution_mounts
    #   <p>The fully resolved mounts used for this compute node execution, after merging
    #   task-defined mounts with any execution-level mount overrides. Each mount attaches an
    #   external data source to the container filesystem at a relative path under the
    #   service-owned mount root.</p>
    #   @return [Array<Types::Mount>]
    class ComputeNodeExecutionDetails < Struct.new(
      nil,
      :compute_node_name,
      :task_name,
      :task_arn,
      :task_version,
      :depends_on,
      :status,
      :start_time,
      :end_time,
      :execution_environment_variables,
      :execution_mounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information about a compute node that has failed.</p>
    # @!attribute code
    #   <p>Classification of the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Human-readable description of why the compute node failed.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Detailed error entries to help diagnose the failure.</p>
    #   @return [Array<Types::DetailedPipelineError>]
    class ComputeNodeExecutionStateDetails < Struct.new(
      nil,
      :code,
      :message,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Current execution status of a compute node within a pipeline execution.</p>
    # @!attribute state
    #   <p>Current state of the compute node execution.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>Additional information about the compute node's failure. Populated when the compute node has failed.</p>
    #   @return [Types::ComputeNodeExecutionStateDetails]
    class ComputeNodeExecutionStatus < Struct.new(
      nil,
      :state,
      :state_details,
      keyword_init: true
    )
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
      nil,
      :code,
      :message,
      keyword_init: true
    )
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
      nil,
      :state,
      :error,
      keyword_init: true
    )
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
      nil,
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a container task, including the container image, IAM role, and compute settings.</p>
    # @!attribute ecr_uri
    #   <p>The Amazon ECR image URI for the task container.</p>
    #   @return [String]
    # @!attribute task_execution_role
    #   <p>The ARN of the IAM role that grants the containerized workload permissions to access AWS resources.</p>
    #   @return [String]
    # @!attribute processing_type
    #   <p>The processing type for compute resources.</p>
    #   @return [String]
    # @!attribute processing_unit
    #   <p>The processing unit allocation that determines the vCPU, memory, and GPU resources.</p>
    #   @return [String]
    # @!attribute ephemeral_storage_configuration
    #   <p>Ephemeral storage configuration for the container task.</p>
    #   @return [Types::EphemeralStorageConfiguration]
    # @!attribute command
    #   <p>The command to execute in the container.</p>
    #   @return [Array<String>]
    # @!attribute timeout_seconds
    #   <p>The timeout in seconds for task execution. Default: 3600 (1 hour).</p>
    #   @return [Integer]
    # @!attribute environment_variables
    #   <p>Environment variables passed to the container at runtime.</p>
    #   @return [Hash<String, String>]
    # @!attribute mounts
    #   <p>Mounts attached to the container filesystem. Each mount exposes an external
    #   data source as a local directory inside the container. The service assigns each mount
    #   a container path based on the mount name. The container reads files through that path
    #   as if the data were on the local filesystem.</p>
    #   @return [Array<Types::Mount>]
    class ContainerTaskConfiguration < Struct.new(
      nil,
      :ecr_uri,
      :task_execution_role,
      :processing_type,
      :processing_unit,
      :ephemeral_storage_configuration,
      :command,
      :timeout_seconds,
      :environment_variables,
      :mounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the cited text from the data source.</p>
    # @!attribute text
    #   <p>The cited text from the data source.</p>
    #   @return [String]
    class Content < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
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
      nil,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      :tags,
      keyword_init: true
    )
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
      nil,
      :access_policy_id,
      :access_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Unique client token for idempotent request handling</p>
    #   @return [String]
    # @!attribute idc_instance_arn
    #   <p>Identity Center Instance ARN to create the application in</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>Name of the workspace to associate with the underlying Application</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the application</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the application</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the application.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationRequest < Struct.new(
      nil,
      :client_token,
      :idc_instance_arn,
      :workspace_name,
      :name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the application</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique identifier of the application</p>
    #   @return [String]
    # @!attribute dns_subdomain
    #   <p>DNS subdomain for the application</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the application</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the application</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      nil,
      :arn,
      :id,
      :dns_subdomain,
      :name,
      :status,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    class CreateAssetModelCompositeModelResponse < Struct.new(
      nil,
      :asset_model_composite_model_id,
      :asset_model_composite_model_path,
      :asset_model_status,
      :asset_model_id,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true
    )
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
      nil,
      :asset_name,
      :asset_model_id,
      :asset_id,
      :asset_external_id,
      :client_token,
      :tags,
      :asset_description,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :asset_arn,
      :asset_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The unique name that helps identify the job request.</p>
    #   @return [String]
    # @!attribute job_role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IAM role that allows IoT SiteWise to read Amazon S3 data.</p>
    #   @return [String]
    # @!attribute files
    #   <p>The files in the specified Amazon S3 bucket that contain your data. You can specify up to 100 files for each bulk import job. Each file supports the following size limits:</p>
    #            <ul>
    #               <li>
    #                  <p>Parquet files – Up to 256 MiB.</p>
    #               </li>
    #               <li>
    #                  <p>Other file formats – Up to 5 GiB.</p>
    #               </li>
    #            </ul>
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
    # @!attribute dataset_id
    #   <p>The ID of the session dataset to ingest data into. Specify this field, together with
    #         <code>workspaceName</code>, to ingest data into a session dataset in a workspace.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the session dataset. Specify this field together
    #         with <code>datasetId</code>.</p>
    #   @return [String]
    class CreateBulkImportJobRequest < Struct.new(
      nil,
      :job_name,
      :job_role_arn,
      :files,
      :error_report_location,
      :job_configuration,
      :adaptive_ingestion,
      :delete_files_after_import,
      :dataset_id,
      :workspace_name,
      keyword_init: true
    )
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
      nil,
      :job_id,
      :job_name,
      :job_status,
      keyword_init: true
    )
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
      nil,
      :computation_model_name,
      :computation_model_description,
      :computation_model_configuration,
      :computation_model_data_binding,
      :client_token,
      :tags,
      keyword_init: true
    )
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
      nil,
      :computation_model_id,
      :computation_model_arn,
      :computation_model_status,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      :tags,
      keyword_init: true
    )
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
      nil,
      :dashboard_id,
      :dashboard_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create a dataset export job.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace in which to create the dataset export job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
    #   The AWS SDKs and CLI populate this automatically.</p>
    #   @return [String]
    # @!attribute destination_s3_uri
    #   <p>The S3 URI where output clips will be written.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The processing input source.</p>
    #   @return [Types::ProcessingInput]
    # @!attribute error_report_location
    #   <p>The location where the error report will be written on failure.</p>
    #   @return [Types::ExportErrorReportLocation]
    class CreateDatasetExportJobRequest < Struct.new(
      nil,
      :workspace_name,
      :client_token,
      :destination_s3_uri,
      :input,
      :error_report_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response for create dataset export job request.</p>
    # @!attribute job_id
    #   <p>The unique identifier for the dataset export job.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace in which the dataset export job was created.</p>
    #   @return [String]
    class CreateDatasetExportJobResponse < Struct.new(
      nil,
      :job_id,
      :workspace_name,
      keyword_init: true
    )
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
    # @!attribute dataset_type
    #   <p>The type of dataset: a session dataset, a curated dataset, or a connection to an external
    #         datasource.</p>
    #   @return [String]
    # @!attribute dataset_config
    #   <p>The configuration for the dataset.</p>
    #   @return [Types::DatasetConfig]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset. Required for session and curated
    #         datasets. Omit this field for datasets that connect to an external datasource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for the dataset, provided as key-value pairs.</p>
    #   @return [Hash<String, String>]
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
      nil,
      :dataset_id,
      :dataset_name,
      :dataset_description,
      :dataset_type,
      :dataset_config,
      :workspace_name,
      :metadata,
      :dataset_source,
      :client_token,
      :tags,
      keyword_init: true
    )
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
      nil,
      :dataset_id,
      :dataset_arn,
      :dataset_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the IoT SiteWise workspace containing the video data to analyze.</p>
    #   @return [String]
    # @!attribute job_configuration
    #   <p>Configuration defining the type of enrichment analysis to perform and which video data to analyze.
    #   Currently supports eventDetection for generating embeddings from video data for semantic search.</p>
    #   @return [Types::EnrichmentJobConfiguration]
    # @!attribute client_token
    #   <p>Optional unique token that makes the operation idempotent. If you submit the same request with the
    #   same token within the idempotency window, the service returns the original job without creating a
    #   duplicate. Use a UUID or timestamp-based token for each unique request.</p>
    #   @return [String]
    class CreateEnrichmentJobRequest < Struct.new(
      nil,
      :workspace_name,
      :job_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Unique identifier for the enrichment job. Use this ID with DescribeEnrichmentJob to monitor
    #   progress or with CancelEnrichmentJob to cancel the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Initial status of the enrichment job, typically PENDING. The job will transition to RUNNING when
    #   processing begins, then to a terminal state (COMPLETED, FAILED, TIMED_OUT, or CANCELLED).
    #   Use DescribeEnrichmentJob to track status changes.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the enrichment job was created in ISO 8601 format.</p>
    #   @return [Time]
    class CreateEnrichmentJobResponse < Struct.new(
      nil,
      :job_id,
      :status,
      :created_at,
      keyword_init: true
    )
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
      nil,
      :gateway_name,
      :gateway_platform,
      :gateway_version,
      :tags,
      keyword_init: true
    )
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
      nil,
      :gateway_id,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for CreatePipeline operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline to create. Must be unique within the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the pipeline.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>Environment variables shared across all compute nodes in the pipeline. Individual compute nodes can override these values with their own environment variables.</p>
    #   @return [Hash<String, String>]
    # @!attribute computations
    #   <p>The list of compute nodes that form the pipeline DAG. Each compute node references a task and can declare dependencies on other nodes.</p>
    #   @return [Array<Types::ComputeNode>]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the pipeline. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your AWS IoT SiteWise resources</a> in the AWS IoT SiteWise User Guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
    #   If you retry a request that completed successfully using the same client token, the server returns the
    #   cached result from the original successful request without performing the operation again.</p>
    #   @return [String]
    class CreatePipelineRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :description,
      :environment_variables,
      :computations,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for CreatePipeline operation.</p>
    # @!attribute pipeline_name
    #   <p>The name of the created pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_arn
    #   <p>The ARN of the created pipeline.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the newly created pipeline.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the pipeline.</p>
    #   @return [Types::ResourceStatus]
    class CreatePipelineResponse < Struct.new(
      nil,
      :pipeline_name,
      :pipeline_arn,
      :version,
      :status,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :portal_id,
      :portal_arn,
      :portal_start_url,
      :portal_status,
      :sso_application_id,
      keyword_init: true
    )
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
      nil,
      :portal_id,
      :project_name,
      :project_description,
      :client_token,
      :tags,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :project_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for CreateTask operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task to create. Must be unique within the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the task.</p>
    #   @return [String]
    # @!attribute task_configuration
    #   <p>The task execution configuration. Specify a <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ContainerTaskConfiguration.html">containerTaskConfiguration</a> for custom container workloads.</p>
    #   @return [Types::TaskConfiguration]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the task. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your AWS IoT SiteWise resources</a> in the AWS IoT SiteWise User Guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
    #   If you retry a request that completed successfully using the same client token, the server returns the
    #   cached result from the original successful request without performing the operation again.</p>
    #   @return [String]
    class CreateTaskRequest < Struct.new(
      nil,
      :workspace_name,
      :task_name,
      :description,
      :task_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for CreateTask operation.</p>
    # @!attribute task_name
    #   <p>The name of the created task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The ARN of the created task.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the newly created task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the task.</p>
    #   @return [Types::ResourceStatus]
    class CreateTaskResponse < Struct.new(
      nil,
      :task_name,
      :task_arn,
      :version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace to create.</p>
    #   @return [String]
    # @!attribute workspace_description
    #   <p>A description for the workspace.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the workspace.</p>
    #   @return [Types::WorkspaceEncryptionConfiguration]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the workspace. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is
    #         idempotent. If you retry a request that completed successfully using the same client token,
    #         the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class CreateWorkspaceRequest < Struct.new(
      nil,
      :workspace_name,
      :workspace_description,
      :encryption_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute workspace_arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute workspace_status
    #   <p>The status of the workspace, which is <code>CREATING</code> when the operation
    #         returns.</p>
    #   @return [Types::WorkspaceStatus]
    class CreateWorkspaceResponse < Struct.new(
      nil,
      :workspace_name,
      :workspace_arn,
      :workspace_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A .CSV file.</p>
    # @!attribute column_names
    #   <p>The column names specified in the .csv file.</p>
    #   @return [Array<String>]
    class Csv < Struct.new(
      nil,
      :column_names,
      keyword_init: true
    )
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
      nil,
      :s3_resource_arn,
      :role_arn,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      keyword_init: true
    )
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
      nil,
      :asset_model_property,
      :asset_property,
      keyword_init: true
    )
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
      nil,
      :asset,
      :asset_model,
      :asset_property,
      :asset_model_property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains enrichment status information for a data segment.</p>
    # @!attribute status
    #   <p>The enrichment status of the data segment.</p>
    #   @return [String]
    # @!attribute last_enriched_at
    #   <p>The date the data segment was last enriched, in Unix epoch time.</p>
    #   @return [Time]
    class DataSegmentEnrichment < Struct.new(
      nil,
      :status,
      :last_enriched_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a data segment relationship between a source session
    #       dataset that contains the data and a curated dataset that references it, including the time
    #       series and timestamp range.</p>
    # @!attribute target_dataset_id
    #   <p>The ID of the curated dataset that references the data segment.</p>
    #   @return [String]
    # @!attribute source_dataset_id
    #   <p>The ID of the source session dataset that contains the data segment.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    class DataSegmentRelationshipSummary < Struct.new(
      nil,
      :target_dataset_id,
      :source_dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a data segment, including its source dataset, time
    #       series, timestamp range, and enrichment status.</p>
    # @!attribute source_dataset_id
    #   <p>The ID of the source dataset that contains the data segment.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute alias
    #   <p>The alias of the time series.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the time series.</p>
    #   @return [String]
    # @!attribute enrichment
    #   <p>The enrichment information for the data segment.</p>
    #   @return [Types::DataSegmentEnrichment]
    class DataSegmentSummary < Struct.new(
      nil,
      :source_dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      :alias,
      :data_type,
      :enrichment,
      keyword_init: true
    )
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
      nil,
      :dataset_arn,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration for a dataset.</p>
    # @!attribute session
    #   <p>The session configuration for a session-type dataset.</p>
    #   @return [Types::SessionConfig]
    class DatasetConfig < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the enrichment status information for a dataset across data types.</p>
    # @!attribute video
    #   <p>The enrichment status for video data in the dataset.</p>
    #   @return [Types::DatasetEnrichmentEntry]
    class DatasetEnrichment < Struct.new(
      nil,
      :video,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains enrichment status information for a specific data type in a dataset.</p>
    # @!attribute status
    #   <p>The enrichment status of the data type in the dataset.</p>
    #   @return [String]
    # @!attribute last_enriched_at
    #   <p>The date the data was last enriched, in Unix epoch time.</p>
    #   @return [Time]
    class DatasetEnrichmentEntry < Struct.new(
      nil,
      :status,
      :last_enriched_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A dataset to process.</p>
    # @!attribute dataset_id
    #   <p>The unique identifier for the dataset.</p>
    #   @return [String]
    # @!attribute trim_settings
    #   <p>The trim settings applied to all items in the dataset. When omitted, the full dataset time range is used.</p>
    #   @return [Types::TrimSettings]
    # @!attribute export_data_types
    #   <p>The optional subset of data types to export. If omitted, all data types are exported.</p>
    #   @return [Array<String>]
    class DatasetItem < Struct.new(
      nil,
      :dataset_id,
      :trim_settings,
      :export_data_types,
      keyword_init: true
    )
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
      nil,
      :source_type,
      :source_format,
      :source_detail,
      keyword_init: true
    )
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
      nil,
      :state,
      :error,
      keyword_init: true
    )
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
    # @!attribute source_type
    #   <p>The data source type of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of dataset: a session dataset, a curated dataset, or a connection to an external
    #         datasource.</p>
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
    # @!attribute enrichment_status
    #   <p>The enrichment status of the dataset.</p>
    #   @return [Types::DatasetEnrichment]
    class DatasetSummary < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :source_type,
      :dataset_type,
      :creation_date,
      :last_update_date,
      :status,
      :enrichment_status,
      keyword_init: true
    )
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
      nil,
      :scalar_value,
      :array_value,
      :row_value,
      :null_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy to be deleted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteAccessPolicyRequest < Struct.new(
      nil,
      :access_policy_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>Name of the workspace to associate with the underlying Application</p>
    #   @return [String]
    # @!attribute id
    #   <p>ID of the Application to delete</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :workspace_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      nil,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :asset_model_composite_model_id,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    class DeleteAssetModelCompositeModelResponse < Struct.new(
      nil,
      :asset_model_status,
      :asset_model_id,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :interface_asset_model_id,
      :client_token,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :interface_asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :client_token,
      :if_match,
      :if_none_match,
      :match_for_version_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>DELETING</code> after
    #         successfully calling this operation) and any error message.</p>
    #   @return [Types::AssetModelStatus]
    class DeleteAssetModelResponse < Struct.new(
      nil,
      :asset_model_id,
      :asset_model_status,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>DELETING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::AssetStatus]
    class DeleteAssetResponse < Struct.new(
      nil,
      :asset_id,
      :asset_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteComputationModelRequest < Struct.new(
      nil,
      :computation_model_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_status
    #   <p>The status of the computation model. It contains a state (DELETING after successfully
    #         calling this operation) and any error messages.</p>
    #   @return [Types::ComputationModelStatus]
    class DeleteComputationModelResponse < Struct.new(
      nil,
      :computation_model_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteDashboardRequest < Struct.new(
      nil,
      :dashboard_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDashboardResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a data segment entry to delete.</p>
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment to delete.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment to delete.</p>
    #   @return [Types::TimeInNanos]
    class DeleteDataSegmentEntry < Struct.new(
      nil,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_status
    #   <p>The status of the dataset. This contains the state and any error messages.
    #     State is <code>DELETING</code> after a successfull call to this API, and any associated error message.</p>
    #   @return [Types::DatasetStatus]
    class DeleteDatasetResponse < Struct.new(
      nil,
      :dataset_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to delete.</p>
    #   @return [String]
    class DeleteGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for DeletePipeline operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline to delete.</p>
    #   @return [String]
    class DeletePipelineRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for DeletePipeline operation.</p>
    # @!attribute status
    #   <p>The current lifecycle status of the pipeline.</p>
    #   @return [Types::ResourceStatus]
    class DeletePipelineResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeletePortalRequest < Struct.new(
      nil,
      :portal_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>DELETING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::PortalStatus]
    class DeletePortalResponse < Struct.new(
      nil,
      :portal_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class DeleteProjectRequest < Struct.new(
      nil,
      :project_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteProjectResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for DeleteTask operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task to delete.</p>
    #   @return [String]
    class DeleteTaskRequest < Struct.new(
      nil,
      :workspace_name,
      :task_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for DeleteTask operation.</p>
    # @!attribute status
    #   <p>The current lifecycle status of the task.</p>
    #   @return [Types::ResourceStatus]
    class DeleteTaskResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
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
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DeleteTimeSeriesRequest < Struct.new(
      nil,
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is
    #         idempotent. If you retry a request that completed successfully using the same client token,
    #         the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class DeleteWorkspaceRequest < Struct.new(
      nil,
      :workspace_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_status
    #   <p>The status of the workspace after the deletion request, which is <code>DELETING</code> when the operation returns.</p>
    #   @return [Types::WorkspaceStatus]
    class DeleteWorkspaceResponse < Struct.new(
      nil,
      :workspace_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #   @return [String]
    class DescribeAccessPolicyRequest < Struct.new(
      nil,
      :access_policy_id,
      keyword_init: true
    )
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
      nil,
      :access_policy_id,
      :access_policy_arn,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :access_policy_creation_date,
      :access_policy_last_update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    class DescribeActionRequest < Struct.new(
      nil,
      :action_id,
      keyword_init: true
    )
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
      nil,
      :action_id,
      :target_resource,
      :action_definition_id,
      :action_payload,
      :execution_time,
      :resolve_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>Name of the workspace to associate with the underlying Application</p>
    #   @return [String]
    # @!attribute id
    #   <p>ID of the Application</p>
    #   @return [String]
    class DescribeApplicationRequest < Struct.new(
      nil,
      :workspace_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN of the application</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the application was created</p>
    #   @return [Time]
    # @!attribute dns_subdomain
    #   <p>DNS subdomain for the application</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the application</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique identifier of the application</p>
    #   @return [String]
    # @!attribute idc_application_arn
    #   <p>Identity Center Application ARN associated with this application</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the application</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the application</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>Timestamp when the application was last updated</p>
    #   @return [Time]
    # @!attribute workspace_name
    #   <p>Name of the workspace this application belongs to</p>
    #   @return [String]
    class DescribeApplicationResponse < Struct.new(
      nil,
      :arn,
      :created_at,
      :dns_subdomain,
      :description,
      :id,
      :idc_application_arn,
      :name,
      :status,
      :updated_at,
      :workspace_name,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :asset_composite_model_id,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :asset_model_composite_model_id,
      :asset_model_version,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :interface_asset_model_id,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :interface_asset_model_id,
      :property_mappings,
      :hierarchy_mappings,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :exclude_properties,
      :asset_model_version,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :asset_external_id,
      :asset_name,
      :asset_model_id,
      :asset_property,
      :composite_model,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :exclude_properties,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DescribeBulkImportJobRequest < Struct.new(
      nil,
      :job_id,
      :workspace_name,
      keyword_init: true
    )
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
    #   <p>The files in the specified Amazon S3 bucket that contain your data. You can specify up to 100 files for each bulk import job. Each file supports the following size limits:</p>
    #            <ul>
    #               <li>
    #                  <p>Parquet files – Up to 256 MiB.</p>
    #               </li>
    #               <li>
    #                  <p>Other file formats – Up to 5 GiB.</p>
    #               </li>
    #            </ul>
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
    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DescribeBulkImportJobResponse < Struct.new(
      nil,
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
      :dataset_id,
      :workspace_name,
      keyword_init: true
    )
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
      nil,
      :computation_model_id,
      :resolve_to_resource_type,
      :resolve_to_resource_id,
      keyword_init: true
    )
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
      nil,
      :computation_model_id,
      :resolve_to,
      :computation_model_execution_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    # @!attribute computation_model_version
    #   <p>The version of the computation model.</p>
    #   @return [String]
    class DescribeComputationModelRequest < Struct.new(
      nil,
      :computation_model_id,
      :computation_model_version,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #   @return [String]
    class DescribeDashboardRequest < Struct.new(
      nil,
      :dashboard_id,
      keyword_init: true
    )
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
      nil,
      :dashboard_id,
      :dashboard_arn,
      :dashboard_name,
      :project_id,
      :dashboard_description,
      :dashboard_definition,
      :dashboard_creation_date,
      :dashboard_last_update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe a dataset export job.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset export job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier for the dataset export job.</p>
    #   @return [String]
    class DescribeDatasetExportJobRequest < Struct.new(
      nil,
      :workspace_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response for describe dataset export job request.</p>
    # @!attribute job_id
    #   <p>The unique identifier for the dataset export job.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the dataset export job.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the job started processing.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp when the job completed, or null if the job is still running.</p>
    #   @return [Time]
    # @!attribute destination_s3_uri
    #   <p>The S3 URI where output clips are written.</p>
    #   @return [String]
    # @!attribute error_report_location
    #   <p>The location where the error report will be written on failure.</p>
    #   @return [Types::ExportErrorReportLocation]
    # @!attribute input
    #   <p>The processing input that was provided in the CreateDatasetExportJob request.</p>
    #   @return [Types::ProcessingInput]
    class DescribeDatasetExportJobResponse < Struct.new(
      nil,
      :job_id,
      :workspace_name,
      :status,
      :started_at,
      :completed_at,
      :destination_s3_uri,
      :error_report_location,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p>The version of the dataset.</p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :dataset_version,
      keyword_init: true
    )
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
    # @!attribute dataset_type
    #   <p>The type of dataset: a session dataset, a curated dataset, or a connection to an external
    #         datasource.</p>
    #   @return [String]
    # @!attribute dataset_config
    #   <p>The configuration for the dataset.</p>
    #   @return [Types::DatasetConfig]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for the dataset.</p>
    #   @return [Hash<String, String>]
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
    # @!attribute enrichment_status
    #   <p>The enrichment status of the dataset.</p>
    #   @return [Types::DatasetEnrichment]
    class DescribeDatasetResponse < Struct.new(
      nil,
      :dataset_id,
      :dataset_arn,
      :dataset_name,
      :dataset_description,
      :dataset_type,
      :dataset_config,
      :workspace_name,
      :metadata,
      :dataset_source,
      :dataset_status,
      :dataset_creation_date,
      :dataset_last_update_date,
      :dataset_version,
      :enrichment_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeDefaultEncryptionConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
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
      nil,
      :encryption_type,
      :kms_key_arn,
      :configuration_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the IoT SiteWise workspace containing the enrichment job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the enrichment job to retrieve. This is the jobId returned by CreateEnrichmentJob.</p>
    #   @return [String]
    class DescribeEnrichmentJobRequest < Struct.new(
      nil,
      :workspace_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier of the enrichment job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the enrichment job. Possible values:</p>
    #   <ul>
    #   <li>PENDING: Job is waiting to start processing</li>
    #   <li>RUNNING: Job is actively processing video data</li>
    #   <li>COMPLETED: Job finished successfully; embeddings available in IoT SiteWise</li>
    #   <li>FAILED: Job encountered an error; see failureMessage for details</li>
    #   <li>TIMED_OUT: Job exceeded maximum processing time limit</li>
    #   <li>CANCELLED: Job was cancelled by user request</li>
    #   </ul>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the IoT SiteWise workspace containing the job.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of enrichment job, derived from the job configuration. Currently EVENT_DETECTION is the only supported type.</p>
    #   @return [String]
    # @!attribute job_configuration
    #   <p>The complete job configuration as originally submitted, including the analysis type and parameters.
    #   For event detection jobs, this includes the dataset ID, time series identifier, and trim settings
    #   defining the analysis time range.</p>
    #   @return [Types::EnrichmentJobConfiguration]
    # @!attribute created_at
    #   <p>Timestamp when the enrichment job was created in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when the job status was last updated in ISO 8601 format. Useful for tracking recent activity.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>Timestamp when the job completed successfully in ISO 8601 format. Only present if status is COMPLETED.</p>
    #   @return [Time]
    # @!attribute cancelled_at
    #   <p>Timestamp when the job was cancelled in ISO 8601 format. Only present if status is CANCELLED.</p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p>Human-readable error message explaining why the job failed. Only present if status is FAILED.
    #   Use this information to diagnose configuration issues, permission problems, or data processing errors.</p>
    #   @return [String]
    class DescribeEnrichmentJobResponse < Struct.new(
      nil,
      :job_id,
      :status,
      :workspace_name,
      :job_type,
      :job_configuration,
      :created_at,
      :updated_at,
      :completed_at,
      :cancelled_at,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #   @return [String]
    class DescribeExecutionRequest < Struct.new(
      nil,
      :execution_id,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
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
      nil,
      :gateway_id,
      :capability_namespace,
      keyword_init: true
    )
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
      nil,
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      :capability_sync_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #   @return [String]
    class DescribeGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      keyword_init: true
    )
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
      nil,
      :gateway_id,
      :gateway_name,
      :gateway_arn,
      :gateway_platform,
      :gateway_version,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DescribeLoggingOptionsRequest < Struct.new(
      nil,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_options
    #   <p>The current logging options.</p>
    #   @return [Types::LoggingOptions]
    class DescribeLoggingOptionsResponse < Struct.new(
      nil,
      :logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for DescribePipelineExecution operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_execution_id
    #   <p>The unique identifier of the pipeline execution.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of compute nodes to return per request. This is an upper bound; the actual number of results may be less. Default: 50.</p>
    #   @return [Integer]
    class DescribePipelineExecutionRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :pipeline_execution_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for DescribePipelineExecution operation.</p>
    # @!attribute pipeline_execution_id
    #   <p>The unique identifier of the pipeline execution.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The pipeline version this execution ran against.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current execution status of the pipeline.</p>
    #   @return [Types::PipelineExecutionStatus]
    # @!attribute start_time
    #   <p>The time the pipeline execution started, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the pipeline execution completed, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute request_environment_variables
    #   <p>The environment variables provided as input for the pipeline execution.</p>
    #   @return [Types::ExecutionEnvironmentVariables]
    # @!attribute request_mount_overrides
    #   <p>The mount overrides provided as input for the pipeline execution. Present when mount overrides were supplied at execution time.</p>
    #   @return [Types::MountOverrides]
    # @!attribute execution_priority
    #   <p>Scheduling priority for the execution. When not specified, defaults to lowest priority.</p>
    #   @return [Integer]
    # @!attribute compute_node_execution_details
    #   <p>A list of compute node execution details within this pipeline execution.</p>
    #   @return [Array<Types::ComputeNodeExecutionDetails>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class DescribePipelineExecutionResponse < Struct.new(
      nil,
      :pipeline_execution_id,
      :pipeline_name,
      :workspace_name,
      :pipeline_version,
      :status,
      :start_time,
      :end_time,
      :request_environment_variables,
      :request_mount_overrides,
      :execution_priority,
      :compute_node_execution_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for DescribePipeline operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The version number of the pipeline to retrieve. If not specified, returns the latest version.</p>
    #   @return [String]
    class DescribePipelineRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :pipeline_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for DescribePipeline operation.</p>
    # @!attribute pipeline_name
    #   <p>A unique name of the pipeline within the workspace.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_arn
    #   <p>The ARN of the pipeline.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the pipeline.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>The environment variables shared across all compute nodes in the pipeline.</p>
    #   @return [Hash<String, String>]
    # @!attribute computations
    #   <p>The list of compute nodes that form the pipeline DAG.</p>
    #   @return [Array<Types::ComputeNode>]
    # @!attribute status
    #   <p>The current lifecycle status of the pipeline.</p>
    #   @return [Types::ResourceStatus]
    # @!attribute created_at
    #   <p>The time the pipeline was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the pipeline was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribePipelineResponse < Struct.new(
      nil,
      :pipeline_name,
      :workspace_name,
      :description,
      :pipeline_arn,
      :version,
      :environment_variables,
      :computations,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    class DescribePortalRequest < Struct.new(
      nil,
      :portal_id,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #   @return [String]
    class DescribeProjectRequest < Struct.new(
      nil,
      :project_id,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :project_arn,
      :project_name,
      :portal_id,
      :project_description,
      :project_creation_date,
      :project_last_update_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace associated with the query.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The unique identifier for the query execution.</p>
    #   @return [String]
    class DescribeQueryRequest < Struct.new(
      nil,
      :workspace_name,
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response for the DescribeQuery operation.</p>
    # @!attribute query_id
    #   <p>The unique identifier for the query execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current query status.</p>
    #   @return [String]
    # @!attribute submitted_at
    #   <p>The date and time when the query was submitted, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The date and time when the query reached a terminal state, in Unix epoch time. This field is present when the query status is COMPLETED, FAILED, or CANCELED.</p>
    #   @return [Time]
    # @!attribute statistics
    #   <p>The query execution statistics. This field is present when the query status is COMPLETED.</p>
    #   @return [Types::QueryStatistics]
    # @!attribute error_message
    #   <p>A human-readable error description. This field is present when the query status is FAILED.</p>
    #   @return [String]
    class DescribeQueryResponse < Struct.new(
      nil,
      :query_id,
      :status,
      :submitted_at,
      :completed_at,
      :statistics,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the DescribeSearch operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace the search belongs to.</p>
    #   @return [String]
    # @!attribute search_id
    #   <p>The identifier of the search to describe.</p>
    #   @return [String]
    class DescribeSearchRequest < Struct.new(
      nil,
      :workspace_name,
      :search_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output of the DescribeSearch operation.</p>
    # @!attribute search_id
    #   <p>The unique identifier of the search.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace the search runs against.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the search.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The natural-language query that was submitted for the search.</p>
    #   @return [String]
    # @!attribute search_type
    #   <p>The search strategy used for the search.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable explanation of the current status. Populated when the search has <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time at which the search was started.</p>
    #   @return [Time]
    # @!attribute group_id
    #   <p>The group identifier associated with the search, if one was supplied on the request.</p>
    #   @return [String]
    class DescribeSearchResponse < Struct.new(
      nil,
      :search_id,
      :workspace_name,
      :status,
      :query_statement,
      :search_type,
      :status_reason,
      :started_at,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeStorageConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
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
      nil,
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :last_update_date,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for DescribeTask operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task.</p>
    #   @return [String]
    # @!attribute task_version
    #   <p>The version number of the task to retrieve. If not specified, returns the latest version.</p>
    #   @return [String]
    class DescribeTaskRequest < Struct.new(
      nil,
      :workspace_name,
      :task_name,
      :task_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for DescribeTask operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The ARN of the task.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the task.</p>
    #   @return [String]
    # @!attribute task_configuration
    #   <p>The task execution configuration. Contains a <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ContainerTaskConfiguration.html">containerTaskConfiguration</a> for custom container workloads.</p>
    #   @return [Types::TaskConfiguration]
    # @!attribute status
    #   <p>The current lifecycle status of the task.</p>
    #   @return [Types::ResourceStatus]
    # @!attribute created_at
    #   <p>The time the task was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the task was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribeTaskResponse < Struct.new(
      nil,
      :workspace_name,
      :task_name,
      :description,
      :task_arn,
      :version,
      :task_configuration,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
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
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DescribeTimeSeriesRequest < Struct.new(
      nil,
      :alias,
      :asset_id,
      :property_id,
      :workspace_name,
      keyword_init: true
    )
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
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DescribeTimeSeriesResponse < Struct.new(
      nil,
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      :time_series_arn,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class DescribeWorkspaceRequest < Struct.new(
      nil,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute workspace_description
    #   <p>The description of the workspace.</p>
    #   @return [String]
    # @!attribute workspace_status
    #   <p>The status of the workspace, which contains the state and any error message.</p>
    #   @return [Types::WorkspaceStatus]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration information for the workspace.</p>
    #   @return [Types::WorkspaceEncryptionConfigurationInfo]
    # @!attribute created_at
    #   <p>The date the workspace was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date the workspace was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class DescribeWorkspaceResponse < Struct.new(
      nil,
      :workspace_arn,
      :workspace_name,
      :workspace_description,
      :workspace_status,
      :encryption_configuration,
      :created_at,
      :updated_at,
      keyword_init: true
    )
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
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a detailed error entry for granular troubleshooting of pipeline failures.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The associated error message.</p>
    #   @return [String]
    class DetailedPipelineError < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a data segment entry to disassociate from a dataset.</p>
    # @!attribute source_dataset_id
    #   <p>The ID of the source dataset that contains the data segment.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment to disassociate.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment to disassociate.</p>
    #   @return [Types::TimeInNanos]
    class DisassociateDataSegmentEntry < Struct.new(
      nil,
      :source_dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      keyword_init: true
    )
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
      nil,
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the enrichment job defining which analysis type to perform on video time-series data.
    # Currently supports event detection enrichment. Exactly one member must be specified.</p>
    # @!attribute event_detection
    #   <p>Event detection configuration that generates embeddings from video time-series data enabling
    #   natural language similarity search on events. The service processes video data and creates
    #   embeddings stored in IoT SiteWise for semantic querying.</p>
    #   @return [Types::EventDetection]
    class EnrichmentJobConfiguration < Struct.new(
      :event_detection,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EventDetection < EnrichmentJobConfiguration; end
      class Unknown < EnrichmentJobConfiguration; end
    end

    # <p>Summary information for an enrichment job returned by ListEnrichmentJobs. This lightweight
    # representation includes identifiers, status, and key metadata without the full job configuration.</p>
    # <p>Use DescribeEnrichmentJob to retrieve:</p>
    # <ul>
    # <li>Complete job configuration (trim settings, full parameters)</li>
    # <li>Detailed timestamps (completedAt, cancelledAt)</li>
    # <li>Failure messages for failed jobs</li>
    # </ul>
    # <p>The summary is optimized for display in lists and dashboards, providing enough information to
    # identify and filter jobs without the overhead of full configuration details.</p>
    # @!attribute job_id
    #   <p>Unique identifier for the enrichment job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the job: PENDING, RUNNING, COMPLETED, FAILED, TIMED_OUT, or CANCELLED.
    #   Use this to quickly identify active jobs or jobs requiring attention.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the IoT SiteWise workspace containing this job.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of enrichment job. Currently EVENT_DETECTION is the only supported type.</p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p>The dataset being enriched. Useful for filtering and identifying jobs without fetching the full
    #   configuration. This allows you to quickly find all jobs related to a specific dataset.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The property alias (human-readable sensor name) of the time series being enriched.
    #   Present when the job was created using a propertyAlias. Use this to identify which sensor the job analyzes.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The system identifier of the time series being enriched.
    #   Present when the job was created using a timeSeriesId. Use this to identify which time series the job analyzes.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the job was created in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp of the last job status change in ISO 8601 format. Use this to track recent activity
    #   and identify stale jobs. For active jobs, this shows the last time the job transitioned to a new status.</p>
    #   @return [Time]
    class EnrichmentJobSummary < Struct.new(
      nil,
      :job_id,
      :status,
      :workspace_name,
      :job_type,
      :dataset_id,
      :property_alias,
      :time_series_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Time range settings for extracting a specific window of video time-series data to process.</p>
    # <p>Trim settings define the time bounds for enrichment and must satisfy:</p>
    # <ul>
    # <li>Start and end times must be within the dataset's time bounds</li>
    # <li>Trim settings retrieve fully contained data segments within the specified time range</li>
    # <li>endTime must be greater than startTime</li>
    # <li>Both times should represent valid data ranges in the dataset</li>
    # </ul>
    # <p>Trim settings are required to:</p>
    # <ul>
    # <li>Prevent accidentally analyzing unbounded datasets</li>
    # <li>Ensure predictable processing time and costs</li>
    # <li>Allow focused analysis on specific time periods of interest</li>
    # </ul>
    # @!attribute start_time
    #   <p>Start time for the video analysis time range in nanoseconds since Unix epoch (TimeInNanos format).
    #   Data segments at or after this time are included in the enrichment.
    #   Must be within the dataset's time bounds.</p>
    #   <p>Example (JavaScript): Date.parse('2024-01-01T00:00:00Z') * 1000000
    #   Example (Python): int(datetime.timestamp() * 1e9)</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_time
    #   <p>End time for the video analysis time range in nanoseconds since Unix epoch (TimeInNanos format).
    #   Data segments at or before this time are included in the enrichment.
    #   Must be greater than startTime and within the dataset's time bounds.</p>
    #   @return [Types::TimeInNanos]
    class EnrichmentTrimSettings < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for ephemeral storage attached to the container task.</p>
    # @!attribute storage_class
    #   <p>Storage type that determines I/O performance family and level.</p>
    #   @return [String]
    # @!attribute storage_size_in_gi_b
    #   <p>Storage volume size in GiB.</p>
    #   @return [Integer]
    class EphemeralStorageConfiguration < Struct.new(
      nil,
      :storage_class,
      :storage_size_in_gi_b,
      keyword_init: true
    )
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
      nil,
      :code,
      :message,
      :details,
      keyword_init: true
    )
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
      nil,
      :bucket,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for event detection enrichment on video time-series data.</p>
    # <p>Event detection generates embeddings from video data enabling natural language similarity search
    # on events. This allows customers to:</p>
    # <ul>
    # <li>Query video events using semantic search after enrichment completes</li>
    # <li>Find relevant video segments through natural language queries</li>
    # <li>Search across video time-series data stored in IoT SiteWise</li>
    # </ul>
    # <p>You must specify the dataset, exactly one time-series identifier (timeSeriesId OR propertyAlias),
    # and trim settings defining the video time window to process.</p>
    # @!attribute dataset_id
    #   <p>The IoT SiteWise dataset ID containing the video time-series data to analyze.
    #   Query IoT SiteWise to discover available datasets in your workspace.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>Unique system identifier for the video time series to analyze.
    #   Specify either timeSeriesId or propertyAlias, but not both.
    #   Use this when you have the system-generated time series identifier from IoT SiteWise.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>Human-readable alias for the video time series to analyze (e.g., /camera/warehouse/zone-a).
    #   Specify either propertyAlias or timeSeriesId, but not both.
    #   Use this when you have configured friendly aliases in IoT SiteWise for better readability.</p>
    #   @return [String]
    # @!attribute trim_settings
    #   <p>Time range settings defining which portion of the video time-series data to process.
    #   Required to ensure predictable processing time and prevent analyzing unbounded datasets.
    #   Start and end times must be within the dataset's time bounds.</p>
    #   @return [Types::EnrichmentTrimSettings]
    class EventDetection < Struct.new(
      nil,
      :dataset_id,
      :time_series_id,
      :property_alias,
      :trim_settings,
      keyword_init: true
    )
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
      nil,
      :target_resource,
      :action_definition_id,
      :action_payload,
      :client_token,
      :resolve_to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #   @return [String]
    class ExecuteActionResponse < Struct.new(
      nil,
      :action_id,
      keyword_init: true
    )
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
    #                  <p>Default is 20000</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class ExecuteQueryRequest < Struct.new(
      nil,
      :query_statement,
      :next_token,
      :max_results,
      :client_token,
      keyword_init: true
    )
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
      nil,
      :columns,
      :rows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Environment variables provided as input for a pipeline execution.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute global
    #   <p>Global environment variables that apply to all compute nodes in the pipeline execution.</p>
    #   @return [Hash<String, String>]
    # @!attribute compute_nodes
    #   <p>Per-compute-node environment variable overrides. Each entry maps a compute node name to its environment variable overrides.</p>
    #   @return [Hash<String, Hash<String, String>>]
    class ExecutionEnvironmentVariables < Struct.new(
      nil,
      :global,
      :compute_nodes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the execution.</p>
    # @!attribute state
    #   <p>The current state of the computation model.</p>
    #   @return [String]
    class ExecutionStatus < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
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
      nil,
      :execution_id,
      :action_type,
      :target_resource,
      :target_resource_version,
      :resolve_to,
      :execution_start_time,
      :execution_end_time,
      :execution_status,
      :execution_entity_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the location where error reports will be written on failure.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI prefix for the error report.</p>
    #   @return [String]
    class ExportErrorReportLocation < Struct.new(
      nil,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a dataset export job.</p>
    # @!attribute job_id
    #   <p>The unique identifier for the dataset export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the dataset export job.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the job started processing.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp when the job completed, or null if the job is still running.</p>
    #   @return [Time]
    # @!attribute destination_s3_uri
    #   <p>The S3 URI where output clips are written.</p>
    #   @return [String]
    class ExportJobSummary < Struct.new(
      nil,
      :job_id,
      :status,
      :started_at,
      :completed_at,
      :destination_s3_uri,
      keyword_init: true
    )
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
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a data segment association that failed.</p>
    # @!attribute source_dataset_id
    #   <p>The ID of the source dataset.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute error_code
    #   <p>The error code for the failed association.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the failed association.</p>
    #   @return [String]
    class FailedDataSegmentAssociation < Struct.new(
      nil,
      :source_dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a data segment deletion that failed.</p>
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute error_code
    #   <p>The error code for the failed deletion.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the failed deletion.</p>
    #   @return [String]
    class FailedDataSegmentDeletion < Struct.new(
      nil,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a data segment disassociation that failed.</p>
    # @!attribute source_dataset_id
    #   <p>The ID of the source dataset.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The nanosecond-precision start time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The nanosecond-precision end time of the data segment.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute error_code
    #   <p>The error code for the failed disassociation.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the failed disassociation.</p>
    #   @return [String]
    class FailedDataSegmentDisassociation < Struct.new(
      nil,
      :source_dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      :error_code,
      :error_message,
      keyword_init: true
    )
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
    # @!attribute alias
    #   <p>The alias associated with the file's time series.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The nanosecond-precision start time for the file data.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute file_format
    #   <p>The file format of the data in S3.</p>
    #   @return [Types::FileFormat]
    class File < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :alias,
      :start_time,
      :file_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The file format of the data in S3.</p>
    # @!attribute csv
    #   <p>The file is in .CSV format.</p>
    #   @return [Types::Csv]
    # @!attribute parquet
    #   <p>The file is in parquet format.</p>
    #   @return [Types::Parquet]
    # @!attribute mp4
    #   <p>The MP4 format configuration.</p>
    #   @return [Types::Mp4]
    # @!attribute annotation
    #   <p>The annotation format configuration.</p>
    #   @return [Types::Annotation]
    class FileFormat < Struct.new(
      nil,
      :csv,
      :parquet,
      :mp4,
      :annotation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output format configuration for video processing.</p>
    # @!attribute frames_per_second
    #   <p>The target frame rate for the output.</p>
    #   @return [Integer]
    # @!attribute width_in_pixels
    #   <p>The target width of the output, in pixels.</p>
    #   @return [Integer]
    # @!attribute height_in_pixels
    #   <p>The target height of the output, in pixels.</p>
    #   @return [Integer]
    class FormatSettings < Struct.new(
      nil,
      :frames_per_second,
      :width_in_pixels,
      :height_in_pixels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The forwarding configuration for a given property.</p>
    # @!attribute state
    #   <p>The forwarding state for the given property. </p>
    #   @return [String]
    class ForwardingConfig < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
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
      nil,
      :capability_namespace,
      :capability_sync_status,
      keyword_init: true
    )
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
      nil,
      :greengrass,
      :greengrass_v2,
      :siemens_ie,
      keyword_init: true
    )
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
      nil,
      :gateway_id,
      :gateway_name,
      :gateway_platform,
      :gateway_version,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute aggregated_values
    #   <p>The requested aggregated values.</p>
    #   @return [Array<Types::AggregatedValue>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetAssetPropertyAggregatesResponse < Struct.new(
      nil,
      :aggregated_values,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_property_value_history
    #   <p>The asset property's value history.</p>
    #   @return [Array<Types::AssetPropertyValue>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetAssetPropertyValueHistoryResponse < Struct.new(
      nil,
      :asset_property_value_history,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      :property_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute property_value
    #   <p>The current asset property value.</p>
    #   @return [Types::AssetPropertyValue]
    class GetAssetPropertyValueResponse < Struct.new(
      nil,
      :property_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to retrieve video data for a specific time range. Exactly one of timeSeriesId or propertyAlias must be provided.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the capture source.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for the video data range.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_time
    #   <p>The end time for the video data range. Must be greater than startTime.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute time_series_id
    #   <p>The time series ID that identifies the capture source. Mutually exclusive with propertyAlias.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The property alias that identifies the capture source. Mutually exclusive with timeSeriesId.</p>
    #   @return [String]
    # @!attribute format_settings
    #   <p>The optional format settings for the output.</p>
    #   @return [Types::FormatSettings]
    # @!attribute next_token
    #   <p>The token from a previous response used to continue retrieving data.</p>
    #   @return [String]
    class GetCaptureDataRequest < Struct.new(
      nil,
      :workspace_name,
      :start_time,
      :end_time,
      :time_series_id,
      :property_alias,
      :format_settings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the video data.</p>
    # @!attribute data
    #   <p>The binary video data.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The actual start time of the returned data.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_time
    #   <p>The actual end time of the returned data.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute data_type
    #   <p>The type of the returned data.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used to retrieve the next chunk. Absent if no more data is available.</p>
    #   @return [String]
    class GetCaptureDataResponse < Struct.new(
      nil,
      :data,
      :start_time,
      :end_time,
      :data_type,
      :next_token,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute interpolated_asset_property_values
    #   <p>The requested interpolated values.</p>
    #   @return [Array<Types::InterpolatedAssetPropertyValue>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetInterpolatedAssetPropertyValuesResponse < Struct.new(
      nil,
      :interpolated_asset_property_values,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace associated with the query.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The unique identifier for the query execution.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class GetQueryResultsRequest < Struct.new(
      nil,
      :workspace_name,
      :query_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response for the GetQueryResults operation.</p>
    # @!attribute column_info
    #   <p>A list of column metadata for the query results. Each entry contains the column name and data type. Present when the query status is COMPLETED.</p>
    #   @return [Array<Types::ColumnInformation>]
    # @!attribute rows
    #   <p>The result rows. Each row is a list of string column values, positional to match the columnInfo order. Present when the query status is COMPLETED.</p>
    #   @return [Array<Array<String>>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class GetQueryResultsResponse < Struct.new(
      nil,
      :column_info,
      :rows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the GetSearchResults operation.</p>
    # @!attribute search_id
    #   <p>The identifier of the search whose results are retrieved.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace the search belongs to.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single page. Valid range is 1 to 10,000; if
    #   omitted, a service-defined default is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token returned by a previous GetSearchResults call. Provide it to retrieve the
    #   next page of results; omit it to retrieve the first page.</p>
    #   @return [String]
    class GetSearchResultsRequest < Struct.new(
      nil,
      :search_id,
      :workspace_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output of the GetSearchResults operation.</p>
    # @!attribute search_results
    #   <p>A page of search results, ordered by descending relevance score.</p>
    #   @return [Array<Types::SearchResult>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent GetSearchResults call to retrieve the next page.
    #   Absent when there are no more results.</p>
    #   @return [String]
    class GetSearchResultsResponse < Struct.new(
      nil,
      :search_results,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :group_arn,
      keyword_init: true
    )
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
      nil,
      :core_device_thing_name,
      :core_device_operating_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for a group identity in an access policy.</p>
    # @!attribute id
    #   <p>The IAM Identity Center ID of the group.</p>
    #   @return [String]
    class GroupIdentity < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
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
      nil,
      :asset_model_hierarchy_id,
      :interface_asset_model_hierarchy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Identity and Access Management role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #         <i>IAM User Guide</i>.</p>
    # @!attribute arn
    #   <p>The ARN of the IAM role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>.</p>
    #   @return [String]
    class IAMRoleIdentity < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
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
      nil,
      :arn,
      keyword_init: true
    )
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
      nil,
      :user,
      :group,
      :iam_user,
      :iam_role,
      keyword_init: true
    )
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
      nil,
      :id,
      :file,
      keyword_init: true
    )
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
      nil,
      :data,
      :type,
      keyword_init: true
    )
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
      nil,
      :id,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the relationship between an asset model and an interface asset
    #       model that is applied to it.</p>
    # @!attribute id
    #   <p>The ID of the asset model that has the interface applied to it.</p>
    #   @return [String]
    class InterfaceRelationship < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an interface relationship, which defines how an
    #       interface is applied to an asset model. This summary provides the essential identifiers needed
    #       to retrieve detailed information about the relationship.</p>
    # @!attribute id
    #   <p>The ID of the asset model that has the interface applied to it.</p>
    #   @return [String]
    class InterfaceRelationshipSummary < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
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
      nil,
      :interface_asset_model_id,
      :interface_asset_model_property_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>IoT SiteWise can't process your request right now. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
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
      nil,
      :timestamp,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters. Check your request and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
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
      nil,
      :message,
      :citations,
      keyword_init: true
    )
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
      nil,
      :conversation_id,
      :message,
      :enable_trace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Contains the response, citation, and trace from the SiteWise Assistant.</p>
    #   @return [Types::ResponseStream]
    # @!attribute conversation_id
    #   <p>The ID of the conversation, in UUID format. This ID uniquely identifies the conversation within IoT SiteWise.</p>
    #   @return [String]
    class InvokeAssistantResponse < Struct.new(
      nil,
      :body,
      :conversation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of a job, such as the file format used to save data in Amazon S3.</p>
    # @!attribute file_format
    #   <p>The file format of the data in S3.</p>
    #   @return [Types::FileFormat]
    class JobConfiguration < Struct.new(
      nil,
      :file_format,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      :status,
      keyword_init: true
    )
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
      nil,
      :knowledge_base_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the quota for a resource. For example, this can occur if you're trying to
    #       associate more than the allowed number of child assets or attempting to create more than the
    #       allowed number of properties for an asset model.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
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
      nil,
      :identity_type,
      :identity_id,
      :resource_type,
      :resource_id,
      :iam_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_policy_summaries
    #   <p>A list that summarizes each access policy.</p>
    #   @return [Array<Types::AccessPolicySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAccessPoliciesResponse < Struct.new(
      nil,
      :access_policy_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :target_resource_type,
      :target_resource_id,
      :next_token,
      :max_results,
      :resolve_to_resource_type,
      :resolve_to_resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_summaries
    #   <p>A list that summarizes the actions associated with the specified asset.</p>
    #   @return [Array<Types::ActionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListActionsResponse < Struct.new(
      nil,
      :action_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of results to return</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next Page Token</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Next Page Token</p>
    #   @return [String]
    # @!attribute applications
    #   <p>List of applications</p>
    #   @return [Array<Types::ApplicationSummary>]
    class ListApplicationsResponse < Struct.new(
      nil,
      :next_token,
      :applications,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :next_token,
      :max_results,
      :asset_model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_composite_model_summaries
    #   <p>A list that summarizes each composite model.</p>
    #   @return [Array<Types::AssetModelCompositeModelSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetModelCompositeModelsResponse < Struct.new(
      nil,
      :asset_model_composite_model_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :next_token,
      :max_results,
      :filter,
      :asset_model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_property_summaries
    #   <p>A list that summarizes the properties associated with the specified asset model.</p>
    #   @return [Array<Types::AssetModelPropertySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetModelPropertiesResponse < Struct.new(
      nil,
      :asset_model_property_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_model_types,
      :next_token,
      :max_results,
      :asset_model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_summaries
    #   <p>A list that summarizes each asset model.</p>
    #   @return [Array<Types::AssetModelSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetModelsResponse < Struct.new(
      nil,
      :asset_model_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_property_summaries
    #   <p>A list that summarizes the properties associated with the specified asset.</p>
    #   @return [Array<Types::AssetPropertySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetPropertiesResponse < Struct.new(
      nil,
      :asset_property_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :traversal_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_relationship_summaries
    #   <p>A list that summarizes each asset relationship.</p>
    #   @return [Array<Types::AssetRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetRelationshipsResponse < Struct.new(
      nil,
      :asset_relationship_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :next_token,
      :max_results,
      :asset_model_id,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_summaries
    #   <p>A list that summarizes each asset.</p>
    #   @return [Array<Types::AssetSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssetsResponse < Struct.new(
      nil,
      :asset_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :hierarchy_id,
      :traversal_direction,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_summaries
    #   <p>A list that summarizes the associated assets.</p>
    #   @return [Array<Types::AssociatedAssetsSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListAssociatedAssetsResponse < Struct.new(
      nil,
      :asset_summaries,
      :next_token,
      keyword_init: true
    )
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
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class ListBulkImportJobsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :filter,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_summaries
    #   <p>One or more job summaries to list.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListBulkImportJobsResponse < Struct.new(
      nil,
      :job_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute composition_relationship_summaries
    #   <p>A list that summarizes each composition relationship.</p>
    #   @return [Array<Types::CompositionRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListCompositionRelationshipsResponse < Struct.new(
      nil,
      :composition_relationship_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :data_binding_value_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
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
      nil,
      :data_binding_usage_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :computation_model_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
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
      nil,
      :computation_model_resolve_to_resource_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :computation_model_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_summaries
    #   <p>A list summarizing each computation model.</p>
    #   @return [Array<Types::ComputationModelSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListComputationModelsResponse < Struct.new(
      nil,
      :computation_model_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_summaries
    #   <p>A list that summarizes each dashboard in the project.</p>
    #   @return [Array<Types::DashboardSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDashboardsResponse < Struct.new(
      nil,
      :dashboard_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the session dataset to list data segment relationships for.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListDatasetDataSegmentRelationshipsRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_segment_relationship_summaries
    #   <p>A list that summarizes each data segment relationship.</p>
    #   @return [Array<Types::DataSegmentRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDatasetDataSegmentRelationshipsResponse < Struct.new(
      nil,
      :data_segment_relationship_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p>The version of the dataset to list data segments for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListDatasetDataSegmentsRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :dataset_version,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_segments
    #   <p>A list that summarizes each data segment.</p>
    #   @return [Array<Types::DataSegmentSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDatasetDataSegmentsResponse < Struct.new(
      nil,
      :data_segments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list dataset export jobs for a workspace.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace whose dataset export jobs should be listed.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The optional filter that returns only jobs matching the given filter value. Defaults to ALL.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListDatasetExportJobsRequest < Struct.new(
      nil,
      :workspace_name,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response for list dataset export jobs request.</p>
    # @!attribute jobs
    #   <p>A list of dataset export job summaries.</p>
    #   @return [Array<Types::ExportJobSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDatasetExportJobsResponse < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_type
    #   <p>The type of data source for the dataset.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace to filter datasets by.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of dataset to filter by: a session dataset, a curated dataset, or a connection
    #         to an external datasource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      nil,
      :source_type,
      :workspace_name,
      :dataset_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_summaries
    #   <p>A list that summarizes the dataset response.</p>
    #   @return [Array<Types::DatasetSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      nil,
      :dataset_summaries,
      :next_token,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the IoT SiteWise workspace to list enrichment jobs from.</p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p>Filter jobs by dataset ID. Returns only jobs analyzing data from the specified dataset.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>Filter by property alias (human-readable sensor name). Specify either propertyAlias or timeSeriesId,
    #   but not both. Returns only jobs analyzing the specified property alias.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>Filter by time series ID (system identifier). Specify either timeSeriesId or propertyAlias, but not
    #   both. Returns only jobs analyzing the specified time series.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter by job status. Returns only jobs in the specified status.
    #   Use RUNNING to find active jobs, or FAILED to identify jobs requiring attention.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>Filter by enrichment job type. Currently only EVENT_DETECTION is supported.
    #   Use this filter to future-proof queries when additional job types are added.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The exclusive start of the date range for filtering jobs by creation time. Jobs created after this
    #   timestamp are included. Use ISO 8601 format (e.g., 2024-01-01T00:00:00Z).</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The inclusive end of the date range for filtering jobs by creation time. Jobs created on or before
    #   this timestamp are included. Use ISO 8601 format (e.g., 2024-01-31T23:59:59Z).</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>Maximum number of jobs to return per page. Defaults to 50 if not specified.
    #   Use smaller values for faster responses, larger values to reduce API calls.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token from a previous ListEnrichmentJobs response. Include this token to retrieve the
    #   next page of results. Omit for the first request.</p>
    #   @return [String]
    class ListEnrichmentJobsRequest < Struct.new(
      nil,
      :workspace_name,
      :dataset_id,
      :property_alias,
      :time_series_id,
      :status,
      :job_type,
      :start_date,
      :end_date,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>Array of job summaries matching the filter criteria, ordered by creation time descending (newest first).
    #   Each summary includes key identifiers (jobId, datasetId, propertyAlias/timeSeriesId) and status
    #   information without the full job configuration. Use DescribeEnrichmentJob to retrieve complete details.</p>
    #   @return [Array<Types::EnrichmentJobSummary>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve the next page of results. If present, more jobs exist that match the
    #   filter criteria. Include this token in a subsequent ListEnrichmentJobs request to retrieve the next
    #   page. If absent, you have retrieved all matching jobs.</p>
    #   @return [String]
    class ListEnrichmentJobsResponse < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :target_resource_type,
      :target_resource_id,
      :resolve_to_resource_type,
      :resolve_to_resource_id,
      :next_token,
      :max_results,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_summaries
    #   <p>Contains the list of execution summaries of the computation models.</p>
    #   @return [Array<Types::ExecutionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListExecutionsResponse < Struct.new(
      nil,
      :execution_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_summaries
    #   <p>A list that summarizes each gateway.</p>
    #   @return [Array<Types::GatewaySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListGatewaysResponse < Struct.new(
      nil,
      :gateway_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :interface_asset_model_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute interface_relationship_summaries
    #   <p>A list that summarizes each interface relationship.</p>
    #   @return [Array<Types::InterfaceRelationshipSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListInterfaceRelationshipsResponse < Struct.new(
      nil,
      :interface_relationship_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for ListPipelineExecutions operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per request.
    #   This is an upper bound; the actual number of results may be less. Default: 50.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>Filter by execution state.
    #   If not specified, executions in all states are returned.</p>
    #   @return [String]
    # @!attribute start_time_after
    #   <p>Inclusive lower bound on execution start time (ISO-8601).
    #   Only executions with startTime &gt;= startTimeAfter are returned.
    #   Cannot be combined with endTimeAfter or endTimeBefore.</p>
    #   @return [Time]
    # @!attribute start_time_before
    #   <p>Exclusive upper bound on execution start time (ISO-8601).
    #   Only executions with startTime &lt; startTimeBefore are returned.
    #   Cannot be combined with endTimeAfter or endTimeBefore.</p>
    #   @return [Time]
    # @!attribute end_time_after
    #   <p>Inclusive lower bound on execution end time (ISO-8601).
    #   Only executions with endTime &gt;= endTimeAfter are returned.
    #   Cannot be combined with startTimeAfter or startTimeBefore.
    #   Only matches executions in terminal states.</p>
    #   @return [Time]
    # @!attribute end_time_before
    #   <p>Exclusive upper bound on execution end time (ISO-8601).
    #   Only executions with endTime &lt; endTimeBefore are returned.
    #   Cannot be combined with startTimeAfter or startTimeBefore.
    #   Only matches executions in terminal states.</p>
    #   @return [Time]
    class ListPipelineExecutionsRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :next_token,
      :max_results,
      :state,
      :start_time_after,
      :start_time_before,
      :end_time_after,
      :end_time_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for ListPipelineExecutions operation.</p>
    # @!attribute pipeline_execution_summaries
    #   <p>A list that summarizes each pipeline execution.</p>
    #   @return [Array<Types::PipelineExecutionSummary>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListPipelineExecutionsResponse < Struct.new(
      nil,
      :pipeline_execution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for ListPipelines operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50.</p>
    #   @return [Integer]
    class ListPipelinesRequest < Struct.new(
      nil,
      :workspace_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for ListPipelines operation.</p>
    # @!attribute pipeline_summaries
    #   <p>A list that summarizes each pipeline in the workspace.</p>
    #   @return [Array<Types::PipelineSummary>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListPipelinesResponse < Struct.new(
      nil,
      :pipeline_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_summaries
    #   <p>A list that summarizes each portal.</p>
    #   @return [Array<Types::PortalSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListPortalsResponse < Struct.new(
      nil,
      :portal_summaries,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_ids
    #   <p>A list that contains the IDs of each asset associated with the project.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListProjectAssetsResponse < Struct.new(
      nil,
      :asset_ids,
      :next_token,
      keyword_init: true
    )
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
      nil,
      :portal_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute project_summaries
    #   <p>A list that summarizes each project in the portal.</p>
    #   @return [Array<Types::ProjectSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListProjectsResponse < Struct.new(
      nil,
      :project_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace to list queries for.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>An optional filter to return only queries with the specified status. The value must be one of the supported query statuses: SUBMITTED, RUNNING, COMPLETED, FAILED, CANCELED, or CANCELING.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListQueriesRequest < Struct.new(
      nil,
      :workspace_name,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response for the ListQueries operation.</p>
    # @!attribute queries
    #   <p>A list of query summaries for the workspace.</p>
    #   @return [Array<Types::QuerySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListQueriesResponse < Struct.new(
      nil,
      :queries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional filters for ListSearches. When multiple filters are set, a search must match all of them.</p>
    # @!attribute status_filter
    #   <p>Returns only searches whose status is one of the listed values.</p>
    #   @return [Array<String>]
    # @!attribute started_after
    #   <p>Returns only searches started at or after this time.</p>
    #   @return [Time]
    # @!attribute started_before
    #   <p>Returns only searches started at or before this time.</p>
    #   @return [Time]
    # @!attribute group_id_filter
    #   <p>Returns only searches whose <code>groupId</code> is one of the listed values.</p>
    #   @return [Array<String>]
    # @!attribute search_type_filter
    #   <p>Returns only searches whose <code>searchType</code> is one of the listed values.</p>
    #   @return [Array<String>]
    class ListSearchesFilters < Struct.new(
      nil,
      :status_filter,
      :started_after,
      :started_before,
      :group_id_filter,
      :search_type_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the ListSearches operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace whose searches are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of searches to return in a single page. Valid range is 1 to 1,000; if
    #   omitted, a service-defined default is used.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token returned by a previous ListSearches call. Provide it to retrieve the next
    #   page; omit it to retrieve the first page.</p>
    #   @return [String]
    # @!attribute list_searches_filters
    #   <p>Optional filters that restrict which searches are returned.</p>
    #   @return [Types::ListSearchesFilters]
    class ListSearchesRequest < Struct.new(
      nil,
      :workspace_name,
      :max_results,
      :next_token,
      :list_searches_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output of the ListSearches operation.</p>
    # @!attribute search_summaries
    #   <p>A page of search summaries, most recently started first.</p>
    #   @return [Array<Types::SearchSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent ListSearches call to retrieve the next page. Absent
    #   when there are no more searches.</p>
    #   @return [String]
    class ListSearchesResponse < Struct.new(
      nil,
      :search_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for ListTasks operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50.</p>
    #   @return [Integer]
    class ListTasksRequest < Struct.new(
      nil,
      :workspace_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for ListTasks operation.</p>
    # @!attribute task_summaries
    #   <p>A list that summarizes each task in the workspace.</p>
    #   @return [Array<Types::TaskSummary>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListTasksResponse < Struct.new(
      nil,
      :task_summaries,
      :next_token,
      keyword_init: true
    )
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
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class ListTimeSeriesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :asset_id,
      :alias_prefix,
      :time_series_type,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_series_summaries
    #   <p>One or more time series summaries to list.</p>
    #   @return [Array<Types::TimeSeriesSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class ListTimeSeriesResponse < Struct.new(
      nil,
      :time_series_summaries,
      :next_token,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. Default: 50.</p>
    #   @return [Integer]
    class ListWorkspacesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_summaries
    #   <p>A list that summarizes each workspace.</p>
    #   @return [Array<Types::WorkspaceSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListWorkspacesResponse < Struct.new(
      nil,
      :workspace_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains location information about the cited text and where it's stored.</p>
    # @!attribute uri
    #   <p>The URI of the location.</p>
    #   @return [String]
    class Location < Struct.new(
      nil,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains logging options.</p>
    # @!attribute level
    #   <p>The IoT SiteWise logging verbosity level.</p>
    #   @return [String]
    class LoggingOptions < Struct.new(
      nil,
      :level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a data binding that matches the specified filter criteria.</p>
    # @!attribute value
    #   <p>The value of the matched data binding.</p>
    #   @return [Types::DataBindingValue]
    class MatchedDataBinding < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
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
      nil,
      :processing_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The processing configuration for the given measurement property.
    #       You can configure measurements to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #       By default, measurements are forwarded to the cloud.</p>
    # @!attribute forwarding_config
    #   <p>The forwarding configuration for the given measurement property. </p>
    #   @return [Types::ForwardingConfig]
    class MeasurementProcessingConfig < Struct.new(
      nil,
      :forwarding_config,
      keyword_init: true
    )
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
      nil,
      :expression,
      :variables,
      :window,
      :processing_config,
      keyword_init: true
    )
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
      nil,
      :compute_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a time interval window used for data aggregate computations (for example,
    #       average, sum, count, and so on).</p>
    # @!attribute tumbling
    #   <p>The tumbling time interval window.</p>
    #   @return [Types::TumblingWindow]
    class MetricWindow < Struct.new(
      nil,
      :tumbling,
      keyword_init: true
    )
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
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attaches a data source to the container filesystem for a task at a customer-supplied relative path under the service-owned mount root.</p>
    # @!attribute name
    #   <p>A unique name for the mount within the task.</p>
    #   @return [String]
    # @!attribute relative_path
    #   <p>The relative path under the service-owned mount root where this mount is attached inside the container.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The data source for the mount.</p>
    #   @return [Types::MountSource]
    # @!attribute storage_type
    #   <p>The type of storage used for the mount.</p>
    #   @return [String]
    class Mount < Struct.new(
      nil,
      :name,
      :relative_path,
      :source,
      :storage_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Runtime mount overrides applied to a single pipeline execution. Overrides are transient — they do not modify the stored task configuration.</p>
    # @!attribute compute_nodes
    #   <p>The mount overrides for each compute node, keyed by compute node name.</p>
    #   @return [Hash<String, Array<Types::Mount>>]
    class MountOverrides < Struct.new(
      nil,
      :compute_nodes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data source configuration for a mount. Specify exactly one of the following.</p>
    # @!attribute s3_access_point
    #   <p>Configuration for a mount that reads from an Amazon S3 access point.</p>
    #   @return [Types::S3AccessPointSource]
    class MountSource < Struct.new(
      :s3_access_point,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3AccessPoint < MountSource; end
      class Unknown < MountSource; end
    end

    # <p>The MP4 video format configuration for bulk import files.</p>
    class Mp4 < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the storage destination.</p>
    # @!attribute customer_managed_s3_storage
    #   <p>Contains information about a customer managed Amazon S3 bucket.</p>
    #   @return [Types::CustomerManagedS3Storage]
    class MultiLayerStorage < Struct.new(
      nil,
      :customer_managed_s3_storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parquet file.</p>
    class Parquet < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information about the current execution status. Populated when the execution has terminated.</p>
    # @!attribute code
    #   <p>Classification of the failure. Present when the execution failed.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Human-readable description of the outcome. For a failed execution, this describes why it failed; for a cancelled execution, this is the reason you supplied when calling CancelPipelineExecution.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Per-step error entries to help diagnose a failed execution. Present when the execution failed.</p>
    #   @return [Array<Types::DetailedPipelineError>]
    class PipelineExecutionStateDetails < Struct.new(
      nil,
      :code,
      :message,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Current execution status of a pipeline.</p>
    # @!attribute state
    #   <p>Current state of the pipeline execution.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>Additional information about the execution outcome. Populated when the execution has terminated (failed or cancelled).</p>
    #   @return [Types::PipelineExecutionStateDetails]
    class PipelineExecutionStatus < Struct.new(
      nil,
      :state,
      :state_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a pipeline execution.</p>
    # @!attribute pipeline_execution_id
    #   <p>The unique identifier of the pipeline execution.</p>
    #   @return [String]
    # @!attribute pipeline_version
    #   <p>The pipeline version this execution ran against.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current execution status of the pipeline.</p>
    #   @return [Types::PipelineExecutionStatus]
    # @!attribute execution_priority
    #   <p>Scheduling priority for the execution. When not specified, defaults to lowest priority.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The time the pipeline execution started, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the pipeline execution completed, in Unix epoch time.</p>
    #   @return [Time]
    class PipelineExecutionSummary < Struct.new(
      nil,
      :pipeline_execution_id,
      :pipeline_version,
      :status,
      :execution_priority,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a pipeline.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_arn
    #   <p>The ARN of the pipeline.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the pipeline.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the pipeline.</p>
    #   @return [Types::ResourceStatus]
    # @!attribute created_at
    #   <p>The time the pipeline was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the pipeline was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class PipelineSummary < Struct.new(
      nil,
      :pipeline_name,
      :description,
      :pipeline_arn,
      :version,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an IoT SiteWise Monitor portal.</p>
    # @!attribute id
    #   <p>The ID of the portal.</p>
    #   @return [String]
    class PortalResource < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
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
      nil,
      :state,
      :error,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      :description,
      :start_url,
      :creation_date,
      :last_update_date,
      :role_arn,
      :status,
      :portal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration entry associated with the specific portal type. The <code>portalTypeConfiguration</code> is a map of the <code>portalTypeKey</code> to the
    #       <code>PortalTypeEntry</code>.</p>
    # @!attribute portal_tools
    #   <p>The array of tools associated with the specified portal type. The possible values are <code>ASSISTANT</code> and <code>DASHBOARD</code>.</p>
    #   @return [Array<String>]
    class PortalTypeEntry < Struct.new(
      nil,
      :portal_tools,
      keyword_init: true
    )
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
      nil,
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input source for processing. Specify exactly one option.</p>
    # @!attribute timeseries
    #   <p>List of individual timeseries items to process.</p>
    #   @return [Array<Types::TimeseriesItem>]
    # @!attribute dataset
    #   <p>A dataset containing multiple items to process.</p>
    #   @return [Types::DatasetItem]
    class ProcessingInput < Struct.new(
      :timeseries,
      :dataset,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Timeseries < ProcessingInput; end
      class Dataset < ProcessingInput; end
      class Unknown < ProcessingInput; end
    end

    # <p>Identifies a specific IoT SiteWise Monitor project.</p>
    # @!attribute id
    #   <p>The ID of the project.</p>
    #   @return [String]
    class ProjectResource < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
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
      nil,
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      keyword_init: true
    )
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
      nil,
      :id,
      :external_id,
      :name,
      :alias,
      :notification,
      :data_type,
      :unit,
      :type,
      :path,
      keyword_init: true
    )
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
      nil,
      :asset_model_property_id,
      :interface_asset_model_property_id,
      keyword_init: true
    )
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
      nil,
      :match_by_property_name,
      :create_missing_property,
      :overrides,
      keyword_init: true
    )
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
      nil,
      :topic,
      :state,
      keyword_init: true
    )
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
      nil,
      :attribute,
      :measurement,
      :transform,
      :metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value type of null asset property data with BAD and UNCERTAIN qualities.</p>
    # @!attribute value_type
    #   <p>The type of null asset property data.</p>
    #   @return [String]
    class PropertyValueNullValue < Struct.new(
      nil,
      :value_type,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :interface_asset_model_id,
      :property_mapping_configuration,
      :client_token,
      keyword_init: true
    )
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
      nil,
      :asset_model_id,
      :interface_asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true
    )
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
      nil,
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_values,
      keyword_init: true
    )
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
      nil,
      :encryption_type,
      :kms_key_id,
      keyword_init: true
    )
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
      nil,
      :encryption_type,
      :kms_key_arn,
      :configuration_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_options
    #   <p>The logging options to set.</p>
    #   @return [Types::LoggingOptions]
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    class PutLoggingOptionsRequest < Struct.new(
      nil,
      :logging_options,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutLoggingOptionsResponse < Struct.new(
      nil,
      keyword_init: true
    )
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
      nil,
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n,
      keyword_init: true
    )
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
      nil,
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :warm_tier,
      :warm_tier_retention_period,
      :disallow_ingest_null_na_n,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains statistics about a completed query execution.</p>
    # @!attribute row_count
    #   <p>The total number of rows returned by the query.</p>
    #   @return [Integer]
    # @!attribute bytes_scanned
    #   <p>The total number of bytes scanned during query execution.</p>
    #   @return [Integer]
    # @!attribute execution_time_in_millis
    #   <p>The total query execution time, in milliseconds.</p>
    #   @return [Integer]
    class QueryStatistics < Struct.new(
      nil,
      :row_count,
      :bytes_scanned,
      :execution_time_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a query.</p>
    # @!attribute query_id
    #   <p>The unique identifier for the query execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current query status.</p>
    #   @return [String]
    # @!attribute submitted_at
    #   <p>The date and time when the query was submitted, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The date and time when the query reached a terminal state, in Unix epoch time.</p>
    #   @return [Time]
    class QuerySummary < Struct.new(
      nil,
      :query_id,
      :status,
      :submitted_at,
      :completed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The query timed out.</p>
    # @!attribute message
    #   @return [String]
    class QueryTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the reference information.</p>
    # @!attribute dataset
    #   <p>Contains the dataset reference information.</p>
    #   @return [Types::DataSetReference]
    class Reference < Struct.new(
      nil,
      :dataset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed resource this execution summary resolves to.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset that the resource resolves to.</p>
    #   @return [String]
    class ResolveTo < Struct.new(
      nil,
      :asset_id,
      keyword_init: true
    )
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
      nil,
      :portal,
      :project,
      keyword_init: true
    )
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
      nil,
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of a resource error.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ResourceError < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the current status of a resource.</p>
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #   @return [Types::ResourceError]
    # @!attribute state
    #   <p>The current status of the resource.</p>
    #   @return [String]
    class ResourceStatus < Struct.new(
      nil,
      :error,
      :state,
      keyword_init: true
    )
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
      keyword_init: true
    )
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
      nil,
      :number_of_days,
      :unlimited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single row in the query results.</p>
    # @!attribute data
    #   <p>List of data points in a single row of the result set.</p>
    #   @return [Array<Types::Datum>]
    class Row < Struct.new(
      nil,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures a mount that reads from an Amazon S3 access point.</p>
    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 access point.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>An optional key prefix to scope the mount to a subset of objects at the access point.</p>
    #   @return [String]
    class S3AccessPointSource < Struct.new(
      nil,
      :access_point_arn,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional filters that restrict a search to a subset of the workspace's data.</p>
    # @!attribute time_series_ids
    #   <p>Restricts the search to these time series.</p>
    #   @return [Array<String>]
    # @!attribute dataset_ids
    #   <p>Restricts the search to these datasets.</p>
    #   @return [Array<String>]
    # @!attribute time_intervals
    #   <p>Restricts the search to these time intervals.</p>
    #   @return [Array<Types::TimeInterval>]
    class SearchFilters < Struct.new(
      nil,
      :time_series_ids,
      :dataset_ids,
      :time_intervals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single matching segment of time-series data returned by a search.</p>
    # @!attribute search_id
    #   <p>The identifier of the search that produced this result.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace the search ran against.</p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p>The identifier of the dataset that contains the matching data.</p>
    #   @return [String]
    # @!attribute time_series_id
    #   <p>The identifier of the time series that contains the matching data.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The start of the matching time-series segment, in nanoseconds since the Unix epoch.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_timestamp
    #   <p>The end of the matching time-series segment, in nanoseconds since the Unix epoch.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute top_timestamp
    #   <p>The timestamp of the most relevant point within the matching segment, in nanoseconds since the
    #   Unix epoch.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute score
    #   <p>The relevance score of this result. Higher scores indicate a stronger match.</p>
    #   @return [Float]
    class SearchResult < Struct.new(
      nil,
      :search_id,
      :workspace_name,
      :dataset_id,
      :time_series_id,
      :start_timestamp,
      :end_timestamp,
      :top_timestamp,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a single search as returned by ListSearches.</p>
    # @!attribute search_id
    #   <p>The unique identifier of the search.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace the search runs against.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the search.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The natural-language query that was submitted for the search.</p>
    #   @return [String]
    # @!attribute search_type
    #   <p>The search strategy used for the search.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable explanation of the current status. Populated when the search has <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time at which the search was started.</p>
    #   @return [Time]
    # @!attribute group_id
    #   <p>The group identifier associated with the search, if one was supplied on the request.</p>
    #   @return [String]
    class SearchSummary < Struct.new(
      nil,
      :search_id,
      :workspace_name,
      :status,
      :query_statement,
      :search_type,
      :status_reason,
      :started_at,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested service is unavailable.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the session configuration for a session-type dataset.</p>
    # @!attribute session_start_timestamp
    #   <p>The nanosecond-precision start time of the session.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute session_end_timestamp
    #   <p>The nanosecond-precision end time of the session.</p>
    #   @return [Types::TimeInNanos]
    class SessionConfig < Struct.new(
      nil,
      :session_start_timestamp,
      :session_end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a SiteWise Edge gateway that runs on a Siemens Industrial Edge
    #       Device.</p>
    # @!attribute iot_core_thing_name
    #   <p>The name of the IoT Thing for your SiteWise Edge gateway.</p>
    #   @return [String]
    class SiemensIE < Struct.new(
      nil,
      :iot_core_thing_name,
      keyword_init: true
    )
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
      nil,
      :arn,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the dataset source associated with the dataset.</p>
    # @!attribute kendra
    #   <p>Contains details about the Kendra dataset source.</p>
    #   @return [Types::KendraSourceDetail]
    class SourceDetail < Struct.new(
      nil,
      :kendra,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for StartPipelineExecution operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace containing the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline to execute.</p>
    #   @return [String]
    # @!attribute execution_environment_variable_overrides
    #   <p>Runtime environment variable overrides for the execution. Includes global variables
    #   that apply to all compute nodes and computeNodes for per-node overrides. These take the highest
    #   priority in the environment variable hierarchy.</p>
    #   @return [Types::ExecutionEnvironmentVariables]
    # @!attribute execution_mount_overrides
    #   <p>Runtime mount overrides for the execution. Overrides are merged by mount name into
    #   each listed compute node's task-defined mounts: a matching name replaces the task-defined
    #   mount, a new name adds a mount, and task-defined mounts not referenced remain unchanged.
    #   Compute nodes not listed use their task-defined mounts as-is.</p>
    #   @return [Types::MountOverrides]
    # @!attribute execution_priority
    #   <p>Scheduling priority for the execution. Lower values indicate higher priority. Defaults to 2 when not specified.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
    #   If you retry a request that completed successfully using the same client token, the server returns the
    #   cached result from the original successful request without performing the operation again.</p>
    #   @return [String]
    class StartPipelineExecutionRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :execution_environment_variable_overrides,
      :execution_mount_overrides,
      :execution_priority,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for StartPipelineExecution operation.</p>
    # @!attribute pipeline_execution_id
    #   <p>The unique identifier of the created pipeline execution.</p>
    #   @return [String]
    class StartPipelineExecutionResponse < Struct.new(
      nil,
      :pipeline_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace to query.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The SQL query to execute against the workspace telemetry, annotations, data segment, and dataset data.</p>
    #   @return [String]
    class StartQueryRequest < Struct.new(
      nil,
      :client_token,
      :workspace_name,
      :query_statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the response for the StartQuery operation.</p>
    # @!attribute query_id
    #   <p>The unique identifier for the query execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The initial query status. The value is always SUBMITTED upon creation.</p>
    #   @return [String]
    class StartQueryResponse < Struct.new(
      nil,
      :query_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the StartSearch operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace whose data is searched.</p>
    #   @return [String]
    # @!attribute query_statement
    #   <p>The natural-language query describing the data to search for.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the request is idempotent. Repeating
    #   a StartSearch call with the same <code>clientToken</code> returns the original search rather than starting
    #   a new one. If omitted, the SDK autogenerates one.</p>
    #   @return [String]
    # @!attribute search_type
    #   <p>The search strategy to use. Defaults to <code>QUICK</code> when omitted.</p>
    #   @return [String]
    # @!attribute search_filters
    #   <p>Optional filters that restrict the search to a subset of the workspace's data.</p>
    #   @return [Types::SearchFilters]
    # @!attribute group_id
    #   <p>An optional caller-supplied identifier used to group related searches together.</p>
    #   @return [String]
    class StartSearchRequest < Struct.new(
      nil,
      :workspace_name,
      :query_statement,
      :client_token,
      :search_type,
      :search_filters,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output of the StartSearch operation.</p>
    # @!attribute search_id
    #   <p>The unique identifier assigned to the newly started search.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace the search runs against.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The initial status of the search. A newly started search is <code>QUEUED</code>.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The group identifier associated with the search, if one was supplied on the request.</p>
    #   @return [String]
    class StartSearchResponse < Struct.new(
      nil,
      :search_id,
      :workspace_name,
      :status,
      :group_id,
      keyword_init: true
    )
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

    # <p>The resource the action will be taken on. This can include asset-based resources and
    #       computation model resources.</p>
    # @!attribute asset_id
    #   <p>The ID of the asset, in UUID format.</p>
    #   @return [String]
    # @!attribute computation_model_id
    #   <p>The ID of the computation model.</p>
    #   @return [String]
    class TargetResource < Struct.new(
      nil,
      :asset_id,
      :computation_model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The task execution configuration. Specify a <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ContainerTaskConfiguration.html">containerTaskConfiguration</a> for a custom container workload.</p>
    # @!attribute container_task_configuration
    #   <p>Configuration for running a custom container image on managed compute.</p>
    #   @return [Types::ContainerTaskConfiguration]
    class TaskConfiguration < Struct.new(
      :container_task_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContainerTaskConfiguration < TaskConfiguration; end
      class Unknown < TaskConfiguration; end
    end

    # <p>Contains summary information about a task.</p>
    # @!attribute task_name
    #   <p>The name of the task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The ARN of the task.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the task.</p>
    #   @return [Types::ResourceStatus]
    # @!attribute created_at
    #   <p>The time the task was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the task was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class TaskSummary < Struct.new(
      nil,
      :task_name,
      :description,
      :task_arn,
      :version,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeded a rate limit. For example, you might have exceeded the number of
    #       IoT SiteWise assets that can be created per second, the allowed number of messages per second, and so
    #       on.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
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
      nil,
      :time_in_seconds,
      :offset_in_nanos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a time interval with a start time and an end time. Use a time interval to restrict an operation, such as a search, to a specific time range.</p>
    # @!attribute start_time
    #   <p>The start of the time interval.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_time
    #   <p>The end of the time interval.</p>
    #   @return [Types::TimeInNanos]
    class TimeInterval < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      :time_series_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single timeseries item to process. Exactly one of timeSeriesId or propertyAlias must be provided.</p>
    # @!attribute time_series_id
    #   <p>The unique identifier for the timeseries. Mutually exclusive with propertyAlias.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The customer-friendly alias for the timeseries. Mutually exclusive with timeSeriesId.</p>
    #   @return [String]
    # @!attribute trim_settings
    #   <p>The trim settings for the time range to export. Required for VIDEO and TELEMETRY data types; optional for ANNOTATION data types.</p>
    #   @return [Types::TrimSettings]
    # @!attribute format_settings
    #   <p>The optional format settings for the output.</p>
    #   @return [Types::FormatSettings]
    class TimeseriesItem < Struct.new(
      nil,
      :time_series_id,
      :property_alias,
      :trim_settings,
      :format_settings,
      keyword_init: true
    )
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
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains tracing information of the SiteWise Assistant's reasoning and data access.</p>
    # @!attribute text
    #   <p>The cited text from the data source.</p>
    #   @return [String]
    class Trace < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
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
      nil,
      :expression,
      :variables,
      :processing_config,
      keyword_init: true
    )
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
      nil,
      :compute_location,
      :forwarding_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for trimming content to a specific time range.</p>
    # @!attribute start_time
    #   <p>The start time for the trim range.</p>
    #   @return [Types::TimeInNanos]
    # @!attribute end_time
    #   <p>The end time for the trim range. Must be greater than startTime.</p>
    #   @return [Types::TimeInNanos]
    class TrimSettings < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
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
      nil,
      :interval,
      :offset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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
      nil,
      :access_policy_id,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateAccessPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_composite_model_path
    #   <p>The path to the composite model listing the parent composite models.</p>
    #   @return [Array<Types::AssetModelCompositeModelPathSegment>]
    # @!attribute asset_model_status
    #   <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #           states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #   @return [Types::AssetModelStatus]
    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    class UpdateAssetModelCompositeModelResponse < Struct.new(
      nil,
      :asset_model_composite_model_path,
      :asset_model_status,
      :asset_model_id,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #   @return [String]
    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>UPDATING</code> after
    #         successfully calling this operation) and any error message.</p>
    #   @return [Types::AssetModelStatus]
    class UpdateAssetModelResponse < Struct.new(
      nil,
      :asset_model_id,
      :asset_model_status,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :property_id,
      :property_alias,
      :property_notification_state,
      :client_token,
      :property_unit,
      keyword_init: true
    )
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
      nil,
      :asset_id,
      :asset_external_id,
      :asset_name,
      :client_token,
      :asset_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #   @return [String]
    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>UPDATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::AssetStatus]
    class UpdateAssetResponse < Struct.new(
      nil,
      :asset_id,
      :asset_status,
      keyword_init: true
    )
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
      nil,
      :computation_model_id,
      :computation_model_name,
      :computation_model_description,
      :computation_model_configuration,
      :computation_model_data_binding,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute computation_model_status
    #   <p>The status of the computation model. It contains a state (UPDATING after successfully
    #         calling this operation) and an error message if any.</p>
    #   @return [Types::ComputationModelStatus]
    class UpdateComputationModelResponse < Struct.new(
      nil,
      :computation_model_status,
      keyword_init: true
    )
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
      nil,
      :dashboard_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDashboardResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The ID of the dataset.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the workspace that contains the dataset.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_description
    #   <p>A description about the dataset, and its functionality.</p>
    #   @return [String]
    # @!attribute dataset_config
    #   <p>The updated configuration for the dataset.</p>
    #   @return [Types::DatasetConfig]
    # @!attribute metadata
    #   <p>The updated metadata for the dataset.</p>
    #   @return [Hash<String, String>]
    # @!attribute dataset_source
    #   <p>The data source for the dataset.</p>
    #   @return [Types::DatasetSource]
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #   @return [String]
    class UpdateDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :workspace_name,
      :dataset_name,
      :dataset_description,
      :dataset_config,
      :metadata,
      :dataset_source,
      :client_token,
      keyword_init: true
    )
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
      nil,
      :dataset_id,
      :dataset_arn,
      :dataset_status,
      keyword_init: true
    )
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
      nil,
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      keyword_init: true
    )
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
      nil,
      :capability_namespace,
      :capability_sync_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to update.</p>
    #   @return [String]
    # @!attribute gateway_name
    #   <p>A unique name for the gateway.</p>
    #   @return [String]
    class UpdateGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      :gateway_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for UpdatePipeline operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the pipeline.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>Updated environment variables shared across all compute nodes.</p>
    #   @return [Hash<String, String>]
    # @!attribute computations
    #   <p>Updated list of compute nodes forming the pipeline DAG.</p>
    #   @return [Array<Types::ComputeNode>]
    class UpdatePipelineRequest < Struct.new(
      nil,
      :workspace_name,
      :pipeline_name,
      :description,
      :environment_variables,
      :computations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for UpdatePipeline operation.</p>
    # @!attribute version
    #   <p>The new version of the pipeline created by this update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the pipeline.</p>
    #   @return [Types::ResourceStatus]
    class UpdatePipelineResponse < Struct.new(
      nil,
      :version,
      :status,
      keyword_init: true
    )
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
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>UPDATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #   @return [Types::PortalStatus]
    class UpdatePortalResponse < Struct.new(
      nil,
      :portal_status,
      keyword_init: true
    )
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
      nil,
      :project_id,
      :project_name,
      :project_description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateProjectResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for UpdateTask operation.</p>
    # @!attribute workspace_name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute task_name
    #   <p>The name of the task to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the task.</p>
    #   @return [String]
    # @!attribute task_configuration
    #   <p>The updated task execution configuration.</p>
    #   @return [Types::TaskConfiguration]
    class UpdateTaskRequest < Struct.new(
      nil,
      :workspace_name,
      :task_name,
      :description,
      :task_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for UpdateTask operation.</p>
    # @!attribute version
    #   <p>The new version of the task created by this update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle status of the task.</p>
    #   @return [Types::ResourceStatus]
    class UpdateTaskResponse < Struct.new(
      nil,
      :version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_name
    #   <p>The name of the workspace to update.</p>
    #   @return [String]
    # @!attribute workspace_description
    #   <p>A new description for the workspace.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the workspace. Omit this field to leave encryption
    #         unchanged. After a customer managed key configuration becomes active, the key can't be
    #         changed; supplying the same key is accepted.</p>
    #   @return [Types::WorkspaceEncryptionConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is
    #         idempotent. If you retry a request that completed successfully using the same client token,
    #         the retry succeeds without performing any further actions.</p>
    #   @return [String]
    class UpdateWorkspaceRequest < Struct.new(
      nil,
      :workspace_name,
      :workspace_description,
      :encryption_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_status
    #   <p>The status of the workspace after the update, which is <code>UPDATING</code> when the
    #         operation returns.</p>
    #   @return [Types::WorkspaceStatus]
    class UpdateWorkspaceResponse < Struct.new(
      nil,
      :workspace_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for a user identity in an access policy.</p>
    # @!attribute id
    #   <p>The IAM Identity Center ID of the user.</p>
    #   @return [String]
    class UserIdentity < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The validation failed for this query.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
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
      nil,
      :property_id,
      :hierarchy_id,
      :property_path,
      keyword_init: true
    )
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
      nil,
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value,
      :null_value,
      keyword_init: true
    )
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
      nil,
      :number_of_days,
      :unlimited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the encryption configuration for a workspace.</p>
    # @!attribute encryption_type
    #   <p>The encryption scheme for the workspace. <code>SITEWISE_DEFAULT_ENCRYPTION</code>
    #         encrypts data with the IoT SiteWise default key. <code>KMS_BASED_ENCRYPTION</code> encrypts data
    #         with the customer managed KMS key identified by <code>kmsKeyId</code>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The customer managed KMS key used when <code>encryptionType</code> is
    #         <code>KMS_BASED_ENCRYPTION</code>. Accepts a key ID, key ARN, or key alias. Required for
    #         <code>KMS_BASED_ENCRYPTION</code>; must be omitted for
    #         <code>SITEWISE_DEFAULT_ENCRYPTION</code>. After a workspace's customer managed key
    #         configuration becomes active, the key can't be changed.</p>
    #   @return [String]
    class WorkspaceEncryptionConfiguration < Struct.new(
      nil,
      :encryption_type,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the encryption configuration information for a workspace.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption used for the workspace.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The key ARN of the KMS key used for KMS encryption if <code>encryptionType</code>
    #         is <code>KMS_BASED_ENCRYPTION</code>.</p>
    #   @return [String]
    class WorkspaceEncryptionConfigurationInfo < Struct.new(
      nil,
      :encryption_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of an error associated with a workspace.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class WorkspaceErrorDetails < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the current status of a workspace.</p>
    # @!attribute state
    #   <p>The current state of the workspace.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #   @return [Types::WorkspaceErrorDetails]
    class WorkspaceStatus < Struct.new(
      nil,
      :state,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a workspace, including its name, ARN, status, and
    #       creation and update timestamps.</p>
    # @!attribute name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workspace.</p>
    #   @return [Types::WorkspaceStatus]
    # @!attribute created_at
    #   <p>The date the workspace was created, in Unix epoch time.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date the workspace was last updated, in Unix epoch time.</p>
    #   @return [Time]
    class WorkspaceSummary < Struct.new(
      nil,
      :name,
      :arn,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
