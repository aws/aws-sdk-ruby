# frozen_string_literal: true

# This is generated code!

module Aws::LakeFormation
  # This module contains the types returned by client operations.
  module Types

    # <p>Access to a resource was denied.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute resource
    #   <p>The database, table, or column resource to which to attach an LF-tag.</p>
    #   @return [Types::Resource]
    # @!attribute lf_tags
    #   <p>The LF-tags to attach to the resource.</p>
    #   @return [Array<Types::LFTagPair>]
    class AddLFTagsToResourceRequest < Struct.new(
      :catalog_id,
      :resource,
      :lf_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to tag the resource.</p>
    #   @return [Array<Types::LFTagError>]
    class AddLFTagsToResourceResponse < Struct.new(
      :failures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A new object to add to the governed table.</p>
    # @!attribute uri
    #   <p>The Amazon S3 location of the object.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of the Amazon S3 object in bytes.</p>
    #   @return [Integer]
    # @!attribute partition_values
    #   <p>A list of partition values for the object. A value must be specified for each partition key associated with the table.</p>
    #            <p>The supported data types are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and decimal.</p>
    #   @return [Array<String>]
    class AddObjectInput < Struct.new(
      :uri,
      :e_tag,
      :size,
      :partition_values,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        super
      end
    end

    # <p>A structure that you pass to indicate you want all rows in a filter. </p>
    class AllRowsWildcard < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource to be created or added already exists.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ApplicationStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # @!attribute saml_assertion
    #   <p>A SAML assertion consisting of an assertion statement for the user who needs temporary credentials. This must match the SAML assertion that was issued to IAM. This must be Base64 encoded.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role that represents an IAM principal whose scope down policy allows it to call credential vending APIs such as <code>GetTemporaryTableCredentials</code>. The caller must also have iam:PassRole permission on this role.  </p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the IdP.</p>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The time period, between 900 and 43,200 seconds, for the timeout of the temporary credentials.</p>
    #   @return [Integer]
    class AssumeDecoratedRoleWithSAMLRequest < Struct.new(
      :saml_assertion,
      :role_arn,
      :principal_arn,
      :duration_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_key_id
    #   <p>The access key ID for the temporary credentials. (The access key consists of an access key ID and a secret key).</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret key for the temporary credentials. (The access key consists of an access key ID and a secret key).</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The session token for the temporary credentials.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date and time when the temporary credentials expire.</p>
    #   @return [Time]
    class AssumeDecoratedRoleWithSAMLResponse < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure used to include auditing information on the privileged API. </p>
    # @!attribute additional_audit_context
    #   <p>The filter engine can populate the 'AdditionalAuditContext' information with the request ID for you to track. This information will be displayed in CloudTrail log in your account.</p>
    #   @return [String]
    class AuditContext < Struct.new(
      :additional_audit_context,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute entries
    #   <p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>
    #   @return [Array<Types::BatchPermissionsRequestEntry>]
    class BatchGrantPermissionsRequest < Struct.new(
      :catalog_id,
      :entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to grant permissions to the resources.</p>
    #   @return [Array<Types::BatchPermissionsFailureEntry>]
    class BatchGrantPermissionsResponse < Struct.new(
      :failures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of failures when performing a batch grant or batch revoke operation.</p>
    # @!attribute request_entry
    #   <p>An identifier for an entry of the batch request.</p>
    #   @return [Types::BatchPermissionsRequestEntry]
    # @!attribute error
    #   <p>An error message that applies to the failure of the entry.</p>
    #   @return [Types::ErrorDetail]
    class BatchPermissionsFailureEntry < Struct.new(
      :request_entry,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A permission to a resource granted by batch operation to the principal.</p>
    # @!attribute id
    #   <p>A unique identifier for the batch permissions request entry.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal to be granted a permission.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>The resource to which the principal is to be granted a permission.</p>
    #   @return [Types::Resource]
    # @!attribute permissions
    #   <p>The permissions to be granted.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    # @!attribute permissions_with_grant_option
    #   <p>Indicates if the option to pass permissions is granted.</p>
    #   @return [Array<String>]
    class BatchPermissionsRequestEntry < Struct.new(
      :id,
      :principal,
      :resource,
      :permissions,
      :condition,
      :permissions_with_grant_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute entries
    #   <p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>
    #   @return [Array<Types::BatchPermissionsRequestEntry>]
    class BatchRevokePermissionsRequest < Struct.new(
      :catalog_id,
      :entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to revoke permissions to the resources.</p>
    #   @return [Array<Types::BatchPermissionsFailureEntry>]
    class BatchRevokePermissionsResponse < Struct.new(
      :failures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction to cancel.</p>
    #   @return [String]
    class CancelTransactionRequest < Struct.new(
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CancelTransactionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the catalog object.</p>
    # @!attribute id
    #   <p>An identifier for the catalog resource.</p>
    #   @return [String]
    class CatalogResource < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing the name of a column resource and the LF-tags attached to it.</p>
    # @!attribute name
    #   <p>The name of a column resource.</p>
    #   @return [String]
    # @!attribute lf_tags
    #   <p>The LF-tags attached to a column resource.</p>
    #   @return [Array<Types::LFTagPair>]
    class ColumnLFTag < Struct.new(
      :name,
      :lf_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A wildcard object, consisting of an optional list of excluded column names or indexes.</p>
    # @!attribute excluded_column_names
    #   <p>Excludes column names. Any column with this name will be excluded.</p>
    #   @return [Array<String>]
    class ColumnWildcard < Struct.new(
      :excluded_column_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction to commit.</p>
    #   @return [String]
    class CommitTransactionRequest < Struct.new(
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_status
    #   <p>The status of the transaction.</p>
    #   @return [String]
    class CommitTransactionResponse < Struct.new(
      :transaction_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ComparisonOperator
      EQ = 'EQ'
      NE = 'NE'
      LE = 'LE'
      LT = 'LT'
      GE = 'GE'
      GT = 'GT'
      CONTAINS = 'CONTAINS'
      NOT_CONTAINS = 'NOT_CONTAINS'
      BEGINS_WITH = 'BEGINS_WITH'
      IN = 'IN'
      BETWEEN = 'BETWEEN'
    end

    # <p>Two processes are trying to modify a resource simultaneously.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    # @!attribute expression
    #   <p>An expression written based on the Cedar Policy Language used to match the principal attributes.</p>
    #   @return [String]
    class Condition < Struct.new(
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute table_data
    #   <p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>
    #   @return [Types::DataCellsFilter]
    class CreateDataCellsFilterRequest < Struct.new(
      :table_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateDataCellsFilterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the expression.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description with information about the LF-Tag expression.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>A list of LF-Tag conditions (key-value pairs).</p>
    #   @return [Array<Types::LFTag>]
    class CreateLFTagExpressionRequest < Struct.new(
      :name,
      :description,
      :catalog_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateLFTagExpressionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #   @return [Array<String>]
    class CreateLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateLFTagResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the
    #            persistent metadata store. It contains database definitions, table definitions, view
    #            definitions, and other control information to manage your Lake Formation
    #            environment.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The ARN of the IAM Identity Center instance for which the operation will be executed.
    #            For more information about ARNs, see Amazon Resource Names (ARNs) and Amazon Web Services Service
    #            Namespaces in the Amazon Web Services General Reference.</p>
    #   @return [String]
    # @!attribute external_filtering
    #   <p>A list of the account IDs of Amazon Web Services accounts of third-party applications
    #            that are allowed to access data managed by Lake Formation.</p>
    #   @return [Types::ExternalFilteringConfiguration]
    # @!attribute share_recipients
    #   <p>A list of Amazon Web Services account IDs and/or Amazon Web Services organization/organizational unit ARNs
    #            that are allowed to access data managed by Lake Formation. </p>
    #            <p>If the <code>ShareRecipients</code> list includes valid values, a resource share is created with the principals you want to have access to the resources.</p>
    #            <p>If the <code>ShareRecipients</code> value is null or the list is empty, no resource share is created.</p>
    #   @return [Array<Types::DataLakePrincipal>]
    class CreateLakeFormationIdentityCenterConfigurationRequest < Struct.new(
      :catalog_id,
      :instance_arn,
      :external_filtering,
      :share_recipients,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Lake Formation application integrated with IAM Identity Center.</p>
    #   @return [String]
    class CreateLakeFormationIdentityCenterConfigurationResponse < Struct.new(
      :application_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>A structure for the resource.</p>
    #   @return [Types::Resource]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    class CreateLakeFormationOptInRequest < Struct.new(
      :principal,
      :resource,
      :condition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateLakeFormationOptInResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that describes certain columns on certain rows.</p>
    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>A table in the database.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name given by the user to the data filter cell.</p>
    #   @return [String]
    # @!attribute row_filter
    #   <p>A PartiQL predicate.</p>
    #   @return [Types::RowFilter]
    # @!attribute column_names
    #   <p>A list of column names and/or nested column attributes. When specifying nested attributes, use a qualified dot (.) delimited format such as "address"."zip". Nested attributes within this list may not exceed a depth of 5.</p>
    #   @return [Array<String>]
    # @!attribute column_wildcard
    #   <p>A wildcard with exclusions.</p>
    #            <p>You must specify either a <code>ColumnNames</code> list or the
    #         <code>ColumnWildCard</code>. </p>
    #   @return [Types::ColumnWildcard]
    # @!attribute version_id
    #   <p>The ID of the data cells filter version.</p>
    #   @return [String]
    class DataCellsFilter < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      :row_filter,
      :column_names,
      :column_wildcard,
      :version_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for a data cells filter resource. </p>
    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data cells filter. </p>
    #   @return [String]
    class DataCellsFilterResource < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Lake Formation principal. Supported principals are IAM users
    #       or IAM roles.</p>
    # @!attribute data_lake_principal_identifier
    #   <p>An identifier for the Lake Formation principal.</p>
    #   @return [String]
    class DataLakePrincipal < Struct.new(
      :data_lake_principal_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataLakeResourceType
      CATALOG = 'CATALOG'
      DATABASE = 'DATABASE'
      TABLE = 'TABLE'
      DATA_LOCATION = 'DATA_LOCATION'
      LF_TAG = 'LF_TAG'
      LF_TAG_POLICY = 'LF_TAG_POLICY'
      LF_TAG_POLICY_DATABASE = 'LF_TAG_POLICY_DATABASE'
      LF_TAG_POLICY_TABLE = 'LF_TAG_POLICY_TABLE'
      LF_NAMED_TAG_EXPRESSION = 'LF_NAMED_TAG_EXPRESSION'
    end

    # <p>A structure representing a list of Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.</p>
    # @!attribute data_lake_admins
    #   <p>A list of Lake Formation principals. Supported principals are IAM users or IAM roles.</p>
    #   @return [Array<Types::DataLakePrincipal>]
    # @!attribute read_only_admins
    #   <p>A list of Lake Formation principals with only view access to the resources, without the ability to make changes. Supported principals are IAM users or IAM roles.</p>
    #   @return [Array<Types::DataLakePrincipal>]
    # @!attribute create_database_default_permissions
    #   <p>Specifies whether access control on newly created database is managed by Lake Formation permissions or exclusively by IAM permissions.</p>
    #            <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting "Use only IAM access control," and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>
    #            <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html">Changing the Default Security Settings for Your Data Lake</a>.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute create_table_default_permissions
    #   <p>Specifies whether access control on newly created table is managed by Lake Formation permissions or exclusively by IAM permissions.</p>
    #            <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting "Use only IAM access control," and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>
    #            <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html">Changing the Default Security Settings for Your Data Lake</a>.</p>
    #   @return [Array<Types::PrincipalPermissions>]
    # @!attribute parameters
    #   <p>A key-value map that provides an additional configuration on your data lake. CROSS_ACCOUNT_VERSION is the key you can configure in the Parameters field. Accepted values for the CrossAccountVersion key are 1, 2, 3, and 4.</p>
    #   @return [Hash<String, String>]
    # @!attribute trusted_resource_owners
    #   <p>A list of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs). The user ARNs can be logged in the resource owner's CloudTrail log.</p>
    #            <p>You may want to specify this property when you are in a high-trust boundary, such as the same team or company. </p>
    #   @return [Array<String>]
    # @!attribute allow_external_data_filtering
    #   <p>Whether to allow Amazon EMR clusters to access data managed by Lake Formation. </p>
    #            <p>If true, you allow Amazon EMR clusters to access data in Amazon S3 locations that are registered with Lake Formation.</p>
    #            <p>If false or null, no Amazon EMR clusters will be able to access data in Amazon S3 locations that are registered with Lake Formation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/initial-LF-setup.html#external-data-filter">(Optional) Allow external data filtering</a>.</p>
    #   @return [Boolean]
    # @!attribute allow_full_table_external_data_access
    #   <p>Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.</p>
    #   @return [Boolean]
    # @!attribute external_data_filtering_allow_list
    #   <p>A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.></p>
    #   @return [Array<Types::DataLakePrincipal>]
    # @!attribute authorized_session_tag_value_list
    #   <p>Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it. Lake Formation will publish the acceptable key-value pair, for example key = "LakeFormationTrustedCaller" and value = "TRUE" and the third party integrator must properly tag the temporary security credentials that will be used to call Lake Formation's administrative APIs.</p>
    #   @return [Array<String>]
    class DataLakeSettings < Struct.new(
      :data_lake_admins,
      :read_only_admins,
      :create_database_default_permissions,
      :create_table_default_permissions,
      :parameters,
      :trusted_resource_owners,
      :allow_external_data_filtering,
      :allow_full_table_external_data_access,
      :external_data_filtering_allow_list,
      :authorized_session_tag_value_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for a data location object where permissions are granted or revoked. </p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the data location resource.</p>
    #   @return [String]
    class DataLocationResource < Struct.new(
      :catalog_id,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the database object.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the database resource. Unique to the Data Catalog.</p>
    #   @return [String]
    class DatabaseResource < Struct.new(
      :catalog_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>A table in the database.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name given by the user to the data filter cell.</p>
    #   @return [String]
    class DeleteDataCellsFilterRequest < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDataCellsFilterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the LF-Tag expression.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID in which the LF-Tag expression is saved. </p>
    #   @return [String]
    class DeleteLFTagExpressionRequest < Struct.new(
      :name,
      :catalog_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteLFTagExpressionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag to delete.</p>
    #   @return [String]
    class DeleteLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteLFTagResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the
    #            persistent metadata store. It contains database definitions, table definitions, view
    #            definition, and other control information to manage your Lake Formation environment.</p>
    #   @return [String]
    class DeleteLakeFormationIdentityCenterConfigurationRequest < Struct.new(
      :catalog_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteLakeFormationIdentityCenterConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>A structure for the resource.</p>
    #   @return [Types::Resource]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    class DeleteLakeFormationOptInRequest < Struct.new(
      :principal,
      :resource,
      :condition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteLakeFormationOptInResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object to delete from the governed table.</p>
    # @!attribute uri
    #   <p>The Amazon S3 location of the object to delete.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>
    #   @return [String]
    # @!attribute partition_values
    #   <p>A list of partition values for the object. A value must be specified for each partition key associated with the governed table.</p>
    #   @return [Array<String>]
    class DeleteObjectInput < Struct.new(
      :uri,
      :e_tag,
      :partition_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Glue data catalog that contains the governed table. Defaults to the current account ID.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database that contains the governed table.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the governed table.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>ID of the transaction that the writes occur in.</p>
    #   @return [String]
    # @!attribute objects
    #   <p>A list of VirtualObject structures, which indicates the Amazon S3 objects to be deleted if the transaction cancels.</p>
    #   @return [Array<Types::VirtualObject>]
    class DeleteObjectsOnCancelRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :objects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteObjectsOnCancelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>
    #   @return [String]
    class DeregisterResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeregisterResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.</p>
    #   @return [String]
    class DescribeLakeFormationIdentityCenterConfigurationRequest < Struct.new(
      :catalog_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the connection.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Lake Formation application integrated with IAM Identity Center.</p>
    #   @return [String]
    # @!attribute external_filtering
    #   <p>Indicates if external filtering is enabled.</p>
    #   @return [Types::ExternalFilteringConfiguration]
    # @!attribute share_recipients
    #   <p>A list of Amazon Web Services account IDs or Amazon Web Services organization/organizational unit ARNs that
    #            are allowed to access data managed by Lake Formation. </p>
    #            <p>If the <code>ShareRecipients</code> list includes valid values, a resource share is created with the principals you want to have access to the resources as the <code>ShareRecipients</code>.</p>
    #            <p>If the <code>ShareRecipients</code> value is null or the list is empty, no resource share is created.</p>
    #   @return [Array<Types::DataLakePrincipal>]
    # @!attribute resource_share
    #   <p>The Amazon Resource Name (ARN) of the RAM share.</p>
    #   @return [String]
    class DescribeLakeFormationIdentityCenterConfigurationResponse < Struct.new(
      :catalog_id,
      :instance_arn,
      :application_arn,
      :external_filtering,
      :share_recipients,
      :resource_share,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    class DescribeResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_info
    #   <p>A structure containing information about an Lake Formation resource.</p>
    #   @return [Types::ResourceInfo]
    class DescribeResourceResponse < Struct.new(
      :resource_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction for which to return status.</p>
    #   @return [String]
    class DescribeTransactionRequest < Struct.new(
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_description
    #   <p>Returns a <code>TransactionDescription</code> object containing information about the transaction.</p>
    #   @return [Types::TransactionDescription]
    class DescribeTransactionResponse < Struct.new(
      :transaction_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing the additional details to be returned in the <code>AdditionalDetails</code> attribute of <code>PrincipalResourcePermissions</code>.</p>
    #          <p>If a catalog resource is shared through Resource Access Manager (RAM), then there will exist a corresponding RAM resource share ARN.</p>
    # @!attribute resource_share
    #   <p>A resource share ARN for a catalog resource shared through RAM.</p>
    #   @return [Array<String>]
    class DetailsMap < Struct.new(
      :resource_share,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EnableStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>A specified entity does not exist.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class EntityNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error.</p>
    # @!attribute error_code
    #   <p>The code associated with this error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Statistics related to the processing of a query statement.</p>
    # @!attribute average_execution_time_millis
    #   <p>The average time the request took to be executed.</p>
    #   @return [Integer]
    # @!attribute data_scanned_bytes
    #   <p>The amount of data that was scanned in bytes.</p>
    #   @return [Integer]
    # @!attribute work_units_executed_count
    #   <p>The number of work units executed.</p>
    #   @return [Integer]
    class ExecutionStatistics < Struct.new(
      :average_execution_time_millis,
      :data_scanned_bytes,
      :work_units_executed_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:average_execution_time_millis] = 0 unless options.key?(:average_execution_time_millis)
        options[:data_scanned_bytes] = 0 unless options.key?(:data_scanned_bytes)
        options[:work_units_executed_count] = 0 unless options.key?(:work_units_executed_count)
        super
      end
    end

    # <p>Contains details about an error where the query request expired.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ExpiredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction to extend.</p>
    #   @return [String]
    class ExtendTransactionRequest < Struct.new(
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ExtendTransactionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration for enabling external data filtering for third-party applications to
    #          access data managed by Lake Formation .</p>
    # @!attribute status
    #   <p>Allows to enable or disable the third-party applications that are allowed to access data
    #            managed by Lake Formation.</p>
    #   @return [String]
    # @!attribute authorized_targets
    #   <p>List of third-party application <code>ARNs</code> integrated with Lake Formation.</p>
    #   @return [Array<String>]
    class ExternalFilteringConfiguration < Struct.new(
      :status,
      :authorized_targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FieldNameString
      RESOURCE_ARN = 'RESOURCE_ARN'
      ROLE_ARN = 'ROLE_ARN'
      LAST_MODIFIED = 'LAST_MODIFIED'
    end

    # <p>This structure describes the filtering of columns in a table based on a filter condition.</p>
    # @!attribute field
    #   <p>The field to filter in the filter condition.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The comparison operator used in the filter condition.</p>
    #   @return [String]
    # @!attribute string_value_list
    #   <p>A string with values used in evaluating the filter condition.</p>
    #   @return [Array<String>]
    class FilterCondition < Struct.new(
      :field,
      :comparison_operator,
      :string_value_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>A table in the database.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name given by the user to the data filter cell.</p>
    #   @return [String]
    class GetDataCellsFilterRequest < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_cells_filter
    #   <p>A structure that describes certain columns on certain rows.</p>
    #   @return [Types::DataCellsFilter]
    class GetDataCellsFilterResponse < Struct.new(
      :data_cells_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetDataLakePrincipalRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identity
    #   <p>A unique identifier of the invoking principal.</p>
    #   @return [String]
    class GetDataLakePrincipalResponse < Struct.new(
      :identity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    class GetDataLakeSettingsRequest < Struct.new(
      :catalog_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_lake_settings
    #   <p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>
    #   @return [Types::DataLakeSettings]
    class GetDataLakeSettingsResponse < Struct.new(
      :data_lake_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class GetEffectivePermissionsForPathRequest < Struct.new(
      :catalog_id,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute permissions
    #   <p>A list of the permissions for the specified table or database resource located at the path in Amazon S3.</p>
    #   @return [Array<Types::PrincipalResourcePermissions>]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class GetEffectivePermissionsForPathResponse < Struct.new(
      :permissions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the LF-Tag expression</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID.</p>
    #   @return [String]
    class GetLFTagExpressionRequest < Struct.new(
      :name,
      :catalog_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the LF-Tag expression. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description with information about the LF-Tag expression.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID in which the LF-Tag expression is saved.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The body of the LF-Tag expression. It is composed of one or more LF-Tag key-value pairs.</p>
    #   @return [Array<Types::LFTag>]
    class GetLFTagExpressionResponse < Struct.new(
      :name,
      :description,
      :catalog_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #   @return [String]
    class GetLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #   @return [Array<String>]
    class GetLFTagResponse < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #   @return [String]
    class GetQueryStateRequest < Struct.new(
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the output.</p>
    # @!attribute error
    #   <p>An error message when the operation fails.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of a query previously submitted. The possible states are:</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING: the query is pending.</p>
    #               </li>
    #               <li>
    #                  <p>WORKUNITS_AVAILABLE: some work units are ready for retrieval and execution.</p>
    #               </li>
    #               <li>
    #                  <p>FINISHED: the query planning finished successfully, and all work units are ready for retrieval and execution.</p>
    #               </li>
    #               <li>
    #                  <p>ERROR: an error occurred with the query, such as an invalid query ID or a backend error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetQueryStateResponse < Struct.new(
      :error,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #   @return [String]
    class GetQueryStatisticsRequest < Struct.new(
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute execution_statistics
    #   <p>An <code>ExecutionStatistics</code> structure containing execution statistics.</p>
    #   @return [Types::ExecutionStatistics]
    # @!attribute planning_statistics
    #   <p>A <code>PlanningStatistics</code> structure containing query planning statistics.</p>
    #   @return [Types::PlanningStatistics]
    # @!attribute query_submission_time
    #   <p>The time that the query was submitted.</p>
    #   @return [Time]
    class GetQueryStatisticsResponse < Struct.new(
      :execution_statistics,
      :planning_statistics,
      :query_submission_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute resource
    #   <p>The database, table, or column resource for which you want to return LF-tags.</p>
    #   @return [Types::Resource]
    # @!attribute show_assigned_lf_tags
    #   <p>Indicates whether to show the assigned LF-tags.</p>
    #   @return [Boolean]
    class GetResourceLFTagsRequest < Struct.new(
      :catalog_id,
      :resource,
      :show_assigned_lf_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lf_tag_on_database
    #   <p>A list of LF-tags applied to a database resource.</p>
    #   @return [Array<Types::LFTagPair>]
    # @!attribute lf_tags_on_table
    #   <p>A list of LF-tags applied to a table resource.</p>
    #   @return [Array<Types::LFTagPair>]
    # @!attribute lf_tags_on_columns
    #   <p>A list of LF-tags applied to a column resource.</p>
    #   @return [Array<Types::ColumnLFTag>]
    class GetResourceLFTagsResponse < Struct.new(
      :lf_tag_on_database,
      :lf_tags_on_table,
      :lf_tags_on_columns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog containing the governed table. Defaults to the caller’s account.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database containing the governed table.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The governed table for which to retrieve objects.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the governed table contents. If this transaction has aborted, an error is returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>
    #   @return [String]
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the governed table contents. If not set, the most recent transaction commit time is used. Cannot be specified along with <code>TransactionId</code>.</p>
    #   @return [Time]
    # @!attribute partition_predicate
    #   <p>A predicate to filter the objects returned based on the partition keys defined in the governed table.</p>
    #            <ul>
    #               <li>
    #                  <p>The comparison operators supported are: =, >, <, >=, <=</p>
    #               </li>
    #               <li>
    #                  <p>The logical operators supported are: AND</p>
    #               </li>
    #               <li>
    #                  <p>The data types supported are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and decimal.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies how many values to return in a page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token if this is not the first call to retrieve these objects.</p>
    #   @return [String]
    class GetTableObjectsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :query_as_of_time,
      :partition_predicate,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute objects
    #   <p>A list of objects organized by partition keys.</p>
    #   @return [Array<Types::PartitionObjects>]
    # @!attribute next_token
    #   <p>A continuation token indicating whether additional data is available.</p>
    #   @return [String]
    class GetTableObjectsResponse < Struct.new(
      :objects,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The ARN of the partitions' table.</p>
    #   @return [String]
    # @!attribute partition
    #   <p>A list of partition values identifying a single partition.</p>
    #   @return [Types::PartitionValueList]
    # @!attribute permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    #   @return [Array<String>]
    # @!attribute duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    #   @return [Integer]
    # @!attribute audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    #   @return [Types::AuditContext]
    # @!attribute supported_permission_types
    #   <p>A list of supported permission types for the partition. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    #   @return [Array<String>]
    class GetTemporaryGluePartitionCredentialsRequest < Struct.new(
      :table_arn,
      :partition,
      :permissions,
      :duration_seconds,
      :audit_context,
      :supported_permission_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_key_id
    #   <p>The access key ID for the temporary credentials.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret key for the temporary credentials.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The session token for the temporary credentials.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date and time when the temporary credentials expire.</p>
    #   @return [Time]
    class GetTemporaryGluePartitionCredentialsResponse < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The ARN identifying a table in the Data Catalog for the temporary credentials request.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    #   @return [Array<String>]
    # @!attribute duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    #   @return [Integer]
    # @!attribute audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    #   @return [Types::AuditContext]
    # @!attribute supported_permission_types
    #   <p>A list of supported permission types for the table. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    #   @return [Array<String>]
    # @!attribute s3_path
    #   <p>The Amazon S3 path for the table.</p>
    #   @return [String]
    # @!attribute query_session_context
    #   <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    #   @return [Types::QuerySessionContext]
    class GetTemporaryGlueTableCredentialsRequest < Struct.new(
      :table_arn,
      :permissions,
      :duration_seconds,
      :audit_context,
      :supported_permission_types,
      :s3_path,
      :query_session_context,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_key_id
    #   <p>The access key ID for the temporary credentials.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret key for the temporary credentials.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The session token for the temporary credentials.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date and time when the temporary credentials expire.</p>
    #   @return [Time]
    # @!attribute vended_s3_path
    #   <p>The Amazon S3 path for the temporary credentials.</p>
    #   @return [Array<String>]
    class GetTemporaryGlueTableCredentialsResponse < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      :vended_s3_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the plan query operation for which to get results.</p>
    #   @return [String]
    # @!attribute work_unit_id
    #   <p>The work unit ID for which to get results. Value generated by enumerating <code>WorkUnitIdMin</code> to <code>WorkUnitIdMax</code> (inclusive) from the <code>WorkUnitRange</code> in the output of <code>GetWorkUnits</code>.</p>
    #   @return [Integer]
    # @!attribute work_unit_token
    #   <p>A work token used to query the execution service. Token output from <code>GetWorkUnits</code>.</p>
    #   @return [String]
    class GetWorkUnitResultsRequest < Struct.new(
      :query_id,
      :work_unit_id,
      :work_unit_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the output.</p>
    # @!attribute result_stream
    #   <p>Rows returned from the <code>GetWorkUnitResults</code> operation as a stream of Apache Arrow v1.0 messages.</p>
    #   @return [String]
    class GetWorkUnitResultsResponse < Struct.new(
      :result_stream,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:result_stream] = Base64.strict_decode64('') unless options.key?(:result_stream)
        super
      end
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The size of each page to get in the Amazon Web Services service call. This does not affect the number of items returned in the command's output. Setting a smaller page size results in more calls to the Amazon Web Services service, retrieving fewer items in each call. This can help prevent the Amazon Web Services service calls from timing out.</p>
    #   @return [Integer]
    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #   @return [String]
    class GetWorkUnitsRequest < Struct.new(
      :next_token,
      :page_size,
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the output.</p>
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #   @return [String]
    # @!attribute work_unit_ranges
    #   <p>A <code>WorkUnitRangeList</code> object that specifies the valid range of work unit IDs for querying the execution service.</p>
    #   @return [Array<Types::WorkUnitRange>]
    class GetWorkUnitsResponse < Struct.new(
      :next_token,
      :query_id,
      :work_unit_ranges,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An encryption operation failed.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class GlueEncryptionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>
    #            <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>The resource to which permissions are to be granted. Resources in Lake Formation are the Data Catalog, databases, and tables.</p>
    #   @return [Types::Resource]
    # @!attribute permissions
    #   <p>The permissions granted to the principal on the resource. Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Lake Formation requires that each principal be authorized to perform a specific task on Lake Formation resources. </p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    # @!attribute permissions_with_grant_option
    #   <p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>
    #   @return [Array<String>]
    class GrantPermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource,
      :permissions,
      :condition,
      :permissions_with_grant_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GrantPermissionsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal service error occurred.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input provided was not valid.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that allows an admin to grant user permissions on certain conditions. For example, granting a role access to all columns that do not have the LF-tag 'PII' in tables that have the LF-tag 'Prod'.</p>
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #            <p>The maximum number of values that can be defined for a LF-Tag is 1000. A single API call
    #         supports 50 values. You can use multiple API calls to add more values.</p>
    #   @return [Array<String>]
    class LFTag < Struct.new(
      :tag_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing an error related to a <code>TagResource</code> or <code>UnTagResource</code> operation.</p>
    # @!attribute lf_tag
    #   <p>The key-name of the LF-tag.</p>
    #   @return [Types::LFTagPair]
    # @!attribute error
    #   <p>An error that occurred with the attachment or detachment of the LF-tag.</p>
    #   @return [Types::ErrorDetail]
    class LFTagError < Struct.new(
      :lf_tag,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure consists LF-Tag expression name and catalog ID.</p>
    # @!attribute name
    #   <p>The name for saved the LF-Tag expression.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A structure that contains information about the LF-Tag expression.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>A logical expression composed of one or more LF-Tags.</p>
    #   @return [Array<Types::LFTag>]
    class LFTagExpression < Struct.new(
      :name,
      :description,
      :catalog_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing a LF-Tag expression (keys and values).</p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the LF-Tag expression to grant permissions on.</p>
    #   @return [String]
    class LFTagExpressionResource < Struct.new(
      :catalog_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing an LF-tag key and values for a resource.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #   @return [Array<String>]
    class LFTagKeyResource < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing an LF-tag key-value pair.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #   @return [Array<String>]
    class LFTagPair < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing a list of LF-tag conditions or saved LF-Tag expressions that apply to a resource's LF-tag policy.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type for which the LF-tag policy applies.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>A list of LF-tag conditions or a saved expression that apply to the resource's LF-tag policy.</p>
    #   @return [Array<Types::LFTag>]
    # @!attribute expression_name
    #   <p>If provided, permissions are granted to the Data Catalog resources whose assigned LF-Tags
    #         match the expression body of the saved expression under the provided
    #           <code>ExpressionName</code>.</p>
    #   @return [String]
    class LFTagPolicyResource < Struct.new(
      :catalog_id,
      :resource_type,
      :expression,
      :expression_name,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:expression] = [] unless options.key?(:expression)
        super
      end
    end

    # <p>A single principal-resource pair that has Lake Formation permissins enforced.</p>
    # @!attribute resource
    #   <p>A structure for the resource.</p>
    #   @return [Types::Resource]
    # @!attribute principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    # @!attribute last_modified
    #   <p>The last modified date and time of the record.</p>
    #   @return [Time]
    # @!attribute last_updated_by
    #   <p>The user who updated the record.</p>
    #   @return [String]
    class LakeFormationOptInsInfo < Struct.new(
      :resource,
      :principal,
      :condition,
      :last_modified,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute table
    #   <p>A table in the Glue Data Catalog.</p>
    #   @return [Types::TableResource]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #   @return [Integer]
    class ListDataCellsFilterRequest < Struct.new(
      :table,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_cells_filters
    #   <p>A list of <code>DataCellFilter</code> structures.</p>
    #   @return [Array<Types::DataCellsFilter>]
    # @!attribute next_token
    #   <p>A continuation token, if not all requested data cell filters have been returned.</p>
    #   @return [String]
    class ListDataCellsFilterResponse < Struct.new(
      :data_cells_filters,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class ListLFTagExpressionsRequest < Struct.new(
      :catalog_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lf_tag_expressions
    #   <p>Logical expressions composed of one more LF-Tag key-value pairs.</p>
    #   @return [Array<Types::LFTagExpression>]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class ListLFTagExpressionsResponse < Struct.new(
      :lf_tag_expressions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute resource_share_type
    #   <p>If resource share type is <code>ALL</code>, returns both in-account LF-tags and shared LF-tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share LF-tags that the requester can view. If no resource share type is passed, lists LF-tags in the given catalog ID that the requester has permission to view.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class ListLFTagsRequest < Struct.new(
      :catalog_id,
      :resource_share_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lf_tags
    #   <p>A list of LF-tags that the requested has permission to view.</p>
    #   @return [Array<Types::LFTagPair>]
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #   @return [String]
    class ListLFTagsResponse < Struct.new(
      :lf_tags,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute principal
    #   <p>The Lake Formation principal. Supported principals are IAM users
    #         or IAM roles.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>A structure for the resource.</p>
    #   @return [Types::Resource]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class ListLakeFormationOptInsRequest < Struct.new(
      :principal,
      :resource,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lake_formation_opt_ins_info_list
    #   <p>A list of principal-resource pairs that have Lake Formation permissins enforced.</p>
    #   @return [Array<Types::LakeFormationOptInsInfo>]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class ListLakeFormationOptInsResponse < Struct.new(
      :lake_formation_opt_ins_info_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute principal
    #   <p>Specifies a principal to filter the permissions returned.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource_type
    #   <p>Specifies a resource type to filter the permissions returned.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>A resource where you will get a list of the principal permissions.</p>
    #            <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>
    #   @return [Types::Resource]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute include_related
    #   <p>Indicates that related permissions should be included in the results.</p>
    #   @return [String]
    class ListPermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource_type,
      :resource,
      :next_token,
      :max_results,
      :include_related,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute principal_resource_permissions
    #   <p>A list of principals and their permissions on the resource for the specified principal and resource types.</p>
    #   @return [Array<Types::PrincipalResourcePermissions>]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    class ListPermissionsResponse < Struct.new(
      :principal_resource_permissions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter_condition_list
    #   <p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>
    #   @return [Array<Types::FilterCondition>]
    # @!attribute max_results
    #   <p>The maximum number of resource results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve these resources.</p>
    #   @return [String]
    class ListResourcesRequest < Struct.new(
      :filter_condition_list,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_info_list
    #   <p>A summary of the data lake resources.</p>
    #   @return [Array<Types::ResourceInfo>]
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve these resources.</p>
    #   @return [String]
    class ListResourcesResponse < Struct.new(
      :resource_info_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Name of the database where the table is present.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Name of the table.</p>
    #   @return [String]
    # @!attribute storage_optimizer_type
    #   <p>The specific type of storage optimizers to list. The supported value is <code>compaction</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of storage optimizers to return on each call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #   @return [String]
    class ListTableStorageOptimizersRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :storage_optimizer_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute storage_optimizer_list
    #   <p>A list of the storage optimizers associated with a table.</p>
    #   @return [Array<Types::StorageOptimizer>]
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #   @return [String]
    class ListTableStorageOptimizersResponse < Struct.new(
      :storage_optimizer_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog for which to list transactions. Defaults to the account ID of the caller.</p>
    #   @return [String]
    # @!attribute status_filter
    #   <p> A filter indicating the status of transactions to return. Options are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is <code>ALL</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of transactions to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A continuation token if this is not the first call to retrieve transactions.</p>
    #   @return [String]
    class ListTransactionsRequest < Struct.new(
      :catalog_id,
      :status_filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transactions
    #   <p>A list of transactions. The record for each transaction is a <code>TransactionDescription</code> object.</p>
    #   @return [Array<Types::TransactionDescription>]
    # @!attribute next_token
    #   <p>A continuation token indicating whether additional data is available.</p>
    #   @return [String]
    class ListTransactionsResponse < Struct.new(
      :transactions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation timed out.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class OperationTimeoutException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OptimizerType
      COMPACTION = 'COMPACTION'
      GARBAGE_COLLECTION = 'GARBAGE_COLLECTION'
      GENERIC = 'ALL'
    end

    # <p>A structure containing a list of partition values and table objects.</p>
    # @!attribute partition_values
    #   <p>A list of partition values.</p>
    #   @return [Array<String>]
    # @!attribute objects
    #   <p>A list of table objects</p>
    #   @return [Array<Types::TableObject>]
    class PartitionObjects < Struct.new(
      :partition_values,
      :objects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a list of values defining partitions.</p>
    # @!attribute values
    #   <p>The list of partition values.</p>
    #   @return [Array<String>]
    class PartitionValueList < Struct.new(
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Permission
      ALL = 'ALL'
      SELECT = 'SELECT'
      ALTER = 'ALTER'
      DROP = 'DROP'
      DELETE = 'DELETE'
      INSERT = 'INSERT'
      DESCRIBE = 'DESCRIBE'
      CREATE_DATABASE = 'CREATE_DATABASE'
      CREATE_TABLE = 'CREATE_TABLE'
      DATA_LOCATION_ACCESS = 'DATA_LOCATION_ACCESS'
      CREATE_LF_TAG = 'CREATE_LF_TAG'
      ASSOCIATE = 'ASSOCIATE'
      GRANT_WITH_LF_TAG_EXPRESSION = 'GRANT_WITH_LF_TAG_EXPRESSION'
      CREATE_LF_TAG_EXPRESSION = 'CREATE_LF_TAG_EXPRESSION'
      CREATE_CATALOG = 'CREATE_CATALOG'
      SUPER_USER = 'SUPER_USER'
    end

    module PermissionType
      COLUMN_PERMISSION = 'COLUMN_PERMISSION'
      CELL_FILTER_PERMISSION = 'CELL_FILTER_PERMISSION'
      NESTED_PERMISSION = 'NESTED_PERMISSION'
      NESTED_CELL_PERMISSION = 'NESTED_CELL_PERMISSION'
    end

    # <p>The engine does not support filtering data based on the enforced permissions. For example, if you call the <code>GetTemporaryGlueTableCredentials</code> operation with <code>SupportedPermissionType</code> equal to <code>ColumnPermission</code>, but cell-level permissions exist on the table, this exception is thrown.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class PermissionTypeMismatchException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Statistics related to the processing of a query statement.</p>
    # @!attribute estimated_data_to_scan_bytes
    #   <p>An estimate of the data that was scanned in bytes.</p>
    #   @return [Integer]
    # @!attribute planning_time_millis
    #   <p>The time that it took to process the request.</p>
    #   @return [Integer]
    # @!attribute queue_time_millis
    #   <p>The time the request was in queue to be processed.</p>
    #   @return [Integer]
    # @!attribute work_units_generated_count
    #   <p>The number of work units generated.</p>
    #   @return [Integer]
    class PlanningStatistics < Struct.new(
      :estimated_data_to_scan_bytes,
      :planning_time_millis,
      :queue_time_millis,
      :work_units_generated_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:estimated_data_to_scan_bytes] = 0 unless options.key?(:estimated_data_to_scan_bytes)
        options[:planning_time_millis] = 0 unless options.key?(:planning_time_millis)
        options[:queue_time_millis] = 0 unless options.key?(:queue_time_millis)
        options[:work_units_generated_count] = 0 unless options.key?(:work_units_generated_count)
        super
      end
    end

    # <p>Permissions granted to a principal.</p>
    # @!attribute principal
    #   <p>The principal who is granted permissions.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute permissions
    #   <p>The permissions that are granted to the principal.</p>
    #   @return [Array<String>]
    class PrincipalPermissions < Struct.new(
      :principal,
      :permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The permissions granted or revoked on a resource.</p>
    # @!attribute principal
    #   <p>The Data Lake principal to be granted or revoked permissions.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>The resource where permissions are to be granted or revoked.</p>
    #   @return [Types::Resource]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    # @!attribute permissions
    #   <p>The permissions to be granted or revoked on the resource.</p>
    #   @return [Array<String>]
    # @!attribute permissions_with_grant_option
    #   <p>Indicates whether to grant the ability to grant permissions (as a subset of permissions granted).</p>
    #   @return [Array<String>]
    # @!attribute additional_details
    #   <p>This attribute can be used to return any additional details of <code>PrincipalResourcePermissions</code>. Currently returns only as a RAM resource share ARN.</p>
    #   @return [Types::DetailsMap]
    # @!attribute last_updated
    #   <p>The date and time when the resource was last updated.</p>
    #   @return [Time]
    # @!attribute last_updated_by
    #   <p>The user who updated the record.</p>
    #   @return [String]
    class PrincipalResourcePermissions < Struct.new(
      :principal,
      :resource,
      :condition,
      :permissions,
      :permissions_with_grant_option,
      :additional_details,
      :last_updated,
      :last_updated_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute data_lake_settings
    #   <p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>
    #   @return [Types::DataLakeSettings]
    class PutDataLakeSettingsRequest < Struct.new(
      :catalog_id,
      :data_lake_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutDataLakeSettingsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing information about the query plan.</p>
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition in question resides. If none is provided, the Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database containing the table.</p>
    #   @return [String]
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #   @return [Time]
    # @!attribute query_parameters
    #   <p>A map consisting of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the table contents. If this transaction is not committed, the read will be treated as part of that transaction and will see its writes. If this transaction has aborted, an error will be returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>
    #   @return [String]
    class QueryPlanningContext < Struct.new(
      :catalog_id,
      :database_name,
      :query_as_of_time,
      :query_parameters,
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure used as a protocol between query engines and Lake Formation or Glue. Contains both a Lake Formation generated authorization identifier and information from the request's authorization context.</p>
    # @!attribute query_id
    #   <p>A unique identifier generated by the query engine for the query.</p>
    #   @return [String]
    # @!attribute query_start_time
    #   <p>A timestamp provided by the query engine for when the query started.</p>
    #   @return [Time]
    # @!attribute cluster_id
    #   <p>An identifier string for the consumer cluster.</p>
    #   @return [String]
    # @!attribute query_authorization_id
    #   <p>A cryptographically generated query identifier generated by Glue or Lake Formation.</p>
    #   @return [String]
    # @!attribute additional_context
    #   <p>An opaque string-string map passed by the query engine.</p>
    #   @return [Hash<String, String>]
    class QuerySessionContext < Struct.new(
      :query_id,
      :query_start_time,
      :cluster_id,
      :query_authorization_id,
      :additional_context,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QueryStateString
      PENDING = 'PENDING'
      WORKUNITS_AVAILABLE = 'WORKUNITS_AVAILABLE'
      ERROR = 'ERROR'
      FINISHED = 'FINISHED'
      EXPIRED = 'EXPIRED'
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>
    #   @return [String]
    # @!attribute use_service_linked_role
    #   <p>Designates an Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html">Using Service-Linked Roles for Lake Formation</a>.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The identifier for the role that registers the resource.</p>
    #   @return [String]
    # @!attribute with_federation
    #   <p>Whether or not the resource is a federated resource.</p>
    #   @return [Boolean]
    # @!attribute hybrid_access_enabled
    #   <p>
    #       Specifies whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.
    #     </p>
    #   @return [Boolean]
    # @!attribute with_privileged_access
    #   <p>Grants the calling principal the permissions to perform all supported Lake Formation operations on the registered data location. </p>
    #   @return [Boolean]
    class RegisterResourceRequest < Struct.new(
      :resource_arn,
      :use_service_linked_role,
      :role_arn,
      :with_federation,
      :hybrid_access_enabled,
      :with_privileged_access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RegisterResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute resource
    #   <p>The database, table, or column resource where you want to remove an LF-tag.</p>
    #   @return [Types::Resource]
    # @!attribute lf_tags
    #   <p>The LF-tags to be removed from the resource.</p>
    #   @return [Array<Types::LFTagPair>]
    class RemoveLFTagsFromResourceRequest < Struct.new(
      :catalog_id,
      :resource,
      :lf_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to untag a resource.</p>
    #   @return [Array<Types::LFTagError>]
    class RemoveLFTagsFromResourceResponse < Struct.new(
      :failures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the resource.</p>
    # @!attribute catalog
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [Types::CatalogResource]
    # @!attribute database
    #   <p>The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. </p>
    #   @return [Types::DatabaseResource]
    # @!attribute table
    #   <p>The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>
    #   @return [Types::TableResource]
    # @!attribute table_with_columns
    #   <p>The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.</p>
    #   @return [Types::TableWithColumnsResource]
    # @!attribute data_location
    #   <p>The location of an Amazon S3 path where permissions are granted or revoked. </p>
    #   @return [Types::DataLocationResource]
    # @!attribute data_cells_filter
    #   <p>A data cell filter.</p>
    #   @return [Types::DataCellsFilterResource]
    # @!attribute lf_tag
    #   <p>The LF-tag key and values attached to a resource.</p>
    #   @return [Types::LFTagKeyResource]
    # @!attribute lf_tag_policy
    #   <p>A list of LF-tag conditions or saved LF-Tag expressions that define a resource's LF-tag policy.</p>
    #   @return [Types::LFTagPolicyResource]
    # @!attribute lf_tag_expression
    #   <p>LF-Tag expression resource. A logical expression composed of one or more LF-Tag key:value pairs.</p>
    #   @return [Types::LFTagExpressionResource]
    class Resource < Struct.new(
      :catalog,
      :database,
      :table,
      :table_with_columns,
      :data_location,
      :data_cells_filter,
      :lf_tag,
      :lf_tag_policy,
      :lf_tag_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing information about an Lake Formation resource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role that registered a resource.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time the resource was last modified.</p>
    #   @return [Time]
    # @!attribute with_federation
    #   <p>Whether or not the resource is a federated resource.</p>
    #   @return [Boolean]
    # @!attribute hybrid_access_enabled
    #   <p>
    #         Indicates whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.
    #       </p>
    #   @return [Boolean]
    # @!attribute with_privileged_access
    #   <p>Grants the calling principal the permissions to perform all supported Lake Formation operations on the registered data location. </p>
    #   @return [Boolean]
    class ResourceInfo < Struct.new(
      :resource_arn,
      :role_arn,
      :last_modified,
      :with_federation,
      :hybrid_access_enabled,
      :with_privileged_access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error related to a resource which is not ready for a transaction.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ResourceNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource numerical limit was exceeded.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ResourceNumberLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceShareType
      FOREIGN = 'FOREIGN'
      ALL = 'ALL'
    end

    module ResourceType
      DATABASE = 'DATABASE'
      TABLE = 'TABLE'
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal to be revoked permissions on the resource.</p>
    #   @return [Types::DataLakePrincipal]
    # @!attribute resource
    #   <p>The resource to which permissions are to be revoked.</p>
    #   @return [Types::Resource]
    # @!attribute permissions
    #   <p>The permissions revoked to the principal on the resource. For information about permissions, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
    #         and Access Control to Metadata and Data</a>.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>A Lake Formation condition, which applies to permissions and opt-ins that contain an expression.</p>
    #   @return [Types::Condition]
    # @!attribute permissions_with_grant_option
    #   <p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>
    #   @return [Array<String>]
    class RevokePermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource,
      :permissions,
      :condition,
      :permissions_with_grant_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RevokePermissionsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A PartiQL predicate.</p>
    # @!attribute filter_expression
    #   <p>A filter expression.</p>
    #   @return [String]
    # @!attribute all_rows_wildcard
    #   <p>A wildcard for all rows.</p>
    #   @return [Types::AllRowsWildcard]
    class RowFilter < Struct.new(
      :filter_expression,
      :all_rows_wildcard,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>
    #   @return [Array<Types::LFTag>]
    class SearchDatabasesByLFTagsRequest < Struct.new(
      :next_token,
      :max_results,
      :catalog_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #   @return [String]
    # @!attribute database_list
    #   <p>A list of databases that meet the LF-tag conditions.</p>
    #   @return [Array<Types::TaggedDatabase>]
    class SearchDatabasesByLFTagsResponse < Struct.new(
      :next_token,
      :database_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>
    #   @return [Array<Types::LFTag>]
    class SearchTablesByLFTagsRequest < Struct.new(
      :next_token,
      :max_results,
      :catalog_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last. On the first run, if you include a not null (a value) token you can get empty pages.</p>
    #   @return [String]
    # @!attribute table_list
    #   <p>A list of tables that meet the LF-tag conditions.</p>
    #   @return [Array<Types::TaggedTable>]
    class SearchTablesByLFTagsResponse < Struct.new(
      :next_token,
      :table_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_planning_context
    #   <p>A structure containing information about the query plan.</p>
    #   @return [Types::QueryPlanningContext]
    # @!attribute query_string
    #   <p>A PartiQL query statement used as an input to the planner service.</p>
    #   @return [String]
    class StartQueryPlanningRequest < Struct.new(
      :query_planning_context,
      :query_string,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for the output.</p>
    # @!attribute query_id
    #   <p>The ID of the plan query operation can be used to fetch the actual work unit descriptors that are produced as the result of the operation. The ID is also used to get the query state and as an input to the <code>Execute</code> operation.</p>
    #   @return [String]
    class StartQueryPlanningResponse < Struct.new(
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_type
    #   <p>Indicates whether this transaction should be read only or read and write. Writes made using a read-only transaction ID will be rejected. Read-only transactions do not need to be committed. </p>
    #   @return [String]
    class StartTransactionRequest < Struct.new(
      :transaction_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_id
    #   <p>An opaque identifier for the transaction.</p>
    #   @return [String]
    class StartTransactionResponse < Struct.new(
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error related to statistics not being ready.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class StatisticsNotReadyYetException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure describing the configuration and details of a storage optimizer.</p>
    # @!attribute storage_optimizer_type
    #   <p>The specific type of storage optimizer. The supported value is <code>compaction</code>.</p>
    #   @return [String]
    # @!attribute config
    #   <p>A map of the storage optimizer configuration. Currently contains only one key-value pair: <code>is_enabled</code> indicates true or false for acceleration.</p>
    #   @return [Hash<String, String>]
    # @!attribute error_message
    #   <p>A message that contains information about any error (if present).</p>
    #            <p>When an acceleration result has an enabled status, the error message is empty.</p>
    #            <p>When an acceleration result has a disabled status, the message describes an error or simply indicates "disabled by the user".</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>A message that contains information about any warnings (if present).</p>
    #   @return [String]
    # @!attribute last_run_details
    #   <p>When an acceleration result has an enabled status, contains the details of the last job run.</p>
    #   @return [String]
    class StorageOptimizer < Struct.new(
      :storage_optimizer_type,
      :config,
      :error_message,
      :warnings,
      :last_run_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the details of a governed table.</p>
    # @!attribute uri
    #   <p>The Amazon S3 location of the object.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of the Amazon S3 object in bytes.</p>
    #   @return [Integer]
    class TableObject < Struct.new(
      :uri,
      :e_tag,
      :size,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        super
      end
    end

    # <p>A structure for the table object. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_wildcard
    #   <p>A wildcard object representing every table under a database.</p>
    #            <p>At least one of <code>TableResource$Name</code> or <code>TableResource$TableWildcard</code> is required.</p>
    #   @return [Types::TableWildcard]
    class TableResource < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :table_wildcard,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A wildcard object representing every table under a database.</p>
    class TableWildcard < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure for a table with columns object. This object is only used when granting a SELECT permission.</p>
    #          <p>This object must take a value for at least one of <code>ColumnsNames</code>, <code>ColumnsIndexes</code>, or <code>ColumnsWildcard</code>.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>
    #   @return [String]
    # @!attribute column_names
    #   <p>The list of column names for the table. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>
    #   @return [Array<String>]
    # @!attribute column_wildcard
    #   <p>A wildcard specified by a <code>ColumnWildcard</code> object. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>
    #   @return [Types::ColumnWildcard]
    class TableWithColumnsResource < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :column_names,
      :column_wildcard,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure describing a database resource with LF-tags.</p>
    # @!attribute database
    #   <p>A database that has LF-tags attached to it.</p>
    #   @return [Types::DatabaseResource]
    # @!attribute lf_tags
    #   <p>A list of LF-tags attached to the database.</p>
    #   @return [Array<Types::LFTagPair>]
    class TaggedDatabase < Struct.new(
      :database,
      :lf_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure describing a table resource with LF-tags.</p>
    # @!attribute table
    #   <p>A table that has LF-tags attached to it.</p>
    #   @return [Types::TableResource]
    # @!attribute lf_tag_on_database
    #   <p>A list of LF-tags attached to the database where the table resides.</p>
    #   @return [Array<Types::LFTagPair>]
    # @!attribute lf_tags_on_table
    #   <p>A list of LF-tags attached to the table.</p>
    #   @return [Array<Types::LFTagPair>]
    # @!attribute lf_tags_on_columns
    #   <p>A list of LF-tags attached to columns in the table.</p>
    #   @return [Array<Types::ColumnLFTag>]
    class TaggedTable < Struct.new(
      :table,
      :lf_tag_on_database,
      :lf_tags_on_table,
      :lf_tags_on_columns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error where the query request was throttled.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ThrottledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error related to a transaction that was cancelled.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class TransactionCanceledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error related to a transaction commit that was in progress.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class TransactionCommitInProgressException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an error where the specified transaction has already been committed and cannot be used for <code>UpdateTableObjects</code>.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class TransactionCommittedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a transaction.</p>
    # @!attribute transaction_id
    #   <p>The ID of the transaction.</p>
    #   @return [String]
    # @!attribute transaction_status
    #   <p>A status of ACTIVE, COMMITTED, or ABORTED.</p>
    #   @return [String]
    # @!attribute transaction_start_time
    #   <p>The time when the transaction started.</p>
    #   @return [Time]
    # @!attribute transaction_end_time
    #   <p>The time when the transaction committed or aborted, if it is not currently active.</p>
    #   @return [Time]
    class TransactionDescription < Struct.new(
      :transaction_id,
      :transaction_status,
      :transaction_start_time,
      :transaction_end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TransactionStatus
      ACTIVE = 'ACTIVE'
      COMMITTED = 'COMMITTED'
      ABORTED = 'ABORTED'
      COMMIT_IN_PROGRESS = 'COMMIT_IN_PROGRESS'
    end

    module TransactionStatusFilter
      ALL = 'ALL'
      COMPLETED = 'COMPLETED'
      ACTIVE = 'ACTIVE'
      COMMITTED = 'COMMITTED'
      ABORTED = 'ABORTED'
    end

    module TransactionType
      READ_AND_WRITE = 'READ_AND_WRITE'
      READ_ONLY = 'READ_ONLY'
    end

    # @!attribute table_data
    #   <p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>
    #   @return [Types::DataCellsFilter]
    class UpdateDataCellsFilterRequest < Struct.new(
      :table_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateDataCellsFilterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the LF-Tag expression.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description with information about the saved LF-Tag expression.</p>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>The LF-Tag expression body composed of one more LF-Tag key-value pairs.</p>
    #   @return [Array<Types::LFTag>]
    class UpdateLFTagExpressionRequest < Struct.new(
      :name,
      :description,
      :catalog_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateLFTagExpressionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag for which to add or delete values.</p>
    #   @return [String]
    # @!attribute tag_values_to_delete
    #   <p>A list of LF-tag values to delete from the LF-tag.</p>
    #   @return [Array<String>]
    # @!attribute tag_values_to_add
    #   <p>A list of LF-tag values to add from the LF-tag.</p>
    #   @return [Array<String>]
    class UpdateLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values_to_delete,
      :tag_values_to_add,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateLFTagResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the
    #            persistent metadata store. It contains database definitions, table definitions, view
    #            definitions, and other control information to manage your Lake Formation
    #            environment.</p>
    #   @return [String]
    # @!attribute share_recipients
    #   <p>A list of Amazon Web Services account IDs or Amazon Web Services organization/organizational unit ARNs that
    #            are allowed to access to access data managed by Lake Formation. </p>
    #            <p>If the <code>ShareRecipients</code> list includes valid values, then the resource share is updated with the principals you want to have access to the resources.</p>
    #            <p>If the <code>ShareRecipients</code> value is null, both the list of share recipients and
    #            the resource share remain unchanged.</p>
    #            <p>If the <code>ShareRecipients</code> value is an empty list, then the existing share
    #            recipients list will be cleared, and the resource share will be deleted.</p>
    #   @return [Array<Types::DataLakePrincipal>]
    # @!attribute application_status
    #   <p>Allows to enable or disable the IAM Identity Center connection.</p>
    #   @return [String]
    # @!attribute external_filtering
    #   <p>A list of the account IDs of Amazon Web Services accounts of third-party applications
    #            that are allowed to access data managed by Lake Formation.</p>
    #   @return [Types::ExternalFilteringConfiguration]
    class UpdateLakeFormationIdentityCenterConfigurationRequest < Struct.new(
      :catalog_id,
      :share_recipients,
      :application_status,
      :external_filtering,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateLakeFormationIdentityCenterConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The new role to use for the given resource registered in Lake Formation.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute with_federation
    #   <p>Whether or not the resource is a federated resource.</p>
    #   @return [Boolean]
    # @!attribute hybrid_access_enabled
    #   <p>
    #         Specifies whether the data access of tables pointing to the location can be managed by both Lake Formation permissions as well as Amazon S3 bucket policies.
    #       </p>
    #   @return [Boolean]
    class UpdateResourceRequest < Struct.new(
      :role_arn,
      :resource_arn,
      :with_federation,
      :hybrid_access_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog containing the governed table to update. Defaults to the caller’s account ID.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database containing the governed table to update.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The governed table to update.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction at which to do the write.</p>
    #   @return [String]
    # @!attribute write_operations
    #   <p>A list of <code>WriteOperation</code> objects that define an object to add to or delete from the manifest for a governed table.</p>
    #   @return [Array<Types::WriteOperation>]
    class UpdateTableObjectsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :write_operations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateTableObjectsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Name of the database where the table is present.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Name of the table for which to enable the storage optimizer.</p>
    #   @return [String]
    # @!attribute storage_optimizer_config
    #   <p>Name of the configuration for the storage optimizer.</p>
    #   @return [Hash<String, Hash<String, String>>]
    class UpdateTableStorageOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :storage_optimizer_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute result
    #   <p>A response indicating the success of failure of the operation.</p>
    #   @return [String]
    class UpdateTableStorageOptimizerResponse < Struct.new(
      :result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that defines an Amazon S3 object to be deleted if a transaction cancels, provided that 
    #       <code>VirtualPut</code> was called before writing the object.</p>
    # @!attribute uri
    #   <p>The path to the Amazon S3 object. Must start with s3://</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The ETag of the Amazon S3 object.</p>
    #   @return [String]
    class VirtualObject < Struct.new(
      :uri,
      :e_tag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the valid range of work unit IDs for querying the execution service.</p>
    # @!attribute work_unit_id_max
    #   <p>Defines the maximum work unit ID in the range. The maximum value is inclusive.</p>
    #   @return [Integer]
    # @!attribute work_unit_id_min
    #   <p>Defines the minimum work unit ID in the range.</p>
    #   @return [Integer]
    # @!attribute work_unit_token
    #   <p>A work token used to query the execution service.</p>
    #   @return [String]
    class WorkUnitRange < Struct.new(
      :work_unit_id_max,
      :work_unit_id_min,
      :work_unit_token,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:work_unit_id_max] = 0 unless options.key?(:work_unit_id_max)
        options[:work_unit_id_min] = 0 unless options.key?(:work_unit_id_min)
        super
      end
    end

    # <p>Contains details about an error related to work units not being ready.</p>
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class WorkUnitsNotReadyYetException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines an object to add to or delete from a governed table.</p>
    # @!attribute add_object
    #   <p>A new object to add to the governed table.</p>
    #   @return [Types::AddObjectInput]
    # @!attribute delete_object
    #   <p>An object to delete from the governed table.</p>
    #   @return [Types::DeleteObjectInput]
    class WriteOperation < Struct.new(
      :add_object,
      :delete_object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
