# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FinSpaceData
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/AssociateUserToPermissionGroupRequest AWS API Documentation
    #
    class AssociateUserToPermissionGroupRequest < Struct.new(
      :permission_group_id,
      :user_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The returned status code of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/AssociateUserToPermissionGroupResponse AWS API Documentation
    #
    class AssociateUserToPermissionGroupResponse < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credentials required to access the external Dataview from the S3
    # location.
    #
    # @!attribute [rw] access_key_id
    #   The unique identifier for the security credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key that can be used to sign requests.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The token that users must pass to use the credentials.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The Epoch time when the current credentials expire.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/AwsCredentials AWS API Documentation
    #
    class AwsCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      SENSITIVE = [:secret_access_key, :session_token]
      include Aws::Structure
    end

    # The structure with error messages.
    #
    # @!attribute [rw] error_message
    #   The text of the error message.
    #   @return [String]
    #
    # @!attribute [rw] error_category
    #   The category of the error.
    #
    #   * `VALIDATION` – The inputs to this request are invalid.
    #
    #   * `SERVICE_QUOTA_EXCEEDED` – Service quotas have been exceeded.
    #     Please contact AWS support to increase quotas.
    #
    #   * `ACCESS_DENIED` – Missing required permission to perform this
    #     request.
    #
    #   * `RESOURCE_NOT_FOUND` – One or more inputs to this request were not
    #     found.
    #
    #   * `THROTTLING` – The system temporarily lacks sufficient resources
    #     to process the request.
    #
    #   * `INTERNAL_SERVICE_EXCEPTION` – An internal service error has
    #     occurred.
    #
    #   * `CANCELLED` – Cancelled.
    #
    #   * `USER_RECOVERABLE` – A user recoverable error has occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ChangesetErrorInfo AWS API Documentation
    #
    class ChangesetErrorInfo < Struct.new(
      :error_message,
      :error_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Changeset is unit of data in a Dataset.
    #
    # @!attribute [rw] changeset_id
    #   The unique identifier for a Changeset.
    #   @return [String]
    #
    # @!attribute [rw] changeset_arn
    #   The ARN identifier of the Changeset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset in which the
    #   Changeset is created.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   Type that indicates how a Changeset is applied to a Dataset.
    #
    #   * `REPLACE` – Changeset is considered as a replacement to all prior
    #     loaded Changesets.
    #
    #   * `APPEND` – Changeset is considered as an addition to the end of
    #     all prior loaded Changesets.
    #
    #   * `MODIFY` – Changeset is considered as a replacement to a specific
    #     prior ingested Changeset.
    #   @return [String]
    #
    # @!attribute [rw] source_params
    #   Options that define the location of the data being ingested.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] format_params
    #   Options that define the structure of the source file(s).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the Changeset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Status of the Changeset ingestion.
    #
    #   * `PENDING` – Changeset is pending creation.
    #
    #   * `FAILED` – Changeset creation has failed.
    #
    #   * `SUCCESS` – Changeset creation has succeeded.
    #
    #   * `RUNNING` – Changeset creation is running.
    #
    #   * `STOP_REQUESTED` – User requested Changeset creation to stop.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The structure with error messages.
    #   @return [Types::ChangesetErrorInfo]
    #
    # @!attribute [rw] active_until_timestamp
    #   Time until which the Changeset is active. The value is determined as
    #   epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] active_from_timestamp
    #   Beginning time from which the Changeset is active. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] updates_changeset_id
    #   The unique identifier of the Changeset that is updated.
    #   @return [String]
    #
    # @!attribute [rw] updated_by_changeset_id
    #   The unique identifier of the updated Changeset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ChangesetSummary AWS API Documentation
    #
    class ChangesetSummary < Struct.new(
      :changeset_id,
      :changeset_arn,
      :dataset_id,
      :change_type,
      :source_params,
      :format_params,
      :create_time,
      :status,
      :error_info,
      :active_until_timestamp,
      :active_from_timestamp,
      :updates_changeset_id,
      :updated_by_changeset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a column in a tabular Dataset.
    #
    # @!attribute [rw] data_type
    #   Data type of a column.
    #
    #   * `STRING` – A String data type.
    #
    #     `CHAR` – A char data type.
    #
    #     `INTEGER` – An integer data type.
    #
    #     `TINYINT` – A tinyint data type.
    #
    #     `SMALLINT` – A smallint data type.
    #
    #     `BIGINT` – A bigint data type.
    #
    #     `FLOAT` – A float data type.
    #
    #     `DOUBLE` – A double data type.
    #
    #     `DATE` – A date data type.
    #
    #     `DATETIME` – A datetime data type.
    #
    #     `BOOLEAN` – A boolean data type.
    #
    #     `BINARY` – A binary data type.
    #   @return [String]
    #
    # @!attribute [rw] column_name
    #   The name of a column.
    #   @return [String]
    #
    # @!attribute [rw] column_description
    #   Description for a column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ColumnDefinition AWS API Documentation
    #
    class ColumnDefinition < Struct.new(
      :data_type,
      :column_name,
      :column_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with an existing resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for a CreateChangeset operation.
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset where the Changeset
    #   will be created.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   The option to indicate how a Changeset will be applied to a Dataset.
    #
    #   * `REPLACE` – Changeset will be considered as a replacement to all
    #     prior loaded Changesets.
    #
    #   * `APPEND` – Changeset will be considered as an addition to the end
    #     of all prior loaded Changesets.
    #
    #   * `MODIFY` – Changeset is considered as a replacement to a specific
    #     prior ingested Changeset.
    #   @return [String]
    #
    # @!attribute [rw] source_params
    #   Options that define the location of the data being ingested
    #   (`s3SourcePath`) and the source of the changeset (`sourceType`).
    #
    #   Both `s3SourcePath` and `sourceType` are required attributes.
    #
    #   Here is an example of how you could specify the `sourceParams`:
    #
    #   ` "sourceParams": \{ "s3SourcePath":
    #   "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #   "sourceType": "S3" \} `
    #
    #   The S3 path that you specify must allow the FinSpace role access. To
    #   do that, you first need to configure the IAM policy on S3 bucket.
    #   For more information, see [Loading data from an Amazon S3 Bucket
    #   using the FinSpace API][1] section.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] format_params
    #   Options that define the structure of the source file(s) including
    #   the format type (`formatType`), header row (`withHeader`), data
    #   separation character (`separator`) and the type of compression
    #   (`compression`).
    #
    #   `formatType` is a required attribute and can have the following
    #   values:
    #
    #   * `PARQUET` – Parquet source file format.
    #
    #   * `CSV` – CSV source file format.
    #
    #   * `JSON` – JSON source file format.
    #
    #   * `XML` – XML source file format.
    #
    #   Here is an example of how you could specify the `formatParams`:
    #
    #   ` "formatParams": \{ "formatType": "CSV", "withHeader": "true",
    #   "separator": ",", "compression":"None" \} `
    #
    #   Note that if you only provide `formatType` as `CSV`, the rest of the
    #   attributes will automatically default to CSV values as following:
    #
    #   ` \{ "withHeader": "true", "separator": "," \} `
    #
    #   For more information about supported file formats, see [Supported
    #   Data Types and File Formats][1] in the FinSpace User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateChangesetRequest AWS API Documentation
    #
    class CreateChangesetRequest < Struct.new(
      :client_token,
      :dataset_id,
      :change_type,
      :source_params,
      :format_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a CreateChangeset operation.
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset where the Changeset
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   The unique identifier of the Changeset that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateChangesetResponse AWS API Documentation
    #
    class CreateChangesetResponse < Struct.new(
      :dataset_id,
      :changeset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for creating a data view.
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique Dataset identifier that is used to create a Dataview.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   Flag to indicate Dataview should be updated automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] sort_columns
    #   Columns to be used for sorting the data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_columns
    #   Ordered set of column names used to partition data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] as_of_timestamp
    #   Beginning time to use for the Dataview. The value is determined as
    #   epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_type_params
    #   Options that define the destination type for the Dataview.
    #   @return [Types::DataViewDestinationTypeParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateDataViewRequest AWS API Documentation
    #
    class CreateDataViewRequest < Struct.new(
      :client_token,
      :dataset_id,
      :auto_update,
      :sort_columns,
      :partition_columns,
      :as_of_timestamp,
      :destination_type_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for creating a data view.
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the Dataset used for the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] data_view_id
    #   The unique identifier for the created Dataview.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateDataViewResponse AWS API Documentation
    #
    class CreateDataViewResponse < Struct.new(
      :dataset_id,
      :data_view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for a CreateDataset operation
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_title
    #   Display title for a FinSpace Dataset.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The format in which Dataset data is structured.
    #
    #   * `TABULAR` – Data is structured in a tabular format.
    #
    #   * `NON_TABULAR` – Data is structured in a non-tabular format.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   Description of a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] owner_info
    #   Contact information for a Dataset owner.
    #   @return [Types::DatasetOwnerInfo]
    #
    # @!attribute [rw] permission_group_params
    #   Permission group parameters for Dataset permissions.
    #   @return [Types::PermissionGroupParams]
    #
    # @!attribute [rw] alias
    #   The unique resource identifier for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] schema_definition
    #   Definition for a schema on a tabular Dataset.
    #   @return [Types::SchemaUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :client_token,
      :dataset_title,
      :kind,
      :dataset_description,
      :owner_info,
      :permission_group_params,
      :alias,
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a CreateDataset operation
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the created Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the permission group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] application_permissions
    #   The option to indicate FinSpace application permissions that are
    #   granted to a specific group.
    #
    #   When assigning application permissions, be aware that the permission
    #   `ManageUsersAndGroups` allows users to grant themselves or others
    #   access to any functionality in their FinSpace environment's
    #   application. It should only be granted to trusted users.
    #
    #   * `CreateDataset` – Group members can create new datasets.
    #
    #   * `ManageClusters` – Group members can manage Apache Spark clusters
    #     from FinSpace notebooks.
    #
    #   * `ManageUsersAndGroups` – Group members can manage users and
    #     permission groups. This is a privileged permission that allows
    #     users to grant themselves or others access to any functionality in
    #     the application. It should only be granted to trusted users.
    #
    #   * `ManageAttributeSets` – Group members can manage attribute sets.
    #
    #   * `ViewAuditData` – Group members can view audit data.
    #
    #   * `AccessNotebooks` – Group members will have access to FinSpace
    #     notebooks.
    #
    #   * `GetTemporaryCredentials` – Group members can get temporary API
    #     credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreatePermissionGroupRequest AWS API Documentation
    #
    class CreatePermissionGroupRequest < Struct.new(
      :name,
      :description,
      :application_permissions,
      :client_token)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreatePermissionGroupResponse AWS API Documentation
    #
    class CreatePermissionGroupResponse < Struct.new(
      :permission_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] email_address
    #   The email address of the user that you want to register. The email
    #   address serves as a uniquer identifier for each user and cannot be
    #   changed after it's created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The option to indicate the type of user. Use one of the following
    #   options to specify this parameter:
    #
    #   * `SUPER_USER` – A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The
    #     users are assigned permissions by adding them to a permission
    #     group.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user that you want to register.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user that you want to register.
    #   @return [String]
    #
    # @!attribute [rw] api_access
    #   The option to indicate whether the user can use the
    #   `GetProgrammaticAccessCredentials` API to obtain credentials that
    #   can then be used to access other FinSpace Data API operations.
    #
    #   * `ENABLED` – The user has permissions to use the APIs.
    #
    #   * `DISABLED` – The user does not have permissions to use any APIs.
    #   @return [String]
    #
    # @!attribute [rw] api_access_principal_arn
    #   The ARN identifier of an AWS user or role that is allowed to call
    #   the `GetProgrammaticAccessCredentials` API to obtain a credentials
    #   token for a specific FinSpace user. This must be an IAM role within
    #   your FinSpace account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :email_address,
      :type,
      :first_name,
      :last_name,
      :api_access,
      :api_access_principal_arn,
      :client_token)
      SENSITIVE = [:email_address, :first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Short term API credentials.
    #
    # @!attribute [rw] access_key_id
    #   The access key identifier.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The access key.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure for the Dataview destination type parameters.
    #
    # @!attribute [rw] destination_type
    #   Destination type for a Dataview.
    #
    #   * `GLUE_TABLE` – Glue table destination type.
    #
    #   * `S3` – S3 destination type.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_export_file_format
    #   Dataview export file format.
    #
    #   * `PARQUET` – Parquet export file format.
    #
    #   * `DELIMITED_TEXT` – Delimited text export file format.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_export_file_format_options
    #   Format Options for S3 Destination type.
    #
    #   Here is an example of how you could specify the
    #   `s3DestinationExportFileFormatOptions`
    #
    #   ` \{ "header": "true", "delimiter": ",", "compression": "gzip" \}`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DataViewDestinationTypeParams AWS API Documentation
    #
    class DataViewDestinationTypeParams < Struct.new(
      :destination_type,
      :s3_destination_export_file_format,
      :s3_destination_export_file_format_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure with error messages.
    #
    # @!attribute [rw] error_message
    #   The text of the error message.
    #   @return [String]
    #
    # @!attribute [rw] error_category
    #   The category of the error.
    #
    #   * `VALIDATION` – The inputs to this request are invalid.
    #
    #   * `SERVICE_QUOTA_EXCEEDED` – Service quotas have been exceeded.
    #     Please contact AWS support to increase quotas.
    #
    #   * `ACCESS_DENIED` – Missing required permission to perform this
    #     request.
    #
    #   * `RESOURCE_NOT_FOUND` – One or more inputs to this request were not
    #     found.
    #
    #   * `THROTTLING` – The system temporarily lacks sufficient resources
    #     to process the request.
    #
    #   * `INTERNAL_SERVICE_EXCEPTION` – An internal service error has
    #     occurred.
    #
    #   * `CANCELLED` – Cancelled.
    #
    #   * `USER_RECOVERABLE` – A user recoverable error has occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DataViewErrorInfo AWS API Documentation
    #
    class DataViewErrorInfo < Struct.new(
      :error_message,
      :error_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure for the summary of a Dataview.
    #
    # @!attribute [rw] data_view_id
    #   The unique identifier for the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] data_view_arn
    #   The ARN identifier of the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   Th unique identifier for the Dataview Dataset.
    #   @return [String]
    #
    # @!attribute [rw] as_of_timestamp
    #   Time range to use for the Dataview. The value is determined as epoch
    #   time in milliseconds. For example, the value for Monday, November 1,
    #   2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] partition_columns
    #   Ordered set of column names used to partition data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_columns
    #   Columns to be used for sorting the data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of a Dataview creation.
    #
    #   * `RUNNING` – Dataview creation is running.
    #
    #   * `STARTING` – Dataview creation is starting.
    #
    #   * `FAILED` – Dataview creation has failed.
    #
    #   * `CANCELLED` – Dataview creation has been cancelled.
    #
    #   * `TIMEOUT` – Dataview creation has timed out.
    #
    #   * `SUCCESS` – Dataview creation has succeeded.
    #
    #   * `PENDING` – Dataview creation is pending.
    #
    #   * `FAILED_CLEANUP_FAILED` – Dataview creation failed and resource
    #     cleanup failed.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The structure with error messages.
    #   @return [Types::DataViewErrorInfo]
    #
    # @!attribute [rw] destination_type_properties
    #   Information about the Dataview destination.
    #   @return [Types::DataViewDestinationTypeParams]
    #
    # @!attribute [rw] auto_update
    #   The flag to indicate Dataview should be updated automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the Dataview was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that a Dataview was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DataViewSummary AWS API Documentation
    #
    class DataViewSummary < Struct.new(
      :data_view_id,
      :data_view_arn,
      :dataset_id,
      :as_of_timestamp,
      :partition_columns,
      :sort_columns,
      :status,
      :error_info,
      :destination_type_properties,
      :auto_update,
      :create_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure for a Dataset.
    #
    # @!attribute [rw] dataset_id
    #   An identifier for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The ARN identifier of the Dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_title
    #   Display title for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The format in which Dataset data is structured.
    #
    #   * `TABULAR` – Data is structured in a tabular format.
    #
    #   * `NON_TABULAR` – Data is structured in a non-tabular format.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   Description for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] owner_info
    #   Contact information for a Dataset owner.
    #   @return [Types::DatasetOwnerInfo]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the Dataset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the Dataset was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_definition
    #   Definition for a schema on a tabular Dataset.
    #   @return [Types::SchemaUnion]
    #
    # @!attribute [rw] alias
    #   The unique resource identifier for a Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/Dataset AWS API Documentation
    #
    class Dataset < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_title,
      :kind,
      :dataset_description,
      :owner_info,
      :create_time,
      :last_modified_time,
      :schema_definition,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for Dataset owner info.
    #
    # @!attribute [rw] name
    #   The name of the Dataset owner.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   Phone number for the Dataset owner.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Email address for the Dataset owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DatasetOwnerInfo AWS API Documentation
    #
    class DatasetOwnerInfo < Struct.new(
      :name,
      :phone_number,
      :email)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # The request for a DeleteDataset operation.
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the Dataset to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :client_token,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from an DeleteDataset operation
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the deleted Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DeleteDatasetResponse AWS API Documentation
    #
    class DeleteDatasetResponse < Struct.new(
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DeletePermissionGroupRequest AWS API Documentation
    #
    class DeletePermissionGroupRequest < Struct.new(
      :permission_group_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the deleted permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DeletePermissionGroupResponse AWS API Documentation
    #
    class DeletePermissionGroupResponse < Struct.new(
      :permission_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user account that you want to disable.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DisableUserRequest AWS API Documentation
    #
    class DisableUserRequest < Struct.new(
      :user_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the disabled user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DisableUserResponse AWS API Documentation
    #
    class DisableUserResponse < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DisassociateUserFromPermissionGroupRequest AWS API Documentation
    #
    class DisassociateUserFromPermissionGroupRequest < Struct.new(
      :permission_group_id,
      :user_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The returned status code of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DisassociateUserFromPermissionGroupResponse AWS API Documentation
    #
    class DisassociateUserFromPermissionGroupResponse < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user account that you want to enable.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/EnableUserRequest AWS API Documentation
    #
    class EnableUserRequest < Struct.new(
      :user_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the enabled user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/EnableUserResponse AWS API Documentation
    #
    class EnableUserResponse < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe a changeset.
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset where the Changeset
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   The unique identifier of the Changeset for which to get data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetChangesetRequest AWS API Documentation
    #
    class GetChangesetRequest < Struct.new(
      :dataset_id,
      :changeset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a describe changeset operation
    #
    # @!attribute [rw] changeset_id
    #   The unique identifier for a Changeset.
    #   @return [String]
    #
    # @!attribute [rw] changeset_arn
    #   The ARN identifier of the Changeset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset where the Changeset
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   Type that indicates how a Changeset is applied to a Dataset.
    #
    #   * `REPLACE` – Changeset is considered as a replacement to all prior
    #     loaded Changesets.
    #
    #   * `APPEND` – Changeset is considered as an addition to the end of
    #     all prior loaded Changesets.
    #
    #   * `MODIFY` – Changeset is considered as a replacement to a specific
    #     prior ingested Changeset.
    #   @return [String]
    #
    # @!attribute [rw] source_params
    #   Options that define the location of the data being ingested.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] format_params
    #   Structure of the source file(s).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the Changeset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of Changeset creation operation.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The structure with error messages.
    #   @return [Types::ChangesetErrorInfo]
    #
    # @!attribute [rw] active_until_timestamp
    #   Time until which the Changeset is active. The value is determined as
    #   epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] active_from_timestamp
    #   Beginning time from which the Changeset is active. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] updates_changeset_id
    #   The unique identifier of the Changeset that is being updated.
    #   @return [String]
    #
    # @!attribute [rw] updated_by_changeset_id
    #   The unique identifier of the updated Changeset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetChangesetResponse AWS API Documentation
    #
    class GetChangesetResponse < Struct.new(
      :changeset_id,
      :changeset_arn,
      :dataset_id,
      :change_type,
      :source_params,
      :format_params,
      :create_time,
      :status,
      :error_info,
      :active_until_timestamp,
      :active_from_timestamp,
      :updates_changeset_id,
      :updated_by_changeset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for retrieving a data view detail. Grouped / accessible within
    # a dataset by its dataset id.
    #
    # @!attribute [rw] data_view_id
    #   The unique identifier for the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the Dataset used in the Dataview.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetDataViewRequest AWS API Documentation
    #
    class GetDataViewRequest < Struct.new(
      :data_view_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response from retrieving a dataview, which includes details on the
    # target database and table name
    #
    # @!attribute [rw] auto_update
    #   Flag to indicate Dataview should be updated automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] partition_columns
    #   Ordered set of column names used to partition data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the Dataset used in the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] as_of_timestamp
    #   Time range to use for the Dataview. The value is determined as epoch
    #   time in milliseconds. For example, the value for Monday, November 1,
    #   2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] error_info
    #   Information about an error that occurred for the Dataview.
    #   @return [Types::DataViewErrorInfo]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that a Dataview was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the Dataview was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_columns
    #   Columns to be used for sorting the data.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_view_id
    #   The unique identifier for the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] data_view_arn
    #   The ARN identifier of the Dataview.
    #   @return [String]
    #
    # @!attribute [rw] destination_type_params
    #   Options that define the destination type for the Dataview.
    #   @return [Types::DataViewDestinationTypeParams]
    #
    # @!attribute [rw] status
    #   The status of a Dataview creation.
    #
    #   * `RUNNING` – Dataview creation is running.
    #
    #   * `STARTING` – Dataview creation is starting.
    #
    #   * `FAILED` – Dataview creation has failed.
    #
    #   * `CANCELLED` – Dataview creation has been cancelled.
    #
    #   * `TIMEOUT` – Dataview creation has timed out.
    #
    #   * `SUCCESS` – Dataview creation has succeeded.
    #
    #   * `PENDING` – Dataview creation is pending.
    #
    #   * `FAILED_CLEANUP_FAILED` – Dataview creation failed and resource
    #     cleanup failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetDataViewResponse AWS API Documentation
    #
    class GetDataViewResponse < Struct.new(
      :auto_update,
      :partition_columns,
      :dataset_id,
      :as_of_timestamp,
      :error_info,
      :last_modified_time,
      :create_time,
      :sort_columns,
      :data_view_id,
      :data_view_arn,
      :destination_type_params,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for the GetDataset operation.
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for a Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetDatasetRequest AWS API Documentation
    #
    class GetDatasetRequest < Struct.new(
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for the GetDataset operation
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The ARN identifier of the Dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_title
    #   Display title for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The format in which Dataset data is structured.
    #
    #   * `TABULAR` – Data is structured in a tabular format.
    #
    #   * `NON_TABULAR` – Data is structured in a non-tabular format.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   A description of the Dataset.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the Dataset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the Dataset was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_definition
    #   Definition for a schema on a tabular Dataset.
    #   @return [Types::SchemaUnion]
    #
    # @!attribute [rw] alias
    #   The unique resource identifier for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the Dataset creation.
    #
    #   * `PENDING` – Dataset is pending creation.
    #
    #   * `FAILED` – Dataset creation has failed.
    #
    #   * `SUCCESS` – Dataset creation has succeeded.
    #
    #   * `RUNNING` – Dataset creation is running.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetDatasetResponse AWS API Documentation
    #
    class GetDatasetResponse < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_title,
      :kind,
      :dataset_description,
      :create_time,
      :last_modified_time,
      :schema_definition,
      :alias,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_view_id
    #   The unique identifier for the Dataview that you want to access.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetExternalDataViewAccessDetailsRequest AWS API Documentation
    #
    class GetExternalDataViewAccessDetailsRequest < Struct.new(
      :data_view_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials required to access the external Dataview from the S3
    #   location.
    #   @return [Types::AwsCredentials]
    #
    # @!attribute [rw] s3_location
    #   The location where the external Dataview is stored.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetExternalDataViewAccessDetailsResponse AWS API Documentation
    #
    class GetExternalDataViewAccessDetailsResponse < Struct.new(
      :credentials,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetPermissionGroupRequest AWS API Documentation
    #
    class GetPermissionGroupRequest < Struct.new(
      :permission_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group
    #   The structure for a permission group.
    #   @return [Types::PermissionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetPermissionGroupResponse AWS API Documentation
    #
    class GetPermissionGroupResponse < Struct.new(
      :permission_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for GetProgrammaticAccessCredentials operation
    #
    # @!attribute [rw] duration_in_minutes
    #   The time duration in which the credentials remain valid.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_id
    #   The FinSpace environment identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetProgrammaticAccessCredentialsRequest AWS API Documentation
    #
    class GetProgrammaticAccessCredentialsRequest < Struct.new(
      :duration_in_minutes,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for GetProgrammaticAccessCredentials operation
    #
    # @!attribute [rw] credentials
    #   Returns the programmatic credentials.
    #   @return [Types::Credentials]
    #
    # @!attribute [rw] duration_in_minutes
    #   Returns the duration in which the credentials will remain valid.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetProgrammaticAccessCredentialsResponse AWS API Documentation
    #
    class GetProgrammaticAccessCredentialsResponse < Struct.new(
      :credentials,
      :duration_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier of the user to get data for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user account that is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the user account.
    #
    #   * `CREATING` – The user account creation is in progress.
    #
    #   * `ENABLED` – The user account is created and is currently active.
    #
    #   * `DISABLED` – The user account is currently inactive.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address that is associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates the type of user.
    #
    #   * `SUPER_USER` – A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   ^
    #   ^
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The
    #     users are assigned permissions by adding them to a permission
    #     group.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] api_access
    #   Indicates whether the user can use the
    #   `GetProgrammaticAccessCredentials` API to obtain credentials that
    #   can then be used to access other FinSpace Data API operations.
    #
    #   * `ENABLED` – The user has permissions to use the APIs.
    #
    #   * `DISABLED` – The user does not have permissions to use any APIs.
    #   @return [String]
    #
    # @!attribute [rw] api_access_principal_arn
    #   The ARN identifier of an AWS user or role that is allowed to call
    #   the `GetProgrammaticAccessCredentials` API to obtain a credentials
    #   token for a specific FinSpace user. This must be an IAM role within
    #   your FinSpace account.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the user account was created in FinSpace. The
    #   value is determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_enabled_time
    #   Describes the last time the user account was enabled. The value is
    #   determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_disabled_time
    #   Describes the last time the user account was disabled. The value is
    #   determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   Describes the last time the user account was updated. The value is
    #   determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_login_time
    #   Describes the last time that the user logged into their account. The
    #   value is determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user_id,
      :status,
      :first_name,
      :last_name,
      :email_address,
      :type,
      :api_access,
      :api_access_principal_arn,
      :create_time,
      :last_enabled_time,
      :last_disabled_time,
      :last_modified_time,
      :last_login_time)
      SENSITIVE = [:first_name, :last_name, :email_address]
      include Aws::Structure
    end

    # @!attribute [rw] location_type
    #   Specify the type of the working location.
    #
    #   * `SAGEMAKER` – Use the Amazon S3 location as a temporary location
    #     to store data content when working with FinSpace Notebooks that
    #     run on SageMaker studio.
    #
    #   * `INGESTION` – Use the Amazon S3 location as a staging location to
    #     copy your data content and then use the location with the
    #     Changeset creation operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetWorkingLocationRequest AWS API Documentation
    #
    class GetWorkingLocationRequest < Struct.new(
      :location_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_uri
    #   Returns the Amazon S3 URI for the working location.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   Returns the Amazon S3 Path for the working location.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   Returns the Amazon S3 bucket name for the working location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetWorkingLocationResponse AWS API Documentation
    #
    class GetWorkingLocationResponse < Struct.new(
      :s3_uri,
      :s3_path,
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit has exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to ListChangesetsRequest. It exposes minimal query filters.
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset to which the
    #   Changeset belongs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListChangesetsRequest AWS API Documentation
    #
    class ListChangesetsRequest < Struct.new(
      :dataset_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response to ListChangesetsResponse. This returns a list of dataset
    # changesets that match the query criteria.
    #
    # @!attribute [rw] changesets
    #   List of Changesets found.
    #   @return [Array<Types::ChangesetSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListChangesetsResponse AWS API Documentation
    #
    class ListChangesetsResponse < Struct.new(
      :changesets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for a list data views.
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the Dataset for which to retrieve
    #   Dataviews.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListDataViewsRequest AWS API Documentation
    #
    class ListDataViewsRequest < Struct.new(
      :dataset_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] data_views
    #   A list of Dataviews.
    #   @return [Array<Types::DataViewSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListDataViewsResponse AWS API Documentation
    #
    class ListDataViewsResponse < Struct.new(
      :next_token,
      :data_views)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for the ListDatasets operation.
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for the ListDatasets operation
    #
    # @!attribute [rw] datasets
    #   List of Datasets.
    #   @return [Array<Types::Dataset>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListPermissionGroupsByUserRequest AWS API Documentation
    #
    class ListPermissionGroupsByUserRequest < Struct.new(
      :user_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_groups
    #   A list of returned permission groups.
    #   @return [Array<Types::PermissionGroupByUser>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListPermissionGroupsByUserResponse AWS API Documentation
    #
    class ListPermissionGroupsByUserResponse < Struct.new(
      :permission_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListPermissionGroupsRequest AWS API Documentation
    #
    class ListPermissionGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_groups
    #   A list of all the permission groups.
    #   @return [Array<Types::PermissionGroup>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListPermissionGroupsResponse AWS API Documentation
    #
    class ListPermissionGroupsResponse < Struct.new(
      :permission_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListUsersByPermissionGroupRequest AWS API Documentation
    #
    class ListUsersByPermissionGroupRequest < Struct.new(
      :permission_group_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   Lists details of all users in a specific permission group.
    #   @return [Array<Types::UserByPermissionGroup>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListUsersByPermissionGroupResponse AWS API Documentation
    #
    class ListUsersByPermissionGroupResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   A list of all the user accounts.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure for a permission group.
    #
    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the permission group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] application_permissions
    #   Indicates the permissions that are granted to a specific group for
    #   accessing the FinSpace application.
    #
    #   When assigning application permissions, be aware that the permission
    #   `ManageUsersAndGroups` allows users to grant themselves or others
    #   access to any functionality in their FinSpace environment's
    #   application. It should only be granted to trusted users.
    #
    #   * `CreateDataset` – Group members can create new datasets.
    #
    #   * `ManageClusters` – Group members can manage Apache Spark clusters
    #     from FinSpace notebooks.
    #
    #   * `ManageUsersAndGroups` – Group members can manage users and
    #     permission groups. This is a privileged permission that allows
    #     users to grant themselves or others access to any functionality in
    #     the application. It should only be granted to trusted users.
    #
    #   * `ManageAttributeSets` – Group members can manage attribute sets.
    #
    #   * `ViewAuditData` – Group members can view audit data.
    #
    #   * `AccessNotebooks` – Group members will have access to FinSpace
    #     notebooks.
    #
    #   * `GetTemporaryCredentials` – Group members can get temporary API
    #     credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the group was created in FinSpace. The value
    #   is determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   Describes the last time the permission group was updated. The value
    #   is determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] membership_status
    #   Indicates the status of the user account within a permission group.
    #
    #   * `ADDITION_IN_PROGRESS` – The user account is currently being added
    #     to the permission group.
    #
    #   * `ADDITION_SUCCESS` – The user account is successfully added to the
    #     permission group.
    #
    #   * `REMOVAL_IN_PROGRESS` – The user is currently being removed from
    #     the permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/PermissionGroup AWS API Documentation
    #
    class PermissionGroup < Struct.new(
      :permission_group_id,
      :name,
      :description,
      :application_permissions,
      :create_time,
      :last_modified_time,
      :membership_status)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # The structure of a permission group associated with a user account.
    #
    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the permission group.
    #   @return [String]
    #
    # @!attribute [rw] membership_status
    #   Indicates the status of the user account within a permission group.
    #
    #   * `ADDITION_IN_PROGRESS` – The user account is currently being added
    #     to the permission group.
    #
    #   * `ADDITION_SUCCESS` – The user account is successfully added to the
    #     permission group.
    #
    #   * `REMOVAL_IN_PROGRESS` – The user is currently being removed from
    #     the permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/PermissionGroupByUser AWS API Documentation
    #
    class PermissionGroupByUser < Struct.new(
      :permission_group_id,
      :name,
      :membership_status)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Permission group parameters for Dataset permissions.
    #
    # Here is an example of how you could specify the
    # `PermissionGroupParams`:
    #
    # ` \{ "permissionGroupId": "0r6fCRtSTUk4XPfXQe3M0g",
    # "datasetPermissions": [ \{"permission": "ViewDatasetDetails"\},
    # \{"permission": "AddDatasetData"\}, \{"permission":
    # "EditDatasetMetadata"\}, \{"permission": "DeleteDataset"\} ] \} `
    #
    # @!attribute [rw] permission_group_id
    #   The unique identifier for the `PermissionGroup`.
    #   @return [String]
    #
    # @!attribute [rw] dataset_permissions
    #   List of resource permissions.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/PermissionGroupParams AWS API Documentation
    #
    class PermissionGroupParams < Struct.new(
      :permission_group_id,
      :dataset_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier of the user that a temporary password is
    #   requested for.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ResetUserPasswordRequest AWS API Documentation
    #
    class ResetUserPasswordRequest < Struct.new(
      :user_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier of the user that a new password is generated
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] temporary_password
    #   A randomly generated temporary password for the requested user
    #   account. This password expires in 7 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ResetUserPasswordResponse AWS API Documentation
    #
    class ResetUserPasswordResponse < Struct.new(
      :user_id,
      :temporary_password)
      SENSITIVE = [:temporary_password]
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource permission for a dataset. When you create a dataset, all the
    # other members of the same user group inherit access to the dataset.
    # You can only create a dataset if your user group has application
    # permission for Create Datasets.
    #
    # The following is a list of valid dataset permissions that you can
    # apply:
    #
    # * `ViewDatasetDetails`
    #
    # * `ReadDatasetDetails`
    #
    # * `AddDatasetData`
    #
    # * `CreateDataView`
    #
    # * `EditDatasetMetadata`
    #
    # * `DeleteDataset`
    #
    # For more information on the dataset permissions, see [Supported
    # Dataset Permissions][1] in the FinSpace User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/finspace/latest/userguide/managing-user-permissions.html#supported-dataset-permissions
    #
    # @!attribute [rw] permission
    #   Permission for a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ResourcePermission AWS API Documentation
    #
    class ResourcePermission < Struct.new(
      :permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of an external Dataview in an S3 bucket.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The path of the folder, within the S3 bucket that contains the
    #   Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Definition for a schema on a tabular Dataset.
    #
    # @!attribute [rw] columns
    #   List of column definitions.
    #   @return [Array<Types::ColumnDefinition>]
    #
    # @!attribute [rw] primary_key_columns
    #   List of column names used for primary key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/SchemaDefinition AWS API Documentation
    #
    class SchemaDefinition < Struct.new(
      :columns,
      :primary_key_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union of schema types.
    #
    # @!attribute [rw] tabular_schema_config
    #   The configuration for a schema on a tabular Dataset.
    #   @return [Types::SchemaDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/SchemaUnion AWS API Documentation
    #
    class SchemaUnion < Struct.new(
      :tabular_schema_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # Request to update an existing changeset.
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset in which the
    #   Changeset is created.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   The unique identifier for the Changeset to update.
    #   @return [String]
    #
    # @!attribute [rw] source_params
    #   Options that define the location of the data being ingested
    #   (`s3SourcePath`) and the source of the changeset (`sourceType`).
    #
    #   Both `s3SourcePath` and `sourceType` are required attributes.
    #
    #   Here is an example of how you could specify the `sourceParams`:
    #
    #   ` "sourceParams": \{ "s3SourcePath":
    #   "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #   "sourceType": "S3" \} `
    #
    #   The S3 path that you specify must allow the FinSpace role access. To
    #   do that, you first need to configure the IAM policy on S3 bucket.
    #   For more information, see [Loading data from an Amazon S3 Bucket
    #   using the FinSpace API][1]section.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] format_params
    #   Options that define the structure of the source file(s) including
    #   the format type (`formatType`), header row (`withHeader`), data
    #   separation character (`separator`) and the type of compression
    #   (`compression`).
    #
    #   `formatType` is a required attribute and can have the following
    #   values:
    #
    #   * `PARQUET` – Parquet source file format.
    #
    #   * `CSV` – CSV source file format.
    #
    #   * `JSON` – JSON source file format.
    #
    #   * `XML` – XML source file format.
    #
    #   Here is an example of how you could specify the `formatParams`:
    #
    #   ` "formatParams": \{ "formatType": "CSV", "withHeader": "true",
    #   "separator": ",", "compression":"None" \} `
    #
    #   Note that if you only provide `formatType` as `CSV`, the rest of the
    #   attributes will automatically default to CSV values as following:
    #
    #   ` \{ "withHeader": "true", "separator": "," \} `
    #
    #   For more information about supported file formats, see [Supported
    #   Data Types and File Formats][1] in the FinSpace User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateChangesetRequest AWS API Documentation
    #
    class UpdateChangesetRequest < Struct.new(
      :client_token,
      :dataset_id,
      :changeset_id,
      :source_params,
      :format_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a update changeset operation.
    #
    # @!attribute [rw] changeset_id
    #   The unique identifier for the Changeset to update.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace Dataset in which the
    #   Changeset is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateChangesetResponse AWS API Documentation
    #
    class UpdateChangesetResponse < Struct.new(
      :changeset_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for an UpdateDataset operation
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the Dataset to update.
    #   @return [String]
    #
    # @!attribute [rw] dataset_title
    #   A display title for the Dataset.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The format in which the Dataset data is structured.
    #
    #   * `TABULAR` – Data is structured in a tabular format.
    #
    #   * `NON_TABULAR` – Data is structured in a non-tabular format.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   A description for the Dataset.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The unique resource identifier for a Dataset.
    #   @return [String]
    #
    # @!attribute [rw] schema_definition
    #   Definition for a schema on a tabular Dataset.
    #   @return [Types::SchemaUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateDatasetRequest AWS API Documentation
    #
    class UpdateDatasetRequest < Struct.new(
      :client_token,
      :dataset_id,
      :dataset_title,
      :kind,
      :dataset_description,
      :alias,
      :schema_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from an UpdateDataset operation
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for updated Dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateDatasetResponse AWS API Documentation
    #
    class UpdateDatasetResponse < Struct.new(
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the permission group to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the permission group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description for the permission group.
    #   @return [String]
    #
    # @!attribute [rw] application_permissions
    #   The permissions that are granted to a specific group for accessing
    #   the FinSpace application.
    #
    #   When assigning application permissions, be aware that the permission
    #   `ManageUsersAndGroups` allows users to grant themselves or others
    #   access to any functionality in their FinSpace environment's
    #   application. It should only be granted to trusted users.
    #
    #   * `CreateDataset` – Group members can create new datasets.
    #
    #   * `ManageClusters` – Group members can manage Apache Spark clusters
    #     from FinSpace notebooks.
    #
    #   * `ManageUsersAndGroups` – Group members can manage users and
    #     permission groups. This is a privileged permission that allows
    #     users to grant themselves or others access to any functionality in
    #     the application. It should only be granted to trusted users.
    #
    #   * `ManageAttributeSets` – Group members can manage attribute sets.
    #
    #   * `ViewAuditData` – Group members can view audit data.
    #
    #   * `AccessNotebooks` – Group members will have access to FinSpace
    #     notebooks.
    #
    #   * `GetTemporaryCredentials` – Group members can get temporary API
    #     credentials.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdatePermissionGroupRequest AWS API Documentation
    #
    class UpdatePermissionGroupRequest < Struct.new(
      :permission_group_id,
      :name,
      :description,
      :application_permissions,
      :client_token)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] permission_group_id
    #   The unique identifier for the updated permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdatePermissionGroupResponse AWS API Documentation
    #
    class UpdatePermissionGroupResponse < Struct.new(
      :permission_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user account to update.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The option to indicate the type of user.
    #
    #   * `SUPER_USER`– A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The
    #     users are assigned permissions by adding them to a permission
    #     group.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] api_access
    #   The option to indicate whether the user can use the
    #   `GetProgrammaticAccessCredentials` API to obtain credentials that
    #   can then be used to access other FinSpace Data API operations.
    #
    #   * `ENABLED` – The user has permissions to use the APIs.
    #
    #   * `DISABLED` – The user does not have permissions to use any APIs.
    #   @return [String]
    #
    # @!attribute [rw] api_access_principal_arn
    #   The ARN identifier of an AWS user or role that is allowed to call
    #   the `GetProgrammaticAccessCredentials` API to obtain a credentials
    #   token for a specific FinSpace user. This must be an IAM role within
    #   your FinSpace account.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_id,
      :type,
      :first_name,
      :last_name,
      :api_access,
      :api_access_principal_arn,
      :client_token)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier of the updated user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the user account.
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the user account.
    #
    #   * `CREATING` – The user account creation is in progress.
    #
    #   * `ENABLED` – The user account is created and is currently active.
    #
    #   * `DISABLED` – The user account is currently inactive.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user. The email address serves as a uniquer
    #   identifier for each user and cannot be changed after it's created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates the type of user.
    #
    #   * `SUPER_USER` – A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The
    #     users are assigned permissions by adding them to a permission
    #     group.
    #   @return [String]
    #
    # @!attribute [rw] api_access
    #   Indicates whether the user can use the
    #   `GetProgrammaticAccessCredentials` API to obtain credentials that
    #   can then be used to access other FinSpace Data API operations.
    #
    #   * `ENABLED` – The user has permissions to use the APIs.
    #
    #   * `DISABLED` – The user does not have permissions to use any APIs.
    #   @return [String]
    #
    # @!attribute [rw] api_access_principal_arn
    #   The ARN identifier of an AWS user or role that is allowed to call
    #   the `GetProgrammaticAccessCredentials` API to obtain a credentials
    #   token for a specific FinSpace user. This must be an IAM role within
    #   your FinSpace account.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp at which the user account was created in FinSpace. The
    #   value is determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_enabled_time
    #   Describes the last time the user account was enabled. The value is
    #   determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_disabled_time
    #   Describes the last time the user account was disabled. The value is
    #   determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_time
    #   Describes the last time the user account was updated. The value is
    #   determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_login_time
    #   Describes the last time that the user logged into their account. The
    #   value is determined as epoch time in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/User AWS API Documentation
    #
    class User < Struct.new(
      :user_id,
      :status,
      :first_name,
      :last_name,
      :email_address,
      :type,
      :api_access,
      :api_access_principal_arn,
      :create_time,
      :last_enabled_time,
      :last_disabled_time,
      :last_modified_time,
      :last_login_time)
      SENSITIVE = [:first_name, :last_name, :email_address]
      include Aws::Structure
    end

    # The structure of a user account associated with a permission group.
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the user account.
    #
    #   * `CREATING` – The user account creation is in progress.
    #
    #   * `ENABLED` – The user account is created and is currently active.
    #
    #   * `DISABLED` – The user account is currently inactive.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user. The email address serves as a unique
    #   identifier for each user and cannot be changed after it's created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates the type of user.
    #
    #   * `SUPER_USER` – A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The
    #     users are assigned permissions by adding them to a permission
    #     group.
    #   @return [String]
    #
    # @!attribute [rw] api_access
    #   Indicates whether the user can access FinSpace API operations.
    #
    #   * `ENABLED` – The user has permissions to use the API operations.
    #
    #   * `DISABLED` – The user does not have permissions to use any API
    #     operations.
    #   @return [String]
    #
    # @!attribute [rw] api_access_principal_arn
    #   The IAM ARN identifier that is attached to FinSpace API calls.
    #   @return [String]
    #
    # @!attribute [rw] membership_status
    #   Indicates the status of the user account within a permission group.
    #
    #   * `ADDITION_IN_PROGRESS` – The user account is currently being added
    #     to the permission group.
    #
    #   * `ADDITION_SUCCESS` – The user account is successfully added to the
    #     permission group.
    #
    #   * `REMOVAL_IN_PROGRESS` – The user is currently being removed from
    #     the permission group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UserByPermissionGroup AWS API Documentation
    #
    class UserByPermissionGroup < Struct.new(
      :user_id,
      :status,
      :first_name,
      :last_name,
      :email_address,
      :type,
      :api_access,
      :api_access_principal_arn,
      :membership_status)
      SENSITIVE = [:first_name, :last_name, :email_address]
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
