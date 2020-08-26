# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LakeFormation
  module Types

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

    # @note When making an API call, you may pass BatchGrantPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         entries: [ # required
    #           {
    #             id: "Identifier", # required
    #             principal: {
    #               data_lake_principal_identifier: "DataLakePrincipalString",
    #             },
    #             resource: {
    #               catalog: {
    #               },
    #               database: {
    #                 catalog_id: "CatalogIdString",
    #                 name: "NameString", # required
    #               },
    #               table: {
    #                 catalog_id: "CatalogIdString",
    #                 database_name: "NameString", # required
    #                 name: "NameString",
    #                 table_wildcard: {
    #                 },
    #               },
    #               table_with_columns: {
    #                 catalog_id: "CatalogIdString",
    #                 database_name: "NameString", # required
    #                 name: "NameString", # required
    #                 column_names: ["NameString"],
    #                 column_wildcard: {
    #                   excluded_column_names: ["NameString"],
    #                 },
    #               },
    #               data_location: {
    #                 catalog_id: "CatalogIdString",
    #                 resource_arn: "ResourceArnString", # required
    #               },
    #             },
    #             permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #             permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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
    # @note When making an API call, you may pass BatchPermissionsRequestEntry
    #   data as a hash:
    #
    #       {
    #         id: "Identifier", # required
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: {
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       }
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

    # @note When making an API call, you may pass BatchRevokePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         entries: [ # required
    #           {
    #             id: "Identifier", # required
    #             principal: {
    #               data_lake_principal_identifier: "DataLakePrincipalString",
    #             },
    #             resource: {
    #               catalog: {
    #               },
    #               database: {
    #                 catalog_id: "CatalogIdString",
    #                 name: "NameString", # required
    #               },
    #               table: {
    #                 catalog_id: "CatalogIdString",
    #                 database_name: "NameString", # required
    #                 name: "NameString",
    #                 table_wildcard: {
    #                 },
    #               },
    #               table_with_columns: {
    #                 catalog_id: "CatalogIdString",
    #                 database_name: "NameString", # required
    #                 name: "NameString", # required
    #                 column_names: ["NameString"],
    #                 column_wildcard: {
    #                   excluded_column_names: ["NameString"],
    #                 },
    #               },
    #               data_location: {
    #                 catalog_id: "CatalogIdString",
    #                 resource_arn: "ResourceArnString", # required
    #               },
    #             },
    #             permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #             permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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

    # A structure for the catalog object.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/CatalogResource AWS API Documentation
    #
    class CatalogResource < Aws::EmptyStructure; end

    # A wildcard object, consisting of an optional list of excluded column
    # names or indexes.
    #
    # @note When making an API call, you may pass ColumnWildcard
    #   data as a hash:
    #
    #       {
    #         excluded_column_names: ["NameString"],
    #       }
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

    # The AWS Lake Formation principal. Supported principals are IAM users
    # or IAM roles.
    #
    # @note When making an API call, you may pass DataLakePrincipal
    #   data as a hash:
    #
    #       {
    #         data_lake_principal_identifier: "DataLakePrincipalString",
    #       }
    #
    # @!attribute [rw] data_lake_principal_identifier
    #   An identifier for the AWS Lake Formation principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataLakePrincipal AWS API Documentation
    #
    class DataLakePrincipal < Struct.new(
      :data_lake_principal_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing a list of AWS Lake Formation principals
    # designated as data lake administrators and lists of principal
    # permission entries for default create database and default create
    # table permissions.
    #
    # @note When making an API call, you may pass DataLakeSettings
    #   data as a hash:
    #
    #       {
    #         data_lake_admins: [
    #           {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #         ],
    #         create_database_default_permissions: [
    #           {
    #             principal: {
    #               data_lake_principal_identifier: "DataLakePrincipalString",
    #             },
    #             permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #           },
    #         ],
    #         create_table_default_permissions: [
    #           {
    #             principal: {
    #               data_lake_principal_identifier: "DataLakePrincipalString",
    #             },
    #             permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #           },
    #         ],
    #         trusted_resource_owners: ["CatalogIdString"],
    #       }
    #
    # @!attribute [rw] data_lake_admins
    #   A list of AWS Lake Formation principals. Supported principals are
    #   IAM users or IAM roles.
    #   @return [Array<Types::DataLakePrincipal>]
    #
    # @!attribute [rw] create_database_default_permissions
    #   A structure representing a list of up to three principal permissions
    #   entries for default create database permissions.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] create_table_default_permissions
    #   A structure representing a list of up to three principal permissions
    #   entries for default create table permissions.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @!attribute [rw] trusted_resource_owners
    #   A list of the resource-owning account IDs that the caller's account
    #   can use to share their user access details (user ARNs). The user
    #   ARNs can be logged in the resource owner's AWS CloudTrail log.
    #
    #   You may want to specify this property when you are in a high-trust
    #   boundary, such as the same team or company.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DataLakeSettings AWS API Documentation
    #
    class DataLakeSettings < Struct.new(
      :data_lake_admins,
      :create_database_default_permissions,
      :create_table_default_permissions,
      :trusted_resource_owners)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for a data location object where permissions are granted
    # or revoked.
    #
    # @note When making an API call, you may pass DataLocationResource
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog where the location is registered
    #   with AWS Lake Formation. By default, it is the account ID of the
    #   caller.
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
    # @note When making an API call, you may pass DatabaseResource
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
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

    # @note When making an API call, you may pass DeregisterResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArnString", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArnString", # required
    #       }
    #
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
    #   A structure containing information about an AWS Lake Formation
    #   resource.
    #   @return [Types::ResourceInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DescribeResourceResponse AWS API Documentation
    #
    class DescribeResourceResponse < Struct.new(
      :resource_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the additional details to be returned in the
    # `AdditionalDetails` attribute of `PrincipalResourcePermissions`.
    #
    # If a catalog resource is shared through AWS Resource Access Manager
    # (AWS RAM), then there will exist a corresponding RAM share resource
    # ARN.
    #
    # @!attribute [rw] resource_share
    #   A share resource ARN for a catalog resource shared through AWS
    #   Resource Access Manager (AWS RAM).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/DetailsMap AWS API Documentation
    #
    class DetailsMap < Struct.new(
      :resource_share)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified entity does not exist
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

    # This structure describes the filtering of columns in a table based on
    # a filter condition.
    #
    # @note When making an API call, you may pass FilterCondition
    #   data as a hash:
    #
    #       {
    #         field: "RESOURCE_ARN", # accepts RESOURCE_ARN, ROLE_ARN, LAST_MODIFIED
    #         comparison_operator: "EQ", # accepts EQ, NE, LE, LT, GE, GT, CONTAINS, NOT_CONTAINS, BEGINS_WITH, IN, BETWEEN
    #         string_value_list: ["StringValue"],
    #       }
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

    # @note When making an API call, you may pass GetDataLakeSettingsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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
    #   A structure representing a list of AWS Lake Formation principals
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

    # @note When making an API call, you may pass GetEffectivePermissionsForPathRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         resource_arn: "ResourceArnString", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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

    # @note When making an API call, you may pass GrantPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         principal: { # required
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: { # required
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #         },
    #         permissions: ["ALL"], # required, accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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
    #   AWS Lake Formation are the Data Catalog, databases, and tables.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to the principal on the resource. AWS Lake
    #   Formation defines privileges to grant and revoke access to metadata
    #   in the Data Catalog and data organized in underlying data storage
    #   such as Amazon S3. AWS Lake Formation requires that each principal
    #   be authorized to perform a specific task on AWS Lake Formation
    #   resources.
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

    # @note When making an API call, you may pass ListPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource_type: "CATALOG", # accepts CATALOG, DATABASE, TABLE, DATA_LOCATION
    #         resource: {
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #         },
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :catalog_id,
      :principal,
      :resource_type,
      :resource,
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass ListResourcesRequest
    #   data as a hash:
    #
    #       {
    #         filter_condition_list: [
    #           {
    #             field: "RESOURCE_ARN", # accepts RESOURCE_ARN, ROLE_ARN, LAST_MODIFIED
    #             comparison_operator: "EQ", # accepts EQ, NE, LE, LT, GE, GT, CONTAINS, NOT_CONTAINS, BEGINS_WITH, IN, BETWEEN
    #             string_value_list: ["StringValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
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

    # Permissions granted to a principal.
    #
    # @note When making an API call, you may pass PrincipalPermissions
    #   data as a hash:
    #
    #       {
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       }
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
    #   share resource ARN.
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

    # @note When making an API call, you may pass PutDataLakeSettingsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         data_lake_settings: { # required
    #           data_lake_admins: [
    #             {
    #               data_lake_principal_identifier: "DataLakePrincipalString",
    #             },
    #           ],
    #           create_database_default_permissions: [
    #             {
    #               principal: {
    #                 data_lake_principal_identifier: "DataLakePrincipalString",
    #               },
    #               permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #             },
    #           ],
    #           create_table_default_permissions: [
    #             {
    #               principal: {
    #                 data_lake_principal_identifier: "DataLakePrincipalString",
    #               },
    #               permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #             },
    #           ],
    #           trusted_resource_owners: ["CatalogIdString"],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
    #   @return [String]
    #
    # @!attribute [rw] data_lake_settings
    #   A structure representing a list of AWS Lake Formation principals
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

    # @note When making an API call, you may pass RegisterResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArnString", # required
    #         use_service_linked_role: false,
    #         role_arn: "IAMRoleArn",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   register.
    #   @return [String]
    #
    # @!attribute [rw] use_service_linked_role
    #   Designates an AWS Identity and Access Management (IAM)
    #   service-linked role by registering this role with the Data Catalog.
    #   A service-linked role is a unique type of IAM role that is linked
    #   directly to Lake Formation.
    #
    #   For more information, see [Using Service-Linked Roles for Lake
    #   Formation][1].
    #
    #
    #
    #   [1]: https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The identifier for the role that registers the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RegisterResourceRequest AWS API Documentation
    #
    class RegisterResourceRequest < Struct.new(
      :resource_arn,
      :use_service_linked_role,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/RegisterResourceResponse AWS API Documentation
    #
    class RegisterResourceResponse < Aws::EmptyStructure; end

    # A structure for the resource.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         catalog: {
    #         },
    #         database: {
    #           catalog_id: "CatalogIdString",
    #           name: "NameString", # required
    #         },
    #         table: {
    #           catalog_id: "CatalogIdString",
    #           database_name: "NameString", # required
    #           name: "NameString",
    #           table_wildcard: {
    #           },
    #         },
    #         table_with_columns: {
    #           catalog_id: "CatalogIdString",
    #           database_name: "NameString", # required
    #           name: "NameString", # required
    #           column_names: ["NameString"],
    #           column_wildcard: {
    #             excluded_column_names: ["NameString"],
    #           },
    #         },
    #         data_location: {
    #           catalog_id: "CatalogIdString",
    #           resource_arn: "ResourceArnString", # required
    #         },
    #       }
    #
    # @!attribute [rw] catalog
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :catalog,
      :database,
      :table,
      :table_with_columns,
      :data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about an AWS Lake Formation
    # resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/ResourceInfo AWS API Documentation
    #
    class ResourceInfo < Struct.new(
      :resource_arn,
      :role_arn,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         principal: { # required
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         resource: { # required
    #           catalog: {
    #           },
    #           database: {
    #             catalog_id: "CatalogIdString",
    #             name: "NameString", # required
    #           },
    #           table: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString",
    #             table_wildcard: {
    #             },
    #           },
    #           table_with_columns: {
    #             catalog_id: "CatalogIdString",
    #             database_name: "NameString", # required
    #             name: "NameString", # required
    #             column_names: ["NameString"],
    #             column_wildcard: {
    #               excluded_column_names: ["NameString"],
    #             },
    #           },
    #           data_location: {
    #             catalog_id: "CatalogIdString",
    #             resource_arn: "ResourceArnString", # required
    #           },
    #         },
    #         permissions: ["ALL"], # required, accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         permissions_with_grant_option: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, DESCRIBE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the Data Catalog. By default, the account ID. The
    #   Data Catalog is the persistent metadata store. It contains database
    #   definitions, table definitions, and other control information to
    #   manage your AWS Lake Formation environment.
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
    #   [1]: https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html
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

    # A structure for the table object. A table is a metadata definition
    # that represents your data. You can Grant and Revoke table privileges
    # to a principal.
    #
    # @note When making an API call, you may pass TableResource
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString",
    #         table_wildcard: {
    #         },
    #       }
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
    # @note When making an API call, you may pass TableWithColumnsResource
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #         column_names: ["NameString"],
    #         column_wildcard: {
    #           excluded_column_names: ["NameString"],
    #         },
    #       }
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

    # @note When making an API call, you may pass UpdateResourceRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "IAMRoleArn", # required
    #         resource_arn: "ResourceArnString", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The new role to use for the given resource registered in AWS Lake
    #   Formation.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateResourceRequest AWS API Documentation
    #
    class UpdateResourceRequest < Struct.new(
      :role_arn,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lakeformation-2017-03-31/UpdateResourceResponse AWS API Documentation
    #
    class UpdateResourceResponse < Aws::EmptyStructure; end

  end
end
