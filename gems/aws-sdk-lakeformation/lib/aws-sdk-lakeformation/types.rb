# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LakeFormation
  module Types

    # Access to a resource was denied.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The database, table, or column resource to which to attach an
    #   LF-tag.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] lf_tags
    #   The LF-tags to attach to the resource.
    #   @return [Array<Types::LFTagPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AddLFTagsToResourceRequest AWS API Documentation
    #
    class AddLFTagsToResourceRequest < Struct.new(
      :catalog_id,
      :resource,
      :lf_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   A list of failures to tag the resource.
    #   @return [Array<Types::LFTagError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AddLFTagsToResourceResponse AWS API Documentation
    #
    class AddLFTagsToResourceResponse < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # A new object to add to the governed table.
    #
    # @!attribute [rw] uri
    #   The Amazon S3 location of the object.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The Amazon S3 ETag of the object. Returned by `GetTableObjects` for
    #   validation and used to identify changes to the underlying data.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the Amazon S3 object in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] partition_values
    #   A list of partition values for the object. A value must be specified
    #   for each partition key associated with the table.
    #
    #   The supported data types are integer, long, date(yyyy-MM-dd),
    #   timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string
    #   and decimal.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AddObjectInput AWS API Documentation
    #
    class AddObjectInput < Struct.new(
      :uri,
      :etag,
      :size,
      :partition_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that you pass to indicate you want all rows in a filter.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AllRowsWildcard AWS API Documentation
    #
    class AllRowsWildcard < Aws::EmptyStructure; end

    # A resource to be created or added already exists.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_assertion
    #   A SAML assertion consisting of an assertion statement for the user
    #   who needs temporary credentials. This must match the SAML assertion
    #   that was issued to IAM. This must be Base64 encoded.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role that represents an IAM principal whose scope down policy
    #   allows it to call credential vending APIs such as
    #   `GetTemporaryTableCredentials`. The caller must also have
    #   iam:PassRole permission on this role.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The Amazon Resource Name (ARN) of the SAML provider in IAM that
    #   describes the IdP.
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The time period, between 900 and 43,200 seconds, for the timeout of
    #   the temporary credentials.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AssumeDecoratedRoleWithSAMLRequest AWS API Documentation
    #
    class AssumeDecoratedRoleWithSAMLRequest < Struct.new(
      :saml_assertion,
      :role_arn,
      :principal_arn,
      :duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_key_id
    #   The access key ID for the temporary credentials. (The access key
    #   consists of an access key ID and a secret key).
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret key for the temporary credentials. (The access key
    #   consists of an access key ID and a secret key).
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The date and time when the temporary credentials expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AssumeDecoratedRoleWithSAMLResponse AWS API Documentation
    #
    class AssumeDecoratedRoleWithSAMLResponse < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used to include auditing information on the privileged
    # API.
    #
    # @!attribute [rw] additional_audit_context
    #   The filter engine can populate the 'AdditionalAuditContext'
    #   information with the request ID for you to track. This information
    #   will be displayed in CloudTrail log in your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/AuditContext AWS API Documentation
    #
    class AuditContext < Struct.new(
      :additional_audit_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of up to 20 entries for resource permissions to be granted by
    #   batch operation to the principal.
    #   @return [Array<Types::BatchPermissionsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchGrantPermissionsRequest AWS API Documentation
    #
    class BatchGrantPermissionsRequest < Struct.new(
      :catalog_id,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   A list of failures to grant permissions to the resources.
    #   @return [Array<Types::BatchPermissionsFailureEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchGrantPermissionsResponse AWS API Documentation
    #
    class BatchGrantPermissionsResponse < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of failures when performing a batch grant or batch revoke
    # operation.
    #
    # @!attribute [rw] request_entry
    #   An identifier for an entry of the batch request.
    #   @return [Types::BatchPermissionsRequestEntry]
    #
    # @!attribute [rw] error
    #   An error message that applies to the failure of the entry.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchPermissionsFailureEntry AWS API Documentation
    #
    class BatchPermissionsFailureEntry < Struct.new(
      :request_entry,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # A permission to a resource granted by batch operation to the
    # principal.
    #
    # @!attribute [rw] id
    #   A unique identifier for the batch permissions request entry.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal to be granted a permission.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] resource
    #   The resource to which the principal is to be granted a permission.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] permissions
    #   The permissions to be granted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permissions_with_grant_option
    #   Indicates if the option to pass permissions is granted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchPermissionsRequestEntry AWS API Documentation
    #
    class BatchPermissionsRequestEntry < Struct.new(
      :id,
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of up to 20 entries for resource permissions to be revoked by
    #   batch operation to the principal.
    #   @return [Array<Types::BatchPermissionsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchRevokePermissionsRequest AWS API Documentation
    #
    class BatchRevokePermissionsRequest < Struct.new(
      :catalog_id,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   A list of failures to revoke permissions to the resources.
    #   @return [Array<Types::BatchPermissionsFailureEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/BatchRevokePermissionsResponse AWS API Documentation
    #
    class BatchRevokePermissionsResponse < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   The transaction to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CancelTransactionRequest AWS API Documentation
    #
    class CancelTransactionRequest < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CancelTransactionResponse AWS API Documentation
    #
    class CancelTransactionResponse < Aws::EmptyStructure; end

    # A structure for the catalog object.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CatalogResource AWS API Documentation
    #
    class CatalogResource < Aws::EmptyStructure; end

    # A structure containing the name of a column resource and the LF-tags
    # attached to it.
    #
    # @!attribute [rw] name
    #   The name of a column resource.
    #   @return [String]
    #
    # @!attribute [rw] lf_tags
    #   The LF-tags attached to a column resource.
    #   @return [Array<Types::LFTagPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ColumnLFTag AWS API Documentation
    #
    class ColumnLFTag < Struct.new(
      :name,
      :lf_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wildcard object, consisting of an optional list of excluded column
    # names or indexes.
    #
    # @!attribute [rw] excluded_column_names
    #   Excludes column names. Any column with this name will be excluded.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ColumnWildcard AWS API Documentation
    #
    class ColumnWildcard < Struct.new(
      :excluded_column_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   The transaction to commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CommitTransactionRequest AWS API Documentation
    #
    class CommitTransactionRequest < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_status
    #   The status of the transaction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CommitTransactionResponse AWS API Documentation
    #
    class CommitTransactionResponse < Struct.new(
      :transaction_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two processes are trying to modify a resource simultaneously.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_data
    #   A `DataCellsFilter` structure containing information about the data
    #   cells filter.
    #   @return [Types::DataCellsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CreateDataCellsFilterRequest AWS API Documentation
    #
    class CreateDataCellsFilterRequest < Struct.new(
      :table_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CreateDataCellsFilterResponse AWS API Documentation
    #
    class CreateDataCellsFilterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of possible values an attribute can take.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CreateLFTagRequest AWS API Documentation
    #
    class CreateLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CreateLFTagResponse AWS API Documentation
    #
    class CreateLFTagResponse < Aws::EmptyStructure; end

    # A structure that describes certain columns on certain rows.
    #
    # @!attribute [rw] table_catalog_id
    #   The ID of the catalog to which the table belongs.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   A database in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   A table in the database.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name given by the user to the data filter cell.
    #   @return [String]
    #
    # @!attribute [rw] row_filter
    #   A PartiQL predicate.
    #   @return [Types::RowFilter]
    #
    # @!attribute [rw] column_names
    #   A list of column names and/or nested column attributes. When
    #   specifying nested attributes, use a qualified dot (.) delimited
    #   format such as "address"."zip". Nested attributes within this
    #   list may not exceed a depth of 5.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_wildcard
    #   A wildcard with exclusions.
    #
    #   You must specify either a `ColumnNames` list or the
    #   `ColumnWildCard`.
    #   @return [Types::ColumnWildcard]
    #
    # @!attribute [rw] version_id
    #   The ID of the data cells filter version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataCellsFilter AWS API Documentation
    #
    class DataCellsFilter < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      :row_filter,
      :column_names,
      :column_wildcard,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for a data cells filter resource.
    #
    # @!attribute [rw] table_catalog_id
    #   The ID of the catalog to which the table belongs.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   A database in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data cells filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataCellsFilterResource AWS API Documentation
    #
    class DataCellsFilterResource < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lake Formation principal. Supported principals are IAM users or
    # IAM roles.
    #
    # @!attribute [rw] data_lake_principal_identifier
    #   An identifier for the Lake Formation principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataLakePrincipal AWS API Documentation
    #
    class DataLakePrincipal < Struct.new(
      :data_lake_principal_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing a list of Lake Formation principals
    # designated as data lake administrators and lists of principal
    # permission entries for default create database and default create
    # table permissions.
    #
    # @!attribute [rw] data_lake_admins
    #   A list of Lake Formation principals. Supported principals are IAM
    #   users or IAM roles.
    #   @return [Array<Types::DataLakePrincipal>]
    #
    # @!attribute [rw] read_only_admins
    #   A list of Lake Formation principals with only view access to the
    #   resources, without the ability to make changes. Supported principals
    #   are IAM users or IAM roles.
    #   @return [Array<Types::DataLakePrincipal>]
    #
    # @!attribute [rw] create_database_default_permissions
    #   Specifies whether access control on newly created database is
    #   managed by Lake Formation permissions or exclusively by IAM
    #   permissions.
    #
    #   A null value indicates access control by Lake Formation permissions.
    #   A value that assigns ALL to IAM\_ALLOWED\_PRINCIPALS indicates
    #   access control by IAM permissions. This is referred to as the
    #   setting "Use only IAM access control," and is for backward
    #   compatibility with the Glue permission model implemented by IAM
    #   permissions.
    #
    #   The only permitted values are an empty array or an array that
    #   contains a single JSON object that grants ALL to
    #   IAM\_ALLOWED\_PRINCIPALS.
    #
    #   For more information, see [Changing the Default Security Settings
    #   for Your Data Lake][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] create_table_default_permissions
    #   Specifies whether access control on newly created table is managed
    #   by Lake Formation permissions or exclusively by IAM permissions.
    #
    #   A null value indicates access control by Lake Formation permissions.
    #   A value that assigns ALL to IAM\_ALLOWED\_PRINCIPALS indicates
    #   access control by IAM permissions. This is referred to as the
    #   setting "Use only IAM access control," and is for backward
    #   compatibility with the Glue permission model implemented by IAM
    #   permissions.
    #
    #   The only permitted values are an empty array or an array that
    #   contains a single JSON object that grants ALL to
    #   IAM\_ALLOWED\_PRINCIPALS.
    #
    #   For more information, see [Changing the Default Security Settings
    #   for Your Data Lake][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] parameters
    #   A key-value map that provides an additional configuration on your
    #   data lake. CrossAccountVersion is the key you can configure in the
    #   Parameters field. Accepted values for the CrossAccountVersion key
    #   are 1, 2, and 3.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] trusted_resource_owners
    #   A list of the resource-owning account IDs that the caller's account
    #   can use to share their user access details (user ARNs). The user
    #   ARNs can be logged in the resource owner's CloudTrail log.
    #
    #   You may want to specify this property when you are in a high-trust
    #   boundary, such as the same team or company.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_external_data_filtering
    #   Whether to allow Amazon EMR clusters to access data managed by Lake
    #   Formation.
    #
    #   If true, you allow Amazon EMR clusters to access data in Amazon S3
    #   locations that are registered with Lake Formation.
    #
    #   If false or null, no Amazon EMR clusters will be able to access data
    #   in Amazon S3 locations that are registered with Lake Formation.
    #
    #   For more information, see [(Optional) Allow external data
    #   filtering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/initial-LF-setup.html#external-data-filter
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_full_table_external_data_access
    #   Whether to allow a third-party query engine to get data access
    #   credentials without session tags when a caller has full data access
    #   permissions.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_data_filtering_allow_list
    #   A list of the account IDs of Amazon Web Services accounts with
    #   Amazon EMR clusters that are to perform data filtering.&gt;
    #   @return [Array<Types::DataLakePrincipal>]
    #
    # @!attribute [rw] authorized_session_tag_value_list
    #   Lake Formation relies on a privileged process secured by Amazon EMR
    #   or the third party integrator to tag the user's role while assuming
    #   it. Lake Formation will publish the acceptable key-value pair, for
    #   example key = "LakeFormationTrustedCaller" and value = "TRUE"
    #   and the third party integrator must properly tag the temporary
    #   security credentials that will be used to call Lake Formation's
    #   administrative APIs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataLakeSettings AWS API Documentation
    #
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
      :authorized_session_tag_value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for a data location object where permissions are granted
    # or revoked.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog where the location is registered
    #   with Lake Formation. By default, it is the account ID of the caller.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the data
    #   location resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataLocationResource AWS API Documentation
    #
    class DataLocationResource < Struct.new(
      :catalog_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the database object.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, it is the account
    #   ID of the caller.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database resource. Unique to the Data Catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DatabaseResource AWS API Documentation
    #
    class DatabaseResource < Struct.new(
      :catalog_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_catalog_id
    #   The ID of the catalog to which the table belongs.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   A database in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   A table in the database.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name given by the user to the data filter cell.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteDataCellsFilterRequest AWS API Documentation
    #
    class DeleteDataCellsFilterRequest < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteDataCellsFilterResponse AWS API Documentation
    #
    class DeleteDataCellsFilterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteLFTagRequest AWS API Documentation
    #
    class DeleteLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteLFTagResponse AWS API Documentation
    #
    class DeleteLFTagResponse < Aws::EmptyStructure; end

    # An object to delete from the governed table.
    #
    # @!attribute [rw] uri
    #   The Amazon S3 location of the object to delete.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The Amazon S3 ETag of the object. Returned by `GetTableObjects` for
    #   validation and used to identify changes to the underlying data.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   A list of partition values for the object. A value must be specified
    #   for each partition key associated with the governed table.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteObjectInput AWS API Documentation
    #
    class DeleteObjectInput < Struct.new(
      :uri,
      :etag,
      :partition_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Glue data catalog that contains the governed table. Defaults to
    #   the current account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database that contains the governed table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the governed table.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   ID of the transaction that the writes occur in.
    #   @return [String]
    #
    # @!attribute [rw] objects
    #   A list of VirtualObject structures, which indicates the Amazon S3
    #   objects to be deleted if the transaction cancels.
    #   @return [Array<Types::VirtualObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteObjectsOnCancelRequest AWS API Documentation
    #
    class DeleteObjectsOnCancelRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :objects)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeleteObjectsOnCancelResponse AWS API Documentation
    #
    class DeleteObjectsOnCancelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeregisterResourceRequest AWS API Documentation
    #
    class DeregisterResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DeregisterResourceResponse AWS API Documentation
    #
    class DeregisterResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeResourceRequest AWS API Documentation
    #
    class DescribeResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_info
    #   A structure containing information about an Lake Formation resource.
    #   @return [Types::ResourceInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeResourceResponse AWS API Documentation
    #
    class DescribeResourceResponse < Struct.new(
      :resource_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   The transaction for which to return status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeTransactionRequest AWS API Documentation
    #
    class DescribeTransactionRequest < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_description
    #   Returns a `TransactionDescription` object containing information
    #   about the transaction.
    #   @return [Types::TransactionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeTransactionResponse AWS API Documentation
    #
    class DescribeTransactionResponse < Struct.new(
      :transaction_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the additional details to be returned in the
    # `AdditionalDetails` attribute of `PrincipalResourcePermissions`.
    #
    # If a catalog resource is shared through Resource Access Manager (RAM),
    # then there will exist a corresponding RAM resource share ARN.
    #
    # @!attribute [rw] resource_share
    #   A resource share ARN for a catalog resource shared through RAM.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DetailsMap AWS API Documentation
    #
    class DetailsMap < Struct.new(
      :resource_share)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified entity does not exist.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/EntityNotFoundException AWS API Documentation
    #
    class EntityNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error.
    #
    # @!attribute [rw] error_code
    #   The code associated with this error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics related to the processing of a query statement.
    #
    # @!attribute [rw] average_execution_time_millis
    #   The average time the request took to be executed.
    #   @return [Integer]
    #
    # @!attribute [rw] data_scanned_bytes
    #   The amount of data that was scanned in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] work_units_executed_count
    #   The number of work units executed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ExecutionStatistics AWS API Documentation
    #
    class ExecutionStatistics < Struct.new(
      :average_execution_time_millis,
      :data_scanned_bytes,
      :work_units_executed_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error where the query request expired.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ExpiredException AWS API Documentation
    #
    class ExpiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   The transaction to extend.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ExtendTransactionRequest AWS API Documentation
    #
    class ExtendTransactionRequest < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ExtendTransactionResponse AWS API Documentation
    #
    class ExtendTransactionResponse < Aws::EmptyStructure; end

    # This structure describes the filtering of columns in a table based on
    # a filter condition.
    #
    # @!attribute [rw] field
    #   The field to filter in the filter condition.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The comparison operator used in the filter condition.
    #   @return [String]
    #
    # @!attribute [rw] string_value_list
    #   A string with values used in evaluating the filter condition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/FilterCondition AWS API Documentation
    #
    class FilterCondition < Struct.new(
      :field,
      :comparison_operator,
      :string_value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_catalog_id
    #   The ID of the catalog to which the table belongs.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   A database in the Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   A table in the database.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name given by the user to the data filter cell.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataCellsFilterRequest AWS API Documentation
    #
    class GetDataCellsFilterRequest < Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_cells_filter
    #   A structure that describes certain columns on certain rows.
    #   @return [Types::DataCellsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataCellsFilterResponse AWS API Documentation
    #
    class GetDataCellsFilterResponse < Struct.new(
      :data_cells_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataLakeSettingsRequest AWS API Documentation
    #
    class GetDataLakeSettingsRequest < Struct.new(
      :catalog_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_lake_settings
    #   A structure representing a list of Lake Formation principals
    #   designated as data lake administrators.
    #   @return [Types::DataLakeSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetDataLakeSettingsResponse AWS API Documentation
    #
    class GetDataLakeSettingsResponse < Struct.new(
      :data_lake_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get permissions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetEffectivePermissionsForPathRequest AWS API Documentation
    #
    class GetEffectivePermissionsForPathRequest < Struct.new(
      :catalog_id,
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   A list of the permissions for the specified table or database
    #   resource located at the path in Amazon S3.
    #   @return [Array<Types::PrincipalResourcePermissions>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetEffectivePermissionsForPathResponse AWS API Documentation
    #
    class GetEffectivePermissionsForPathResponse < Struct.new(
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetLFTagRequest AWS API Documentation
    #
    class GetLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of possible values an attribute can take.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetLFTagResponse AWS API Documentation
    #
    class GetLFTagResponse < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the plan query operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetQueryStateRequest AWS API Documentation
    #
    class GetQueryStateRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the output.
    #
    # @!attribute [rw] error
    #   An error message when the operation fails.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of a query previously submitted. The possible states are:
    #
    #   * PENDING: the query is pending.
    #
    #   * WORKUNITS\_AVAILABLE: some work units are ready for retrieval and
    #     execution.
    #
    #   * FINISHED: the query planning finished successfully, and all work
    #     units are ready for retrieval and execution.
    #
    #   * ERROR: an error occurred with the query, such as an invalid query
    #     ID or a backend error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetQueryStateResponse AWS API Documentation
    #
    class GetQueryStateResponse < Struct.new(
      :error,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the plan query operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetQueryStatisticsRequest AWS API Documentation
    #
    class GetQueryStatisticsRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_statistics
    #   An `ExecutionStatistics` structure containing execution statistics.
    #   @return [Types::ExecutionStatistics]
    #
    # @!attribute [rw] planning_statistics
    #   A `PlanningStatistics` structure containing query planning
    #   statistics.
    #   @return [Types::PlanningStatistics]
    #
    # @!attribute [rw] query_submission_time
    #   The time that the query was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetQueryStatisticsResponse AWS API Documentation
    #
    class GetQueryStatisticsResponse < Struct.new(
      :execution_statistics,
      :planning_statistics,
      :query_submission_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The database, table, or column resource for which you want to return
    #   LF-tags.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] show_assigned_lf_tags
    #   Indicates whether to show the assigned LF-tags.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetResourceLFTagsRequest AWS API Documentation
    #
    class GetResourceLFTagsRequest < Struct.new(
      :catalog_id,
      :resource,
      :show_assigned_lf_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lf_tag_on_database
    #   A list of LF-tags applied to a database resource.
    #   @return [Array<Types::LFTagPair>]
    #
    # @!attribute [rw] lf_tags_on_table
    #   A list of LF-tags applied to a table resource.
    #   @return [Array<Types::LFTagPair>]
    #
    # @!attribute [rw] lf_tags_on_columns
    #   A list of LF-tags applied to a column resource.
    #   @return [Array<Types::ColumnLFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetResourceLFTagsResponse AWS API Documentation
    #
    class GetResourceLFTagsResponse < Struct.new(
      :lf_tag_on_database,
      :lf_tags_on_table,
      :lf_tags_on_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The catalog containing the governed table. Defaults to the caller’s
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database containing the governed table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The governed table for which to retrieve objects.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to read the governed table contents. If
    #   this transaction has aborted, an error is returned. If not set,
    #   defaults to the most recent committed transaction. Cannot be
    #   specified along with `QueryAsOfTime`.
    #   @return [String]
    #
    # @!attribute [rw] query_as_of_time
    #   The time as of when to read the governed table contents. If not set,
    #   the most recent transaction commit time is used. Cannot be specified
    #   along with `TransactionId`.
    #   @return [Time]
    #
    # @!attribute [rw] partition_predicate
    #   A predicate to filter the objects returned based on the partition
    #   keys defined in the governed table.
    #
    #   * The comparison operators supported are: =, &gt;, &lt;, &gt;=,
    #     &lt;=
    #
    #   * The logical operators supported are: AND
    #
    #   * The data types supported are integer, long, date(yyyy-MM-dd),
    #     timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string
    #     and decimal.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies how many values to return in a page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token if this is not the first call to retrieve these
    #   objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTableObjectsRequest AWS API Documentation
    #
    class GetTableObjectsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :query_as_of_time,
      :partition_predicate,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] objects
    #   A list of objects organized by partition keys.
    #   @return [Array<Types::PartitionObjects>]
    #
    # @!attribute [rw] next_token
    #   A continuation token indicating whether additional data is
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTableObjectsResponse AWS API Documentation
    #
    class GetTableObjectsResponse < Struct.new(
      :objects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The ARN of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   A list of partition values identifying a single partition.
    #   @return [Types::PartitionValueList]
    #
    # @!attribute [rw] permissions
    #   Filters the request based on the user having been granted a list of
    #   specified permissions on the requested resource(s).
    #   @return [Array<String>]
    #
    # @!attribute [rw] duration_seconds
    #   The time period, between 900 and 21,600 seconds, for the timeout of
    #   the temporary credentials.
    #   @return [Integer]
    #
    # @!attribute [rw] audit_context
    #   A structure representing context to access a resource (column names,
    #   query ID, etc).
    #   @return [Types::AuditContext]
    #
    # @!attribute [rw] supported_permission_types
    #   A list of supported permission types for the partition. Valid values
    #   are `COLUMN_PERMISSION` and `CELL_FILTER_PERMISSION`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTemporaryGluePartitionCredentialsRequest AWS API Documentation
    #
    class GetTemporaryGluePartitionCredentialsRequest < Struct.new(
      :table_arn,
      :partition,
      :permissions,
      :duration_seconds,
      :audit_context,
      :supported_permission_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_key_id
    #   The access key ID for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret key for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The date and time when the temporary credentials expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTemporaryGluePartitionCredentialsResponse AWS API Documentation
    #
    class GetTemporaryGluePartitionCredentialsResponse < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The ARN identifying a table in the Data Catalog for the temporary
    #   credentials request.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Filters the request based on the user having been granted a list of
    #   specified permissions on the requested resource(s).
    #   @return [Array<String>]
    #
    # @!attribute [rw] duration_seconds
    #   The time period, between 900 and 21,600 seconds, for the timeout of
    #   the temporary credentials.
    #   @return [Integer]
    #
    # @!attribute [rw] audit_context
    #   A structure representing context to access a resource (column names,
    #   query ID, etc).
    #   @return [Types::AuditContext]
    #
    # @!attribute [rw] supported_permission_types
    #   A list of supported permission types for the table. Valid values are
    #   `COLUMN_PERMISSION` and `CELL_FILTER_PERMISSION`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTemporaryGlueTableCredentialsRequest AWS API Documentation
    #
    class GetTemporaryGlueTableCredentialsRequest < Struct.new(
      :table_arn,
      :permissions,
      :duration_seconds,
      :audit_context,
      :supported_permission_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_key_id
    #   The access key ID for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret key for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The date and time when the temporary credentials expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetTemporaryGlueTableCredentialsResponse AWS API Documentation
    #
    class GetTemporaryGlueTableCredentialsResponse < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the plan query operation for which to get results.
    #   @return [String]
    #
    # @!attribute [rw] work_unit_id
    #   The work unit ID for which to get results. Value generated by
    #   enumerating `WorkUnitIdMin` to `WorkUnitIdMax` (inclusive) from the
    #   `WorkUnitRange` in the output of `GetWorkUnits`.
    #   @return [Integer]
    #
    # @!attribute [rw] work_unit_token
    #   A work token used to query the execution service. Token output from
    #   `GetWorkUnits`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetWorkUnitResultsRequest AWS API Documentation
    #
    class GetWorkUnitResultsRequest < Struct.new(
      :query_id,
      :work_unit_id,
      :work_unit_token)
      SENSITIVE = [:work_unit_token]
      include Aws::Structure
    end

    # A structure for the output.
    #
    # @!attribute [rw] result_stream
    #   Rows returned from the `GetWorkUnitResults` operation as a stream of
    #   Apache Arrow v1.0 messages.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetWorkUnitResultsResponse AWS API Documentation
    #
    class GetWorkUnitResultsResponse < Struct.new(
      :result_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The size of each page to get in the Amazon Web Services service
    #   call. This does not affect the number of items returned in the
    #   command's output. Setting a smaller page size results in more calls
    #   to the Amazon Web Services service, retrieving fewer items in each
    #   call. This can help prevent the Amazon Web Services service calls
    #   from timing out.
    #   @return [Integer]
    #
    # @!attribute [rw] query_id
    #   The ID of the plan query operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetWorkUnitsRequest AWS API Documentation
    #
    class GetWorkUnitsRequest < Struct.new(
      :next_token,
      :page_size,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the output.
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the plan query operation.
    #   @return [String]
    #
    # @!attribute [rw] work_unit_ranges
    #   A `WorkUnitRangeList` object that specifies the valid range of work
    #   unit IDs for querying the execution service.
    #   @return [Array<Types::WorkUnitRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GetWorkUnitsResponse AWS API Documentation
    #
    class GetWorkUnitsResponse < Struct.new(
      :next_token,
      :query_id,
      :work_unit_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # An encryption operation failed.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GlueEncryptionException AWS API Documentation
    #
    class GlueEncryptionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal to be granted the permissions on the resource.
    #   Supported principals are IAM users or IAM roles, and they are
    #   defined by their principal type and their ARN.
    #
    #   Note that if you define a resource with a particular ARN, then later
    #   delete, and recreate a resource with that same ARN, the resource
    #   maintains the permissions already granted.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] resource
    #   The resource to which permissions are to be granted. Resources in
    #   Lake Formation are the Data Catalog, databases, and tables.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to the principal on the resource. Lake
    #   Formation defines privileges to grant and revoke access to metadata
    #   in the Data Catalog and data organized in underlying data storage
    #   such as Amazon S3. Lake Formation requires that each principal be
    #   authorized to perform a specific task on Lake Formation resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permissions_with_grant_option
    #   Indicates a list of the granted permissions that the principal may
    #   pass to other users. These permissions may only be a subset of the
    #   permissions granted in the `Privileges`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GrantPermissionsRequest AWS API Documentation
    #
    class GrantPermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/GrantPermissionsResponse AWS API Documentation
    #
    class GrantPermissionsResponse < Aws::EmptyStructure; end

    # An internal service error occurred.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input provided was not valid.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that allows an admin to grant user permissions on certain
    # conditions. For example, granting a role access to all columns that do
    # not have the LF-tag 'PII' in tables that have the LF-tag 'Prod'.
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of possible values an attribute can take.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/LFTag AWS API Documentation
    #
    class LFTag < Struct.new(
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing an error related to a `TagResource` or
    # `UnTagResource` operation.
    #
    # @!attribute [rw] lf_tag
    #   The key-name of the LF-tag.
    #   @return [Types::LFTagPair]
    #
    # @!attribute [rw] error
    #   An error that occurred with the attachment or detachment of the
    #   LF-tag.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/LFTagError AWS API Documentation
    #
    class LFTagError < Struct.new(
      :lf_tag,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing an LF-tag key and values for a resource.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of possible values an attribute can take.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/LFTagKeyResource AWS API Documentation
    #
    class LFTagKeyResource < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing an LF-tag key-value pair.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of possible values an attribute can take.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/LFTagPair AWS API Documentation
    #
    class LFTagPair < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing a list of LF-tag conditions that apply to a
    # resource's LF-tag policy.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for which the LF-tag policy applies.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A list of LF-tag conditions that apply to the resource's LF-tag
    #   policy.
    #   @return [Array<Types::LFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/LFTagPolicyResource AWS API Documentation
    #
    class LFTagPolicyResource < Struct.new(
      :catalog_id,
      :resource_type,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   A table in the Glue Data Catalog.
    #   @return [Types::TableResource]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListDataCellsFilterRequest AWS API Documentation
    #
    class ListDataCellsFilterRequest < Struct.new(
      :table,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_cells_filters
    #   A list of `DataCellFilter` structures.
    #   @return [Array<Types::DataCellsFilter>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all requested data cell filters have
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListDataCellsFilterResponse AWS API Documentation
    #
    class ListDataCellsFilterResponse < Struct.new(
      :data_cells_filters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_type
    #   If resource share type is `ALL`, returns both in-account LF-tags and
    #   shared LF-tags that the requester has permission to view. If
    #   resource share type is `FOREIGN`, returns all share LF-tags that the
    #   requester can view. If no resource share type is passed, lists
    #   LF-tags in the given catalog ID that the requester has permission to
    #   view.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListLFTagsRequest AWS API Documentation
    #
    class ListLFTagsRequest < Struct.new(
      :catalog_id,
      :resource_share_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lf_tags
    #   A list of LF-tags that the requested has permission to view.
    #   @return [Array<Types::LFTagPair>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListLFTagsResponse AWS API Documentation
    #
    class ListLFTagsResponse < Struct.new(
      :lf_tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   Specifies a principal to filter the permissions returned.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] resource_type
    #   Specifies a resource type to filter the permissions returned.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   A resource where you will get a list of the principal permissions.
    #
    #   This operation does not support getting privileges on a table with
    #   columns. Instead, call this operation on the table, and the
    #   operation returns the table and the table w columns.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] include_related
    #   Indicates that related permissions should be included in the
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource_type,
      :resource,
      :next_token,
      :max_results,
      :include_related)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] principal_resource_permissions
    #   A list of principals and their permissions on the resource for the
    #   specified principal and resource types.
    #   @return [Array<Types::PrincipalResourcePermissions>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListPermissionsResponse AWS API Documentation
    #
    class ListPermissionsResponse < Struct.new(
      :principal_resource_permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_condition_list
    #   Any applicable row-level and/or column-level filtering conditions
    #   for the resources.
    #   @return [Array<Types::FilterCondition>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve
    #   these resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListResourcesRequest AWS API Documentation
    #
    class ListResourcesRequest < Struct.new(
      :filter_condition_list,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_info_list
    #   A summary of the data lake resources.
    #   @return [Array<Types::ResourceInfo>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve
    #   these resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListResourcesResponse AWS API Documentation
    #
    class ListResourcesResponse < Struct.new(
      :resource_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Name of the database where the table is present.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Name of the table.
    #   @return [String]
    #
    # @!attribute [rw] storage_optimizer_type
    #   The specific type of storage optimizers to list. The supported value
    #   is `compaction`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of storage optimizers to return on each call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListTableStorageOptimizersRequest AWS API Documentation
    #
    class ListTableStorageOptimizersRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :storage_optimizer_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_optimizer_list
    #   A list of the storage optimizers associated with a table.
    #   @return [Array<Types::StorageOptimizer>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListTableStorageOptimizersResponse AWS API Documentation
    #
    class ListTableStorageOptimizersResponse < Struct.new(
      :storage_optimizer_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The catalog for which to list transactions. Defaults to the account
    #   ID of the caller.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   A filter indicating the status of transactions to return. Options
    #   are ALL \| COMPLETED \| COMMITTED \| ABORTED \| ACTIVE. The default
    #   is `ALL`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of transactions to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token if this is not the first call to retrieve
    #   transactions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListTransactionsRequest AWS API Documentation
    #
    class ListTransactionsRequest < Struct.new(
      :catalog_id,
      :status_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transactions
    #   A list of transactions. The record for each transaction is a
    #   `TransactionDescription` object.
    #   @return [Array<Types::TransactionDescription>]
    #
    # @!attribute [rw] next_token
    #   A continuation token indicating whether additional data is
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListTransactionsResponse AWS API Documentation
    #
    class ListTransactionsResponse < Struct.new(
      :transactions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation timed out.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/OperationTimeoutException AWS API Documentation
    #
    class OperationTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing a list of partition values and table objects.
    #
    # @!attribute [rw] partition_values
    #   A list of partition values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] objects
    #   A list of table objects
    #   @return [Array<Types::TableObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PartitionObjects AWS API Documentation
    #
    class PartitionObjects < Struct.new(
      :partition_values,
      :objects)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of values defining partitions.
    #
    # @!attribute [rw] values
    #   The list of partition values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PartitionValueList AWS API Documentation
    #
    class PartitionValueList < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The engine does not support filtering data based on the enforced
    # permissions. For example, if you call the
    # `GetTemporaryGlueTableCredentials` operation with
    # `SupportedPermissionType` equal to `ColumnPermission`, but cell-level
    # permissions exist on the table, this exception is thrown.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PermissionTypeMismatchException AWS API Documentation
    #
    class PermissionTypeMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics related to the processing of a query statement.
    #
    # @!attribute [rw] estimated_data_to_scan_bytes
    #   An estimate of the data that was scanned in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] planning_time_millis
    #   The time that it took to process the request.
    #   @return [Integer]
    #
    # @!attribute [rw] queue_time_millis
    #   The time the request was in queue to be processed.
    #   @return [Integer]
    #
    # @!attribute [rw] work_units_generated_count
    #   The number of work units generated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PlanningStatistics AWS API Documentation
    #
    class PlanningStatistics < Struct.new(
      :estimated_data_to_scan_bytes,
      :planning_time_millis,
      :queue_time_millis,
      :work_units_generated_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Permissions granted to a principal.
    #
    # @!attribute [rw] principal
    #   The principal who is granted permissions.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] permissions
    #   The permissions that are granted to the principal.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PrincipalPermissions AWS API Documentation
    #
    class PrincipalPermissions < Struct.new(
      :principal,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The permissions granted or revoked on a resource.
    #
    # @!attribute [rw] principal
    #   The Data Lake principal to be granted or revoked permissions.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] resource
    #   The resource where permissions are to be granted or revoked.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] permissions
    #   The permissions to be granted or revoked on the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permissions_with_grant_option
    #   Indicates whether to grant the ability to grant permissions (as a
    #   subset of permissions granted).
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_details
    #   This attribute can be used to return any additional details of
    #   `PrincipalResourcePermissions`. Currently returns only as a RAM
    #   resource share ARN.
    #   @return [Types::DetailsMap]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PrincipalResourcePermissions AWS API Documentation
    #
    class PrincipalResourcePermissions < Struct.new(
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option,
      :additional_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] data_lake_settings
    #   A structure representing a list of Lake Formation principals
    #   designated as data lake administrators.
    #   @return [Types::DataLakeSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PutDataLakeSettingsRequest AWS API Documentation
    #
    class PutDataLakeSettingsRequest < Struct.new(
      :catalog_id,
      :data_lake_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/PutDataLakeSettingsResponse AWS API Documentation
    #
    class PutDataLakeSettingsResponse < Aws::EmptyStructure; end

    # A structure containing information about the query plan.
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition in question resides.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database containing the table.
    #   @return [String]
    #
    # @!attribute [rw] query_as_of_time
    #   The time as of when to read the table contents. If not set, the most
    #   recent transaction commit time will be used. Cannot be specified
    #   along with `TransactionId`.
    #   @return [Time]
    #
    # @!attribute [rw] query_parameters
    #   A map consisting of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID at which to read the table contents. If this
    #   transaction is not committed, the read will be treated as part of
    #   that transaction and will see its writes. If this transaction has
    #   aborted, an error will be returned. If not set, defaults to the most
    #   recent committed transaction. Cannot be specified along with
    #   `QueryAsOfTime`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/QueryPlanningContext AWS API Documentation
    #
    class QueryPlanningContext < Struct.new(
      :catalog_id,
      :database_name,
      :query_as_of_time,
      :query_parameters,
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   register.
    #   @return [String]
    #
    # @!attribute [rw] use_service_linked_role
    #   Designates an Identity and Access Management (IAM) service-linked
    #   role by registering this role with the Data Catalog. A
    #   service-linked role is a unique type of IAM role that is linked
    #   directly to Lake Formation.
    #
    #   For more information, see [Using Service-Linked Roles for Lake
    #   Formation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The identifier for the role that registers the resource.
    #   @return [String]
    #
    # @!attribute [rw] with_federation
    #   Whether or not the resource is a federated resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RegisterResourceRequest AWS API Documentation
    #
    class RegisterResourceRequest < Struct.new(
      :resource_arn,
      :use_service_linked_role,
      :role_arn,
      :with_federation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RegisterResourceResponse AWS API Documentation
    #
    class RegisterResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The database, table, or column resource where you want to remove an
    #   LF-tag.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] lf_tags
    #   The LF-tags to be removed from the resource.
    #   @return [Array<Types::LFTagPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RemoveLFTagsFromResourceRequest AWS API Documentation
    #
    class RemoveLFTagsFromResourceRequest < Struct.new(
      :catalog_id,
      :resource,
      :lf_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failures
    #   A list of failures to untag a resource.
    #   @return [Array<Types::LFTagError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RemoveLFTagsFromResourceResponse AWS API Documentation
    #
    class RemoveLFTagsFromResourceResponse < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the resource.
    #
    # @!attribute [rw] catalog
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [Types::CatalogResource]
    #
    # @!attribute [rw] database
    #   The database for the resource. Unique to the Data Catalog. A
    #   database is a set of associated table definitions organized into a
    #   logical group. You can Grant and Revoke database permissions to a
    #   principal.
    #   @return [Types::DatabaseResource]
    #
    # @!attribute [rw] table
    #   The table for the resource. A table is a metadata definition that
    #   represents your data. You can Grant and Revoke table privileges to a
    #   principal.
    #   @return [Types::TableResource]
    #
    # @!attribute [rw] table_with_columns
    #   The table with columns for the resource. A principal with
    #   permissions to this resource can select metadata from the columns of
    #   a table in the Data Catalog and the underlying data in Amazon S3.
    #   @return [Types::TableWithColumnsResource]
    #
    # @!attribute [rw] data_location
    #   The location of an Amazon S3 path where permissions are granted or
    #   revoked.
    #   @return [Types::DataLocationResource]
    #
    # @!attribute [rw] data_cells_filter
    #   A data cell filter.
    #   @return [Types::DataCellsFilterResource]
    #
    # @!attribute [rw] lf_tag
    #   The LF-tag key and values attached to a resource.
    #   @return [Types::LFTagKeyResource]
    #
    # @!attribute [rw] lf_tag_policy
    #   A list of LF-tag conditions that define a resource's LF-tag policy.
    #   @return [Types::LFTagPolicyResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :catalog,
      :database,
      :table,
      :table_with_columns,
      :data_location,
      :data_cells_filter,
      :lf_tag,
      :lf_tag_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about an Lake Formation resource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that registered a resource.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time the resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] with_federation
    #   Whether or not the resource is a federated resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ResourceInfo AWS API Documentation
    #
    class ResourceInfo < Struct.new(
      :resource_arn,
      :role_arn,
      :last_modified,
      :with_federation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error related to a resource which is not
    # ready for a transaction.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ResourceNotReadyException AWS API Documentation
    #
    class ResourceNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource numerical limit was exceeded.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ResourceNumberLimitExceededException AWS API Documentation
    #
    class ResourceNumberLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The principal to be revoked permissions on the resource.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] resource
    #   The resource to which permissions are to be revoked.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] permissions
    #   The permissions revoked to the principal on the resource. For
    #   information about permissions, see [Security and Access Control to
    #   Metadata and Data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] permissions_with_grant_option
    #   Indicates a list of permissions for which to revoke the grant option
    #   allowing the principal to pass permissions to other principals.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RevokePermissionsRequest AWS API Documentation
    #
    class RevokePermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RevokePermissionsResponse AWS API Documentation
    #
    class RevokePermissionsResponse < Aws::EmptyStructure; end

    # A PartiQL predicate.
    #
    # @!attribute [rw] filter_expression
    #   A filter expression.
    #   @return [String]
    #
    # @!attribute [rw] all_rows_wildcard
    #   A wildcard for all rows.
    #   @return [Types::AllRowsWildcard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RowFilter AWS API Documentation
    #
    class RowFilter < Struct.new(
      :filter_expression,
      :all_rows_wildcard)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A list of conditions (`LFTag` structures) to search for in database
    #   resources.
    #   @return [Array<Types::LFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/SearchDatabasesByLFTagsRequest AWS API Documentation
    #
    class SearchDatabasesByLFTagsRequest < Struct.new(
      :next_token,
      :max_results,
      :catalog_id,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @!attribute [rw] database_list
    #   A list of databases that meet the LF-tag conditions.
    #   @return [Array<Types::TaggedDatabase>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/SearchDatabasesByLFTagsResponse AWS API Documentation
    #
    class SearchDatabasesByLFTagsResponse < Struct.new(
      :next_token,
      :database_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve this
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A list of conditions (`LFTag` structures) to search for in table
    #   resources.
    #   @return [Array<Types::LFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/SearchTablesByLFTagsRequest AWS API Documentation
    #
    class SearchTablesByLFTagsRequest < Struct.new(
      :next_token,
      :max_results,
      :catalog_id,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @!attribute [rw] table_list
    #   A list of tables that meet the LF-tag conditions.
    #   @return [Array<Types::TaggedTable>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/SearchTablesByLFTagsResponse AWS API Documentation
    #
    class SearchTablesByLFTagsResponse < Struct.new(
      :next_token,
      :table_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_planning_context
    #   A structure containing information about the query plan.
    #   @return [Types::QueryPlanningContext]
    #
    # @!attribute [rw] query_string
    #   A PartiQL query statement used as an input to the planner service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StartQueryPlanningRequest AWS API Documentation
    #
    class StartQueryPlanningRequest < Struct.new(
      :query_planning_context,
      :query_string)
      SENSITIVE = [:query_string]
      include Aws::Structure
    end

    # A structure for the output.
    #
    # @!attribute [rw] query_id
    #   The ID of the plan query operation can be used to fetch the actual
    #   work unit descriptors that are produced as the result of the
    #   operation. The ID is also used to get the query state and as an
    #   input to the `Execute` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StartQueryPlanningResponse AWS API Documentation
    #
    class StartQueryPlanningResponse < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_type
    #   Indicates whether this transaction should be read only or read and
    #   write. Writes made using a read-only transaction ID will be
    #   rejected. Read-only transactions do not need to be committed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StartTransactionRequest AWS API Documentation
    #
    class StartTransactionRequest < Struct.new(
      :transaction_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   An opaque identifier for the transaction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StartTransactionResponse AWS API Documentation
    #
    class StartTransactionResponse < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error related to statistics not being ready.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StatisticsNotReadyYetException AWS API Documentation
    #
    class StatisticsNotReadyYetException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure describing the configuration and details of a storage
    # optimizer.
    #
    # @!attribute [rw] storage_optimizer_type
    #   The specific type of storage optimizer. The supported value is
    #   `compaction`.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   A map of the storage optimizer configuration. Currently contains
    #   only one key-value pair: `is_enabled` indicates true or false for
    #   acceleration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error_message
    #   A message that contains information about any error (if present).
    #
    #   When an acceleration result has an enabled status, the error message
    #   is empty.
    #
    #   When an acceleration result has a disabled status, the message
    #   describes an error or simply indicates "disabled by the user".
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   A message that contains information about any warnings (if present).
    #   @return [String]
    #
    # @!attribute [rw] last_run_details
    #   When an acceleration result has an enabled status, contains the
    #   details of the last job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/StorageOptimizer AWS API Documentation
    #
    class StorageOptimizer < Struct.new(
      :storage_optimizer_type,
      :config,
      :error_message,
      :warnings,
      :last_run_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details of a governed table.
    #
    # @!attribute [rw] uri
    #   The Amazon S3 location of the object.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The Amazon S3 ETag of the object. Returned by `GetTableObjects` for
    #   validation and used to identify changes to the underlying data.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the Amazon S3 object in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TableObject AWS API Documentation
    #
    class TableObject < Struct.new(
      :uri,
      :etag,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the table object. A table is a metadata definition
    # that represents your data. You can Grant and Revoke table privileges
    # to a principal.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, it is the account
    #   ID of the caller.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database for the table. Unique to a Data Catalog. A
    #   database is a set of associated table definitions organized into a
    #   logical group. You can Grant and Revoke database privileges to a
    #   principal.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_wildcard
    #   A wildcard object representing every table under a database.
    #
    #   At least one of `TableResource$Name` or
    #   `TableResource$TableWildcard` is required.
    #   @return [Types::TableWildcard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TableResource AWS API Documentation
    #
    class TableResource < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :table_wildcard)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wildcard object representing every table under a database.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TableWildcard AWS API Documentation
    #
    class TableWildcard < Aws::EmptyStructure; end

    # A structure for a table with columns object. This object is only used
    # when granting a SELECT permission.
    #
    # This object must take a value for at least one of `ColumnsNames`,
    # `ColumnsIndexes`, or `ColumnsWildcard`.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, it is the account
    #   ID of the caller.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database for the table with columns resource. Unique
    #   to the Data Catalog. A database is a set of associated table
    #   definitions organized into a logical group. You can Grant and Revoke
    #   database privileges to a principal.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table resource. A table is a metadata definition
    #   that represents your data. You can Grant and Revoke table privileges
    #   to a principal.
    #   @return [String]
    #
    # @!attribute [rw] column_names
    #   The list of column names for the table. At least one of
    #   `ColumnNames` or `ColumnWildcard` is required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_wildcard
    #   A wildcard specified by a `ColumnWildcard` object. At least one of
    #   `ColumnNames` or `ColumnWildcard` is required.
    #   @return [Types::ColumnWildcard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TableWithColumnsResource AWS API Documentation
    #
    class TableWithColumnsResource < Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :column_names,
      :column_wildcard)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure describing a database resource with LF-tags.
    #
    # @!attribute [rw] database
    #   A database that has LF-tags attached to it.
    #   @return [Types::DatabaseResource]
    #
    # @!attribute [rw] lf_tags
    #   A list of LF-tags attached to the database.
    #   @return [Array<Types::LFTagPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TaggedDatabase AWS API Documentation
    #
    class TaggedDatabase < Struct.new(
      :database,
      :lf_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure describing a table resource with LF-tags.
    #
    # @!attribute [rw] table
    #   A table that has LF-tags attached to it.
    #   @return [Types::TableResource]
    #
    # @!attribute [rw] lf_tag_on_database
    #   A list of LF-tags attached to the database where the table resides.
    #   @return [Array<Types::LFTagPair>]
    #
    # @!attribute [rw] lf_tags_on_table
    #   A list of LF-tags attached to the table.
    #   @return [Array<Types::LFTagPair>]
    #
    # @!attribute [rw] lf_tags_on_columns
    #   A list of LF-tags attached to columns in the table.
    #   @return [Array<Types::ColumnLFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TaggedTable AWS API Documentation
    #
    class TaggedTable < Struct.new(
      :table,
      :lf_tag_on_database,
      :lf_tags_on_table,
      :lf_tags_on_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error where the query request was throttled.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ThrottledException AWS API Documentation
    #
    class ThrottledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error related to a transaction that was
    # cancelled.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TransactionCanceledException AWS API Documentation
    #
    class TransactionCanceledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error related to a transaction commit that
    # was in progress.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TransactionCommitInProgressException AWS API Documentation
    #
    class TransactionCommitInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error where the specified transaction has
    # already been committed and cannot be used for `UpdateTableObjects`.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TransactionCommittedException AWS API Documentation
    #
    class TransactionCommittedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a transaction.
    #
    # @!attribute [rw] transaction_id
    #   The ID of the transaction.
    #   @return [String]
    #
    # @!attribute [rw] transaction_status
    #   A status of ACTIVE, COMMITTED, or ABORTED.
    #   @return [String]
    #
    # @!attribute [rw] transaction_start_time
    #   The time when the transaction started.
    #   @return [Time]
    #
    # @!attribute [rw] transaction_end_time
    #   The time when the transaction committed or aborted, if it is not
    #   currently active.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/TransactionDescription AWS API Documentation
    #
    class TransactionDescription < Struct.new(
      :transaction_id,
      :transaction_status,
      :transaction_start_time,
      :transaction_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_data
    #   A `DataCellsFilter` structure containing information about the data
    #   cells filter.
    #   @return [Types::DataCellsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateDataCellsFilterRequest AWS API Documentation
    #
    class UpdateDataCellsFilterRequest < Struct.new(
      :table_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateDataCellsFilterResponse AWS API Documentation
    #
    class UpdateDataCellsFilterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   The key-name for the LF-tag for which to add or delete values.
    #   @return [String]
    #
    # @!attribute [rw] tag_values_to_delete
    #   A list of LF-tag values to delete from the LF-tag.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values_to_add
    #   A list of LF-tag values to add from the LF-tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateLFTagRequest AWS API Documentation
    #
    class UpdateLFTagRequest < Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values_to_delete,
      :tag_values_to_add)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateLFTagResponse AWS API Documentation
    #
    class UpdateLFTagResponse < Aws::EmptyStructure; end

    # @!attribute [rw] role_arn
    #   The new role to use for the given resource registered in Lake
    #   Formation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] with_federation
    #   Whether or not the resource is a federated resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateResourceRequest AWS API Documentation
    #
    class UpdateResourceRequest < Struct.new(
      :role_arn,
      :resource_arn,
      :with_federation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateResourceResponse AWS API Documentation
    #
    class UpdateResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The catalog containing the governed table to update. Defaults to the
    #   caller’s account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database containing the governed table to update.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The governed table to update.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction at which to do the write.
    #   @return [String]
    #
    # @!attribute [rw] write_operations
    #   A list of `WriteOperation` objects that define an object to add to
    #   or delete from the manifest for a governed table.
    #   @return [Array<Types::WriteOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateTableObjectsRequest AWS API Documentation
    #
    class UpdateTableObjectsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :write_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateTableObjectsResponse AWS API Documentation
    #
    class UpdateTableObjectsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog_id
    #   The Catalog ID of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Name of the database where the table is present.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Name of the table for which to enable the storage optimizer.
    #   @return [String]
    #
    # @!attribute [rw] storage_optimizer_config
    #   Name of the table for which to enable the storage optimizer.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateTableStorageOptimizerRequest AWS API Documentation
    #
    class UpdateTableStorageOptimizerRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :storage_optimizer_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   A response indicating the success of failure of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateTableStorageOptimizerResponse AWS API Documentation
    #
    class UpdateTableStorageOptimizerResponse < Struct.new(
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines an Amazon S3 object to be deleted if a
    # transaction cancels, provided that `VirtualPut` was called before
    # writing the object.
    #
    # @!attribute [rw] uri
    #   The path to the Amazon S3 object. Must start with s3://
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The ETag of the Amazon S3 object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/VirtualObject AWS API Documentation
    #
    class VirtualObject < Struct.new(
      :uri,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the valid range of work unit IDs for querying the execution
    # service.
    #
    # @!attribute [rw] work_unit_id_max
    #   Defines the maximum work unit ID in the range. The maximum value is
    #   inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] work_unit_id_min
    #   Defines the minimum work unit ID in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] work_unit_token
    #   A work token used to query the execution service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/WorkUnitRange AWS API Documentation
    #
    class WorkUnitRange < Struct.new(
      :work_unit_id_max,
      :work_unit_id_min,
      :work_unit_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an error related to work units not being ready.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/WorkUnitsNotReadyYetException AWS API Documentation
    #
    class WorkUnitsNotReadyYetException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an object to add to or delete from a governed table.
    #
    # @!attribute [rw] add_object
    #   A new object to add to the governed table.
    #   @return [Types::AddObjectInput]
    #
    # @!attribute [rw] delete_object
    #   An object to delete from the governed table.
    #   @return [Types::DeleteObjectInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/WriteOperation AWS API Documentation
    #
    class WriteOperation < Struct.new(
      :add_object,
      :delete_object)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
