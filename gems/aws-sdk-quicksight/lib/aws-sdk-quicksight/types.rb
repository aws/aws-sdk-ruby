# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QuickSight
  module Types

    # You don't have access to this item. The provided credentials
    # couldn't be validated. You might not be authorized to carry out the
    # request. Make sure that your account is authorized to use the Amazon
    # QuickSight service, that your policies have the correct permissions,
    # and that you are using the correct access keys.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon QuickSight customizations associated with your AWS account
    # or a QuickSight namespace in a specific AWS Region.
    #
    # @note When making an API call, you may pass AccountCustomization
    #   data as a hash:
    #
    #       {
    #         default_theme: "Arn",
    #       }
    #
    # @!attribute [rw] default_theme
    #   The default theme for this QuickSight subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccountCustomization AWS API Documentation
    #
    class AccountCustomization < Struct.new(
      :default_theme)
      SENSITIVE = []
      include Aws::Structure
    end

    # The QuickSight settings associated with your AWS account.
    #
    # @!attribute [rw] account_name
    #   The "account name" you provided for the QuickSight subscription in
    #   your AWS account. You create this name when you sign up for
    #   QuickSight. It is unique in all of AWS and it appears only in the
    #   console when users sign in.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The edition of QuickSight that you're currently subscribed to:
    #   Enterprise edition or Standard edition.
    #   @return [String]
    #
    # @!attribute [rw] default_namespace
    #   The default QuickSight namespace for your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] notification_email
    #   The main notification email for your QuickSight subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :account_name,
      :edition,
      :default_namespace,
      :notification_email)
      SENSITIVE = []
      include Aws::Structure
    end

    # The active AWS Identity and Access Management (IAM) policy assignment.
    #
    # @!attribute [rw] assignment_name
    #   A name for the IAM policy assignment.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ActiveIAMPolicyAssignment AWS API Documentation
    #
    class ActiveIAMPolicyAssignment < Struct.new(
      :assignment_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ad hoc (one-time) filtering option.
    #
    # @note When making an API call, you may pass AdHocFilteringOption
    #   data as a hash:
    #
    #       {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] availability_status
    #   Availability status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AdHocFilteringOption AWS API Documentation
    #
    class AdHocFilteringOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Elasticsearch Service parameters.
    #
    # @note When making an API call, you may pass AmazonElasticsearchParameters
    #   data as a hash:
    #
    #       {
    #         domain: "Domain", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The Amazon Elasticsearch Service domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AmazonElasticsearchParameters AWS API Documentation
    #
    class AmazonElasticsearchParameters < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata structure for an analysis in Amazon QuickSight
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status associated with the analysis.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Errors associated with the analysis.
    #   @return [Array<Types::AnalysisError>]
    #
    # @!attribute [rw] data_set_arns
    #   The ARNs of the datasets of the analysis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the analysis was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the analysis was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] sheets
    #   A list of the associated sheets with the unique identifier and name
    #   of each sheet.
    #   @return [Array<Types::Sheet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Analysis AWS API Documentation
    #
    class Analysis < Struct.new(
      :analysis_id,
      :arn,
      :name,
      :status,
      :errors,
      :data_set_arns,
      :theme_arn,
      :created_time,
      :last_updated_time,
      :sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metadata error structure for an analysis.
    #
    # @!attribute [rw] type
    #   The type of the analysis error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the analysis error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisError AWS API Documentation
    #
    class AnalysisError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that you apply when searching for one or more analyses.
    #
    # @note When making an API call, you may pass AnalysisSearchFilter
    #   data as a hash:
    #
    #       {
    #         operator: "StringEquals", # accepts StringEquals
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER
    #         value: "String",
    #       }
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StringEquals"`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example
    #   `"Name": "QUICKSIGHT_USER"`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, in this case `QUICKSIGHT_USER`, that
    #   you want to use as a filter, for example `"Value"`. An example is
    #   `"arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSearchFilter AWS API Documentation
    #
    class AnalysisSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source entity of an analysis.
    #
    # @note When making an API call, you may pass AnalysisSourceEntity
    #   data as a hash:
    #
    #       {
    #         source_template: {
    #           data_set_references: [ # required
    #             {
    #               data_set_placeholder: "NonEmptyString", # required
    #               data_set_arn: "Arn", # required
    #             },
    #           ],
    #           arn: "Arn", # required
    #         },
    #       }
    #
    # @!attribute [rw] source_template
    #   The source template for the source entity of the analysis.
    #   @return [Types::AnalysisSourceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSourceEntity AWS API Documentation
    #
    class AnalysisSourceEntity < Struct.new(
      :source_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source template of an analysis.
    #
    # @note When making an API call, you may pass AnalysisSourceTemplate
    #   data as a hash:
    #
    #       {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] data_set_references
    #   The dataset references of the source template of an analysis.
    #   @return [Array<Types::DataSetReference>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the source template of an
    #   analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSourceTemplate AWS API Documentation
    #
    class AnalysisSourceTemplate < Struct.new(
      :data_set_references,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary metadata that describes an analysis.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis. This ID displays in the URL.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis. This name is displayed in the QuickSight
    #   console.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The last known status for the analysis.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the analysis was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the analysis was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSummary AWS API Documentation
    #
    class AnalysisSummary < Struct.new(
      :arn,
      :analysis_id,
      :name,
      :status,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Athena parameters.
    #
    # @note When making an API call, you may pass AthenaParameters
    #   data as a hash:
    #
    #       {
    #         work_group: "WorkGroup",
    #       }
    #
    # @!attribute [rw] work_group
    #   The workgroup that Amazon Athena uses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AthenaParameters AWS API Documentation
    #
    class AthenaParameters < Struct.new(
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Aurora parameters.
    #
    # @note When making an API call, you may pass AuroraParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AuroraParameters AWS API Documentation
    #
    class AuroraParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Aurora with PostgreSQL compatibility parameters.
    #
    # @note When making an API call, you may pass AuroraPostgreSqlParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AuroraPostgreSqlParameters AWS API Documentation
    #
    class AuroraPostgreSqlParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS IoT Analytics parameters.
    #
    # @note When making an API call, you may pass AwsIotAnalyticsParameters
    #   data as a hash:
    #
    #       {
    #         data_set_name: "DataSetName", # required
    #       }
    #
    # @!attribute [rw] data_set_name
    #   Dataset name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AwsIotAnalyticsParameters AWS API Documentation
    #
    class AwsIotAnalyticsParameters < Struct.new(
      :data_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for tile borders for visuals.
    #
    # @note When making an API call, you may pass BorderStyle
    #   data as a hash:
    #
    #       {
    #         show: false,
    #       }
    #
    # @!attribute [rw] show
    #   The option to enable display of borders for visuals.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BorderStyle AWS API Documentation
    #
    class BorderStyle < Struct.new(
      :show)
      SENSITIVE = []
      include Aws::Structure
    end

    # A calculated column for a dataset.
    #
    # @note When making an API call, you may pass CalculatedColumn
    #   data as a hash:
    #
    #       {
    #         column_name: "ColumnName", # required
    #         column_id: "ColumnId", # required
    #         expression: "Expression", # required
    #       }
    #
    # @!attribute [rw] column_name
    #   Column name.
    #   @return [String]
    #
    # @!attribute [rw] column_id
    #   A unique ID to identify a calculated column. During a dataset
    #   update, if the column ID of a calculated column matches that of an
    #   existing calculated column, Amazon QuickSight preserves the existing
    #   calculated column.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression that defines the calculated column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CalculatedColumn AWS API Documentation
    #
    class CalculatedColumn < Struct.new(
      :column_name,
      :column_id,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelIngestionRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "string", # required
    #         ingestion_id: "IngestionId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestionRequest AWS API Documentation
    #
    class CancelIngestionRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :ingestion_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the data ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestionResponse AWS API Documentation
    #
    class CancelIngestionResponse < Struct.new(
      :arn,
      :ingestion_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that casts a column to a different type.
    #
    # @note When making an API call, you may pass CastColumnTypeOperation
    #   data as a hash:
    #
    #       {
    #         column_name: "ColumnName", # required
    #         new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #         format: "TypeCastFormat",
    #       }
    #
    # @!attribute [rw] column_name
    #   Column name.
    #   @return [String]
    #
    # @!attribute [rw] new_column_type
    #   New column data type.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   When casting a column from string to datetime type, you can supply a
    #   string in a format supported by Amazon QuickSight to denote the
    #   source data format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CastColumnTypeOperation AWS API Documentation
    #
    class CastColumnTypeOperation < Struct.new(
      :column_name,
      :new_column_type,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Groupings of columns that work together in certain Amazon QuickSight
    # features. This is a variant type structure. For this structure to be
    # valid, only one of the attributes can be non-null.
    #
    # @note When making an API call, you may pass ColumnGroup
    #   data as a hash:
    #
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # required, accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       }
    #
    # @!attribute [rw] geo_spatial_column_group
    #   Geospatial column group that denotes a hierarchy.
    #   @return [Types::GeoSpatialColumnGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnGroup AWS API Documentation
    #
    class ColumnGroup < Struct.new(
      :geo_spatial_column_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure describing the name, data type, and geographic role of the
    # columns.
    #
    # @!attribute [rw] name
    #   The name of the column group's column schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnGroupColumnSchema AWS API Documentation
    #
    class ColumnGroupColumnSchema < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The column group schema.
    #
    # @!attribute [rw] name
    #   The name of the column group schema.
    #   @return [String]
    #
    # @!attribute [rw] column_group_column_schema_list
    #   A structure containing the list of schemas for column group columns.
    #   @return [Array<Types::ColumnGroupColumnSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnGroupSchema AWS API Documentation
    #
    class ColumnGroupSchema < Struct.new(
      :name,
      :column_group_column_schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The column schema.
    #
    # @!attribute [rw] name
    #   The name of the column schema.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the column schema.
    #   @return [String]
    #
    # @!attribute [rw] geographic_role
    #   The geographic role of the column schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnSchema AWS API Documentation
    #
    class ColumnSchema < Struct.new(
      :name,
      :data_type,
      :geographic_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag for a column in a TagColumnOperation structure. This is a
    # variant type structure. For this structure to be valid, only one of
    # the attributes can be non-null.
    #
    # @note When making an API call, you may pass ColumnTag
    #   data as a hash:
    #
    #       {
    #         column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #       }
    #
    # @!attribute [rw] column_geographic_role
    #   A geospatial role for a column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnTag AWS API Documentation
    #
    class ColumnTag < Struct.new(
      :column_geographic_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource is already in a state that indicates an operation is
    # happening that must complete before a new update can be applied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConcurrentUpdatingException AWS API Documentation
    #
    class ConcurrentUpdatingException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccountCustomizationRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace",
    #         account_customization: { # required
    #           default_theme: "Arn",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to customize QuickSight
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The QuickSight namespace that you want to add customizations to.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The QuickSight customizations you're adding in the current AWS
    #   Region. You can add these to an AWS account and a QuickSight
    #   namespace.
    #
    #   For example, you can add a default theme by setting
    #   `AccountCustomization` to the midnight theme:
    #   `"AccountCustomization": \{ "DefaultTheme":
    #   "arn:aws:quicksight::aws:theme/MIDNIGHT" \}`. Or, you can add a
    #   custom theme by specifying `"AccountCustomization": \{
    #   "DefaultTheme":
    #   "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    #   \}`.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] tags
    #   A list of the tags that you want to attach to this resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountCustomizationRequest AWS API Documentation
    #
    class CreateAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :account_customization,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the customization that you
    #   created for this AWS account.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to customize QuickSight
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the customization you're creating.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The QuickSight customizations you're adding in the current AWS
    #   Region.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountCustomizationResponse AWS API Documentation
    #
    class CreateAccountCustomizationResponse < Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #         name: "AnalysisName", # required
    #         parameters: {
    #           string_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: ["String"], # required
    #             },
    #           ],
    #           integer_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1], # required
    #             },
    #           ],
    #           decimal_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1.0], # required
    #             },
    #           ],
    #           date_time_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [Time.now], # required
    #             },
    #           ],
    #         },
    #         permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         source_entity: { # required
    #           source_template: {
    #             data_set_references: [ # required
    #               {
    #                 data_set_placeholder: "NonEmptyString", # required
    #                 data_set_arn: "Arn", # required
    #               },
    #             ],
    #             arn: "Arn", # required
    #           },
    #         },
    #         theme_arn: "Arn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account where you are creating an analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID for the analysis that you're creating. This ID displays in
    #   the URL of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the analysis that you're creating. This name
    #   displays for the analysis in the QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might
    #   accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis. You can use the `Permissions` structure
    #   to grant permissions by providing a list of AWS Identity and Access
    #   Management (IAM) action information for each principal listed by
    #   Amazon Resource Name (ARN).
    #
    #   To specify no permissions, omit `Permissions`.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] source_entity
    #   A source entity to use for the analysis that you're creating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #   @return [Types::AnalysisSourceEntity]
    #
    # @!attribute [rw] theme_arn
    #   The ARN for the theme to apply to the analysis that you're
    #   creating. To see the theme in the QuickSight console, make sure that
    #   you have access to it.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the analysis.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAnalysisRequest AWS API Documentation
    #
    class CreateAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :name,
      :parameters,
      :permissions,
      :source_entity,
      :theme_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN for the analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the creation of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAnalysisResponse AWS API Documentation
    #
    class CreateAnalysisResponse < Struct.new(
      :arn,
      :analysis_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that creates calculated columns. Columns created
    # in one such operation form a lexical closure.
    #
    # @note When making an API call, you may pass CreateColumnsOperation
    #   data as a hash:
    #
    #       {
    #         columns: [ # required
    #           {
    #             column_name: "ColumnName", # required
    #             column_id: "ColumnId", # required
    #             expression: "Expression", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] columns
    #   Calculated columns to create.
    #   @return [Array<Types::CalculatedColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateColumnsOperation AWS API Documentation
    #
    class CreateColumnsOperation < Struct.new(
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDashboardRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         name: "DashboardName", # required
    #         parameters: {
    #           string_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: ["String"], # required
    #             },
    #           ],
    #           integer_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1], # required
    #             },
    #           ],
    #           decimal_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1.0], # required
    #             },
    #           ],
    #           date_time_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [Time.now], # required
    #             },
    #           ],
    #         },
    #         permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         source_entity: { # required
    #           source_template: {
    #             data_set_references: [ # required
    #               {
    #                 data_set_placeholder: "NonEmptyString", # required
    #                 data_set_arn: "Arn", # required
    #               },
    #             ],
    #             arn: "Arn", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         version_description: "VersionDescription",
    #         dashboard_publish_options: {
    #           ad_hoc_filtering_option: {
    #             availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #           export_to_csv_option: {
    #             availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #           sheet_controls_option: {
    #             visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #           },
    #         },
    #         theme_arn: "Arn",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account where you want to create the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the creation of the dashboard, which you want to
    #   use to override the default settings. A dashboard can have any type
    #   of parameters, and some parameters might accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] permissions
    #   A structure that contains the permissions of the dashboard. You can
    #   use this structure for granting permissions by providing a list of
    #   IAM action information for each principal ARN.
    #
    #   To specify no permissions, omit the permissions list.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you create the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only create a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to create a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the CreateTemplate API operation. For `SourceTemplate`, specify the
    #   Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate`ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list
    #   the replacement datasets for the placeholders listed in the
    #   original. The schema in each dataset must match its placeholder.
    #   @return [Types::DashboardSourceEntity]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dashboard.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_description
    #   A description for the first version of the dashboard being created.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can
    #     be either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data
    #     to .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility
    #     state can be either `COLLAPSED` or `EXPANDED`. This option is
    #     `COLLAPSED` by default.
    #   @return [Types::DashboardPublishOptions]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that is used in the source entity. The theme ARN must exist in
    #   the same AWS account where you create the dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboardRequest AWS API Documentation
    #
    class CreateDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :name,
      :parameters,
      :permissions,
      :source_entity,
      :tags,
      :version_description,
      :dashboard_publish_options,
      :theme_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN of the dashboard, including the version number of the first
    #   version that is created.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the dashboard creation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboardResponse AWS API Documentation
    #
    class CreateDashboardResponse < Struct.new(
      :arn,
      :version_arn,
      :dashboard_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSetRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         physical_table_map: { # required
    #           "PhysicalTableId" => {
    #             relational_table: {
    #               data_source_arn: "Arn", # required
    #               schema: "RelationalTableSchema",
    #               name: "RelationalTableName", # required
    #               input_columns: [ # required
    #                 {
    #                   name: "ColumnName", # required
    #                   type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #                 },
    #               ],
    #             },
    #             custom_sql: {
    #               data_source_arn: "Arn", # required
    #               name: "CustomSqlName", # required
    #               sql_query: "SqlQuery", # required
    #               columns: [
    #                 {
    #                   name: "ColumnName", # required
    #                   type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #                 },
    #               ],
    #             },
    #             s3_source: {
    #               data_source_arn: "Arn", # required
    #               upload_settings: {
    #                 format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #                 start_from_row: 1,
    #                 contains_header: false,
    #                 text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #                 delimiter: "Delimiter",
    #               },
    #               input_columns: [ # required
    #                 {
    #                   name: "ColumnName", # required
    #                   type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         logical_table_map: {
    #           "LogicalTableId" => {
    #             alias: "LogicalTableAlias", # required
    #             data_transforms: [
    #               {
    #                 project_operation: {
    #                   projected_columns: ["String"], # required
    #                 },
    #                 filter_operation: {
    #                   condition_expression: "Expression", # required
    #                 },
    #                 create_columns_operation: {
    #                   columns: [ # required
    #                     {
    #                       column_name: "ColumnName", # required
    #                       column_id: "ColumnId", # required
    #                       expression: "Expression", # required
    #                     },
    #                   ],
    #                 },
    #                 rename_column_operation: {
    #                   column_name: "ColumnName", # required
    #                   new_column_name: "ColumnName", # required
    #                 },
    #                 cast_column_type_operation: {
    #                   column_name: "ColumnName", # required
    #                   new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #                   format: "TypeCastFormat",
    #                 },
    #                 tag_column_operation: {
    #                   column_name: "ColumnName", # required
    #                   tags: [ # required
    #                     {
    #                       column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             source: { # required
    #               join_instruction: {
    #                 left_operand: "LogicalTableId", # required
    #                 right_operand: "LogicalTableId", # required
    #                 type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #                 on_clause: "OnClause", # required
    #               },
    #               physical_table_id: "PhysicalTableId",
    #             },
    #           },
    #         },
    #         import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #         column_groups: [
    #           {
    #             geo_spatial_column_group: {
    #               name: "ColumnGroupName", # required
    #               country_code: "US", # required, accepts US
    #               columns: ["ColumnName"], # required
    #             },
    #           },
    #         ],
    #         permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         row_level_permission_data_set: {
    #           namespace: "Namespace",
    #           arn: "Arn", # required
    #           permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   An ID for the dataset that you want to create. This ID is unique per
    #   AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] physical_table_map
    #   Declares the physical tables that are available in the underlying
    #   data sources.
    #   @return [Hash<String,Types::PhysicalTable>]
    #
    # @!attribute [rw] logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #   @return [Hash<String,Types::LogicalTable>]
    #
    # @!attribute [rw] import_mode
    #   Indicates whether you want to import the data into SPICE.
    #   @return [String]
    #
    # @!attribute [rw] column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #   @return [Array<Types::ColumnGroup>]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the data that you want to
    #   create.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dataset.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSetRequest AWS API Documentation
    #
    class CreateDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :name,
      :physical_table_map,
      :logical_table_map,
      :import_mode,
      :column_groups,
      :permissions,
      :row_level_permission_data_set,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_arn
    #   The ARN for the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   The ID of the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSetResponse AWS API Documentation
    #
    class CreateDataSetResponse < Struct.new(
      :arn,
      :data_set_id,
      :ingestion_arn,
      :ingestion_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_source_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         type: "ADOBE_ANALYTICS", # required, accepts ADOBE_ANALYTICS, AMAZON_ELASTICSEARCH, ATHENA, AURORA, AURORA_POSTGRESQL, AWS_IOT_ANALYTICS, GITHUB, JIRA, MARIADB, MYSQL, POSTGRESQL, PRESTO, REDSHIFT, S3, SALESFORCE, SERVICENOW, SNOWFLAKE, SPARK, SQLSERVER, TERADATA, TWITTER, TIMESTREAM
    #         data_source_parameters: {
    #           amazon_elasticsearch_parameters: {
    #             domain: "Domain", # required
    #           },
    #           athena_parameters: {
    #             work_group: "WorkGroup",
    #           },
    #           aurora_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           aurora_postgre_sql_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           aws_iot_analytics_parameters: {
    #             data_set_name: "DataSetName", # required
    #           },
    #           jira_parameters: {
    #             site_base_url: "SiteBaseUrl", # required
    #           },
    #           maria_db_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           my_sql_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           postgre_sql_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           presto_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             catalog: "Catalog", # required
    #           },
    #           rds_parameters: {
    #             instance_id: "InstanceId", # required
    #             database: "Database", # required
    #           },
    #           redshift_parameters: {
    #             host: "Host",
    #             port: 1,
    #             database: "Database", # required
    #             cluster_id: "ClusterId",
    #           },
    #           s3_parameters: {
    #             manifest_file_location: { # required
    #               bucket: "S3Bucket", # required
    #               key: "S3Key", # required
    #             },
    #           },
    #           service_now_parameters: {
    #             site_base_url: "SiteBaseUrl", # required
    #           },
    #           snowflake_parameters: {
    #             host: "Host", # required
    #             database: "Database", # required
    #             warehouse: "Warehouse", # required
    #           },
    #           spark_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #           },
    #           sql_server_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           teradata_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           twitter_parameters: {
    #             query: "Query", # required
    #             max_rows: 1, # required
    #           },
    #         },
    #         credentials: {
    #           credential_pair: {
    #             username: "Username", # required
    #             password: "Password", # required
    #             alternate_data_source_parameters: [
    #               {
    #                 amazon_elasticsearch_parameters: {
    #                   domain: "Domain", # required
    #                 },
    #                 athena_parameters: {
    #                   work_group: "WorkGroup",
    #                 },
    #                 aurora_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 aurora_postgre_sql_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 aws_iot_analytics_parameters: {
    #                   data_set_name: "DataSetName", # required
    #                 },
    #                 jira_parameters: {
    #                   site_base_url: "SiteBaseUrl", # required
    #                 },
    #                 maria_db_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 my_sql_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 postgre_sql_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 presto_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   catalog: "Catalog", # required
    #                 },
    #                 rds_parameters: {
    #                   instance_id: "InstanceId", # required
    #                   database: "Database", # required
    #                 },
    #                 redshift_parameters: {
    #                   host: "Host",
    #                   port: 1,
    #                   database: "Database", # required
    #                   cluster_id: "ClusterId",
    #                 },
    #                 s3_parameters: {
    #                   manifest_file_location: { # required
    #                     bucket: "S3Bucket", # required
    #                     key: "S3Key", # required
    #                   },
    #                 },
    #                 service_now_parameters: {
    #                   site_base_url: "SiteBaseUrl", # required
    #                 },
    #                 snowflake_parameters: {
    #                   host: "Host", # required
    #                   database: "Database", # required
    #                   warehouse: "Warehouse", # required
    #                 },
    #                 spark_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                 },
    #                 sql_server_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 teradata_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 twitter_parameters: {
    #                   query: "Query", # required
    #                   max_rows: 1, # required
    #                 },
    #               },
    #             ],
    #           },
    #           copy_source_arn: "CopySourceArn",
    #         },
    #         permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         vpc_connection_properties: {
    #           vpc_connection_arn: "Arn", # required
    #         },
    #         ssl_properties: {
    #           disable_ssl: false,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   An ID for the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source. Currently, the supported types for this
    #   operation are: `ATHENA, AURORA, AURORA_POSTGRESQL, MARIADB, MYSQL,
    #   POSTGRESQL, PRESTO, REDSHIFT, S3, SNOWFLAKE, SPARK, SQLSERVER,
    #   TERADATA`. Use `ListDataSources` to return a list of all data
    #   sources.
    #   @return [String]
    #
    # @!attribute [rw] data_source_parameters
    #   The parameters that QuickSight uses to connect to your underlying
    #   source.
    #   @return [Types::DataSourceParameters]
    #
    # @!attribute [rw] credentials
    #   The credentials QuickSight that uses to connect to your underlying
    #   source. Currently, only credentials based on user name and password
    #   are supported.
    #   @return [Types::DataSourceCredentials]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the data source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] vpc_connection_properties
    #   Use this parameter only when you want QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #   @return [Types::VpcConnectionProperties]
    #
    # @!attribute [rw] ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #   @return [Types::SslProperties]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the data source.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id,
      :name,
      :type,
      :data_source_parameters,
      :credentials,
      :permissions,
      :vpc_connection_properties,
      :ssl_properties,
      :tags)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :arn,
      :data_source_id,
      :creation_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupMembershipRequest
    #   data as a hash:
    #
    #       {
    #         member_name: "GroupMemberName", # required
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] member_name
    #   The name of the user that you want to add to the group membership.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to add the user to.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembershipRequest AWS API Documentation
    #
    class CreateGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_member
    #   The group member.
    #   @return [Types::GroupMember]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembershipResponse AWS API Documentation
    #
    class CreateGroupMembershipResponse < Struct.new(
      :group_member,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         description: "GroupDescription",
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   A name for the group that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the group that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIAMPolicyAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         assignment_name: "IAMPolicyAssignmentName", # required
    #         assignment_status: "ENABLED", # required, accepts ENABLED, DRAFT, DISABLED
    #         policy_arn: "Arn",
    #         identities: {
    #           "String" => ["IdentityName"],
    #         },
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account where you want to assign an IAM policy to
    #   QuickSight users or groups.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment. It must be unique within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy to apply to the QuickSight users and
    #   groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The QuickSight users, groups, or both that you want to assign the
    #   policy to.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] namespace
    #   The namespace that contains the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignmentRequest AWS API Documentation
    #
    class CreateIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :assignment_status,
      :policy_arn,
      :identities,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_name
    #   The name of the assignment. This name must be unique within the AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID for the assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy that is applied to the QuickSight users
    #   and groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The QuickSight users, groups, or both that the IAM policy is
    #   assigned to.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignmentResponse AWS API Documentation
    #
    class CreateIAMPolicyAssignmentResponse < Struct.new(
      :assignment_name,
      :assignment_id,
      :assignment_status,
      :policy_arn,
      :identities,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIngestionRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "string", # required
    #         ingestion_id: "IngestionId", # required
    #         aws_account_id: "AwsAccountId", # required
    #       }
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestionRequest AWS API Documentation
    #
    class CreateIngestionRequest < Struct.new(
      :data_set_id,
      :ingestion_id,
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the data ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_status
    #   The ingestion status.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestionResponse AWS API Documentation
    #
    class CreateIngestionResponse < Struct.new(
      :arn,
      :ingestion_id,
      :ingestion_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         identity_store: "QUICKSIGHT", # required, accepts QUICKSIGHT
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to create the QuickSight
    #   namespace in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name that you want to use to describe the new namespace.
    #   @return [String]
    #
    # @!attribute [rw] identity_store
    #   Specifies the type of your user identity directory. Currently, this
    #   supports users with an identity type of `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to associate with the namespace that you're
    #   creating.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateNamespaceRequest AWS API Documentation
    #
    class CreateNamespaceRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :identity_store,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the QuickSight namespace you created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new namespace that you created.
    #   @return [String]
    #
    # @!attribute [rw] capacity_region
    #   The AWS Region that you want to use for the free SPICE capacity for
    #   the new namespace. This is set to the region that you run
    #   CreateNamespace in.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the creation of the namespace. This is an asynchronous
    #   process. A status of `CREATED` means that your namespace is ready to
    #   use. If an error occurs, it indicates if the process is `retryable`
    #   or `non-retryable`. In the case of a non-retryable error, refer to
    #   the error message for follow-up tasks.
    #   @return [String]
    #
    # @!attribute [rw] identity_store
    #   Specifies the type of your user identity directory. Currently, this
    #   supports users with an identity type of `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateNamespaceResponse AWS API Documentation
    #
    class CreateNamespaceResponse < Struct.new(
      :arn,
      :name,
      :capacity_region,
      :creation_status,
      :identity_store,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTemplateAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #         template_version_number: 1, # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template that you
    #   creating an alias for.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name that you want to give to the template alias that you're
    #   creating. Don't start the alias name with the `$` character. Alias
    #   names that start with `$` are reserved by QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] template_version_number
    #   The version number of the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAliasRequest AWS API Documentation
    #
    class CreateTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      :template_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias
    #   Information about the template alias.
    #   @return [Types::TemplateAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAliasResponse AWS API Documentation
    #
    class CreateTemplateAliasResponse < Struct.new(
      :template_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTemplateRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         name: "TemplateName",
    #         permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         source_entity: { # required
    #           source_analysis: {
    #             arn: "Arn", # required
    #             data_set_references: [ # required
    #               {
    #                 data_set_placeholder: "NonEmptyString", # required
    #                 data_set_arn: "Arn", # required
    #               },
    #             ],
    #           },
    #           source_template: {
    #             arn: "Arn", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         version_description: "VersionDescription",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template that you want to create. This template is
    #   unique per AWS Region in each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the template.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions to be set on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you create the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name
    #   (ARN). For `SourceTemplate`, specify the ARN of the source template.
    #   For `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the
    #   placeholders listed in the original. The schema in each dataset must
    #   match its placeholder.
    #   @return [Types::TemplateSourceEntity]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_description
    #   A description of the current template version being created. This
    #   API operation creates the first version of the template. Every time
    #   `UpdateTemplate` is called, a new version is created. Each version
    #   of the template maintains a description of the version in the
    #   `VersionDescription` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateRequest AWS API Documentation
    #
    class CreateTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :name,
      :permissions,
      :source_entity,
      :tags,
      :version_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN for the template.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN for the template, including the version information of the
    #   first version.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The template creation status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateResponse AWS API Documentation
    #
    class CreateTemplateResponse < Struct.new(
      :arn,
      :version_arn,
      :template_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateThemeAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #         theme_version_number: 1, # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme for the new theme
    #   alias.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name that you want to give to the theme alias that you are
    #   creating. The alias name can't begin with a `$`. Alias names that
    #   start with `$` are reserved by Amazon QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] theme_version_number
    #   The version number of the theme.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeAliasRequest AWS API Documentation
    #
    class CreateThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      :theme_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias
    #   Information about the theme alias.
    #   @return [Types::ThemeAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeAliasResponse AWS API Documentation
    #
    class CreateThemeAliasResponse < Struct.new(
      :theme_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateThemeRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         name: "ThemeName", # required
    #         base_theme_id: "RestrictiveResourceId", # required
    #         version_description: "VersionDescription",
    #         configuration: { # required
    #           data_color_palette: {
    #             colors: ["HexColor"],
    #             min_max_gradient: ["HexColor"],
    #             empty_fill_color: "HexColor",
    #           },
    #           ui_color_palette: {
    #             primary_foreground: "HexColor",
    #             primary_background: "HexColor",
    #             secondary_foreground: "HexColor",
    #             secondary_background: "HexColor",
    #             accent: "HexColor",
    #             accent_foreground: "HexColor",
    #             danger: "HexColor",
    #             danger_foreground: "HexColor",
    #             warning: "HexColor",
    #             warning_foreground: "HexColor",
    #             success: "HexColor",
    #             success_foreground: "HexColor",
    #             dimension: "HexColor",
    #             dimension_foreground: "HexColor",
    #             measure: "HexColor",
    #             measure_foreground: "HexColor",
    #           },
    #           sheet: {
    #             tile: {
    #               border: {
    #                 show: false,
    #               },
    #             },
    #             tile_layout: {
    #               gutter: {
    #                 show: false,
    #               },
    #               margin: {
    #                 show: false,
    #               },
    #             },
    #           },
    #         },
    #         permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account where you want to store the new theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme that you want to create. The theme ID is unique
    #   per AWS Region in each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the theme.
    #   @return [String]
    #
    # @!attribute [rw] base_theme_id
    #   The ID of the theme that a custom theme will inherit from. All
    #   themes inherit from one of the starting themes defined by Amazon
    #   QuickSight. For a list of the starting themes, use `ListThemes` or
    #   choose **Themes** from within a QuickSight analysis.
    #   @return [String]
    #
    # @!attribute [rw] version_description
    #   A description of the first version of the theme that you're
    #   creating. Every time `UpdateTheme` is called, a new version is
    #   created. Each version of the theme has a description of the version
    #   in the `VersionDescription` field.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The theme configuration, which contains the theme display
    #   properties.
    #   @return [Types::ThemeConfiguration]
    #
    # @!attribute [rw] permissions
    #   A valid grouping of resource permissions to apply to the new theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the resource tag or tags that you
    #   want to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeRequest AWS API Documentation
    #
    class CreateThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :name,
      :base_theme_id,
      :version_description,
      :configuration,
      :permissions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the theme.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The Amazon Resource Name (ARN) for the new theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID of the theme.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The theme creation status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeResponse AWS API Documentation
    #
    class CreateThemeResponse < Struct.new(
      :arn,
      :version_arn,
      :theme_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The combination of user name and password that are used as
    # credentials.
    #
    # @note When making an API call, you may pass CredentialPair
    #   data as a hash:
    #
    #       {
    #         username: "Username", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #             },
    #             aurora_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aurora_postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aws_iot_analytics_parameters: {
    #               data_set_name: "DataSetName", # required
    #             },
    #             jira_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             maria_db_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             my_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             presto_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             rds_parameters: {
    #               instance_id: "InstanceId", # required
    #               database: "Database", # required
    #             },
    #             redshift_parameters: {
    #               host: "Host",
    #               port: 1,
    #               database: "Database", # required
    #               cluster_id: "ClusterId",
    #             },
    #             s3_parameters: {
    #               manifest_file_location: { # required
    #                 bucket: "S3Bucket", # required
    #                 key: "S3Key", # required
    #               },
    #             },
    #             service_now_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             snowflake_parameters: {
    #               host: "Host", # required
    #               database: "Database", # required
    #               warehouse: "Warehouse", # required
    #             },
    #             spark_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             sql_server_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             teradata_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             twitter_parameters: {
    #               query: "Query", # required
    #               max_rows: 1, # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] username
    #   User name.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Password.
    #   @return [String]
    #
    # @!attribute [rw] alternate_data_source_parameters
    #   A set of alternate data source parameters that you want to share for
    #   these credentials. The credentials are applied in tandem with the
    #   data source parameters when you copy a data source by using a create
    #   or update request. The API operation compares the
    #   `DataSourceParameters` structure that's in the request with the
    #   structures in the `AlternateDataSourceParameters` allowlist. If the
    #   structures are an exact match, the request is allowed to use the new
    #   data source with the existing credentials. If the
    #   `AlternateDataSourceParameters` list is null, the
    #   `DataSourceParameters` originally used with these `Credentials` is
    #   automatically allowed.
    #   @return [Array<Types::DataSourceParameters>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CredentialPair AWS API Documentation
    #
    class CredentialPair < Struct.new(
      :username,
      :password,
      :alternate_data_source_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A physical table type built from the results of the custom SQL query.
    #
    # @note When making an API call, you may pass CustomSql
    #   data as a hash:
    #
    #       {
    #         data_source_arn: "Arn", # required
    #         name: "CustomSqlName", # required
    #         sql_query: "SqlQuery", # required
    #         columns: [
    #           {
    #             name: "ColumnName", # required
    #             type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the SQL query result.
    #   @return [String]
    #
    # @!attribute [rw] sql_query
    #   The SQL query.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   The column schema from the SQL query result set.
    #   @return [Array<Types::InputColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomSql AWS API Documentation
    #
    class CustomSql < Struct.new(
      :data_source_arn,
      :name,
      :sql_query,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard.
    #
    # @!attribute [rw] dashboard_id
    #   Dashboard ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version.
    #   @return [Types::DashboardVersion]
    #
    # @!attribute [rw] created_time
    #   The time that this dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_published_time
    #   The last time that this dataset was published.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dataset was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Dashboard AWS API Documentation
    #
    class Dashboard < Struct.new(
      :dashboard_id,
      :arn,
      :name,
      :version,
      :created_time,
      :last_published_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard error.
    #
    # @!attribute [rw] type
    #   Type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardError AWS API Documentation
    #
    class DashboardError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard publish options.
    #
    # @note When making an API call, you may pass DashboardPublishOptions
    #   data as a hash:
    #
    #       {
    #         ad_hoc_filtering_option: {
    #           availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         export_to_csv_option: {
    #           availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         sheet_controls_option: {
    #           visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #         },
    #       }
    #
    # @!attribute [rw] ad_hoc_filtering_option
    #   Ad hoc (one-time) filtering option.
    #   @return [Types::AdHocFilteringOption]
    #
    # @!attribute [rw] export_to_csv_option
    #   Export to .csv option.
    #   @return [Types::ExportToCSVOption]
    #
    # @!attribute [rw] sheet_controls_option
    #   Sheet controls option.
    #   @return [Types::SheetControlsOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardPublishOptions AWS API Documentation
    #
    class DashboardPublishOptions < Struct.new(
      :ad_hoc_filtering_option,
      :export_to_csv_option,
      :sheet_controls_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that you apply when searching for dashboards.
    #
    # @note When making an API call, you may pass DashboardSearchFilter
    #   data as a hash:
    #
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER
    #         value: "String",
    #       }
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example, `"Operator": "StringEquals"`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example,
    #   `"Name": "QUICKSIGHT_USER"`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, in this case `QUICKSIGHT_USER`, that
    #   you want to use as a filter, for example, `"Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSearchFilter AWS API Documentation
    #
    class DashboardSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard source entity.
    #
    # @note When making an API call, you may pass DashboardSourceEntity
    #   data as a hash:
    #
    #       {
    #         source_template: {
    #           data_set_references: [ # required
    #             {
    #               data_set_placeholder: "NonEmptyString", # required
    #               data_set_arn: "Arn", # required
    #             },
    #           ],
    #           arn: "Arn", # required
    #         },
    #       }
    #
    # @!attribute [rw] source_template
    #   Source template.
    #   @return [Types::DashboardSourceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSourceEntity AWS API Documentation
    #
    class DashboardSourceEntity < Struct.new(
      :source_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard source template.
    #
    # @note When making an API call, you may pass DashboardSourceTemplate
    #   data as a hash:
    #
    #       {
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] data_set_references
    #   Dataset references.
    #   @return [Array<Types::DataSetReference>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSourceTemplate AWS API Documentation
    #
    class DashboardSourceTemplate < Struct.new(
      :data_set_references,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   Dashboard ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dashboard was updated.
    #   @return [Time]
    #
    # @!attribute [rw] published_version_number
    #   Published version number.
    #   @return [Integer]
    #
    # @!attribute [rw] last_published_time
    #   The last time that this dashboard was published.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSummary AWS API Documentation
    #
    class DashboardSummary < Struct.new(
      :arn,
      :dashboard_id,
      :name,
      :created_time,
      :last_updated_time,
      :published_version_number,
      :last_published_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard version.
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard version was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Errors associated with this dashboard version.
    #   @return [Array<Types::DashboardError>]
    #
    # @!attribute [rw] version_number
    #   Version number for this version of the dashboard.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] source_entity_arn
    #   Source entity ARN.
    #   @return [String]
    #
    # @!attribute [rw] data_set_arns
    #   The Amazon Resource Numbers (ARNs) for the datasets that are
    #   associated with this version of the dashboard.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   Description.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme associated with a version of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] sheets
    #   A list of the associated sheets with the unique identifier and name
    #   of each sheet.
    #   @return [Array<Types::Sheet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVersion AWS API Documentation
    #
    class DashboardVersion < Struct.new(
      :created_time,
      :errors,
      :version_number,
      :status,
      :arn,
      :source_entity_arn,
      :data_set_arns,
      :description,
      :theme_arn,
      :sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard version summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard version was created.
    #   @return [Time]
    #
    # @!attribute [rw] version_number
    #   Version number.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] source_entity_arn
    #   Source entity ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVersionSummary AWS API Documentation
    #
    class DashboardVersionSummary < Struct.new(
      :arn,
      :created_time,
      :version_number,
      :status,
      :source_entity_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme colors that are used for data colors in charts. The colors
    # description is a hexidecimal color code that consists of six
    # alphanumerical characters, prefixed with `#`, for example #37BFF5.
    #
    # @note When making an API call, you may pass DataColorPalette
    #   data as a hash:
    #
    #       {
    #         colors: ["HexColor"],
    #         min_max_gradient: ["HexColor"],
    #         empty_fill_color: "HexColor",
    #       }
    #
    # @!attribute [rw] colors
    #   The hexadecimal codes for the colors.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_max_gradient
    #   The minimum and maximum hexadecimal codes that describe a color
    #   gradient.
    #   @return [Array<String>]
    #
    # @!attribute [rw] empty_fill_color
    #   The hexadecimal code of a color that applies to charts where a lack
    #   of data is highlighted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataColorPalette AWS API Documentation
    #
    class DataColorPalette < Struct.new(
      :colors,
      :min_max_gradient,
      :empty_fill_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] physical_table_map
    #   Declares the physical tables that are available in the underlying
    #   data sources.
    #   @return [Hash<String,Types::PhysicalTable>]
    #
    # @!attribute [rw] logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #   @return [Hash<String,Types::LogicalTable>]
    #
    # @!attribute [rw] output_columns
    #   The list of columns after all transforms. These columns are
    #   available in templates, analyses, and dashboards.
    #   @return [Array<Types::OutputColumn>]
    #
    # @!attribute [rw] import_mode
    #   Indicates whether you want to import the data into SPICE.
    #   @return [String]
    #
    # @!attribute [rw] consumed_spice_capacity_in_bytes
    #   The amount of SPICE capacity used by this dataset. This is 0 if the
    #   dataset isn't imported into SPICE.
    #   @return [Integer]
    #
    # @!attribute [rw] column_groups
    #   Groupings of columns that work together in certain Amazon QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #   @return [Array<Types::ColumnGroup>]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the dataset.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSet AWS API Documentation
    #
    class DataSet < Struct.new(
      :arn,
      :data_set_id,
      :name,
      :created_time,
      :last_updated_time,
      :physical_table_map,
      :logical_table_map,
      :output_columns,
      :import_mode,
      :consumed_spice_capacity_in_bytes,
      :column_groups,
      :row_level_permission_data_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset configuration.
    #
    # @!attribute [rw] placeholder
    #   Placeholder.
    #   @return [String]
    #
    # @!attribute [rw] data_set_schema
    #   Dataset schema.
    #   @return [Types::DataSetSchema]
    #
    # @!attribute [rw] column_group_schema_list
    #   A structure containing the list of column group schemas.
    #   @return [Array<Types::ColumnGroupSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetConfiguration AWS API Documentation
    #
    class DataSetConfiguration < Struct.new(
      :placeholder,
      :data_set_schema,
      :column_group_schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset reference.
    #
    # @note When making an API call, you may pass DataSetReference
    #   data as a hash:
    #
    #       {
    #         data_set_placeholder: "NonEmptyString", # required
    #         data_set_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] data_set_placeholder
    #   Dataset placeholder.
    #   @return [String]
    #
    # @!attribute [rw] data_set_arn
    #   Dataset Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetReference AWS API Documentation
    #
    class DataSetReference < Struct.new(
      :data_set_placeholder,
      :data_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset schema.
    #
    # @!attribute [rw] column_schema_list
    #   A structure containing the list of column schemas.
    #   @return [Array<Types::ColumnSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetSchema AWS API Documentation
    #
    class DataSetSchema < Struct.new(
      :column_schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] import_mode
    #   Indicates whether you want to import the data into SPICE.
    #   @return [String]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the dataset.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetSummary AWS API Documentation
    #
    class DataSetSummary < Struct.new(
      :arn,
      :data_set_id,
      :name,
      :created_time,
      :last_updated_time,
      :import_mode,
      :row_level_permission_data_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of a data source.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source. This type indicates which database
    #   engine the data source connects to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this data source was updated.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_parameters
    #   The parameters that Amazon QuickSight uses to connect to your
    #   underlying source. This is a variant type structure. For this
    #   structure to be valid, only one of the attributes can be non-null.
    #   @return [Types::DataSourceParameters]
    #
    # @!attribute [rw] alternate_data_source_parameters
    #   A set of alternate data source parameters that you want to share for
    #   the credentials stored with this data source. The credentials are
    #   applied in tandem with the data source parameters when you copy a
    #   data source by using a create or update request. The API operation
    #   compares the `DataSourceParameters` structure that's in the request
    #   with the structures in the `AlternateDataSourceParameters`
    #   allowlist. If the structures are an exact match, the request is
    #   allowed to use the credentials from this existing data source. If
    #   the `AlternateDataSourceParameters` list is null, the `Credentials`
    #   originally used with this `DataSourceParameters` are automatically
    #   allowed.
    #   @return [Array<Types::DataSourceParameters>]
    #
    # @!attribute [rw] vpc_connection_properties
    #   The VPC connection information. You need to use this parameter only
    #   when you want QuickSight to use a VPC connection when connecting to
    #   your underlying source.
    #   @return [Types::VpcConnectionProperties]
    #
    # @!attribute [rw] ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #   @return [Types::SslProperties]
    #
    # @!attribute [rw] error_info
    #   Error information from the last update or the creation of the data
    #   source.
    #   @return [Types::DataSourceErrorInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :arn,
      :data_source_id,
      :name,
      :type,
      :status,
      :created_time,
      :last_updated_time,
      :data_source_parameters,
      :alternate_data_source_parameters,
      :vpc_connection_properties,
      :ssl_properties,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data source credentials. This is a variant type structure. For this
    # structure to be valid, only one of the attributes can be non-null.
    #
    # @note When making an API call, you may pass DataSourceCredentials
    #   data as a hash:
    #
    #       {
    #         credential_pair: {
    #           username: "Username", # required
    #           password: "Password", # required
    #           alternate_data_source_parameters: [
    #             {
    #               amazon_elasticsearch_parameters: {
    #                 domain: "Domain", # required
    #               },
    #               athena_parameters: {
    #                 work_group: "WorkGroup",
    #               },
    #               aurora_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               aurora_postgre_sql_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               aws_iot_analytics_parameters: {
    #                 data_set_name: "DataSetName", # required
    #               },
    #               jira_parameters: {
    #                 site_base_url: "SiteBaseUrl", # required
    #               },
    #               maria_db_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               my_sql_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               postgre_sql_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               presto_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 catalog: "Catalog", # required
    #               },
    #               rds_parameters: {
    #                 instance_id: "InstanceId", # required
    #                 database: "Database", # required
    #               },
    #               redshift_parameters: {
    #                 host: "Host",
    #                 port: 1,
    #                 database: "Database", # required
    #                 cluster_id: "ClusterId",
    #               },
    #               s3_parameters: {
    #                 manifest_file_location: { # required
    #                   bucket: "S3Bucket", # required
    #                   key: "S3Key", # required
    #                 },
    #               },
    #               service_now_parameters: {
    #                 site_base_url: "SiteBaseUrl", # required
    #               },
    #               snowflake_parameters: {
    #                 host: "Host", # required
    #                 database: "Database", # required
    #                 warehouse: "Warehouse", # required
    #               },
    #               spark_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #               },
    #               sql_server_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               teradata_parameters: {
    #                 host: "Host", # required
    #                 port: 1, # required
    #                 database: "Database", # required
    #               },
    #               twitter_parameters: {
    #                 query: "Query", # required
    #                 max_rows: 1, # required
    #               },
    #             },
    #           ],
    #         },
    #         copy_source_arn: "CopySourceArn",
    #       }
    #
    # @!attribute [rw] credential_pair
    #   Credential pair. For more information, see CredentialPair.
    #   @return [Types::CredentialPair]
    #
    # @!attribute [rw] copy_source_arn
    #   The Amazon Resource Name (ARN) of a data source that has the
    #   credential pair that you want to use. When `CopySourceArn` is not
    #   null, the credential pair from the data source in the ARN is used as
    #   the credentials for the `DataSourceCredentials` structure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceCredentials AWS API Documentation
    #
    class DataSourceCredentials < Struct.new(
      :credential_pair,
      :copy_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information for the data source creation or update.
    #
    # @!attribute [rw] type
    #   Error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceErrorInfo AWS API Documentation
    #
    class DataSourceErrorInfo < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters that Amazon QuickSight uses to connect to your
    # underlying data source. This is a variant type structure. For this
    # structure to be valid, only one of the attributes can be non-null.
    #
    # @note When making an API call, you may pass DataSourceParameters
    #   data as a hash:
    #
    #       {
    #         amazon_elasticsearch_parameters: {
    #           domain: "Domain", # required
    #         },
    #         athena_parameters: {
    #           work_group: "WorkGroup",
    #         },
    #         aurora_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         aurora_postgre_sql_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         aws_iot_analytics_parameters: {
    #           data_set_name: "DataSetName", # required
    #         },
    #         jira_parameters: {
    #           site_base_url: "SiteBaseUrl", # required
    #         },
    #         maria_db_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         my_sql_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         postgre_sql_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         presto_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           catalog: "Catalog", # required
    #         },
    #         rds_parameters: {
    #           instance_id: "InstanceId", # required
    #           database: "Database", # required
    #         },
    #         redshift_parameters: {
    #           host: "Host",
    #           port: 1,
    #           database: "Database", # required
    #           cluster_id: "ClusterId",
    #         },
    #         s3_parameters: {
    #           manifest_file_location: { # required
    #             bucket: "S3Bucket", # required
    #             key: "S3Key", # required
    #           },
    #         },
    #         service_now_parameters: {
    #           site_base_url: "SiteBaseUrl", # required
    #         },
    #         snowflake_parameters: {
    #           host: "Host", # required
    #           database: "Database", # required
    #           warehouse: "Warehouse", # required
    #         },
    #         spark_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #         },
    #         sql_server_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         teradata_parameters: {
    #           host: "Host", # required
    #           port: 1, # required
    #           database: "Database", # required
    #         },
    #         twitter_parameters: {
    #           query: "Query", # required
    #           max_rows: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] amazon_elasticsearch_parameters
    #   Amazon Elasticsearch Service parameters.
    #   @return [Types::AmazonElasticsearchParameters]
    #
    # @!attribute [rw] athena_parameters
    #   Amazon Athena parameters.
    #   @return [Types::AthenaParameters]
    #
    # @!attribute [rw] aurora_parameters
    #   Amazon Aurora MySQL parameters.
    #   @return [Types::AuroraParameters]
    #
    # @!attribute [rw] aurora_postgre_sql_parameters
    #   Aurora PostgreSQL parameters.
    #   @return [Types::AuroraPostgreSqlParameters]
    #
    # @!attribute [rw] aws_iot_analytics_parameters
    #   AWS IoT Analytics parameters.
    #   @return [Types::AwsIotAnalyticsParameters]
    #
    # @!attribute [rw] jira_parameters
    #   Jira parameters.
    #   @return [Types::JiraParameters]
    #
    # @!attribute [rw] maria_db_parameters
    #   MariaDB parameters.
    #   @return [Types::MariaDbParameters]
    #
    # @!attribute [rw] my_sql_parameters
    #   MySQL parameters.
    #   @return [Types::MySqlParameters]
    #
    # @!attribute [rw] postgre_sql_parameters
    #   PostgreSQL parameters.
    #   @return [Types::PostgreSqlParameters]
    #
    # @!attribute [rw] presto_parameters
    #   Presto parameters.
    #   @return [Types::PrestoParameters]
    #
    # @!attribute [rw] rds_parameters
    #   Amazon RDS parameters.
    #   @return [Types::RdsParameters]
    #
    # @!attribute [rw] redshift_parameters
    #   Amazon Redshift parameters.
    #   @return [Types::RedshiftParameters]
    #
    # @!attribute [rw] s3_parameters
    #   S3 parameters.
    #   @return [Types::S3Parameters]
    #
    # @!attribute [rw] service_now_parameters
    #   ServiceNow parameters.
    #   @return [Types::ServiceNowParameters]
    #
    # @!attribute [rw] snowflake_parameters
    #   Snowflake parameters.
    #   @return [Types::SnowflakeParameters]
    #
    # @!attribute [rw] spark_parameters
    #   Spark parameters.
    #   @return [Types::SparkParameters]
    #
    # @!attribute [rw] sql_server_parameters
    #   SQL Server parameters.
    #   @return [Types::SqlServerParameters]
    #
    # @!attribute [rw] teradata_parameters
    #   Teradata parameters.
    #   @return [Types::TeradataParameters]
    #
    # @!attribute [rw] twitter_parameters
    #   Twitter parameters.
    #   @return [Types::TwitterParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceParameters AWS API Documentation
    #
    class DataSourceParameters < Struct.new(
      :amazon_elasticsearch_parameters,
      :athena_parameters,
      :aurora_parameters,
      :aurora_postgre_sql_parameters,
      :aws_iot_analytics_parameters,
      :jira_parameters,
      :maria_db_parameters,
      :my_sql_parameters,
      :postgre_sql_parameters,
      :presto_parameters,
      :rds_parameters,
      :redshift_parameters,
      :s3_parameters,
      :service_now_parameters,
      :snowflake_parameters,
      :spark_parameters,
      :sql_server_parameters,
      :teradata_parameters,
      :twitter_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date-time parameter.
    #
    # @note When making an API call, you may pass DateTimeParameter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         values: [Time.now], # required
    #       }
    #
    # @!attribute [rw] name
    #   A display name for the date-time parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the date-time parameter.
    #   @return [Array<Time>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeParameter AWS API Documentation
    #
    class DateTimeParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A decimal parameter.
    #
    # @note When making an API call, you may pass DecimalParameter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         values: [1.0], # required
    #       }
    #
    # @!attribute [rw] name
    #   A display name for the decimal parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the decimal parameter.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalParameter AWS API Documentation
    #
    class DecimalParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountCustomizationRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to delete QuickSight
    #   customizations from in this AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The QuickSight namespace that you're deleting the customizations
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomizationRequest AWS API Documentation
    #
    class DeleteAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomizationResponse AWS API Documentation
    #
    class DeleteAccountCustomizationResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #         recovery_window_in_days: 1,
    #         force_delete_without_recovery: false,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account where you want to delete an analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're deleting.
    #   @return [String]
    #
    # @!attribute [rw] recovery_window_in_days
    #   A value that specifies the number of days that QuickSight waits
    #   before it deletes the analysis. You can't use this parameter with
    #   the `ForceDeleteWithoutRecovery` option in the same API call. The
    #   default value is 30.
    #   @return [Integer]
    #
    # @!attribute [rw] force_delete_without_recovery
    #   This option defaults to the value `NoForceDeleteWithoutRecovery`. To
    #   immediately delete the analysis, add the
    #   `ForceDeleteWithoutRecovery` option. You can't restore an analysis
    #   after it's deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAnalysisRequest AWS API Documentation
    #
    class DeleteAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :recovery_window_in_days,
      :force_delete_without_recovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the deleted analysis.
    #   @return [String]
    #
    # @!attribute [rw] deletion_time
    #   The date and time that the analysis is scheduled to be deleted.
    #   @return [Time]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAnalysisResponse AWS API Documentation
    #
    class DeleteAnalysisResponse < Struct.new(
      :status,
      :arn,
      :analysis_id,
      :deletion_time,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDashboardRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         version_number: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   deleting.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the dashboard. If the version number property
    #   is provided, only the specified version of the dashboard is deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboardRequest AWS API Documentation
    #
    class DeleteDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Secure Socket Layer (SSL) properties that apply for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboardResponse AWS API Documentation
    #
    class DeleteDashboardResponse < Struct.new(
      :status,
      :arn,
      :dashboard_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDataSetRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetRequest AWS API Documentation
    #
    class DeleteDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetResponse AWS API Documentation
    #
    class DeleteDataSetResponse < Struct.new(
      :arn,
      :data_set_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_source_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source that you deleted.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Struct.new(
      :arn,
      :data_source_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupMembershipRequest
    #   data as a hash:
    #
    #       {
    #         member_name: "GroupMemberName", # required
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to delete the user from.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembershipRequest AWS API Documentation
    #
    class DeleteGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembershipResponse AWS API Documentation
    #
    class DeleteGroupMembershipResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIAMPolicyAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         assignment_name: "IAMPolicyAssignmentName", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID where you want to delete the IAM policy
    #   assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that contains the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignmentRequest AWS API Documentation
    #
    class DeleteIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_name
    #   The name of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignmentResponse AWS API Documentation
    #
    class DeleteIAMPolicyAssignmentResponse < Struct.new(
      :assignment_name,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to delete the QuickSight
    #   namespace from.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteNamespaceRequest AWS API Documentation
    #
    class DeleteNamespaceRequest < Struct.new(
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteNamespaceResponse AWS API Documentation
    #
    class DeleteNamespaceResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTemplateAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the item to delete.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template that the specified alias is for.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name for the template alias. To delete a specific alias, you
    #   delete the version that the alias points to. You can specify the
    #   alias name, or specify the latest version of the template by
    #   providing the keyword `$LATEST` in the `AliasName` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAliasRequest AWS API Documentation
    #
    class DeleteTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] template_id
    #   An ID for the template associated with the deletion.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name for the template alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAliasResponse AWS API Documentation
    #
    class DeleteTemplateAliasResponse < Struct.new(
      :status,
      :template_id,
      :alias_name,
      :arn,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTemplateRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         version_number: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   deleting.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   Specifies the version of the template that you want to delete. If
    #   you don't provide a version number, `DeleteTemplate` deletes all
    #   versions of the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateRequest AWS API Documentation
    #
    class DeleteTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateResponse AWS API Documentation
    #
    class DeleteTemplateResponse < Struct.new(
      :request_id,
      :arn,
      :template_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteThemeAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme alias to delete.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme that the specified alias is for.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The unique name for the theme alias to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeAliasRequest AWS API Documentation
    #
    class DeleteThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_name
    #   The name for the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme resource using the
    #   deleted alias.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme associated with the deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeAliasResponse AWS API Documentation
    #
    class DeleteThemeAliasResponse < Struct.new(
      :alias_name,
      :arn,
      :request_id,
      :status,
      :theme_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteThemeRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         version_number: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   deleting.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version of the theme that you want to delete.
    #
    #   **Note:** If you don't provide a version number, you're using this
    #   call to `DeleteTheme` to delete all versions of the theme.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeRequest AWS API Documentation
    #
    class DeleteThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeResponse AWS API Documentation
    #
    class DeleteThemeResponse < Struct.new(
      :arn,
      :request_id,
      :status,
      :theme_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserByPrincipalIdRequest
    #   data as a hash:
    #
    #       {
    #         principal_id: "String", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalIdRequest AWS API Documentation
    #
    class DeleteUserByPrincipalIdRequest < Struct.new(
      :principal_id,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalIdResponse AWS API Documentation
    #
    class DeleteUserByPrincipalIdResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAccountCustomizationRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace",
    #         resolved: false,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to describe QuickSight
    #   customizations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The QuickSight namespace that you want to describe QuickSight
    #   customizations for.
    #   @return [String]
    #
    # @!attribute [rw] resolved
    #   The `Resolved` flag works with the other parameters to determine
    #   which view of QuickSight customizations is returned. You can add
    #   this flag to your command to use the same view that QuickSight uses
    #   to identify which customizations to apply to the console. Omit this
    #   flag, or set it to `no-resolved`, to reveal customizations that are
    #   configured at different levels.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomizationRequest AWS API Documentation
    #
    class DescribeAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :resolved)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the customization that's
    #   associated with this AWS account.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The QuickSight namespace that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The QuickSight customizations that exist in the current AWS Region.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomizationResponse AWS API Documentation
    #
    class DescribeAccountCustomizationResponse < Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that contains the settings that you want
    #   to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSettingsRequest AWS API Documentation
    #
    class DescribeAccountSettingsRequest < Struct.new(
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   The QuickSight settings for this AWS account. This information
    #   includes the edition of Amazon QuickSight that you subscribed to
    #   (Standard or Enterprise) and the notification email for the
    #   QuickSight subscription. In the QuickSight console, the QuickSight
    #   subscription is sometimes referred to as a QuickSight "account"
    #   even though it's technically not an account by itself. Instead,
    #   it's a subscription to the QuickSight service for your AWS account.
    #   The edition that you subscribe to applies to QuickSight in every AWS
    #   Region where you use it.
    #   @return [Types::AccountSettings]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSettingsResponse AWS API Documentation
    #
    class DescribeAccountSettingsResponse < Struct.new(
      :account_settings,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAnalysisPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analysis whose
    #   permissions you're describing. You must be using the AWS account
    #   that the analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis whose permissions you're describing. The ID
    #   is part of the analysis URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisPermissionsRequest AWS API Documentation
    #
    class DescribeAnalysisPermissionsRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_id
    #   The ID of the analysis whose permissions you're describing.
    #   @return [String]
    #
    # @!attribute [rw] analysis_arn
    #   The Amazon Resource Name (ARN) of the analysis whose permissions
    #   you're describing.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisPermissionsResponse AWS API Documentation
    #
    class DescribeAnalysisPermissionsResponse < Struct.new(
      :analysis_id,
      :analysis_arn,
      :permissions,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analysis. You must be
    #   using the AWS account that the analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're describing. The ID is part of
    #   the URL of the analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisRequest AWS API Documentation
    #
    class DescribeAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis
    #   A metadata structure that contains summary information for the
    #   analysis that you're describing.
    #   @return [Types::Analysis]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisResponse AWS API Documentation
    #
    class DescribeAnalysisResponse < Struct.new(
      :analysis,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDashboardPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   describing permissions for.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissionsRequest AWS API Documentation
    #
    class DescribeDashboardPermissionsRequest < Struct.new(
      :aws_account_id,
      :dashboard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that contains the permissions for the dashboard.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissionsResponse AWS API Documentation
    #
    class DescribeDashboardPermissionsResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :permissions,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDashboardRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         version_number: 1,
    #         alias_name: "AliasName",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   describing.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number for the dashboard. If a version number isn't
    #   passed, the latest published dashboard version is described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardRequest AWS API Documentation
    #
    class DescribeDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard
    #   Information about the dashboard.
    #   @return [Types::Dashboard]
    #
    # @!attribute [rw] status
    #   The HTTP status of this request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardResponse AWS API Documentation
    #
    class DescribeDashboardResponse < Struct.new(
      :dashboard,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataSetPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissionsRequest AWS API Documentation
    #
    class DescribeDataSetPermissionsRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissionsResponse AWS API Documentation
    #
    class DescribeDataSetPermissionsResponse < Struct.new(
      :data_set_arn,
      :data_set_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataSetRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetRequest AWS API Documentation
    #
    class DescribeDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set
    #   Information on the dataset.
    #   @return [Types::DataSet]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetResponse AWS API Documentation
    #
    class DescribeDataSetResponse < Struct.new(
      :data_set,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataSourcePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_source_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissionsRequest AWS API Documentation
    #
    class DescribeDataSourcePermissionsRequest < Struct.new(
      :aws_account_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the data source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissionsResponse AWS API Documentation
    #
    class DescribeDataSourcePermissionsResponse < Struct.new(
      :data_source_arn,
      :data_source_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_source_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourceRequest AWS API Documentation
    #
    class DescribeDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The information on the data source.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourceResponse AWS API Documentation
    #
    class DescribeDataSourceResponse < Struct.new(
      :data_source,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupRequest AWS API Documentation
    #
    class DescribeGroupRequest < Struct.new(
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupResponse AWS API Documentation
    #
    class DescribeGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIAMPolicyAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         assignment_name: "IAMPolicyAssignmentName", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the assignment that you want
    #   to describe.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that contains the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignmentRequest AWS API Documentation
    #
    class DescribeIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_policy_assignment
    #   Information describing the IAM policy assignment.
    #   @return [Types::IAMPolicyAssignment]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignmentResponse AWS API Documentation
    #
    class DescribeIAMPolicyAssignmentResponse < Struct.new(
      :iam_policy_assignment,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIngestionRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "string", # required
    #         ingestion_id: "IngestionId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestionRequest AWS API Documentation
    #
    class DescribeIngestionRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :ingestion_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion
    #   Information about the ingestion.
    #   @return [Types::Ingestion]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestionResponse AWS API Documentation
    #
    class DescribeIngestionResponse < Struct.new(
      :ingestion,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNamespaceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that contains the QuickSight namespace
    #   that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeNamespaceRequest AWS API Documentation
    #
    class DescribeNamespaceRequest < Struct.new(
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The information about the namespace that you're describing. The
    #   response includes the namespace ARN, name, AWS Region, creation
    #   status, and identity store. `DescribeNamespace` also works for
    #   namespaces that are in the process of being created. For incomplete
    #   namespaces, this API operation lists the namespace error types and
    #   messages associated with the creation process.
    #   @return [Types::NamespaceInfoV2]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeNamespaceResponse AWS API Documentation
    #
    class DescribeNamespaceResponse < Struct.new(
      :namespace,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTemplateAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template alias that
    #   you're describing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name of the template alias that you want to describe. If you
    #   name a specific alias, you describe the version that the alias
    #   points to. You can specify the latest version of the template by
    #   providing the keyword `$LATEST` in the `AliasName` parameter. The
    #   keyword `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAliasRequest AWS API Documentation
    #
    class DescribeTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias
    #   Information about the template alias.
    #   @return [Types::TemplateAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAliasResponse AWS API Documentation
    #
    class DescribeTemplateAliasResponse < Struct.new(
      :template_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTemplatePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   describing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissionsRequest AWS API Documentation
    #
    class DescribeTemplatePermissionsRequest < Struct.new(
      :aws_account_id,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions to be set on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissionsResponse AWS API Documentation
    #
    class DescribeTemplatePermissionsResponse < Struct.new(
      :template_id,
      :template_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTemplateRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         version_number: 1,
    #         alias_name: "AliasName",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   describing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   (Optional) The number for the version to describe. If a
    #   `VersionNumber` parameter value isn't provided, the latest version
    #   of the template is described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateRequest AWS API Documentation
    #
    class DescribeTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template
    #   The template structure for the object you want to describe.
    #   @return [Types::Template]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateResponse AWS API Documentation
    #
    class DescribeTemplateResponse < Struct.new(
      :template,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeThemeAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme alias that you're
    #   describing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name of the theme alias that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeAliasRequest AWS API Documentation
    #
    class DescribeThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias
    #   Information about the theme alias.
    #   @return [Types::ThemeAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeAliasResponse AWS API Documentation
    #
    class DescribeThemeAliasResponse < Struct.new(
      :theme_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeThemePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   describing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme that you want to describe permissions for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemePermissionsRequest AWS API Documentation
    #
    class DescribeThemePermissionsRequest < Struct.new(
      :aws_account_id,
      :theme_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions set on the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemePermissionsResponse AWS API Documentation
    #
    class DescribeThemePermissionsResponse < Struct.new(
      :theme_id,
      :theme_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeThemeRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAndAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         version_number: 1,
    #         alias_name: "AliasName",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   describing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number for the version to describe. If a `VersionNumber`
    #   parameter value isn't provided, the latest version of the theme is
    #   described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias of the theme that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the theme by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to themes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeRequest AWS API Documentation
    #
    class DescribeThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme
    #   The information about the theme that you are describing.
    #   @return [Types::Theme]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeResponse AWS API Documentation
    #
    class DescribeThemeResponse < Struct.new(
      :theme,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user name.
    #   @return [Types::User]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :user,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The domain specified isn't on the allow list. All domains for
    # embedded dashboards must be added to the approved list by an Amazon
    # QuickSight admin.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DomainNotWhitelistedException AWS API Documentation
    #
    class DomainNotWhitelistedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information for the SPICE ingestion of a dataset.
    #
    # @!attribute [rw] type
    #   Error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export to .csv option.
    #
    # @note When making an API call, you may pass ExportToCSVOption
    #   data as a hash:
    #
    #       {
    #         availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] availability_status
    #   Availability status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExportToCSVOption AWS API Documentation
    #
    class ExportToCSVOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that filters rows based on a condition.
    #
    # @note When making an API call, you may pass FilterOperation
    #   data as a hash:
    #
    #       {
    #         condition_expression: "Expression", # required
    #       }
    #
    # @!attribute [rw] condition_expression
    #   An expression that must evaluate to a Boolean value. Rows for which
    #   the expression evaluates to true are kept in the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterOperation AWS API Documentation
    #
    class FilterOperation < Struct.new(
      :condition_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geospatial column group that denotes a hierarchy.
    #
    # @note When making an API call, you may pass GeoSpatialColumnGroup
    #   data as a hash:
    #
    #       {
    #         name: "ColumnGroupName", # required
    #         country_code: "US", # required, accepts US
    #         columns: ["ColumnName"], # required
    #       }
    #
    # @!attribute [rw] name
    #   A display name for the hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Country code.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   Columns in this hierarchy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeoSpatialColumnGroup AWS API Documentation
    #
    class GeoSpatialColumnGroup < Struct.new(
      :name,
      :country_code,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDashboardEmbedUrlRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #         session_lifetime_in_minutes: 1,
    #         undo_redo_disabled: false,
    #         reset_disabled: false,
    #         user_arn: "Arn",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that contains the dashboard that you're
    #   embedding.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The authentication method that the user uses to sign in.
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] undo_redo_disabled
    #   Remove the undo/redo button on the embedded dashboard. The default
    #   is FALSE, which enables the undo/redo button.
    #   @return [Boolean]
    #
    # @!attribute [rw] reset_disabled
    #   Remove the reset button on the embedded dashboard. The default is
    #   FALSE, which enables the reset button.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use
    #   with `QUICKSIGHT` identity type. You can use this for any Amazon
    #   QuickSight users in your account (readers, authors, or admins)
    #   authenticated as one of the following:
    #
    #   * Active Directory (AD) users or group members
    #
    #   * Invited nonfederated users
    #
    #   * IAM users and IAM role-based sessions authenticated through
    #     Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #     federation.
    #
    #   Omit this parameter for users in the third group – IAM users and IAM
    #   role-based sessions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrlRequest AWS API Documentation
    #
    class GetDashboardEmbedUrlRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :identity_type,
      :session_lifetime_in_minutes,
      :undo_redo_disabled,
      :reset_disabled,
      :user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   A single-use URL that you can put into your server-side webpage to
    #   embed your dashboard. This URL is valid for 5 minutes. The API
    #   operation provides the URL with an `auth_code` value that enables
    #   one (and only one) sign-on to a user session that is valid for 10
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrlResponse AWS API Documentation
    #
    class GetDashboardEmbedUrlResponse < Struct.new(
      :embed_url,
      :status,
      :request_id)
      SENSITIVE = [:embed_url]
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSessionEmbedUrlRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         entry_point: "EntryPoint",
    #         session_lifetime_in_minutes: 1,
    #         user_arn: "Arn",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account associated with your QuickSight
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] entry_point
    #   The URL you use to access the embedded session. The entry point URL
    #   is constrained to the following paths:
    #
    #   * `/start`
    #
    #   * `/start/analyses`
    #
    #   * `/start/dashboards`
    #
    #   * `/start/favorites`
    #
    #   * `/dashboards/DashboardId ` - where `DashboardId` is the actual ID
    #     key from the QuickSight console URL of the dashboard
    #
    #   * `/analyses/AnalysisId ` - where `AnalysisId` is the actual ID key
    #     from the QuickSight console URL of the analysis
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use
    #   with `QUICKSIGHT` identity type. You can use this for any type of
    #   Amazon QuickSight users in your account (readers, authors, or
    #   admins). They need to be authenticated as one of the following:
    #
    #   1.  Active Directory (AD) users or group members
    #
    #   2.  Invited nonfederated users
    #
    #   3.  IAM users and IAM role-based sessions authenticated through
    #       Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #       federation
    #
    #   Omit this parameter for users in the third group – IAM users and IAM
    #   role-based sessions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetSessionEmbedUrlRequest AWS API Documentation
    #
    class GetSessionEmbedUrlRequest < Struct.new(
      :aws_account_id,
      :entry_point,
      :session_lifetime_in_minutes,
      :user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   A single-use URL that you can put into your server-side web page to
    #   embed your QuickSight session. This URL is valid for 5 minutes. The
    #   API operation provides the URL with an `auth_code` value that
    #   enables one (and only one) sign-on to a user session that is valid
    #   for 10 hours.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetSessionEmbedUrlResponse AWS API Documentation
    #
    class GetSessionEmbedUrlResponse < Struct.new(
      :embed_url,
      :status,
      :request_id)
      SENSITIVE = [:embed_url]
      include Aws::Structure
    end

    # A *group* in Amazon QuickSight consists of a set of users. You can use
    # groups to make it easier to manage access and security.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The group description.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Group AWS API Documentation
    #
    class Group < Struct.new(
      :arn,
      :group_name,
      :description,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A member of an Amazon QuickSight group. Currently, group members must
    # be users. Groups can't be members of another group. .
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the group member (user).
    #   @return [String]
    #
    # @!attribute [rw] member_name
    #   The name of the group member (user).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GroupMember AWS API Documentation
    #
    class GroupMember < Struct.new(
      :arn,
      :member_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for gutter spacing between tiles on a sheet.
    #
    # @note When making an API call, you may pass GutterStyle
    #   data as a hash:
    #
    #       {
    #         show: false,
    #       }
    #
    # @!attribute [rw] show
    #   This Boolean value controls whether to display a gutter space
    #   between sheet tiles.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GutterStyle AWS API Documentation
    #
    class GutterStyle < Struct.new(
      :show)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Identity and Access Management (IAM) policy assignment.
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   Assignment ID.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   Assignment name.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) for the IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   Identities.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] assignment_status
    #   Assignment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IAMPolicyAssignment AWS API Documentation
    #
    class IAMPolicyAssignment < Struct.new(
      :aws_account_id,
      :assignment_id,
      :assignment_name,
      :policy_arn,
      :identities,
      :assignment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM policy assignment summary.
    #
    # @!attribute [rw] assignment_name
    #   Assignment name.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   Assignment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IAMPolicyAssignmentSummary AWS API Documentation
    #
    class IAMPolicyAssignmentSummary < Struct.new(
      :assignment_name,
      :assignment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identity type specified isn't supported. Supported identity types
    # include `IAM` and `QUICKSIGHT`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IdentityTypeNotSupportedException AWS API Documentation
    #
    class IdentityTypeNotSupportedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the SPICE ingestion for a dataset.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   Ingestion ID.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_status
    #   Ingestion status.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   Error information for this ingestion.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] row_info
    #   Information about rows for a data set SPICE ingestion.
    #   @return [Types::RowInfo]
    #
    # @!attribute [rw] queue_info
    #   Information about a queued dataset SPICE ingestion.
    #   @return [Types::QueueInfo]
    #
    # @!attribute [rw] created_time
    #   The time that this ingestion started.
    #   @return [Time]
    #
    # @!attribute [rw] ingestion_time_in_seconds
    #   The time that this ingestion took, measured in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] ingestion_size_in_bytes
    #   The size of the data ingested, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] request_source
    #   Event source for this ingestion.
    #   @return [String]
    #
    # @!attribute [rw] request_type
    #   Type of this ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Ingestion AWS API Documentation
    #
    class Ingestion < Struct.new(
      :arn,
      :ingestion_id,
      :ingestion_status,
      :error_info,
      :row_info,
      :queue_info,
      :created_time,
      :ingestion_time_in_seconds,
      :ingestion_size_in_bytes,
      :request_source,
      :request_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a column that is used as the input of a transform
    # operation.
    #
    # @note When making an API call, you may pass InputColumn
    #   data as a hash:
    #
    #       {
    #         name: "ColumnName", # required
    #         type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #       }
    #
    # @!attribute [rw] name
    #   The name of this column in the underlying data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InputColumn AWS API Documentation
    #
    class InputColumn < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An integer parameter.
    #
    # @note When making an API call, you may pass IntegerParameter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         values: [1], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the integer parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the integer parameter.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerParameter AWS API Documentation
    #
    class IntegerParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` value isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters has a value that isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Jira parameters.
    #
    # @note When making an API call, you may pass JiraParameters
    #   data as a hash:
    #
    #       {
    #         site_base_url: "SiteBaseUrl", # required
    #       }
    #
    # @!attribute [rw] site_base_url
    #   The base URL of the Jira site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/JiraParameters AWS API Documentation
    #
    class JiraParameters < Struct.new(
      :site_base_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Join instruction.
    #
    # @note When making an API call, you may pass JoinInstruction
    #   data as a hash:
    #
    #       {
    #         left_operand: "LogicalTableId", # required
    #         right_operand: "LogicalTableId", # required
    #         type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #         on_clause: "OnClause", # required
    #       }
    #
    # @!attribute [rw] left_operand
    #   Left operand.
    #   @return [String]
    #
    # @!attribute [rw] right_operand
    #   Right operand.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type.
    #   @return [String]
    #
    # @!attribute [rw] on_clause
    #   On Clause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/JoinInstruction AWS API Documentation
    #
    class JoinInstruction < Struct.new(
      :left_operand,
      :right_operand,
      :type,
      :on_clause)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Limit exceeded.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAnalysesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analyses.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAnalysesRequest AWS API Documentation
    #
    class ListAnalysesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_summary_list
    #   Metadata describing each of the analyses that are listed.
    #   @return [Array<Types::AnalysisSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAnalysesResponse AWS API Documentation
    #
    class ListAnalysesResponse < Struct.new(
      :analysis_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDashboardVersionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   listing versions for.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersionsRequest AWS API Documentation
    #
    class ListDashboardVersionsRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_version_summary_list
    #   A structure that contains information about each version of the
    #   dashboard.
    #   @return [Array<Types::DashboardVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersionsResponse AWS API Documentation
    #
    class ListDashboardVersionsResponse < Struct.new(
      :dashboard_version_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDashboardsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboards that you're
    #   listing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardsRequest AWS API Documentation
    #
    class ListDashboardsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_summary_list
    #   A structure that contains all of the dashboards in your AWS account.
    #   This structure provides basic information about the dashboards.
    #   @return [Array<Types::DashboardSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardsResponse AWS API Documentation
    #
    class ListDashboardsResponse < Struct.new(
      :dashboard_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSetsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSetsRequest AWS API Documentation
    #
    class ListDataSetsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_summaries
    #   The list of dataset summaries.
    #   @return [Array<Types::DataSetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSetsResponse AWS API Documentation
    #
    class ListDataSetsResponse < Struct.new(
      :data_set_summaries,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSourcesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sources
    #   A list of data sources.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupMembershipsRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         next_token: "String",
    #         max_results: 1,
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to see a membership list of.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMembershipsRequest AWS API Documentation
    #
    class ListGroupMembershipsRequest < Struct.new(
      :group_name,
      :next_token,
      :max_results,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_member_list
    #   The list of the members of the group.
    #   @return [Array<Types::GroupMember>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMembershipsResponse AWS API Documentation
    #
    class ListGroupMembershipsResponse < Struct.new(
      :group_member_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   The list of the groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIAMPolicyAssignmentsForUserRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         user_name: "UserName", # required
    #         next_token: "String",
    #         max_results: 1,
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the assignments.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace of the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUserRequest AWS API Documentation
    #
    class ListIAMPolicyAssignmentsForUserRequest < Struct.new(
      :aws_account_id,
      :user_name,
      :next_token,
      :max_results,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_assignments
    #   The active assignments for this user.
    #   @return [Array<Types::ActiveIAMPolicyAssignment>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUserResponse AWS API Documentation
    #
    class ListIAMPolicyAssignmentsForUserResponse < Struct.new(
      :active_assignments,
      :request_id,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIAMPolicyAssignmentsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #         namespace: "Namespace", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains these IAM policy
    #   assignments.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignments.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the assignments.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsRequest AWS API Documentation
    #
    class ListIAMPolicyAssignmentsRequest < Struct.new(
      :aws_account_id,
      :assignment_status,
      :namespace,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_policy_assignments
    #   Information describing the IAM policy assignments.
    #   @return [Array<Types::IAMPolicyAssignmentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsResponse AWS API Documentation
    #
    class ListIAMPolicyAssignmentsResponse < Struct.new(
      :iam_policy_assignments,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIngestionsRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "string", # required
    #         next_token: "string",
    #         aws_account_id: "AwsAccountId", # required
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestionsRequest AWS API Documentation
    #
    class ListIngestionsRequest < Struct.new(
      :data_set_id,
      :next_token,
      :aws_account_id,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestions
    #   A list of the ingestions.
    #   @return [Array<Types::Ingestion>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestionsResponse AWS API Documentation
    #
    class ListIngestionsResponse < Struct.new(
      :ingestions,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNamespacesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that contains the QuickSight namespaces
    #   that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListNamespacesRequest AWS API Documentation
    #
    class ListNamespacesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespaces
    #   The information about the namespaces in this AWS account. The
    #   response includes the namespace ARN, name, AWS Region, notification
    #   email address, creation status, and identity store.
    #   @return [Array<Types::NamespaceInfoV2>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListNamespacesResponse AWS API Documentation
    #
    class ListNamespacesResponse < Struct.new(
      :namespaces,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want a list
    #   of tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTemplateAliasesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template aliases that
    #   you're listing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliasesRequest AWS API Documentation
    #
    class ListTemplateAliasesRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias_list
    #   A structure containing the list of the template's aliases.
    #   @return [Array<Types::TemplateAlias>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliasesResponse AWS API Documentation
    #
    class ListTemplateAliasesResponse < Struct.new(
      :template_alias_list,
      :status,
      :request_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTemplateVersionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the templates that you're
    #   listing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersionsRequest AWS API Documentation
    #
    class ListTemplateVersionsRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_version_summary_list
    #   A structure containing a list of all the versions of the specified
    #   template.
    #   @return [Array<Types::TemplateVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersionsResponse AWS API Documentation
    #
    class ListTemplateVersionsResponse < Struct.new(
      :template_version_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the templates that you're
    #   listing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplatesRequest AWS API Documentation
    #
    class ListTemplatesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_summary_list
    #   A structure containing information about the templates in the list.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplatesResponse AWS API Documentation
    #
    class ListTemplatesResponse < Struct.new(
      :template_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThemeAliasesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme aliases that
    #   you're listing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeAliasesRequest AWS API Documentation
    #
    class ListThemeAliasesRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias_list
    #   A structure containing the list of the theme's aliases.
    #   @return [Array<Types::ThemeAlias>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeAliasesResponse AWS API Documentation
    #
    class ListThemeAliasesResponse < Struct.new(
      :theme_alias_list,
      :status,
      :request_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThemeVersionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the themes that you're
    #   listing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeVersionsRequest AWS API Documentation
    #
    class ListThemeVersionsRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_version_summary_list
    #   A structure containing a list of all the versions of the specified
    #   theme.
    #   @return [Array<Types::ThemeVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeVersionsResponse AWS API Documentation
    #
    class ListThemeVersionsResponse < Struct.new(
      :theme_version_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListThemesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #         type: "QUICKSIGHT", # accepts QUICKSIGHT, CUSTOM, ALL
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the themes that you're
    #   listing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of themes that you want to list. Valid options include the
    #   following:
    #
    #   * `ALL (default)`- Display all existing themes.
    #
    #   * `CUSTOM` - Display only the themes created by people using Amazon
    #     QuickSight.
    #
    #   * `QUICKSIGHT` - Display only the starting themes defined by
    #     QuickSight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemesRequest AWS API Documentation
    #
    class ListThemesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_summary_list
    #   Information about the themes in the list.
    #   @return [Array<Types::ThemeSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemesResponse AWS API Documentation
    #
    class ListThemesResponse < Struct.new(
      :theme_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserGroupsRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that the user is in. Currently, you use the ID
    #   for the AWS account that contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroupsRequest AWS API Documentation
    #
    class ListUserGroupsRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   The list of groups the user is a member of.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroupsResponse AWS API Documentation
    #
    class ListUserGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_list
    #   The list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :user_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A *logical table* is a unit that joins and that data transformations
    # operate on. A logical table has a source, which can be either a
    # physical table or result of a join. When a logical table points to a
    # physical table, the logical table acts as a mutable copy of that
    # physical table through transform operations.
    #
    # @note When making an API call, you may pass LogicalTable
    #   data as a hash:
    #
    #       {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "Expression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #         },
    #       }
    #
    # @!attribute [rw] alias
    #   A display name for the logical table.
    #   @return [String]
    #
    # @!attribute [rw] data_transforms
    #   Transform operations that act on this logical table.
    #   @return [Array<Types::TransformOperation>]
    #
    # @!attribute [rw] source
    #   Source of this logical table.
    #   @return [Types::LogicalTableSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LogicalTable AWS API Documentation
    #
    class LogicalTable < Struct.new(
      :alias,
      :data_transforms,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source of a logical table. This is a variant
    # type structure. For this structure to be valid, only one of the
    # attributes can be non-null.
    #
    # @note When making an API call, you may pass LogicalTableSource
    #   data as a hash:
    #
    #       {
    #         join_instruction: {
    #           left_operand: "LogicalTableId", # required
    #           right_operand: "LogicalTableId", # required
    #           type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #           on_clause: "OnClause", # required
    #         },
    #         physical_table_id: "PhysicalTableId",
    #       }
    #
    # @!attribute [rw] join_instruction
    #   Specifies the result of a join of two logical tables.
    #   @return [Types::JoinInstruction]
    #
    # @!attribute [rw] physical_table_id
    #   Physical table ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LogicalTableSource AWS API Documentation
    #
    class LogicalTableSource < Struct.new(
      :join_instruction,
      :physical_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 manifest file location.
    #
    # @note When making an API call, you may pass ManifestFileLocation
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #       }
    #
    # @!attribute [rw] bucket
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Amazon S3 key that identifies an object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ManifestFileLocation AWS API Documentation
    #
    class ManifestFileLocation < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for margins around the outside edge of sheets.
    #
    # @note When making an API call, you may pass MarginStyle
    #   data as a hash:
    #
    #       {
    #         show: false,
    #       }
    #
    # @!attribute [rw] show
    #   This Boolean value controls whether to display sheet margins.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MarginStyle AWS API Documentation
    #
    class MarginStyle < Struct.new(
      :show)
      SENSITIVE = []
      include Aws::Structure
    end

    # MariaDB parameters.
    #
    # @note When making an API call, you may pass MariaDbParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MariaDbParameters AWS API Documentation
    #
    class MariaDbParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # MySQL parameters.
    #
    # @note When making an API call, you may pass MySqlParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MySqlParameters AWS API Documentation
    #
    class MySqlParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Errors that occur during namespace creation.
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NamespaceError AWS API Documentation
    #
    class NamespaceError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error type.
    #
    # @!attribute [rw] name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The namespace ARN.
    #   @return [String]
    #
    # @!attribute [rw] capacity_region
    #   The namespace AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of a namespace that is not yet completely
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] identity_store
    #   The identity store used for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_error
    #   An error that occurred when the namespace was created.
    #   @return [Types::NamespaceError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NamespaceInfoV2 AWS API Documentation
    #
    class NamespaceInfoV2 < Struct.new(
      :name,
      :arn,
      :capacity_region,
      :creation_status,
      :identity_store,
      :namespace_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output column.
    #
    # @!attribute [rw] name
    #   A display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/OutputColumn AWS API Documentation
    #
    class OutputColumn < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of QuickSight parameters and the list's override values.
    #
    # @note When making an API call, you may pass Parameters
    #   data as a hash:
    #
    #       {
    #         string_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         integer_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: [1], # required
    #           },
    #         ],
    #         decimal_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: [1.0], # required
    #           },
    #         ],
    #         date_time_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: [Time.now], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] string_parameters
    #   String parameters.
    #   @return [Array<Types::StringParameter>]
    #
    # @!attribute [rw] integer_parameters
    #   Integer parameters.
    #   @return [Array<Types::IntegerParameter>]
    #
    # @!attribute [rw] decimal_parameters
    #   Decimal parameters.
    #   @return [Array<Types::DecimalParameter>]
    #
    # @!attribute [rw] date_time_parameters
    #   Date-time parameters.
    #   @return [Array<Types::DateTimeParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :string_parameters,
      :integer_parameters,
      :decimal_parameters,
      :date_time_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A view of a data source that contains information about the shape of
    # the data in the underlying source. This is a variant type structure.
    # For this structure to be valid, only one of the attributes can be
    # non-null.
    #
    # @note When making an API call, you may pass PhysicalTable
    #   data as a hash:
    #
    #       {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] relational_table
    #   A physical table type for relational data sources.
    #   @return [Types::RelationalTable]
    #
    # @!attribute [rw] custom_sql
    #   A physical table type built from the results of the custom SQL
    #   query.
    #   @return [Types::CustomSql]
    #
    # @!attribute [rw] s3_source
    #   A physical table type for as S3 data source.
    #   @return [Types::S3Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PhysicalTable AWS API Documentation
    #
    class PhysicalTable < Struct.new(
      :relational_table,
      :custom_sql,
      :s3_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # PostgreSQL parameters.
    #
    # @note When making an API call, you may pass PostgreSqlParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PostgreSqlParameters AWS API Documentation
    #
    class PostgreSqlParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more preconditions aren't met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PreconditionNotMetException AWS API Documentation
    #
    class PreconditionNotMetException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Presto parameters.
    #
    # @note When making an API call, you may pass PrestoParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] catalog
    #   Catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PrestoParameters AWS API Documentation
    #
    class PrestoParameters < Struct.new(
      :host,
      :port,
      :catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that projects columns. Operations that come
    # after a projection can only refer to projected columns.
    #
    # @note When making an API call, you may pass ProjectOperation
    #   data as a hash:
    #
    #       {
    #         projected_columns: ["String"], # required
    #       }
    #
    # @!attribute [rw] projected_columns
    #   Projected columns.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ProjectOperation AWS API Documentation
    #
    class ProjectOperation < Struct.new(
      :projected_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a queued dataset SPICE ingestion.
    #
    # @!attribute [rw] waiting_on_ingestion
    #   The ID of the queued ingestion.
    #   @return [String]
    #
    # @!attribute [rw] queued_ingestion
    #   The ID of the ongoing ingestion. The queued ingestion is waiting for
    #   the ongoing ingestion to complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/QueueInfo AWS API Documentation
    #
    class QueueInfo < Struct.new(
      :waiting_on_ingestion,
      :queued_ingestion)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user with the provided name isn't found. This error can happen in
    # any operation that requires finding a user based on a provided user
    # name, such as `DeleteUser`, `DescribeUser`, and so on.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/QuickSightUserNotFoundException AWS API Documentation
    #
    class QuickSightUserNotFoundException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon RDS parameters.
    #
    # @note When making an API call, you may pass RdsParameters
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   Instance ID.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RdsParameters AWS API Documentation
    #
    class RdsParameters < Struct.new(
      :instance_id,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Redshift parameters. The `ClusterId` field can be blank if
    # `Host` and `Port` are both set. The `Host` and `Port` fields can be
    # blank if the `ClusterId` field is set.
    #
    # @note When making an API call, you may pass RedshiftParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #       }
    #
    # @!attribute [rw] host
    #   Host. This field can be blank if `ClusterId` is provided.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port. This field can be blank if the `ClusterId` is provided.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @!attribute [rw] cluster_id
    #   Cluster ID. This field can be blank if the `Host` and `Port` are
    #   provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RedshiftParameters AWS API Documentation
    #
    class RedshiftParameters < Struct.new(
      :host,
      :port,
      :database,
      :cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterUserRequest
    #   data as a hash:
    #
    #       {
    #         identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #         email: "String", # required
    #         user_role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #         iam_arn: "String",
    #         session_name: "RoleSessionName",
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         user_name: "UserName",
    #         custom_permissions_name: "RoleName",
    #       }
    #
    # @!attribute [rw] identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`\: A user whose identity maps to an existing IAM user or
    #     role.
    #
    #   * `QUICKSIGHT`\: A user whose identity is owned and managed
    #     internally by Amazon QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user that you want to register.
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `RESTRICTED_READER`\: This role isn't currently available for
    #     use.
    #
    #   * `RESTRICTED_AUTHOR`\: This role isn't currently available for
    #     use.
    #   @return [String]
    #
    # @!attribute [rw] iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] session_name
    #   You need to use this parameter only when you register one or more
    #   users using an assumed IAM role. You don't need to provide the
    #   session name for other scenarios, for example when you are
    #   registering an IAM user or an Amazon QuickSight user. You can
    #   register multiple users using the same IAM role if each user has a
    #   different session name. For more information on assuming IAM roles,
    #   see [ `assume-role` ][1] in the *AWS CLI Reference.*
    #
    #
    #
    #   [1]: https://awscli.amazonaws.com/v2/documentation/api/latest/reference/sts/assume-role.html
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #   @return [String]
    #
    # @!attribute [rw] custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   To add custom permissions to an existing user, use ` UpdateUser `
    #   instead.
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the QuickSight console. Then, you
    #   use the `RegisterUser` API operation to assign the named set of
    #   permissions to a QuickSight user.
    #
    #   QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning QuickSight users to one of the default security cohorts in
    #   QuickSight (admin, author, reader).
    #
    #   This feature is available only to QuickSight Enterprise edition
    #   subscriptions that use SAML 2.0-Based Federation for Single Sign-On
    #   (SSO).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUserRequest AWS API Documentation
    #
    class RegisterUserRequest < Struct.new(
      :identity_type,
      :email,
      :user_role,
      :iam_arn,
      :session_name,
      :aws_account_id,
      :namespace,
      :user_name,
      :custom_permissions_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user's user name.
    #   @return [Types::User]
    #
    # @!attribute [rw] user_invitation_url
    #   The URL the user visits to complete registration and provide a
    #   password. This is returned only for users with an identity type of
    #   `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUserResponse AWS API Documentation
    #
    class RegisterUserResponse < Struct.new(
      :user,
      :user_invitation_url,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A physical table type for relational data sources.
    #
    # @note When making an API call, you may pass RelationalTable
    #   data as a hash:
    #
    #       {
    #         data_source_arn: "Arn", # required
    #         schema: "RelationalTableSchema",
    #         name: "RelationalTableName", # required
    #         input_columns: [ # required
    #           {
    #             name: "ColumnName", # required
    #             type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) for the data source.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema name. This name applies to certain relational database
    #   engines.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the relational table.
    #   @return [String]
    #
    # @!attribute [rw] input_columns
    #   The column schema of the table.
    #   @return [Array<Types::InputColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RelationalTable AWS API Documentation
    #
    class RelationalTable < Struct.new(
      :data_source_arn,
      :schema,
      :name,
      :input_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that renames a column.
    #
    # @note When making an API call, you may pass RenameColumnOperation
    #   data as a hash:
    #
    #       {
    #         column_name: "ColumnName", # required
    #         new_column_name: "ColumnName", # required
    #       }
    #
    # @!attribute [rw] column_name
    #   The name of the column to be renamed.
    #   @return [String]
    #
    # @!attribute [rw] new_column_name
    #   The new name for the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RenameColumnOperation AWS API Documentation
    #
    class RenameColumnOperation < Struct.new(
      :column_name,
      :new_column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Permission for the resource.
    #
    # @note When making an API call, you may pass ResourcePermission
    #   data as a hash:
    #
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       }
    #
    # @!attribute [rw] principal
    #   The Amazon Resource Name (ARN) of the principal. This can be one of
    #   the following:
    #
    #   * The ARN of an Amazon QuickSight user, group, or namespace. (This
    #     is most common.)
    #
    #   * The ARN of an AWS account root: This is an IAM ARN rather than a
    #     QuickSight ARN. Use this option only to share resources
    #     (templates) across AWS accounts. (This is less common.)
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The IAM action to grant or revoke permissions on, for example
    #   `"quicksight:DescribeDashboard"`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourcePermission AWS API Documentation
    #
    class ResourcePermission < Struct.new(
      :principal,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # This resource is currently unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're restoring.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RestoreAnalysisRequest AWS API Documentation
    #
    class RestoreAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis that you're
    #   restoring.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're restoring.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RestoreAnalysisResponse AWS API Documentation
    #
    class RestoreAnalysisResponse < Struct.new(
      :status,
      :arn,
      :analysis_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about rows for a data set SPICE ingestion.
    #
    # @!attribute [rw] rows_ingested
    #   The number of rows that were ingested.
    #   @return [Integer]
    #
    # @!attribute [rw] rows_dropped
    #   The number of rows that were not ingested.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowInfo AWS API Documentation
    #
    class RowInfo < Struct.new(
      :rows_ingested,
      :rows_dropped)
      SENSITIVE = []
      include Aws::Structure
    end

    # The row-level security configuration for the dataset.
    #
    # @note When making an API call, you may pass RowLevelPermissionDataSet
    #   data as a hash:
    #
    #       {
    #         namespace: "Namespace",
    #         arn: "Arn", # required
    #         permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the row-level permissions dataset.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the permission dataset.
    #   @return [String]
    #
    # @!attribute [rw] permission_policy
    #   Permission policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowLevelPermissionDataSet AWS API Documentation
    #
    class RowLevelPermissionDataSet < Struct.new(
      :namespace,
      :arn,
      :permission_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 parameters.
    #
    # @note When making an API call, you may pass S3Parameters
    #   data as a hash:
    #
    #       {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #       }
    #
    # @!attribute [rw] manifest_file_location
    #   Location of the Amazon S3 manifest file. This is NULL if the
    #   manifest file was uploaded in the console.
    #   @return [Types::ManifestFileLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/S3Parameters AWS API Documentation
    #
    class S3Parameters < Struct.new(
      :manifest_file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # A physical table type for as S3 data source.
    #
    # @note When making an API call, you may pass S3Source
    #   data as a hash:
    #
    #       {
    #         data_source_arn: "Arn", # required
    #         upload_settings: {
    #           format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #           start_from_row: 1,
    #           contains_header: false,
    #           text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #           delimiter: "Delimiter",
    #         },
    #         input_columns: [ # required
    #           {
    #             name: "ColumnName", # required
    #             type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] data_source_arn
    #   The amazon Resource Name (ARN) for the data source.
    #   @return [String]
    #
    # @!attribute [rw] upload_settings
    #   Information about the format for the S3 source file or files.
    #   @return [Types::UploadSettings]
    #
    # @!attribute [rw] input_columns
    #   A physical table type for as S3 data source.
    #   @return [Array<Types::InputColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/S3Source AWS API Documentation
    #
    class S3Source < Struct.new(
      :data_source_arn,
      :upload_settings,
      :input_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchAnalysesRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         filters: [ # required
    #           {
    #             operator: "StringEquals", # accepts StringEquals
    #             name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER
    #             value: "String",
    #           },
    #         ],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analyses that you're
    #   searching for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #   @return [Array<Types::AnalysisSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchAnalysesRequest AWS API Documentation
    #
    class SearchAnalysesRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_summary_list
    #   Metadata describing the analyses that you searched for.
    #   @return [Array<Types::AnalysisSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchAnalysesResponse AWS API Documentation
    #
    class SearchAnalysesResponse < Struct.new(
      :analysis_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchDashboardsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         filters: [ # required
    #           {
    #             operator: "StringEquals", # required, accepts StringEquals
    #             name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER
    #             value: "String",
    #           },
    #         ],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the user whose dashboards
    #   you're searching for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the search. Currently, you can search only
    #   by user name, for example, `"Filters": [ \{ "Name":
    #   "QUICKSIGHT_USER", "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1" \} ]`
    #   @return [Array<Types::DashboardSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDashboardsRequest AWS API Documentation
    #
    class SearchDashboardsRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_summary_list
    #   The list of dashboards owned by the user specified in `Filters` in
    #   your request.
    #   @return [Array<Types::DashboardSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDashboardsResponse AWS API Documentation
    #
    class SearchDashboardsResponse < Struct.new(
      :dashboard_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # ServiceNow parameters.
    #
    # @note When making an API call, you may pass ServiceNowParameters
    #   data as a hash:
    #
    #       {
    #         site_base_url: "SiteBaseUrl", # required
    #       }
    #
    # @!attribute [rw] site_base_url
    #   URL of the base site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ServiceNowParameters AWS API Documentation
    #
    class ServiceNowParameters < Struct.new(
      :site_base_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of minutes specified for the lifetime of a session isn't
    # valid. The session lifetime must be 15-600 minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SessionLifetimeInMinutesInvalidException AWS API Documentation
    #
    class SessionLifetimeInMinutesInvalidException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A sheet is an object that contains a set of visuals that are viewed
    # together on one page in the Amazon QuickSight console. Every analysis
    # and dashboard contains at least one sheet. Each sheet contains at
    # least one visualization widget, for example a chart, pivot table, or
    # narrative insight. Sheets can be associated with other components,
    # such as controls, filters, and so on.
    #
    # @!attribute [rw] sheet_id
    #   The unique identifier associated with a sheet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a sheet. This is displayed on the sheet's tab in the
    #   QuickSight console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Sheet AWS API Documentation
    #
    class Sheet < Struct.new(
      :sheet_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sheet controls option.
    #
    # @note When making an API call, you may pass SheetControlsOption
    #   data as a hash:
    #
    #       {
    #         visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #       }
    #
    # @!attribute [rw] visibility_state
    #   Visibility state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetControlsOption AWS API Documentation
    #
    class SheetControlsOption < Struct.new(
      :visibility_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme display options for sheets.
    #
    # @note When making an API call, you may pass SheetStyle
    #   data as a hash:
    #
    #       {
    #         tile: {
    #           border: {
    #             show: false,
    #           },
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false,
    #           },
    #           margin: {
    #             show: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] tile
    #   The display options for tiles.
    #   @return [Types::TileStyle]
    #
    # @!attribute [rw] tile_layout
    #   The layout options for tiles.
    #   @return [Types::TileLayoutStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetStyle AWS API Documentation
    #
    class SheetStyle < Struct.new(
      :tile,
      :tile_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Snowflake parameters.
    #
    # @note When making an API call, you may pass SnowflakeParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @!attribute [rw] warehouse
    #   Warehouse.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SnowflakeParameters AWS API Documentation
    #
    class SnowflakeParameters < Struct.new(
      :host,
      :database,
      :warehouse)
      SENSITIVE = []
      include Aws::Structure
    end

    # Spark parameters.
    #
    # @note When making an API call, you may pass SparkParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SparkParameters AWS API Documentation
    #
    class SparkParameters < Struct.new(
      :host,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # SQL Server parameters.
    #
    # @note When making an API call, you may pass SqlServerParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SqlServerParameters AWS API Documentation
    #
    class SqlServerParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Secure Socket Layer (SSL) properties that apply when QuickSight
    # connects to your underlying data source.
    #
    # @note When making an API call, you may pass SslProperties
    #   data as a hash:
    #
    #       {
    #         disable_ssl: false,
    #       }
    #
    # @!attribute [rw] disable_ssl
    #   A Boolean option to control whether SSL should be disabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SslProperties AWS API Documentation
    #
    class SslProperties < Struct.new(
      :disable_ssl)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string parameter.
    #
    # @note When making an API call, you may pass StringParameter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         values: ["String"], # required
    #       }
    #
    # @!attribute [rw] name
    #   A display name for a string parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of a string parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringParameter AWS API Documentation
    #
    class StringParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key or keys of the key-value pairs for the resource tag or tags
    # assigned to the resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   Tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that tags a column with additional information.
    #
    # @note When making an API call, you may pass TagColumnOperation
    #   data as a hash:
    #
    #       {
    #         column_name: "ColumnName", # required
    #         tags: [ # required
    #           {
    #             column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] column_name
    #   The column that this operation acts on.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The dataset column tag, currently only used for geospatial type
    #   tagging. .
    #
    #   <note markdown="1"> This is not tags for the AWS tagging feature. .
    #
    #    </note>
    #   @return [Array<Types::ColumnTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagColumnOperation AWS API Documentation
    #
    class TagColumnOperation < Struct.new(
      :column_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A template object. A *template* is an entity in QuickSight that
    # encapsulates the metadata required to create an analysis and that you
    # can use to create a dashboard. A template adds a layer of abstraction
    # by using placeholders to replace the dataset associated with an
    # analysis. You can use templates to create dashboards by replacing
    # dataset placeholders with datasets that follow the same schema that
    # was used to create the source analysis and template.
    #
    # You can share templates across AWS accounts by allowing users in other
    # AWS accounts to create a template or a dashboard from an existing
    # template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A structure describing the versions of the template.
    #   @return [Types::TemplateVersion]
    #
    # @!attribute [rw] template_id
    #   The ID for the template. This is unique per AWS Region for each AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Time when this was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   Time when this was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Template AWS API Documentation
    #
    class Template < Struct.new(
      :arn,
      :name,
      :version,
      :template_id,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template alias.
    #
    # @!attribute [rw] alias_name
    #   The display name of the template alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template alias.
    #   @return [String]
    #
    # @!attribute [rw] template_version_number
    #   The version number of the template alias.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateAlias AWS API Documentation
    #
    class TemplateAlias < Struct.new(
      :alias_name,
      :arn,
      :template_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of errors that occurred when the template version creation
    # failed.
    #
    # @!attribute [rw] type
    #   Type of error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateError AWS API Documentation
    #
    class TemplateError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source analysis of the template.
    #
    # @note When making an API call, you may pass TemplateSourceAnalysis
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         data_set_references: [ # required
    #           {
    #             data_set_placeholder: "NonEmptyString", # required
    #             data_set_arn: "Arn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] data_set_references
    #   A structure containing information about the dataset references used
    #   as placeholders in the template.
    #   @return [Array<Types::DataSetReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSourceAnalysis AWS API Documentation
    #
    class TemplateSourceAnalysis < Struct.new(
      :arn,
      :data_set_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source entity of the template.
    #
    # @note When making an API call, you may pass TemplateSourceEntity
    #   data as a hash:
    #
    #       {
    #         source_analysis: {
    #           arn: "Arn", # required
    #           data_set_references: [ # required
    #             {
    #               data_set_placeholder: "NonEmptyString", # required
    #               data_set_arn: "Arn", # required
    #             },
    #           ],
    #         },
    #         source_template: {
    #           arn: "Arn", # required
    #         },
    #       }
    #
    # @!attribute [rw] source_analysis
    #   The source analysis, if it is based on an analysis.
    #   @return [Types::TemplateSourceAnalysis]
    #
    # @!attribute [rw] source_template
    #   The source template, if it is based on an template.
    #   @return [Types::TemplateSourceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSourceEntity AWS API Documentation
    #
    class TemplateSourceEntity < Struct.new(
      :source_analysis,
      :source_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source template of the template.
    #
    # @note When making an API call, you may pass TemplateSourceTemplate
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSourceTemplate AWS API Documentation
    #
    class TemplateSourceTemplate < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template summary.
    #
    # @!attribute [rw] arn
    #   A summary of a template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the template.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_number
    #   A structure containing a list of version numbers for the template
    #   summary.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   The last time that this template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this template was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :arn,
      :template_id,
      :name,
      :latest_version_number,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of a template.
    #
    # @!attribute [rw] created_time
    #   The time that this template version was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Errors associated with this template version.
    #   @return [Array<Types::TemplateError>]
    #
    # @!attribute [rw] version_number
    #   The version number of the template version.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] data_set_configurations
    #   Schema of the dataset identified by the placeholder. Any dashboard
    #   created from this template should be bound to new datasets matching
    #   the same schema described through this API operation.
    #   @return [Array<Types::DataSetConfiguration>]
    #
    # @!attribute [rw] description
    #   The description of the template.
    #   @return [String]
    #
    # @!attribute [rw] source_entity_arn
    #   The Amazon Resource Name (ARN) of an analysis or template that was
    #   used to create this template.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme associated with this version of the template.
    #   @return [String]
    #
    # @!attribute [rw] sheets
    #   A list of the associated sheets with the unique identifier and name
    #   of each sheet.
    #   @return [Array<Types::Sheet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateVersion AWS API Documentation
    #
    class TemplateVersion < Struct.new(
      :created_time,
      :errors,
      :version_number,
      :status,
      :data_set_configurations,
      :description,
      :source_entity_arn,
      :theme_arn,
      :sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template version.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template version.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the template version.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   The time that this template version was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the template version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the template version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateVersionSummary AWS API Documentation
    #
    class TemplateVersionSummary < Struct.new(
      :arn,
      :version_number,
      :created_time,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Teradata parameters.
    #
    # @note When making an API call, you may pass TeradataParameters
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       }
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TeradataParameters AWS API Documentation
    #
    class TeradataParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a theme.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that the user gives to the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The identifier that the user gives to the theme.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version of a theme.
    #   @return [Types::ThemeVersion]
    #
    # @!attribute [rw] created_time
    #   The date and time that the theme was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the theme was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of theme, based on how it was created. Valid values
    #   include: `QUICKSIGHT` and `CUSTOM`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Theme AWS API Documentation
    #
    class Theme < Struct.new(
      :arn,
      :name,
      :theme_id,
      :version,
      :created_time,
      :last_updated_time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An alias for a theme.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The display name of the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] theme_version_number
    #   The version number of the theme alias.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeAlias AWS API Documentation
    #
    class ThemeAlias < Struct.new(
      :arn,
      :alias_name,
      :theme_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme configuration. This configuration contains all of the
    # display properties for a theme.
    #
    # @note When making an API call, you may pass ThemeConfiguration
    #   data as a hash:
    #
    #       {
    #         data_color_palette: {
    #           colors: ["HexColor"],
    #           min_max_gradient: ["HexColor"],
    #           empty_fill_color: "HexColor",
    #         },
    #         ui_color_palette: {
    #           primary_foreground: "HexColor",
    #           primary_background: "HexColor",
    #           secondary_foreground: "HexColor",
    #           secondary_background: "HexColor",
    #           accent: "HexColor",
    #           accent_foreground: "HexColor",
    #           danger: "HexColor",
    #           danger_foreground: "HexColor",
    #           warning: "HexColor",
    #           warning_foreground: "HexColor",
    #           success: "HexColor",
    #           success_foreground: "HexColor",
    #           dimension: "HexColor",
    #           dimension_foreground: "HexColor",
    #           measure: "HexColor",
    #           measure_foreground: "HexColor",
    #         },
    #         sheet: {
    #           tile: {
    #             border: {
    #               show: false,
    #             },
    #           },
    #           tile_layout: {
    #             gutter: {
    #               show: false,
    #             },
    #             margin: {
    #               show: false,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] data_color_palette
    #   Color properties that apply to chart data colors.
    #   @return [Types::DataColorPalette]
    #
    # @!attribute [rw] ui_color_palette
    #   Color properties that apply to the UI and to charts, excluding the
    #   colors that apply to data.
    #   @return [Types::UIColorPalette]
    #
    # @!attribute [rw] sheet
    #   Display options related to sheets.
    #   @return [Types::SheetStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeConfiguration AWS API Documentation
    #
    class ThemeConfiguration < Struct.new(
      :data_color_palette,
      :ui_color_palette,
      :sheet)
      SENSITIVE = []
      include Aws::Structure
    end

    # Theme error.
    #
    # @!attribute [rw] type
    #   The type of error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeError AWS API Documentation
    #
    class ThemeError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   the display name for the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID of the theme. This ID is unique per AWS Region for each AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_number
    #   The latest version number for the theme.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   The date and time that this theme was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last date and time that this theme was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeSummary AWS API Documentation
    #
    class ThemeSummary < Struct.new(
      :arn,
      :name,
      :theme_id,
      :latest_version_number,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of a theme.
    #
    # @!attribute [rw] version_number
    #   The version number of the theme.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the theme.
    #   @return [String]
    #
    # @!attribute [rw] base_theme_id
    #   The Amazon QuickSight-defined ID of the theme that a custom theme
    #   inherits from. All themes initially inherit from a default
    #   QuickSight theme.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that this theme version was created.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   The theme configuration, which contains all the theme display
    #   properties.
    #   @return [Types::ThemeConfiguration]
    #
    # @!attribute [rw] errors
    #   Errors associated with the theme.
    #   @return [Array<Types::ThemeError>]
    #
    # @!attribute [rw] status
    #   The status of the theme version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeVersion AWS API Documentation
    #
    class ThemeVersion < Struct.new(
      :version_number,
      :arn,
      :description,
      :base_theme_id,
      :created_time,
      :configuration,
      :errors,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme version.
    #
    # @!attribute [rw] version_number
    #   The version number of the theme version.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the theme version.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that this theme version was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the theme version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeVersionSummary AWS API Documentation
    #
    class ThemeVersionSummary < Struct.new(
      :version_number,
      :arn,
      :description,
      :created_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access is throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for the layout of tiles on a sheet.
    #
    # @note When making an API call, you may pass TileLayoutStyle
    #   data as a hash:
    #
    #       {
    #         gutter: {
    #           show: false,
    #         },
    #         margin: {
    #           show: false,
    #         },
    #       }
    #
    # @!attribute [rw] gutter
    #   The gutter settings that apply between tiles.
    #   @return [Types::GutterStyle]
    #
    # @!attribute [rw] margin
    #   The margin settings that apply around the outside edge of sheets.
    #   @return [Types::MarginStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TileLayoutStyle AWS API Documentation
    #
    class TileLayoutStyle < Struct.new(
      :gutter,
      :margin)
      SENSITIVE = []
      include Aws::Structure
    end

    # Display options related to tiles on a sheet.
    #
    # @note When making an API call, you may pass TileStyle
    #   data as a hash:
    #
    #       {
    #         border: {
    #           show: false,
    #         },
    #       }
    #
    # @!attribute [rw] border
    #   The border around a tile.
    #   @return [Types::BorderStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TileStyle AWS API Documentation
    #
    class TileStyle < Struct.new(
      :border)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data transformation on a logical table. This is a variant type
    # structure. For this structure to be valid, only one of the attributes
    # can be non-null.
    #
    # @note When making an API call, you may pass TransformOperation
    #   data as a hash:
    #
    #       {
    #         project_operation: {
    #           projected_columns: ["String"], # required
    #         },
    #         filter_operation: {
    #           condition_expression: "Expression", # required
    #         },
    #         create_columns_operation: {
    #           columns: [ # required
    #             {
    #               column_name: "ColumnName", # required
    #               column_id: "ColumnId", # required
    #               expression: "Expression", # required
    #             },
    #           ],
    #         },
    #         rename_column_operation: {
    #           column_name: "ColumnName", # required
    #           new_column_name: "ColumnName", # required
    #         },
    #         cast_column_type_operation: {
    #           column_name: "ColumnName", # required
    #           new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #           format: "TypeCastFormat",
    #         },
    #         tag_column_operation: {
    #           column_name: "ColumnName", # required
    #           tags: [ # required
    #             {
    #               column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] project_operation
    #   An operation that projects columns. Operations that come after a
    #   projection can only refer to projected columns.
    #   @return [Types::ProjectOperation]
    #
    # @!attribute [rw] filter_operation
    #   An operation that filters rows based on some condition.
    #   @return [Types::FilterOperation]
    #
    # @!attribute [rw] create_columns_operation
    #   An operation that creates calculated columns. Columns created in one
    #   such operation form a lexical closure.
    #   @return [Types::CreateColumnsOperation]
    #
    # @!attribute [rw] rename_column_operation
    #   An operation that renames a column.
    #   @return [Types::RenameColumnOperation]
    #
    # @!attribute [rw] cast_column_type_operation
    #   A transform operation that casts a column to a different type.
    #   @return [Types::CastColumnTypeOperation]
    #
    # @!attribute [rw] tag_column_operation
    #   An operation that tags a column with additional information.
    #   @return [Types::TagColumnOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TransformOperation AWS API Documentation
    #
    class TransformOperation < Struct.new(
      :project_operation,
      :filter_operation,
      :create_columns_operation,
      :rename_column_operation,
      :cast_column_type_operation,
      :tag_column_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Twitter parameters.
    #
    # @note When making an API call, you may pass TwitterParameters
    #   data as a hash:
    #
    #       {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       }
    #
    # @!attribute [rw] query
    #   Twitter query string.
    #   @return [String]
    #
    # @!attribute [rw] max_rows
    #   Maximum number of rows to query Twitter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TwitterParameters AWS API Documentation
    #
    class TwitterParameters < Struct.new(
      :query,
      :max_rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme colors that apply to UI and to charts, excluding data
    # colors. The colors description is a hexidecimal color code that
    # consists of six alphanumerical characters, prefixed with `#`, for
    # example #37BFF5. For more information, see [Using Themes in Amazon
    # QuickSight][1] in the *Amazon QuickSight User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html
    #
    # @note When making an API call, you may pass UIColorPalette
    #   data as a hash:
    #
    #       {
    #         primary_foreground: "HexColor",
    #         primary_background: "HexColor",
    #         secondary_foreground: "HexColor",
    #         secondary_background: "HexColor",
    #         accent: "HexColor",
    #         accent_foreground: "HexColor",
    #         danger: "HexColor",
    #         danger_foreground: "HexColor",
    #         warning: "HexColor",
    #         warning_foreground: "HexColor",
    #         success: "HexColor",
    #         success_foreground: "HexColor",
    #         dimension: "HexColor",
    #         dimension_foreground: "HexColor",
    #         measure: "HexColor",
    #         measure_foreground: "HexColor",
    #       }
    #
    # @!attribute [rw] primary_foreground
    #   The color of text and other foreground elements that appear over the
    #   primary background regions, such as grid lines, borders, table
    #   banding, icons, and so on.
    #   @return [String]
    #
    # @!attribute [rw] primary_background
    #   The background color that applies to visuals and other high emphasis
    #   UI.
    #   @return [String]
    #
    # @!attribute [rw] secondary_foreground
    #   The foreground color that applies to any sheet title, sheet control
    #   text, or UI that appears over the secondary background.
    #   @return [String]
    #
    # @!attribute [rw] secondary_background
    #   The background color that applies to the sheet background and sheet
    #   controls.
    #   @return [String]
    #
    # @!attribute [rw] accent
    #   This color is that applies to selected states and buttons.
    #   @return [String]
    #
    # @!attribute [rw] accent_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the accent color.
    #   @return [String]
    #
    # @!attribute [rw] danger
    #   The color that applies to error messages.
    #   @return [String]
    #
    # @!attribute [rw] danger_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the error color.
    #   @return [String]
    #
    # @!attribute [rw] warning
    #   This color that applies to warning and informational messages.
    #   @return [String]
    #
    # @!attribute [rw] warning_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the warning color.
    #   @return [String]
    #
    # @!attribute [rw] success
    #   The color that applies to success messages, for example the check
    #   mark for a successful download.
    #   @return [String]
    #
    # @!attribute [rw] success_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the success color.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The color that applies to the names of fields that are identified as
    #   dimensions.
    #   @return [String]
    #
    # @!attribute [rw] dimension_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the dimension color.
    #   @return [String]
    #
    # @!attribute [rw] measure
    #   The color that applies to the names of fields that are identified as
    #   measures.
    #   @return [String]
    #
    # @!attribute [rw] measure_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the measure color.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UIColorPalette AWS API Documentation
    #
    class UIColorPalette < Struct.new(
      :primary_foreground,
      :primary_background,
      :secondary_foreground,
      :secondary_background,
      :accent,
      :accent_foreground,
      :danger,
      :danger_foreground,
      :warning,
      :warning_foreground,
      :success,
      :success_foreground,
      :dimension,
      :dimension_foreground,
      :measure,
      :measure_foreground)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error indicates that you are calling an operation on an Amazon
    # QuickSight subscription where the edition doesn't include support for
    # that operation. Amazon QuickSight currently has Standard Edition and
    # Enterprise Edition. Not every operation and capability is available in
    # every edition.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UnsupportedUserEditionException AWS API Documentation
    #
    class UnsupportedUserEditionException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountCustomizationRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace",
    #         account_customization: { # required
    #           default_theme: "Arn",
    #         },
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to update QuickSight
    #   customizations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to update QuickSight customizations for.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The QuickSight customizations you're updating in the current AWS
    #   Region.
    #   @return [Types::AccountCustomization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomizationRequest AWS API Documentation
    #
    class UpdateAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :account_customization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the updated customization for
    #   this AWS account.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that you want to update QuickSight
    #   customizations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the customization that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The QuickSight customizations you're updating in the current AWS
    #   Region.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomizationResponse AWS API Documentation
    #
    class UpdateAccountCustomizationResponse < Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         default_namespace: "Namespace", # required
    #         notification_email: "String",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that contains the QuickSight settings
    #   that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] default_namespace
    #   The default namespace for this AWS account. Currently, the default
    #   is `default`. AWS Identity and Access Management (IAM) users that
    #   register for the first time with QuickSight provide an email that
    #   becomes associated with the default namespace.
    #   @return [String]
    #
    # @!attribute [rw] notification_email
    #   The email address that you want QuickSight to send notifications to
    #   regarding your AWS account or QuickSight subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountSettingsRequest AWS API Documentation
    #
    class UpdateAccountSettingsRequest < Struct.new(
      :aws_account_id,
      :default_namespace,
      :notification_email)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountSettingsResponse AWS API Documentation
    #
    class UpdateAccountSettingsResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAnalysisPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #         grant_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         revoke_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analysis whose
    #   permissions you're updating. You must be using the AWS account that
    #   the analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis whose permissions you're updating. The ID is
    #   part of the analysis URL.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A structure that describes the permissions to add and the principal
    #   to add them to.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A structure that describes the permissions to remove and the
    #   principal to remove them from.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisPermissionsRequest AWS API Documentation
    #
    class UpdateAnalysisPermissionsRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_arn
    #   The Amazon Resource Name (ARN) of the analysis that you updated.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you updated permissions for.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisPermissionsResponse AWS API Documentation
    #
    class UpdateAnalysisPermissionsResponse < Struct.new(
      :analysis_arn,
      :analysis_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         analysis_id: "RestrictiveResourceId", # required
    #         name: "AnalysisName", # required
    #         parameters: {
    #           string_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: ["String"], # required
    #             },
    #           ],
    #           integer_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1], # required
    #             },
    #           ],
    #           decimal_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1.0], # required
    #             },
    #           ],
    #           date_time_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [Time.now], # required
    #             },
    #           ],
    #         },
    #         source_entity: { # required
    #           source_template: {
    #             data_set_references: [ # required
    #               {
    #                 data_set_placeholder: "NonEmptyString", # required
    #                 data_set_arn: "Arn", # required
    #               },
    #             ],
    #             arn: "Arn", # required
    #           },
    #         },
    #         theme_arn: "Arn",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the analysis that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID for the analysis that you're updating. This ID displays in
    #   the URL of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the analysis that you're updating. This name
    #   displays for the analysis in the QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might
    #   accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] source_entity
    #   A source entity to use for the analysis that you're updating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #   @return [Types::AnalysisSourceEntity]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) for the theme to apply to the
    #   analysis that you're creating. To see the theme in the QuickSight
    #   console, make sure that you have access to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisRequest AWS API Documentation
    #
    class UpdateAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :name,
      :parameters,
      :source_entity,
      :theme_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the analysis that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The update status of the last update that was made to the analysis.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisResponse AWS API Documentation
    #
    class UpdateAnalysisResponse < Struct.new(
      :arn,
      :analysis_id,
      :update_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDashboardPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         grant_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         revoke_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard whose
    #   permissions you're updating.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   The permissions that you want to grant on this resource.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   The permissions that you want to revoke from this resource.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissionsRequest AWS API Documentation
    #
    class UpdateDashboardPermissionsRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Information about the permissions on the dashboard.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissionsResponse AWS API Documentation
    #
    class UpdateDashboardPermissionsResponse < Struct.new(
      :dashboard_arn,
      :dashboard_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDashboardPublishedVersionRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         version_number: 1, # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the dashboard.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersionRequest AWS API Documentation
    #
    class UpdateDashboardPublishedVersionRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersionResponse AWS API Documentation
    #
    class UpdateDashboardPublishedVersionResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDashboardRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "RestrictiveResourceId", # required
    #         name: "DashboardName", # required
    #         source_entity: { # required
    #           source_template: {
    #             data_set_references: [ # required
    #               {
    #                 data_set_placeholder: "NonEmptyString", # required
    #                 data_set_arn: "Arn", # required
    #               },
    #             ],
    #             arn: "Arn", # required
    #           },
    #         },
    #         parameters: {
    #           string_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: ["String"], # required
    #             },
    #           ],
    #           integer_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1], # required
    #             },
    #           ],
    #           decimal_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [1.0], # required
    #             },
    #           ],
    #           date_time_parameters: [
    #             {
    #               name: "NonEmptyString", # required
    #               values: [Time.now], # required
    #             },
    #           ],
    #         },
    #         version_description: "VersionDescription",
    #         dashboard_publish_options: {
    #           ad_hoc_filtering_option: {
    #             availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #           export_to_csv_option: {
    #             availability_status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #           sheet_controls_option: {
    #             visibility_state: "EXPANDED", # accepts EXPANDED, COLLAPSED
    #           },
    #         },
    #         theme_arn: "Arn",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the dashboard that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you update the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only update a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to update a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the CreateTemplate API operation. For `SourceTemplate`, specify the
    #   Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate` ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list
    #   the replacement datasets for the placeholders listed in the
    #   original. The schema in each dataset must match its placeholder.
    #   @return [Types::DashboardSourceEntity]
    #
    # @!attribute [rw] parameters
    #   A structure that contains the parameters of the dashboard. These are
    #   parameter overrides for a dashboard. A dashboard can have any type
    #   of parameters, and some parameters might accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] version_description
    #   A description for the first version of the dashboard being created.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can
    #     be either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data
    #     to .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility
    #     state can be either `COLLAPSED` or `EXPANDED`. This option is
    #     `COLLAPSED` by default.
    #   @return [Types::DashboardPublishOptions]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that was originally associated with the entity. The theme ARN
    #   must exist in the same AWS account where you create the dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardRequest AWS API Documentation
    #
    class UpdateDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :name,
      :source_entity,
      :parameters,
      :version_description,
      :dashboard_publish_options,
      :theme_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN of the dashboard, including the version number.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of the request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardResponse AWS API Documentation
    #
    class UpdateDashboardResponse < Struct.new(
      :arn,
      :version_arn,
      :dashboard_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDataSetPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "ResourceId", # required
    #         grant_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         revoke_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   The resource permissions that you want to grant to the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   The resource permissions that you want to revoke from the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissionsRequest AWS API Documentation
    #
    class UpdateDataSetPermissionsRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissionsResponse AWS API Documentation
    #
    class UpdateDataSetPermissionsResponse < Struct.new(
      :data_set_arn,
      :data_set_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDataSetRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         physical_table_map: { # required
    #           "PhysicalTableId" => {
    #             relational_table: {
    #               data_source_arn: "Arn", # required
    #               schema: "RelationalTableSchema",
    #               name: "RelationalTableName", # required
    #               input_columns: [ # required
    #                 {
    #                   name: "ColumnName", # required
    #                   type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #                 },
    #               ],
    #             },
    #             custom_sql: {
    #               data_source_arn: "Arn", # required
    #               name: "CustomSqlName", # required
    #               sql_query: "SqlQuery", # required
    #               columns: [
    #                 {
    #                   name: "ColumnName", # required
    #                   type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #                 },
    #               ],
    #             },
    #             s3_source: {
    #               data_source_arn: "Arn", # required
    #               upload_settings: {
    #                 format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #                 start_from_row: 1,
    #                 contains_header: false,
    #                 text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #                 delimiter: "Delimiter",
    #               },
    #               input_columns: [ # required
    #                 {
    #                   name: "ColumnName", # required
    #                   type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         logical_table_map: {
    #           "LogicalTableId" => {
    #             alias: "LogicalTableAlias", # required
    #             data_transforms: [
    #               {
    #                 project_operation: {
    #                   projected_columns: ["String"], # required
    #                 },
    #                 filter_operation: {
    #                   condition_expression: "Expression", # required
    #                 },
    #                 create_columns_operation: {
    #                   columns: [ # required
    #                     {
    #                       column_name: "ColumnName", # required
    #                       column_id: "ColumnId", # required
    #                       expression: "Expression", # required
    #                     },
    #                   ],
    #                 },
    #                 rename_column_operation: {
    #                   column_name: "ColumnName", # required
    #                   new_column_name: "ColumnName", # required
    #                 },
    #                 cast_column_type_operation: {
    #                   column_name: "ColumnName", # required
    #                   new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #                   format: "TypeCastFormat",
    #                 },
    #                 tag_column_operation: {
    #                   column_name: "ColumnName", # required
    #                   tags: [ # required
    #                     {
    #                       column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             source: { # required
    #               join_instruction: {
    #                 left_operand: "LogicalTableId", # required
    #                 right_operand: "LogicalTableId", # required
    #                 type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #                 on_clause: "OnClause", # required
    #               },
    #               physical_table_id: "PhysicalTableId",
    #             },
    #           },
    #         },
    #         import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #         column_groups: [
    #           {
    #             geo_spatial_column_group: {
    #               name: "ColumnGroupName", # required
    #               country_code: "US", # required, accepts US
    #               columns: ["ColumnName"], # required
    #             },
    #           },
    #         ],
    #         row_level_permission_data_set: {
    #           namespace: "Namespace",
    #           arn: "Arn", # required
    #           permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #         },
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to update. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] physical_table_map
    #   Declares the physical tables that are available in the underlying
    #   data sources.
    #   @return [Hash<String,Types::PhysicalTable>]
    #
    # @!attribute [rw] logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #   @return [Hash<String,Types::LogicalTable>]
    #
    # @!attribute [rw] import_mode
    #   Indicates whether you want to import the data into SPICE.
    #   @return [String]
    #
    # @!attribute [rw] column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #   @return [Array<Types::ColumnGroup>]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the data you want to
    #   create.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetRequest AWS API Documentation
    #
    class UpdateDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :name,
      :physical_table_map,
      :logical_table_map,
      :import_mode,
      :column_groups,
      :row_level_permission_data_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per AWS Region for each AWS account.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_arn
    #   The ARN for the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   The ID of the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetResponse AWS API Documentation
    #
    class UpdateDataSetResponse < Struct.new(
      :arn,
      :data_set_id,
      :ingestion_arn,
      :ingestion_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDataSourcePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_source_id: "ResourceId", # required
    #         grant_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         revoke_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A list of resource permissions that you want to grant on the data
    #   source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A list of resource permissions that you want to revoke on the data
    #   source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissionsRequest AWS API Documentation
    #
    class UpdateDataSourcePermissionsRequest < Struct.new(
      :aws_account_id,
      :data_source_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissionsResponse AWS API Documentation
    #
    class UpdateDataSourcePermissionsResponse < Struct.new(
      :data_source_arn,
      :data_source_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         data_source_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         data_source_parameters: {
    #           amazon_elasticsearch_parameters: {
    #             domain: "Domain", # required
    #           },
    #           athena_parameters: {
    #             work_group: "WorkGroup",
    #           },
    #           aurora_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           aurora_postgre_sql_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           aws_iot_analytics_parameters: {
    #             data_set_name: "DataSetName", # required
    #           },
    #           jira_parameters: {
    #             site_base_url: "SiteBaseUrl", # required
    #           },
    #           maria_db_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           my_sql_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           postgre_sql_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           presto_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             catalog: "Catalog", # required
    #           },
    #           rds_parameters: {
    #             instance_id: "InstanceId", # required
    #             database: "Database", # required
    #           },
    #           redshift_parameters: {
    #             host: "Host",
    #             port: 1,
    #             database: "Database", # required
    #             cluster_id: "ClusterId",
    #           },
    #           s3_parameters: {
    #             manifest_file_location: { # required
    #               bucket: "S3Bucket", # required
    #               key: "S3Key", # required
    #             },
    #           },
    #           service_now_parameters: {
    #             site_base_url: "SiteBaseUrl", # required
    #           },
    #           snowflake_parameters: {
    #             host: "Host", # required
    #             database: "Database", # required
    #             warehouse: "Warehouse", # required
    #           },
    #           spark_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #           },
    #           sql_server_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           teradata_parameters: {
    #             host: "Host", # required
    #             port: 1, # required
    #             database: "Database", # required
    #           },
    #           twitter_parameters: {
    #             query: "Query", # required
    #             max_rows: 1, # required
    #           },
    #         },
    #         credentials: {
    #           credential_pair: {
    #             username: "Username", # required
    #             password: "Password", # required
    #             alternate_data_source_parameters: [
    #               {
    #                 amazon_elasticsearch_parameters: {
    #                   domain: "Domain", # required
    #                 },
    #                 athena_parameters: {
    #                   work_group: "WorkGroup",
    #                 },
    #                 aurora_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 aurora_postgre_sql_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 aws_iot_analytics_parameters: {
    #                   data_set_name: "DataSetName", # required
    #                 },
    #                 jira_parameters: {
    #                   site_base_url: "SiteBaseUrl", # required
    #                 },
    #                 maria_db_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 my_sql_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 postgre_sql_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 presto_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   catalog: "Catalog", # required
    #                 },
    #                 rds_parameters: {
    #                   instance_id: "InstanceId", # required
    #                   database: "Database", # required
    #                 },
    #                 redshift_parameters: {
    #                   host: "Host",
    #                   port: 1,
    #                   database: "Database", # required
    #                   cluster_id: "ClusterId",
    #                 },
    #                 s3_parameters: {
    #                   manifest_file_location: { # required
    #                     bucket: "S3Bucket", # required
    #                     key: "S3Key", # required
    #                   },
    #                 },
    #                 service_now_parameters: {
    #                   site_base_url: "SiteBaseUrl", # required
    #                 },
    #                 snowflake_parameters: {
    #                   host: "Host", # required
    #                   database: "Database", # required
    #                   warehouse: "Warehouse", # required
    #                 },
    #                 spark_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                 },
    #                 sql_server_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 teradata_parameters: {
    #                   host: "Host", # required
    #                   port: 1, # required
    #                   database: "Database", # required
    #                 },
    #                 twitter_parameters: {
    #                   query: "Query", # required
    #                   max_rows: 1, # required
    #                 },
    #               },
    #             ],
    #           },
    #           copy_source_arn: "CopySourceArn",
    #         },
    #         vpc_connection_properties: {
    #           vpc_connection_arn: "Arn", # required
    #         },
    #         ssl_properties: {
    #           disable_ssl: false,
    #         },
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_parameters
    #   The parameters that QuickSight uses to connect to your underlying
    #   source.
    #   @return [Types::DataSourceParameters]
    #
    # @!attribute [rw] credentials
    #   The credentials that QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name
    #   and password are supported.
    #   @return [Types::DataSourceCredentials]
    #
    # @!attribute [rw] vpc_connection_properties
    #   Use this parameter only when you want QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #   @return [Types::VpcConnectionProperties]
    #
    # @!attribute [rw] ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #   @return [Types::SslProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id,
      :name,
      :data_source_parameters,
      :credentials,
      :vpc_connection_properties,
      :ssl_properties)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per AWS Region for each
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The update status of the data source's last update.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Struct.new(
      :arn,
      :data_source_id,
      :update_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         description: "GroupDescription",
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroupResponse AWS API Documentation
    #
    class UpdateGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIAMPolicyAssignmentRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         assignment_name: "IAMPolicyAssignmentName", # required
    #         namespace: "Namespace", # required
    #         assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #         policy_arn: "Arn",
    #         identities: {
    #           "String" => ["IdentityName"],
    #         },
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the IAM policy assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment. This name must be unique within an AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy to apply to the QuickSight users and
    #   groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The QuickSight users, groups, or both that you want to assign the
    #   policy to.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignmentRequest AWS API Documentation
    #
    class UpdateIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace,
      :assignment_status,
      :policy_arn,
      :identities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_name
    #   The name of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy applied to the QuickSight users and
    #   groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The QuickSight users, groups, or both that the IAM policy is
    #   assigned to.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignmentResponse AWS API Documentation
    #
    class UpdateIAMPolicyAssignmentResponse < Struct.new(
      :assignment_name,
      :assignment_id,
      :policy_arn,
      :identities,
      :assignment_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTemplateAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #         template_version_number: 1, # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template alias that
    #   you're updating.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The alias of the template that you want to update. If you name a
    #   specific alias, you update the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @!attribute [rw] template_version_number
    #   The version number of the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAliasRequest AWS API Documentation
    #
    class UpdateTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      :template_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias
    #   The template alias.
    #   @return [Types::TemplateAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAliasResponse AWS API Documentation
    #
    class UpdateTemplateAliasResponse < Struct.new(
      :template_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTemplatePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         grant_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         revoke_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A list of resource permissions to be granted on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A list of resource permissions to be revoked from the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissionsRequest AWS API Documentation
    #
    class UpdateTemplatePermissionsRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions to be set on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissionsResponse AWS API Documentation
    #
    class UpdateTemplatePermissionsResponse < Struct.new(
      :template_id,
      :template_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTemplateRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         template_id: "RestrictiveResourceId", # required
    #         source_entity: { # required
    #           source_analysis: {
    #             arn: "Arn", # required
    #             data_set_references: [ # required
    #               {
    #                 data_set_placeholder: "NonEmptyString", # required
    #                 data_set_arn: "Arn", # required
    #               },
    #             ],
    #           },
    #           source_template: {
    #             arn: "Arn", # required
    #           },
    #         },
    #         version_description: "VersionDescription",
    #         name: "TemplateName",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the template that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you update the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name
    #   (ARN). For `SourceTemplate`, specify the ARN of the source template.
    #   For `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any AWS Account and any
    #   QuickSight-supported AWS Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the
    #   placeholders listed in the original. The schema in each dataset must
    #   match its placeholder.
    #   @return [Types::TemplateSourceEntity]
    #
    # @!attribute [rw] version_description
    #   A description of the current template version that is being updated.
    #   Every time you call `UpdateTemplate`, you create a new version of
    #   the template. Each version of the template maintains a description
    #   of the version in the `VersionDescription` field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateRequest AWS API Documentation
    #
    class UpdateTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :source_entity,
      :version_description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the template.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN for the template, including the version information of the
    #   first version.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateResponse AWS API Documentation
    #
    class UpdateTemplateResponse < Struct.new(
      :template_id,
      :arn,
      :version_arn,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThemeAliasRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         alias_name: "AliasName", # required
    #         theme_version_number: 1, # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme alias that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name of the theme alias that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] theme_version_number
    #   The version number of the theme that the alias should reference.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeAliasRequest AWS API Documentation
    #
    class UpdateThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      :theme_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias
    #   Information about the theme alias.
    #   @return [Types::ThemeAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeAliasResponse AWS API Documentation
    #
    class UpdateThemeAliasResponse < Struct.new(
      :theme_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThemePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         grant_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #         revoke_permissions: [
    #           {
    #             principal: "Principal", # required
    #             actions: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A list of resource permissions to be granted for the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A list of resource permissions to be revoked from the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemePermissionsRequest AWS API Documentation
    #
    class UpdateThemePermissionsRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The resulting list of resource permissions for the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemePermissionsResponse AWS API Documentation
    #
    class UpdateThemePermissionsResponse < Struct.new(
      :theme_id,
      :theme_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateThemeRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         theme_id: "RestrictiveResourceId", # required
    #         name: "ThemeName",
    #         base_theme_id: "RestrictiveResourceId", # required
    #         version_description: "VersionDescription",
    #         configuration: {
    #           data_color_palette: {
    #             colors: ["HexColor"],
    #             min_max_gradient: ["HexColor"],
    #             empty_fill_color: "HexColor",
    #           },
    #           ui_color_palette: {
    #             primary_foreground: "HexColor",
    #             primary_background: "HexColor",
    #             secondary_foreground: "HexColor",
    #             secondary_background: "HexColor",
    #             accent: "HexColor",
    #             accent_foreground: "HexColor",
    #             danger: "HexColor",
    #             danger_foreground: "HexColor",
    #             warning: "HexColor",
    #             warning_foreground: "HexColor",
    #             success: "HexColor",
    #             success_foreground: "HexColor",
    #             dimension: "HexColor",
    #             dimension_foreground: "HexColor",
    #             measure: "HexColor",
    #             measure_foreground: "HexColor",
    #           },
    #           sheet: {
    #             tile: {
    #               border: {
    #                 show: false,
    #               },
    #             },
    #             tile_layout: {
    #               gutter: {
    #                 show: false,
    #               },
    #               margin: {
    #                 show: false,
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account that contains the theme that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the theme.
    #   @return [String]
    #
    # @!attribute [rw] base_theme_id
    #   The theme ID, defined by Amazon QuickSight, that a custom theme
    #   inherits from. All themes initially inherit from a default
    #   QuickSight theme.
    #   @return [String]
    #
    # @!attribute [rw] version_description
    #   A description of the theme version that you're updating Every time
    #   that you call `UpdateTheme`, you create a new version of the theme.
    #   Each version of the theme maintains a description of the version in
    #   `VersionDescription`.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The theme configuration, which contains the theme display
    #   properties.
    #   @return [Types::ThemeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeRequest AWS API Documentation
    #
    class UpdateThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :name,
      :base_theme_id,
      :version_description,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the theme.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The Amazon Resource Name (ARN) for the new version of the theme.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of the theme.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeResponse AWS API Documentation
    #
    class UpdateThemeResponse < Struct.new(
      :theme_id,
      :arn,
      :version_arn,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         email: "String", # required
    #         role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #         custom_permissions_name: "RoleName",
    #         unapply_custom_permissions: false,
    #       }
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon QuickSight role of the user. The role can be one of the
    #   following default security cohorts:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   The name of the QuickSight role is invisible to the user except for
    #   the console screens dealing with permissions.
    #   @return [String]
    #
    # @!attribute [rw] custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the QuickSight console. Then, you
    #   use the `RegisterUser` API operation to assign the named set of
    #   permissions to a QuickSight user.
    #
    #   QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning QuickSight users to one of the default security cohorts in
    #   QuickSight (admin, author, reader).
    #
    #   This feature is available only to QuickSight Enterprise edition
    #   subscriptions that use SAML 2.0-Based Federation for Single Sign-On
    #   (SSO).
    #   @return [String]
    #
    # @!attribute [rw] unapply_custom_permissions
    #   A flag that you use to indicate that you want to remove all custom
    #   permissions from this user. Using this parameter resets the user to
    #   the state it was in before a custom permissions profile was applied.
    #   This parameter defaults to NULL and it doesn't accept any other
    #   value.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :email,
      :role,
      :custom_permissions_name,
      :unapply_custom_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The Amazon QuickSight user.
    #   @return [Types::User]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the format for a source file or files.
    #
    # @note When making an API call, you may pass UploadSettings
    #   data as a hash:
    #
    #       {
    #         format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #         start_from_row: 1,
    #         contains_header: false,
    #         text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #         delimiter: "Delimiter",
    #       }
    #
    # @!attribute [rw] format
    #   File format.
    #   @return [String]
    #
    # @!attribute [rw] start_from_row
    #   A row number to start reading data from.
    #   @return [Integer]
    #
    # @!attribute [rw] contains_header
    #   Whether the file has a header row, or the files each have a header
    #   row.
    #   @return [Boolean]
    #
    # @!attribute [rw] text_qualifier
    #   Text qualifier.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   The delimiter between values in the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UploadSettings AWS API Documentation
    #
    class UploadSettings < Struct.new(
      :format,
      :start_from_row,
      :contains_header,
      :text_qualifier,
      :delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A registered user of Amazon QuickSight.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user's user name.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The user's email address.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:.
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `RESTRICTED_READER`\: This role isn't currently available for
    #     use.
    #
    #   * `RESTRICTED_AUTHOR`\: This role isn't currently available for
    #     use.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The type of identity authentication used by the user.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The active status of user. When you create an Amazon QuickSight user
    #   that’s not an IAM user or an Active Directory user, that user is
    #   inactive until they sign in and provide a password.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] custom_permissions_name
    #   The custom permissions profile associated with this user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/User AWS API Documentation
    #
    class User < Struct.new(
      :arn,
      :user_name,
      :email,
      :role,
      :identity_type,
      :active,
      :principal_id,
      :custom_permissions_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPC connection properties.
    #
    # @note When making an API call, you may pass VpcConnectionProperties
    #   data as a hash:
    #
    #       {
    #         vpc_connection_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) for the VPC connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VpcConnectionProperties AWS API Documentation
    #
    class VpcConnectionProperties < Struct.new(
      :vpc_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
