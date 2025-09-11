# frozen_string_literal: true

# This is generated code!

module Aws::Firehose
  # This module contains the types returned by client operations.
  module Types

    # <p>Describes the buffering to perform before delivering data to the Serverless offering for
    #          Amazon OpenSearch Service destination.</p>
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering it
    #            to the destination. The default value is 300 (5 minutes).</p>
    #   @return [Integer]
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 5. </p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the Firehose stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
    #   @return [Integer]
    class AmazonOpenSearchServerlessBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in the Serverless offering for Amazon
    #          OpenSearch Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose
    #            for calling the Serverless offering for Amazon OpenSearch Service Configuration API and for
    #            indexing documents.</p>
    #   @return [String]
    # @!attribute collection_endpoint
    #   <p>The endpoint to use when communicating with the collection in the Serverless offering
    #            for Amazon OpenSearch Service.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Serverless offering for Amazon OpenSearch Service index name.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for
    #            AmazonopensearchserviceBufferingHints are used.</p>
    #   @return [Types::AmazonOpenSearchServerlessBufferingHints]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to the
    #            Serverless offering for Amazon OpenSearch Service. The default value is 300 (5
    #            minutes).</p>
    #   @return [Types::AmazonOpenSearchServerlessRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When it is set to
    #            FailedDocumentsOnly, Firehose writes any documents that could not be indexed
    #            to the configured Amazon S3 destination, with AmazonOpenSearchService-failed/ appended to
    #            the key prefix. When set to AllDocuments, Firehose delivers all incoming
    #            records to Amazon S3, and also writes failed documents with AmazonOpenSearchService-failed/
    #            appended to the prefix.</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute vpc_configuration
    #   <p>The details of the VPC of the Amazon OpenSearch or Amazon OpenSearch Serverless
    #            destination.</p>
    #   @return [Types::VpcConfiguration]
    class AmazonOpenSearchServerlessDestinationConfiguration < Struct.new(
      :role_arn,
      :collection_endpoint,
      :index_name,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination description in the Serverless offering for Amazon OpenSearch
    #          Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials.</p>
    #   @return [String]
    # @!attribute collection_endpoint
    #   <p>The endpoint to use when communicating with the collection in the Serverless offering
    #            for Amazon OpenSearch Service.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Serverless offering for Amazon OpenSearch Service index name.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options.</p>
    #   @return [Types::AmazonOpenSearchServerlessBufferingHints]
    # @!attribute retry_options
    #   <p>The Serverless offering for Amazon OpenSearch Service retry options.</p>
    #   @return [Types::AmazonOpenSearchServerlessRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute vpc_configuration_description
    #   <p>The details of the VPC of the Amazon OpenSearch Service destination.</p>
    #   @return [Types::VpcConfigurationDescription]
    class AmazonOpenSearchServerlessDestinationDescription < Struct.new(
      :role_arn,
      :collection_endpoint,
      :index_name,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in the Serverless offering for Amazon OpenSearch
    #          Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose
    #            for calling the Serverless offering for Amazon OpenSearch Service Configuration API and for
    #            indexing documents.</p>
    #   @return [String]
    # @!attribute collection_endpoint
    #   <p>The endpoint to use when communicating with the collection in the Serverless offering
    #            for Amazon OpenSearch Service.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Serverless offering for Amazon OpenSearch Service index name.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, AmazonopensearchBufferingHints object
    #            default values are used.</p>
    #   @return [Types::AmazonOpenSearchServerlessBufferingHints]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to the
    #            Serverless offering for Amazon OpenSearch Service. The default value is 300 (5
    #            minutes).</p>
    #   @return [Types::AmazonOpenSearchServerlessRetryOptions]
    # @!attribute s3_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    class AmazonOpenSearchServerlessDestinationUpdate < Struct.new(
      :role_arn,
      :collection_endpoint,
      :index_name,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures retry behavior in case Firehose is unable to deliver documents
    #          to the Serverless offering for Amazon OpenSearch Service.</p>
    # @!attribute duration_in_seconds
    #   <p>After an initial failure to deliver to the Serverless offering for Amazon OpenSearch
    #            Service, the total amount of time during which Firehose retries delivery
    #            (including the first attempt). After this time has elapsed, the failed documents are
    #            written to Amazon S3. Default value is 300 seconds (5 minutes). A value of 0 (zero) results
    #            in no retries.</p>
    #   @return [Integer]
    class AmazonOpenSearchServerlessRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the buffering to perform before delivering data to the Amazon OpenSearch
    #          Service destination. </p>
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering it
    #            to the destination. The default value is 300 (5 minutes). </p>
    #   @return [Integer]
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 5.</p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the Firehose stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MB/sec, the value should be 10 MB or higher. </p>
    #   @return [Integer]
    class AmazonopensearchserviceBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in Amazon OpenSearch Service</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose
    #            for calling the Amazon OpenSearch Service Configuration API and for indexing
    #            documents.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon OpenSearch Service domain. The IAM role must have permissions for
    #            DescribeElasticsearchDomain, DescribeElasticsearchDomains, and
    #            DescribeElasticsearchDomainConfig after assuming the role specified in RoleARN. </p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Specify either this
    #            ClusterEndpoint or the DomainARN field. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The ElasticsearAmazon OpenSearch Service index name.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The Amazon OpenSearch Service type name. For Elasticsearch 6.x, there can be only one
    #            type per index. If you try to specify a new type for an existing index that already has
    #            another type, Firehose returns an error during run time. </p>
    #   @return [String]
    # @!attribute index_rotation_period
    #   <p>The Amazon OpenSearch Service index rotation period. Index rotation appends a timestamp
    #            to the IndexName to facilitate the expiration of old data.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for
    #            AmazonopensearchserviceBufferingHints are used. </p>
    #   @return [Types::AmazonopensearchserviceBufferingHints]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon OpenSearch Service. The default value is 300 (5 minutes). </p>
    #   @return [Types::AmazonopensearchserviceRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When it is set to
    #            FailedDocumentsOnly, Firehose writes any documents that could not be indexed
    #            to the configured Amazon S3 destination, with AmazonOpenSearchService-failed/ appended to
    #            the key prefix. When set to AllDocuments, Firehose delivers all incoming
    #            records to Amazon S3, and also writes failed documents with AmazonOpenSearchService-failed/
    #            appended to the prefix. </p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute vpc_configuration
    #   <p>The details of the VPC of the Amazon OpenSearch or Amazon OpenSearch Serverless
    #            destination.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute document_id_options
    #   <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #   @return [Types::DocumentIdOptions]
    class AmazonopensearchserviceDestinationConfiguration < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      :document_id_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination description in Amazon OpenSearch Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. </p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon OpenSearch Service domain.</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Firehose uses
    #            either this ClusterEndpoint or the DomainARN field to send data to Amazon OpenSearch
    #            Service. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Amazon OpenSearch Service index name.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The Amazon OpenSearch Service type name. This applies to Elasticsearch 6.x and lower
    #            versions. For Elasticsearch 7.x and OpenSearch Service 1.x, there's no value for TypeName. </p>
    #   @return [String]
    # @!attribute index_rotation_period
    #   <p>The Amazon OpenSearch Service index rotation period</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options.</p>
    #   @return [Types::AmazonopensearchserviceBufferingHints]
    # @!attribute retry_options
    #   <p>The Amazon OpenSearch Service retry options.</p>
    #   @return [Types::AmazonopensearchserviceRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute vpc_configuration_description
    #   <p>The details of the VPC of the Amazon OpenSearch Service destination.</p>
    #   @return [Types::VpcConfigurationDescription]
    # @!attribute document_id_options
    #   <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #   @return [Types::DocumentIdOptions]
    class AmazonopensearchserviceDestinationDescription < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      :document_id_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in Amazon OpenSearch Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose
    #            for calling the Amazon OpenSearch Service Configuration API and for indexing documents.
    #         </p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon OpenSearch Service domain. The IAM role must have permissions for
    #            DescribeDomain, DescribeDomains, and DescribeDomainConfig after assuming the IAM role
    #            specified in RoleARN.</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Specify either this
    #            ClusterEndpoint or the DomainARN field. </p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Amazon OpenSearch Service index name.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The Amazon OpenSearch Service type name. For Elasticsearch 6.x, there can be only one
    #            type per index. If you try to specify a new type for an existing index that already has
    #            another type, Firehose returns an error during runtime. </p>
    #            <p>If you upgrade Elasticsearch from 6.x to 7.x and don’t update your Firehose stream,
    #            Firehose still delivers data to Elasticsearch with the old index name and type
    #            name. If you want to update your Firehose stream with a new index name, provide an empty
    #            string for TypeName. </p>
    #   @return [String]
    # @!attribute index_rotation_period
    #   <p>The Amazon OpenSearch Service index rotation period. Index rotation appends a timestamp
    #            to IndexName to facilitate the expiration of old data.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, AmazonopensearchBufferingHints object
    #            default values are used. </p>
    #   @return [Types::AmazonopensearchserviceBufferingHints]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon OpenSearch Service. The default value is 300 (5 minutes). </p>
    #   @return [Types::AmazonopensearchserviceRetryOptions]
    # @!attribute s3_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute document_id_options
    #   <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #   @return [Types::DocumentIdOptions]
    class AmazonopensearchserviceDestinationUpdate < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      :document_id_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures retry behavior in case Firehose is unable to deliver documents
    #          to Amazon OpenSearch Service. </p>
    # @!attribute duration_in_seconds
    #   <p>After an initial failure to deliver to Amazon OpenSearch Service, the total amount of
    #            time during which Firehose retries delivery (including the first attempt).
    #            After this time has elapsed, the failed documents are written to Amazon S3. Default value
    #            is 300 seconds (5 minutes). A value of 0 (zero) results in no retries. </p>
    #   @return [Integer]
    class AmazonopensearchserviceRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication configuration of the Amazon MSK cluster.</p>
    # @!attribute role_arn
    #   <p>The ARN of the role used to access the Amazon MSK cluster.</p>
    #   @return [String]
    # @!attribute connectivity
    #   <p>The type of connectivity used to access the Amazon MSK cluster.</p>
    #   @return [String]
    class AuthenticationConfiguration < Struct.new(
      :role_arn,
      :connectivity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes hints for the buffering to perform before delivering data to the
    #          destination. These options are treated as hints, and therefore Firehose might
    #          choose to use different values when it is optimal. The <code>SizeInMBs</code> and
    #             <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #          one of them, you must also provide a value for the other.</p>
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MiBs, before delivering it to the
    #            destination. The default value is 5. This parameter is optional but if you specify a value
    #            for it, you must also specify a value for <code>IntervalInSeconds</code>, and vice
    #            versa.</p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the Firehose stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MiB/sec, the value should be 10 MiB or higher.</p>
    #   @return [Integer]
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering
    #            it to the destination. The default value is 300. This parameter is optional but if you
    #            specify a value for it, you must also specify a value for <code>SizeInMBs</code>, and vice
    #            versa.</p>
    #   @return [Integer]
    class BufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes the containers where the destination Apache Iceberg Tables are persisted.
    #       </p>
    # @!attribute catalog_arn
    #   <p>
    #            Specifies the Glue catalog ARN identifier of the destination Apache Iceberg Tables. You must specify the ARN in the format <code>arn:aws:glue:region:account-id:catalog</code>.
    #         </p>
    #   @return [String]
    # @!attribute warehouse_location
    #   <p>The warehouse location for Apache Iceberg tables. You must configure this when schema
    #            evolution and table creation is enabled.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    class CatalogConfiguration < Struct.new(
      :catalog_arn,
      :warehouse_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    # @!attribute enabled
    #   <p>Enables or disables CloudWatch logging.</p>
    #   @return [Boolean]
    # @!attribute log_group_name
    #   <p>The CloudWatch group name for logging. This value is required if CloudWatch logging
    #            is enabled.</p>
    #   @return [String]
    # @!attribute log_stream_name
    #   <p>The CloudWatch log stream name for logging. This value is required if CloudWatch
    #            logging is enabled.</p>
    #   @return [String]
    class CloudWatchLoggingOptions < Struct.new(
      :enabled,
      :log_group_name,
      :log_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Another modification has already happened. Fetch <code>VersionId</code> again and use
    #          it to update the destination.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a <code>COPY</code> command for Amazon Redshift.</p>
    # @!attribute data_table_name
    #   <p>The name of the target table. The table must already exist in the database.</p>
    #   @return [String]
    # @!attribute data_table_columns
    #   <p>A comma-separated list of column names.</p>
    #   @return [String]
    # @!attribute copy_options
    #   <p>Optional parameters to use with the Amazon Redshift <code>COPY</code> command. For
    #            more information, see the "Optional Parameters" section of <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html">Amazon Redshift COPY command</a>. Some possible
    #            examples that would apply to Firehose are as follows:</p>
    #            <p>
    #               <code>delimiter '\t' lzop;</code> - fields are delimited with "\t" (TAB character) and
    #            compressed using lzop.</p>
    #            <p>
    #               <code>delimiter '|'</code> - fields are delimited with "|" (this is the default
    #            delimiter).</p>
    #            <p>
    #               <code>delimiter '|' escape</code> - the delimiter should be escaped.</p>
    #            <p>
    #               <code>fixedwidth 'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'</code> -
    #            fields are fixed width in the source, with each width specified after every column in the
    #            table.</p>
    #            <p>
    #               <code>JSON 's3://mybucket/jsonpaths.txt'</code> - data is in JSON format, and the path
    #            specified is the format of the data.</p>
    #            <p>For more examples, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html">Amazon Redshift COPY command
    #               examples</a>.</p>
    #   @return [String]
    class CopyCommand < Struct.new(
      :data_table_name,
      :data_table_columns,
      :copy_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream. This name must be unique per Amazon Web Services
    #            account in the same Amazon Web Services Region. If the Firehose streams are in different
    #            accounts or different Regions, you can have multiple Firehose streams with the same
    #            name.</p>
    #   @return [String]
    # @!attribute delivery_stream_type
    #   <p>The Firehose stream type. This parameter can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the Firehose stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The Firehose stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute direct_put_source_configuration
    #   <p>The structure that configures parameters such as <code>ThroughputHintInMBs</code> for a
    #            stream configured with Direct PUT as a source. </p>
    #   @return [Types::DirectPutSourceConfiguration]
    # @!attribute kinesis_stream_source_configuration
    #   <p>When a Kinesis data stream is used as the source for the Firehose stream, a <a>KinesisStreamSourceConfiguration</a> containing the Kinesis data stream Amazon
    #            Resource Name (ARN) and the role ARN for the source stream.</p>
    #   @return [Types::KinesisStreamSourceConfiguration]
    # @!attribute delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    #   @return [Types::DeliveryStreamEncryptionConfigurationInput]
    # @!attribute s3_destination_configuration
    #   <p>[Deprecated]
    #            The destination in Amazon S3. You can specify only one destination.</p>
    #   @deprecated
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute extended_s3_destination_configuration
    #   <p>The destination in Amazon S3. You can specify only one destination.</p>
    #   @return [Types::ExtendedS3DestinationConfiguration]
    # @!attribute redshift_destination_configuration
    #   <p>The destination in Amazon Redshift. You can specify only one destination.</p>
    #   @return [Types::RedshiftDestinationConfiguration]
    # @!attribute elasticsearch_destination_configuration
    #   <p>The destination in Amazon OpenSearch Service. You can specify only one destination.</p>
    #   @return [Types::ElasticsearchDestinationConfiguration]
    # @!attribute amazonopensearchservice_destination_configuration
    #   <p>The destination in Amazon OpenSearch Service. You can specify only one
    #            destination.</p>
    #   @return [Types::AmazonopensearchserviceDestinationConfiguration]
    # @!attribute splunk_destination_configuration
    #   <p>The destination in Splunk. You can specify only one destination.</p>
    #   @return [Types::SplunkDestinationConfiguration]
    # @!attribute http_endpoint_destination_configuration
    #   <p>Enables configuring Kinesis Firehose to deliver data to any HTTP endpoint destination.
    #            You can specify only one destination.</p>
    #   @return [Types::HttpEndpointDestinationConfiguration]
    # @!attribute tags
    #   <p>A set of tags to assign to the Firehose stream. A tag is a key-value pair that you can
    #            define and assign to Amazon Web Services resources. Tags are metadata. For example, you can
    #            add friendly names and descriptions or other types of information that can help you
    #            distinguish the Firehose stream. For more information about tags, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #               Cost Allocation Tags</a> in the Amazon Web Services Billing and Cost Management User
    #            Guide.</p>
    #            <p>You can specify up to 50 tags when creating a Firehose stream.</p>
    #            <p>If you specify tags in the <code>CreateDeliveryStream</code> action, Amazon Data
    #            Firehose performs an additional authorization on the
    #               <code>firehose:TagDeliveryStream</code> action to verify if users have permissions to
    #            create tags. If you do not provide this permission, requests to create new Firehose streams
    #            with IAM resource tags will fail with an <code>AccessDeniedException</code> such as
    #            following.</p>
    #            <p>
    #               <b>AccessDeniedException</b>
    #            </p>
    #            <p>User: arn:aws:sts::x:assumed-role/x/x is not authorized to perform: firehose:TagDeliveryStream on resource: arn:aws:firehose:us-east-1:x:deliverystream/x with an explicit deny in an identity-based policy.</p>
    #            <p>For an example IAM policy, see <a href="https://docs.aws.amazon.com/firehose/latest/APIReference/API_CreateDeliveryStream.html#API_CreateDeliveryStream_Examples">Tag example.</a>
    #            </p>
    #   @return [Array<Types::Tag>]
    # @!attribute amazon_open_search_serverless_destination_configuration
    #   <p>The destination in the Serverless offering for Amazon OpenSearch Service. You can
    #            specify only one destination.</p>
    #   @return [Types::AmazonOpenSearchServerlessDestinationConfiguration]
    # @!attribute msk_source_configuration
    #   <p>The configuration for the Amazon MSK cluster to be used as the source for a delivery
    #            stream.</p>
    #   @return [Types::MSKSourceConfiguration]
    # @!attribute snowflake_destination_configuration
    #   <p>Configure Snowflake destination</p>
    #   @return [Types::SnowflakeDestinationConfiguration]
    # @!attribute iceberg_destination_configuration
    #   <p>
    #            Configure Apache Iceberg Tables destination.
    #         </p>
    #   @return [Types::IcebergDestinationConfiguration]
    # @!attribute database_source_configuration
    #   <p>
    #               The top level object for configuring streams with database as a source. 
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseSourceConfiguration]
    class CreateDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_type,
      :direct_put_source_configuration,
      :kinesis_stream_source_configuration,
      :delivery_stream_encryption_configuration_input,
      :s3_destination_configuration,
      :extended_s3_destination_configuration,
      :redshift_destination_configuration,
      :elasticsearch_destination_configuration,
      :amazonopensearchservice_destination_configuration,
      :splunk_destination_configuration,
      :http_endpoint_destination_configuration,
      :tags,
      :amazon_open_search_serverless_destination_configuration,
      :msk_source_configuration,
      :snowflake_destination_configuration,
      :iceberg_destination_configuration,
      :database_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_arn
    #   <p>The ARN of the Firehose stream.</p>
    #   @return [String]
    class CreateDeliveryStreamOutput < Struct.new(
      :delivery_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that you want Firehose to convert data from the JSON format to
    #          the Parquet or ORC format before writing it to Amazon S3. Firehose uses the
    #          serializer and deserializer that you specify, in addition to the column information from
    #          the Amazon Web Services Glue table, to deserialize your input data from JSON and then
    #          serialize it to the Parquet or ORC format. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html">Firehose Record Format Conversion</a>.</p>
    # @!attribute schema_configuration
    #   <p>Specifies the Amazon Web Services Glue Data Catalog table that contains the column
    #            information. This parameter is required if <code>Enabled</code> is set to true.</p>
    #   @return [Types::SchemaConfiguration]
    # @!attribute input_format_configuration
    #   <p>Specifies the deserializer that you want Firehose to use to convert the
    #            format of your data from JSON. This parameter is required if <code>Enabled</code> is set to
    #            true.</p>
    #   @return [Types::InputFormatConfiguration]
    # @!attribute output_format_configuration
    #   <p>Specifies the serializer that you want Firehose to use to convert the
    #            format of your data to the Parquet or ORC format. This parameter is required if
    #               <code>Enabled</code> is set to true.</p>
    #   @return [Types::OutputFormatConfiguration]
    # @!attribute enabled
    #   <p>Defaults to <code>true</code>. Set it to <code>false</code> if you want to disable
    #            format conversion while preserving the configuration details.</p>
    #   @return [Boolean]
    class DataFormatConversionConfiguration < Struct.new(
      :schema_configuration,
      :input_format_configuration,
      :output_format_configuration,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure used to configure the list of column patterns in source database
    #          endpoint for Firehose to read from. </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute include
    #   <p>
    #               The list of column patterns in source database to be included for Firehose to read from.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    # @!attribute exclude
    #   <p>
    #               The list of column patterns in source database to be excluded for Firehose to read from.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    class DatabaseColumnList < Struct.new(
      :include,
      :exclude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure used to configure the list of database patterns in source database
    #          endpoint for Firehose to read from. </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute include
    #   <p>The list of database patterns in source database endpoint to be included for Firehose
    #            to read from. </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    # @!attribute exclude
    #   <p>The list of database patterns in source database endpoint to be excluded for Firehose
    #            to read from. </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    class DatabaseList < Struct.new(
      :include,
      :exclude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The structure that describes the snapshot information of a table in source database endpoint that Firehose reads.  
    #          </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute id
    #   <p>
    #               The identifier of the current snapshot of the table in source database endpoint.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute table
    #   <p>
    #               The fully qualified name of the table in source database endpoint that Firehose reads.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute request_timestamp
    #   <p>
    #               The timestamp when the current snapshot is taken on the table.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Time]
    # @!attribute requested_by
    #   <p>
    #               The principal that sent the request to take the current snapshot on the table.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #               The status of the current snapshot of the table.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute failure_description
    #   <p>Provides details in case one of the following operations fails due to an error related
    #            to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #               <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    #   @return [Types::FailureDescription]
    class DatabaseSnapshotInfo < Struct.new(
      :id,
      :table,
      :request_timestamp,
      :requested_by,
      :status,
      :failure_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The structure to configure the authentication methods for Firehose to connect to source database endpoint.
    #          </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute secrets_manager_configuration
    #   <p>The structure that defines how Firehose accesses the secret.</p>
    #   @return [Types::SecretsManagerConfiguration]
    class DatabaseSourceAuthenticationConfiguration < Struct.new(
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The top level object for configuring streams with database as a source. 
    #          </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute type
    #   <p>The type of database engine. This can be one of the following values. </p>
    #            <ul>
    #               <li>
    #                  <p>MySQL</p>
    #               </li>
    #               <li>
    #                  <p>PostgreSQL</p>
    #               </li>
    #            </ul>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>
    #               The endpoint of the database server.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port of the database. This can be one of the following values.</p>
    #            <ul>
    #               <li>
    #                  <p>3306 for MySQL database type</p>
    #               </li>
    #               <li>
    #                  <p>5432 for PostgreSQL database type</p>
    #               </li>
    #            </ul>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Integer]
    # @!attribute ssl_mode
    #   <p>
    #               The mode to enable or disable SSL when Firehose connects to the database endpoint.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute databases
    #   <p>
    #               The list of database patterns in source database endpoint for Firehose to read from.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseList]
    # @!attribute tables
    #   <p>
    #               The list of table patterns in source database endpoint for Firehose to read from.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseTableList]
    # @!attribute columns
    #   <p>
    #               The list of column patterns in source database endpoint for Firehose to read from.  
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseColumnList]
    # @!attribute surrogate_keys
    #   <p>
    #               The optional list of table and column names used as unique key columns when taking snapshot if the tables don’t have primary keys configured.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_watermark_table
    #   <p>
    #               The fully qualified name of the table in source database endpoint that Firehose uses to track snapshot progress.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute database_source_authentication_configuration
    #   <p>
    #               The structure to configure the authentication methods for Firehose to connect to source database endpoint.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseSourceAuthenticationConfiguration]
    # @!attribute database_source_vpc_configuration
    #   <p>
    #               The details of the VPC Endpoint Service which Firehose uses to create a PrivateLink to the database.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseSourceVPCConfiguration]
    class DatabaseSourceConfiguration < Struct.new(
      :type,
      :endpoint,
      :port,
      :ssl_mode,
      :databases,
      :tables,
      :columns,
      :surrogate_keys,
      :snapshot_watermark_table,
      :database_source_authentication_configuration,
      :database_source_vpc_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The top level object for database source description.
    #          </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute type
    #   <p>The type of database engine. This can be one of the following values. </p>
    #            <ul>
    #               <li>
    #                  <p>MySQL</p>
    #               </li>
    #               <li>
    #                  <p>PostgreSQL</p>
    #               </li>
    #            </ul>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>
    #               The endpoint of the database server.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port of the database. This can be one of the following values.</p>
    #            <ul>
    #               <li>
    #                  <p>3306 for MySQL database type</p>
    #               </li>
    #               <li>
    #                  <p>5432 for PostgreSQL database type</p>
    #               </li>
    #            </ul>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Integer]
    # @!attribute ssl_mode
    #   <p>
    #               The mode to enable or disable SSL when Firehose connects to the database endpoint.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute databases
    #   <p>
    #               The list of database patterns in source database endpoint for Firehose to read from.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseList]
    # @!attribute tables
    #   <p>
    #               The list of table patterns in source database endpoint for Firehose to read from.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseTableList]
    # @!attribute columns
    #   <p>
    #               The list of column patterns in source database endpoint for Firehose to read from.  
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseColumnList]
    # @!attribute surrogate_keys
    #   <p>
    #               The optional list of table and column names used as unique key columns when taking snapshot if the tables don’t have primary keys configured.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_watermark_table
    #   <p>
    #               The fully qualified name of the table in source database endpoint that Firehose uses to track snapshot progress.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    # @!attribute snapshot_info
    #   <p>
    #               The structure that describes the snapshot information of a table in source database endpoint that Firehose reads.  
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<Types::DatabaseSnapshotInfo>]
    # @!attribute database_source_authentication_configuration
    #   <p>
    #               The structure to configure the authentication methods for Firehose to connect to source database endpoint.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseSourceAuthenticationConfiguration]
    # @!attribute database_source_vpc_configuration
    #   <p>
    #               The details of the VPC Endpoint Service which Firehose uses to create a PrivateLink to the database.
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseSourceVPCConfiguration]
    class DatabaseSourceDescription < Struct.new(
      :type,
      :endpoint,
      :port,
      :ssl_mode,
      :databases,
      :tables,
      :columns,
      :surrogate_keys,
      :snapshot_watermark_table,
      :snapshot_info,
      :database_source_authentication_configuration,
      :database_source_vpc_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The structure for details of the VPC Endpoint Service which Firehose uses to create a PrivateLink to the database.
    #          </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute vpc_endpoint_service_name
    #   <p>
    #               The VPC endpoint service name which Firehose uses to create a PrivateLink to the database. The endpoint service must have the Firehose service principle <code>firehose.amazonaws.com</code> as an allowed principal on the VPC endpoint service. The VPC endpoint service name is a string that looks like <code>com.amazonaws.vpce.<region>.<vpc-endpoint-service-id></code>. 
    #            </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    class DatabaseSourceVPCConfiguration < Struct.new(
      :vpc_endpoint_service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure used to configure the list of table patterns in source database endpoint
    #          for Firehose to read from. </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute include
    #   <p>The list of table patterns in source database endpoint to be included for Firehose to
    #            read from. </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    # @!attribute exclude
    #   <p>The list of table patterns in source database endpoint to be excluded for Firehose to
    #            read from. </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<String>]
    class DatabaseTableList < Struct.new(
      :include,
      :exclude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute allow_force_delete
    #   <p>Set this to true if you want to delete the Firehose stream even if Firehose
    #            is unable to retire the grant for the CMK. Firehose might be unable to retire
    #            the grant due to a customer error, such as when the CMK or the grant are in an invalid
    #            state. If you force deletion, you can then use the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html">RevokeGrant</a> operation to
    #            revoke the grant you gave to Firehose. If a failure to retire the grant
    #            happens due to an Amazon Web Services KMS issue, Firehose keeps retrying the
    #            delete operation.</p>
    #            <p>The default value is false.</p>
    #   @return [Boolean]
    class DeleteDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :allow_force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDeliveryStreamOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a Firehose stream.</p>
    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Firehose stream. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute delivery_stream_status
    #   <p>The status of the Firehose stream. If the status of a Firehose stream is
    #               <code>CREATING_FAILED</code>, this status doesn't change, and you can't invoke
    #               <code>CreateDeliveryStream</code> again on it. However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete it.</p>
    #   @return [String]
    # @!attribute failure_description
    #   <p>Provides details in case one of the following operations fails due to an error related
    #            to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #               <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    #   @return [Types::FailureDescription]
    # @!attribute delivery_stream_encryption_configuration
    #   <p>Indicates the server-side encryption (SSE) status for the Firehose stream.</p>
    #   @return [Types::DeliveryStreamEncryptionConfiguration]
    # @!attribute delivery_stream_type
    #   <p>The Firehose stream type. This can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the Firehose stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The Firehose stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version_id
    #   <p>Each time the destination is updated for a Firehose stream, the version ID is
    #            changed, and the current version ID is required when updating the destination. This is so
    #            that the service knows it is applying the changes to the correct version of the delivery
    #            stream.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>The date and time that the Firehose stream was created.</p>
    #   @return [Time]
    # @!attribute last_update_timestamp
    #   <p>The date and time that the Firehose stream was last updated.</p>
    #   @return [Time]
    # @!attribute source
    #   <p>If the <code>DeliveryStreamType</code> parameter is
    #               <code>KinesisStreamAsSource</code>, a <a>SourceDescription</a> object
    #            describing the source Kinesis data stream.</p>
    #   @return [Types::SourceDescription]
    # @!attribute destinations
    #   <p>The destinations.</p>
    #   @return [Array<Types::DestinationDescription>]
    # @!attribute has_more_destinations
    #   <p>Indicates whether there are more destinations available to list.</p>
    #   @return [Boolean]
    class DeliveryStreamDescription < Struct.new(
      :delivery_stream_name,
      :delivery_stream_arn,
      :delivery_stream_status,
      :failure_description,
      :delivery_stream_encryption_configuration,
      :delivery_stream_type,
      :version_id,
      :create_timestamp,
      :last_update_timestamp,
      :source,
      :destinations,
      :has_more_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the server-side encryption (SSE) status for the delivery
    #          stream, the type customer master key (CMK) in use, if any, and the ARN of the CMK. You can
    #          get <code>DeliveryStreamEncryptionConfiguration</code> by invoking the <a>DescribeDeliveryStream</a> operation. </p>
    # @!attribute key_arn
    #   <p>If <code>KeyType</code> is <code>CUSTOMER_MANAGED_CMK</code>, this field contains the
    #            ARN of the customer managed CMK. If <code>KeyType</code> is <code>Amazon Web Services_OWNED_CMK</code>, <code>DeliveryStreamEncryptionConfiguration</code> doesn't contain
    #            a value for <code>KeyARN</code>.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p>Indicates the type of customer master key (CMK) that is used for encryption. The default
    #            setting is <code>Amazon Web Services_OWNED_CMK</code>. For more information about CMKs, see
    #               <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">Customer Master Keys (CMKs)</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>This is the server-side encryption (SSE) status for the Firehose stream. For a full
    #            description of the different values of this status, see <a>StartDeliveryStreamEncryption</a> and <a>StopDeliveryStreamEncryption</a>. If this status is <code>ENABLING_FAILED</code>
    #            or <code>DISABLING_FAILED</code>, it is the status of the most recent attempt to enable or
    #            disable SSE, respectively.</p>
    #   @return [String]
    # @!attribute failure_description
    #   <p>Provides details in case one of the following operations fails due to an error related
    #            to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #               <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    #   @return [Types::FailureDescription]
    class DeliveryStreamEncryptionConfiguration < Struct.new(
      :key_arn,
      :key_type,
      :status,
      :failure_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the type and Amazon Resource Name (ARN) of the CMK to use for Server-Side
    #          Encryption (SSE). </p>
    # @!attribute key_arn
    #   <p>If you set <code>KeyType</code> to <code>CUSTOMER_MANAGED_CMK</code>, you must specify
    #            the Amazon Resource Name (ARN) of the CMK. If you set <code>KeyType</code> to <code>Amazon Web Services_OWNED_CMK</code>, Firehose uses a service-account CMK.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p>Indicates the type of customer master key (CMK) to use for encryption. The default
    #            setting is <code>Amazon Web Services_OWNED_CMK</code>. For more information about CMKs, see
    #               <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">Customer Master Keys (CMKs)</a>. When you invoke <a>CreateDeliveryStream</a> or <a>StartDeliveryStreamEncryption</a> with
    #               <code>KeyType</code> set to CUSTOMER_MANAGED_CMK, Firehose invokes the
    #            Amazon KMS operation <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html">CreateGrant</a> to create a grant
    #            that allows the Firehose service to use the customer managed CMK to perform
    #            encryption and decryption. Firehose manages that grant. </p>
    #            <p>When you invoke <a>StartDeliveryStreamEncryption</a> to change the CMK for a
    #            Firehose stream that is encrypted with a customer managed CMK, Firehose
    #            schedules the grant it had on the old CMK for retirement.</p>
    #            <p>You can use a CMK of type CUSTOMER_MANAGED_CMK to encrypt up to 500 Firehose streams. If
    #            a <a>CreateDeliveryStream</a> or <a>StartDeliveryStreamEncryption</a>
    #            operation exceeds this limit, Firehose throws a
    #               <code>LimitExceededException</code>. </p>
    #            <important>
    #               <p>To encrypt your Firehose stream, use symmetric CMKs. Firehose doesn't
    #               support asymmetric CMKs. For information about symmetric and asymmetric CMKs, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html">About
    #                  Symmetric and Asymmetric CMKs</a> in the Amazon Web Services Key Management
    #               Service developer guide.</p>
    #            </important>
    #   @return [String]
    class DeliveryStreamEncryptionConfigurationInput < Struct.new(
      :key_arn,
      :key_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The limit on the number of destinations to return. You can have one destination per
    #            Firehose stream.</p>
    #   @return [Integer]
    # @!attribute exclusive_start_destination_id
    #   <p>The ID of the destination to start returning the destination information. Firehose supports one destination per Firehose stream.</p>
    #   @return [String]
    class DescribeDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :limit,
      :exclusive_start_destination_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_description
    #   <p>Information about the Firehose stream.</p>
    #   @return [Types::DeliveryStreamDescription]
    class DescribeDeliveryStreamOutput < Struct.new(
      :delivery_stream_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The deserializer you want Firehose to use for converting the input data
    #          from JSON. Firehose then serializes the data to its final format using the
    #             <a>Serializer</a>. Firehose supports two types of deserializers:
    #          the <a href="https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON">Apache Hive JSON SerDe</a> and the <a href="https://github.com/rcongiu/Hive-JSON-Serde">OpenX JSON SerDe</a>.</p>
    # @!attribute open_x_json_ser_de
    #   <p>The OpenX SerDe. Used by Firehose for deserializing data, which means
    #            converting it from the JSON format in preparation for serializing it to the Parquet or ORC
    #            format. This is one of two deserializers you can choose, depending on which one offers the
    #            functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
    #   @return [Types::OpenXJsonSerDe]
    # @!attribute hive_json_ser_de
    #   <p>The native Hive / HCatalog JsonSerDe. Used by Firehose for deserializing
    #            data, which means converting it from the JSON format in preparation for serializing it to
    #            the Parquet or ORC format. This is one of two deserializers you can choose, depending on
    #            which one offers the functionality you need. The other option is the OpenX SerDe.</p>
    #   @return [Types::HiveJsonSerDe]
    class Deserializer < Struct.new(
      :open_x_json_ser_de,
      :hive_json_ser_de,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination for a Firehose stream.</p>
    # @!attribute destination_id
    #   <p>The ID of the destination.</p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>[Deprecated] The destination in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute extended_s3_destination_description
    #   <p>The destination in Amazon S3.</p>
    #   @return [Types::ExtendedS3DestinationDescription]
    # @!attribute redshift_destination_description
    #   <p>The destination in Amazon Redshift.</p>
    #   @return [Types::RedshiftDestinationDescription]
    # @!attribute elasticsearch_destination_description
    #   <p>The destination in Amazon OpenSearch Service.</p>
    #   @return [Types::ElasticsearchDestinationDescription]
    # @!attribute amazonopensearchservice_destination_description
    #   <p>The destination in Amazon OpenSearch Service.</p>
    #   @return [Types::AmazonopensearchserviceDestinationDescription]
    # @!attribute splunk_destination_description
    #   <p>The destination in Splunk.</p>
    #   @return [Types::SplunkDestinationDescription]
    # @!attribute http_endpoint_destination_description
    #   <p>Describes the specified HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointDestinationDescription]
    # @!attribute snowflake_destination_description
    #   <p>Optional description for the destination</p>
    #   @return [Types::SnowflakeDestinationDescription]
    # @!attribute amazon_open_search_serverless_destination_description
    #   <p>The destination in the Serverless offering for Amazon OpenSearch Service.</p>
    #   @return [Types::AmazonOpenSearchServerlessDestinationDescription]
    # @!attribute iceberg_destination_description
    #   <p>
    #            Describes a destination in Apache Iceberg Tables.
    #         </p>
    #   @return [Types::IcebergDestinationDescription]
    class DestinationDescription < Struct.new(
      :destination_id,
      :s3_destination_description,
      :extended_s3_destination_description,
      :redshift_destination_description,
      :elasticsearch_destination_description,
      :amazonopensearchservice_destination_description,
      :splunk_destination_description,
      :http_endpoint_destination_description,
      :snowflake_destination_description,
      :amazon_open_search_serverless_destination_description,
      :iceberg_destination_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes the configuration of a destination in Apache Iceberg Tables.
    #       </p>
    # @!attribute destination_table_name
    #   <p>
    #           Specifies the name of the Apache Iceberg Table.
    #         </p>
    #   @return [String]
    # @!attribute destination_database_name
    #   <p>
    #            The name of the Apache Iceberg database.
    #         </p>
    #   @return [String]
    # @!attribute unique_keys
    #   <p>
    #            A list of unique keys for a given Apache Iceberg table. Firehose will use these for running Create, Update, or Delete operations on the given Iceberg table. 
    #            
    #         </p>
    #   @return [Array<String>]
    # @!attribute partition_spec
    #   <p>The partition spec configuration for a table that is used by automatic table
    #            creation.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::PartitionSpec]
    # @!attribute s3_error_output_prefix
    #   <p>
    #           The table specific S3 error output prefix. All the errors that occurred while delivering to this table will be prefixed with this value in S3 destination. 
    #          </p>
    #   @return [String]
    class DestinationTableConfiguration < Struct.new(
      :destination_table_name,
      :destination_database_name,
      :unique_keys,
      :partition_spec,
      :s3_error_output_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that configures parameters such as <code>ThroughputHintInMBs</code> for a stream configured with
    #          Direct PUT as a source. </p>
    # @!attribute throughput_hint_in_m_bs
    #   <p> The value that you configure for this parameter is for information purpose only and
    #            does not affect Firehose delivery throughput limit. You can use the <a href="https://support.console.aws.amazon.com/support/home#/case/create%3FissueType=service-limit-increase%26limitType=kinesis-firehose-limits">Firehose Limits form</a> to request a throughput limit increase. </p>
    #   @return [Integer]
    class DirectPutSourceConfiguration < Struct.new(
      :throughput_hint_in_m_bs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that configures parameters such as <code>ThroughputHintInMBs</code> for a stream configured with
    #          Direct PUT as a source. </p>
    # @!attribute throughput_hint_in_m_bs
    #   <p> The value that you configure for this parameter is for information purpose only and
    #            does not affect Firehose delivery throughput limit. You can use the <a href="https://support.console.aws.amazon.com/support/home#/case/create%3FissueType=service-limit-increase%26limitType=kinesis-firehose-limits">Firehose Limits form</a> to request a throughput limit increase. </p>
    #   @return [Integer]
    class DirectPutSourceDescription < Struct.new(
      :throughput_hint_in_m_bs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #          <p></p>
    # @!attribute default_document_id_format
    #   <p>When the <code>FIREHOSE_DEFAULT</code> option is chosen, Firehose generates
    #            a unique document ID for each record based on a unique internal identifier. The generated
    #            document ID is stable across multiple delivery attempts, which helps prevent the same
    #            record from being indexed multiple times with different document IDs.</p>
    #            <p>When the <code>NO_DOCUMENT_ID</code> option is chosen, Firehose does not
    #            include any document IDs in the requests it sends to the Amazon OpenSearch Service. This
    #            causes the Amazon OpenSearch Service domain to generate document IDs. In case of multiple
    #            delivery attempts, this may cause the same record to be indexed more than once with
    #            different document IDs. This option enables write-heavy operations, such as the ingestion
    #            of logs and observability data, to consume less resources in the Amazon OpenSearch Service
    #            domain, resulting in improved performance.</p>
    #   @return [String]
    class DocumentIdOptions < Struct.new(
      :default_document_id_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #          from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #          partitioning is only supported for Amazon S3 destinations.
    #          </p>
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver data to an Amazon
    #            S3 prefix.</p>
    #   @return [Types::RetryOptions]
    # @!attribute enabled
    #   <p>Specifies that the dynamic partitioning is enabled for this Firehose stream.</p>
    #   @return [Boolean]
    class DynamicPartitioningConfiguration < Struct.new(
      :retry_options,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the buffering to perform before delivering data to the Amazon OpenSearch Service
    #          destination.</p>
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering
    #            it to the destination. The default value is 300 (5 minutes).</p>
    #   @return [Integer]
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 5.</p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the Firehose stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
    #   @return [Integer]
    class ElasticsearchBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in Amazon OpenSearch Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose
    #            for calling the Amazon OpenSearch Service Configuration API and for indexing documents. For more
    #            information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon OpenSearch Service domain. The IAM role must have permissions
    #               for <code>DescribeDomain</code>, <code>DescribeDomains</code>, and
    #               <code>DescribeDomainConfig</code> after assuming the role specified in <b>RoleARN</b>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #            <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Specify either this
    #               <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Elasticsearch index name.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
    #            index. If you try to specify a new type for an existing index that already has another
    #            type, Firehose returns an error during run time.</p>
    #            <p>For Elasticsearch 7.x, don't specify a <code>TypeName</code>.</p>
    #   @return [String]
    # @!attribute index_rotation_period
    #   <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to the
    #               <code>IndexName</code> to facilitate the expiration of old data. For more information,
    #            see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for the
    #               Amazon OpenSearch Service Destination</a>. The default value is <code>OneDay</code>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for
    #               <code>ElasticsearchBufferingHints</code> are used.</p>
    #   @return [Types::ElasticsearchBufferingHints]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon OpenSearch Service. The default value is 300 (5 minutes).</p>
    #   @return [Types::ElasticsearchRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When it is set to
    #               <code>FailedDocumentsOnly</code>, Firehose writes any documents that could
    #            not be indexed to the configured Amazon S3 destination, with
    #               <code>AmazonOpenSearchService-failed/</code> appended to the key prefix. When set to
    #               <code>AllDocuments</code>, Firehose delivers all incoming records to Amazon
    #            S3, and also writes failed documents with <code>AmazonOpenSearchService-failed/</code>
    #            appended to the prefix. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup">Amazon S3 Backup for the
    #               Amazon OpenSearch Service Destination</a>. Default value is
    #            <code>FailedDocumentsOnly</code>.</p>
    #            <p>You can't change this backup mode after you create the Firehose stream. </p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>The configuration for the backup Amazon S3 location.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute vpc_configuration
    #   <p>The details of the VPC of the Amazon destination.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute document_id_options
    #   <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #   @return [Types::DocumentIdOptions]
    class ElasticsearchDestinationConfiguration < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration,
      :document_id_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination description in Amazon OpenSearch Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon OpenSearch Service domain. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #            <p>Firehose uses either <code>ClusterEndpoint</code> or <code>DomainARN</code>
    #            to send data to Amazon OpenSearch Service.</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Firehose uses
    #            either this <code>ClusterEndpoint</code> or the <code>DomainARN</code> field to send data
    #            to Amazon OpenSearch Service.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Elasticsearch index name.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The Elasticsearch type name. This applies to Elasticsearch 6.x and lower versions.
    #            For Elasticsearch 7.x and OpenSearch Service 1.x, there's no value for
    #               <code>TypeName</code>.</p>
    #   @return [String]
    # @!attribute index_rotation_period
    #   <p>The Elasticsearch index rotation period</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options.</p>
    #   @return [Types::ElasticsearchBufferingHints]
    # @!attribute retry_options
    #   <p>The Amazon OpenSearch Service retry options.</p>
    #   @return [Types::ElasticsearchRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>The Amazon S3 destination.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute vpc_configuration_description
    #   <p>The details of the VPC of the Amazon OpenSearch or the Amazon OpenSearch Serverless
    #            destination.</p>
    #   @return [Types::VpcConfigurationDescription]
    # @!attribute document_id_options
    #   <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #   @return [Types::DocumentIdOptions]
    class ElasticsearchDestinationDescription < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description,
      :document_id_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in Amazon OpenSearch Service.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose
    #            for calling the Amazon OpenSearch Service Configuration API and for indexing documents. For more
    #            information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The ARN of the Amazon OpenSearch Service domain. The IAM role must have permissions
    #               for <code>DescribeDomain</code>, <code>DescribeDomains</code>, and
    #               <code>DescribeDomainConfig</code> after assuming the IAM role specified in
    #               <code>RoleARN</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #            <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The endpoint to use when communicating with the cluster. Specify either this
    #               <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The Elasticsearch index name.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
    #            index. If you try to specify a new type for an existing index that already has another
    #            type, Firehose returns an error during runtime.</p>
    #            <p>If you upgrade Elasticsearch from 6.x to 7.x and don’t update your Firehose stream,
    #            Firehose still delivers data to Elasticsearch with the old index name and type
    #            name. If you want to update your Firehose stream with a new index name, provide an empty
    #            string for <code>TypeName</code>. </p>
    #   @return [String]
    # @!attribute index_rotation_period
    #   <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to
    #               <code>IndexName</code> to facilitate the expiration of old data. For more information,
    #            see <a href="https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for the
    #               Amazon OpenSearch Service Destination</a>. Default value is <code>OneDay</code>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified,
    #               <code>ElasticsearchBufferingHints</code> object default values are used. </p>
    #   @return [Types::ElasticsearchBufferingHints]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon OpenSearch Service. The default value is 300 (5 minutes).</p>
    #   @return [Types::ElasticsearchRetryOptions]
    # @!attribute s3_update
    #   <p>The Amazon S3 destination.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute document_id_options
    #   <p>Indicates the method for setting up document ID. The supported methods are Firehose generated document ID and OpenSearch Service generated document ID.</p>
    #   @return [Types::DocumentIdOptions]
    class ElasticsearchDestinationUpdate < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      :document_id_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures retry behavior in case Firehose is unable to deliver
    #          documents to Amazon OpenSearch Service.</p>
    # @!attribute duration_in_seconds
    #   <p>After an initial failure to deliver to Amazon OpenSearch Service, the total amount of time during
    #            which Firehose retries delivery (including the first attempt). After this time
    #            has elapsed, the failed documents are written to Amazon S3. Default value is 300 seconds (5
    #            minutes). A value of 0 (zero) results in no retries.</p>
    #   @return [Integer]
    class ElasticsearchRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the encryption for a destination in Amazon S3.</p>
    # @!attribute no_encryption_config
    #   <p>Specifically override existing encryption information to ensure that no encryption is
    #            used.</p>
    #   @return [String]
    # @!attribute kms_encryption_config
    #   <p>The encryption key.</p>
    #   @return [Types::KMSEncryptionConfig]
    class EncryptionConfiguration < Struct.new(
      :no_encryption_config,
      :kms_encryption_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>A prefix that Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering option.</p>
    #   @return [Types::BufferingHints]
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #            UNCOMPRESSED.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode. After you create a Firehose stream, you can update it to
    #            enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the
    #            Firehose stream to disable it. </p>
    #   @return [String]
    # @!attribute s3_backup_configuration
    #   <p>The configuration for backup in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute data_format_conversion_configuration
    #   <p>The serializer, deserializer, and schema for converting data from the JSON format to
    #            the Parquet or ORC format before writing it to Amazon S3.</p>
    #   @return [Types::DataFormatConversionConfiguration]
    # @!attribute dynamic_partitioning_configuration
    #   <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #            from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #            partitioning is only supported for Amazon S3 destinations.
    #            </p>
    #   @return [Types::DynamicPartitioningConfiguration]
    # @!attribute file_extension
    #   <p>Specify a file extension. It will override the default file extension</p>
    #   @return [String]
    # @!attribute custom_time_zone
    #   <p>The time zone you prefer. UTC is the default.</p>
    #   @return [String]
    class ExtendedS3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      :file_extension,
      :custom_time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a destination in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>A prefix that Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering option.</p>
    #   @return [Types::BufferingHints]
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #   @return [String]
    # @!attribute s3_backup_description
    #   <p>The configuration for backup in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute data_format_conversion_configuration
    #   <p>The serializer, deserializer, and schema for converting data from the JSON format to
    #            the Parquet or ORC format before writing it to Amazon S3.</p>
    #   @return [Types::DataFormatConversionConfiguration]
    # @!attribute dynamic_partitioning_configuration
    #   <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #            from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #            partitioning is only supported for Amazon S3 destinations.
    #            </p>
    #   @return [Types::DynamicPartitioningConfiguration]
    # @!attribute file_extension
    #   <p>Specify a file extension. It will override the default file extension</p>
    #   @return [String]
    # @!attribute custom_time_zone
    #   <p>The time zone you prefer. UTC is the default.</p>
    #   @return [String]
    class ExtendedS3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      :file_extension,
      :custom_time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>A prefix that Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering option.</p>
    #   @return [Types::BufferingHints]
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>. </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p>You can update a Firehose stream to enable Amazon S3 backup if it is disabled. If
    #            backup is enabled, you can't update the Firehose stream to disable it. </p>
    #   @return [String]
    # @!attribute s3_backup_update
    #   <p>The Amazon S3 destination for backup.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute data_format_conversion_configuration
    #   <p>The serializer, deserializer, and schema for converting data from the JSON format to
    #            the Parquet or ORC format before writing it to Amazon S3.</p>
    #   @return [Types::DataFormatConversionConfiguration]
    # @!attribute dynamic_partitioning_configuration
    #   <p>The configuration of the dynamic partitioning mechanism that creates smaller data sets
    #            from the streaming data by partitioning it based on partition keys. Currently, dynamic
    #            partitioning is only supported for Amazon S3 destinations.
    #            </p>
    #   @return [Types::DynamicPartitioningConfiguration]
    # @!attribute file_extension
    #   <p>Specify a file extension. It will override the default file extension</p>
    #   @return [String]
    # @!attribute custom_time_zone
    #   <p>The time zone you prefer. UTC is the default.</p>
    #   @return [String]
    class ExtendedS3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :data_format_conversion_configuration,
      :dynamic_partitioning_configuration,
      :file_extension,
      :custom_time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details in case one of the following operations fails due to an error related
    #          to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
    #             <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>
    # @!attribute type
    #   <p>The type of error that caused the failure.</p>
    #   @return [String]
    # @!attribute details
    #   <p>A message providing details about the error that caused the failure.</p>
    #   @return [String]
    class FailureDescription < Struct.new(
      :type,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The native Hive / HCatalog JsonSerDe. Used by Firehose for deserializing
    #          data, which means converting it from the JSON format in preparation for serializing it to
    #          the Parquet or ORC format. This is one of two deserializers you can choose, depending on
    #          which one offers the functionality you need. The other option is the OpenX SerDe.</p>
    # @!attribute timestamp_formats
    #   <p>Indicates how you want Firehose to parse the date and timestamps that
    #            may be present in your input data JSON. To specify these format strings, follow the pattern
    #            syntax of JodaTime's DateTimeFormat format strings. For more information, see <a href="https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html">Class DateTimeFormat</a>. You can also use the special value <code>millis</code> to
    #            parse timestamps in epoch milliseconds. If you don't specify a format, Firehose uses <code>java.sql.Timestamp::valueOf</code> by default.</p>
    #   @return [Array<String>]
    class HiveJsonSerDe < Struct.new(
      :timestamp_formats,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the buffering options that can be applied before data is delivered to the HTTP
    #          endpoint destination. Firehose treats these options as hints, and it might
    #          choose to use more optimal values. The <code>SizeInMBs</code> and
    #             <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #          one of them, you must also provide a value for the other. </p>
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 5. </p>
    #            <p>We recommend setting this parameter to a value greater than the amount of data you
    #            typically ingest into the Firehose stream in 10 seconds. For example, if you typically
    #            ingest data at 1 MB/sec, the value should be 10 MB or higher. </p>
    #   @return [Integer]
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering it
    #            to the destination. The default value is 300 (5 minutes). </p>
    #   @return [Integer]
    class HttpEndpointBufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata that's delivered to the specified HTTP endpoint
    #          destination.</p>
    # @!attribute attribute_name
    #   <p>The name of the HTTP endpoint common attribute.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value of the HTTP endpoint common attribute.</p>
    #   @return [String]
    class HttpEndpointCommonAttribute < Struct.new(
      :attribute_name,
      :attribute_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of the HTTP endpoint to which Kinesis Firehose delivers
    #          data.</p>
    # @!attribute url
    #   <p>The URL of the HTTP endpoint selected as the destination.</p>
    #            <important>
    #               <p>If you choose an HTTP endpoint as your destination, review and follow the
    #               instructions in the <a href="https://docs.aws.amazon.com/firehose/latest/dev/httpdeliveryrequestresponse.html">Appendix - HTTP Endpoint
    #                  Delivery Request and Response Specifications</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the HTTP endpoint selected as the destination.</p>
    #   @return [String]
    # @!attribute access_key
    #   <p>The access key required for Kinesis Firehose to authenticate with the HTTP endpoint
    #            selected as the destination.</p>
    #   @return [String]
    class HttpEndpointConfiguration < Struct.new(
      :url,
      :name,
      :access_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the HTTP endpoint selected as the destination. </p>
    # @!attribute url
    #   <p>The URL of the HTTP endpoint selected as the destination.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the HTTP endpoint selected as the destination.</p>
    #   @return [String]
    class HttpEndpointDescription < Struct.new(
      :url,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of the HTTP endpoint destination.</p>
    # @!attribute endpoint_configuration
    #   <p>The configuration of the HTTP endpoint selected as the destination.</p>
    #   @return [Types::HttpEndpointConfiguration]
    # @!attribute buffering_hints
    #   <p>The buffering options that can be used before data is delivered to the specified
    #            destination. Firehose treats these options as hints, and it might choose to
    #            use more optimal values. The <code>SizeInMBs</code> and <code>IntervalInSeconds</code>
    #            parameters are optional. However, if you specify a value for one of them, you must also
    #            provide a value for the other. </p>
    #   @return [Types::HttpEndpointBufferingHints]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute request_configuration
    #   <p>The configuration of the request sent to the HTTP endpoint that is specified as the
    #            destination.</p>
    #   @return [Types::HttpEndpointRequestConfiguration]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute role_arn
    #   <p>Firehose uses this IAM role for all the permissions that the delivery
    #            stream needs.</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>Describes the retry behavior in case Firehose is unable to deliver data to
    #            the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #            receipt from the specified HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Describes the S3 bucket backup options for the data that Firehose delivers
    #            to the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or
    #            only the documents that Firehose could not deliver to the specified HTTP
    #            endpoint destination (<code>FailedDataOnly</code>).</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute secrets_manager_configuration
    #   <p>
    #          The configuration that defines how you access secrets for HTTP Endpoint destination.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class HttpEndpointDestinationConfiguration < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the HTTP endpoint destination.</p>
    # @!attribute endpoint_configuration
    #   <p>The configuration of the specified HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointDescription]
    # @!attribute buffering_hints
    #   <p>Describes buffering options that can be applied to the data before it is delivered to
    #            the HTTPS endpoint destination. Firehose teats these options as hints, and it
    #            might choose to use more optimal values. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other. </p>
    #   @return [Types::HttpEndpointBufferingHints]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute request_configuration
    #   <p>The configuration of request sent to the HTTP endpoint specified as the
    #            destination.</p>
    #   @return [Types::HttpEndpointRequestConfiguration]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute role_arn
    #   <p>Firehose uses this IAM role for all the permissions that the delivery
    #            stream needs.</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>Describes the retry behavior in case Firehose is unable to deliver data to
    #            the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #            receipt from the specified HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Describes the S3 bucket backup options for the data that Kinesis Firehose delivers to
    #            the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or only
    #            the documents that Firehose could not deliver to the specified HTTP endpoint
    #            destination (<code>FailedDataOnly</code>).</p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for HTTP Endpoint destination.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class HttpEndpointDestinationDescription < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the specified HTTP endpoint destination.</p>
    # @!attribute endpoint_configuration
    #   <p>Describes the configuration of the HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointConfiguration]
    # @!attribute buffering_hints
    #   <p>Describes buffering options that can be applied to the data before it is delivered to
    #            the HTTPS endpoint destination. Firehose teats these options as hints, and it
    #            might choose to use more optimal values. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other. </p>
    #   @return [Types::HttpEndpointBufferingHints]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute request_configuration
    #   <p>The configuration of the request sent to the HTTP endpoint specified as the
    #            destination.</p>
    #   @return [Types::HttpEndpointRequestConfiguration]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute role_arn
    #   <p>Firehose uses this IAM role for all the permissions that the delivery
    #            stream needs.</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>Describes the retry behavior in case Firehose is unable to deliver data to
    #            the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #            receipt from the specified HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Describes the S3 bucket backup options for the data that Kinesis Firehose delivers to
    #            the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or only
    #            the documents that Firehose could not deliver to the specified HTTP endpoint
    #            destination (<code>FailedDataOnly</code>).</p>
    #   @return [String]
    # @!attribute s3_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for HTTP Endpoint destination.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class HttpEndpointDestinationUpdate < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the HTTP endpoint request.</p>
    # @!attribute content_encoding
    #   <p>Firehose uses the content encoding to compress the body of a request before
    #            sending the request to the destination. For more information, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding">Content-Encoding</a> in MDN Web Docs, the official Mozilla documentation.</p>
    #   @return [String]
    # @!attribute common_attributes
    #   <p>Describes the metadata sent to the HTTP endpoint destination.</p>
    #   @return [Array<Types::HttpEndpointCommonAttribute>]
    class HttpEndpointRequestConfiguration < Struct.new(
      :content_encoding,
      :common_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the retry behavior in case Firehose is unable to deliver data to
    #          the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
    #          receipt from the specified HTTP endpoint destination.</p>
    # @!attribute duration_in_seconds
    #   <p>The total amount of time that Firehose spends on retries. This duration
    #            starts after the initial attempt to send data to the custom destination via HTTPS endpoint
    #            fails. It doesn't include the periods during which Firehose waits for
    #            acknowledgment from the specified destination after each attempt. </p>
    #   @return [Integer]
    class HttpEndpointRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Specifies the destination configure settings for  Apache Iceberg Table.
    #       </p>
    # @!attribute destination_table_configuration_list
    #   <p> Provides a list of <code>DestinationTableConfigurations</code> which Firehose uses
    #            to deliver data to Apache Iceberg Tables. Firehose will write data with insert if table specific configuration is not provided here.</p>
    #   @return [Array<Types::DestinationTableConfiguration>]
    # @!attribute schema_evolution_configuration
    #   <p>The configuration to enable automatic schema evolution.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::SchemaEvolutionConfiguration]
    # @!attribute table_creation_configuration
    #   <p>The configuration to enable automatic table creation.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::TableCreationConfiguration]
    # @!attribute buffering_hints
    #   <p>Describes hints for the buffering to perform before delivering data to the
    #            destination. These options are treated as hints, and therefore Firehose might
    #            choose to use different values when it is optimal. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other.</p>
    #   @return [Types::BufferingHints]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p> Describes how Firehose will backup records. Currently,S3 backup only supports
    #               <code>FailedDataOnly</code>. </p>
    #   @return [String]
    # @!attribute retry_options
    #   <p> The retry behavior in case Firehose is unable to deliver data to a destination.</p>
    #   @return [Types::RetryOptions]
    # @!attribute role_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose for calling Apache Iceberg Tables.
    #         </p>
    #   @return [String]
    # @!attribute append_only
    #   <p> Describes whether all incoming data for this delivery stream will be append only
    #            (inserts only and not for updates and deletes) for Iceberg delivery. This feature is only
    #            applicable for Apache Iceberg Tables.</p>
    #            <p>The default value is false. If you set this value to true, Firehose automatically
    #            increases the throughput limit of a stream based on the throttling levels of the stream. If
    #            you set this parameter to true for a stream with updates and deletes, you will see out of
    #            order delivery. </p>
    #   @return [Boolean]
    # @!attribute catalog_configuration
    #   <p>
    #            Configuration describing where the destination Apache Iceberg Tables are persisted.
    #         </p>
    #   @return [Types::CatalogConfiguration]
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    class IcebergDestinationConfiguration < Struct.new(
      :destination_table_configuration_list,
      :schema_evolution_configuration,
      :table_creation_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :retry_options,
      :role_arn,
      :append_only,
      :catalog_configuration,
      :s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes a destination in Apache Iceberg Tables.
    #       </p>
    # @!attribute destination_table_configuration_list
    #   <p> Provides a list of <code>DestinationTableConfigurations</code> which Firehose uses
    #            to deliver data to Apache Iceberg Tables. Firehose will write data with insert if table specific configuration is not provided here.</p>
    #   @return [Array<Types::DestinationTableConfiguration>]
    # @!attribute schema_evolution_configuration
    #   <p>The description of automatic schema evolution configuration.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::SchemaEvolutionConfiguration]
    # @!attribute table_creation_configuration
    #   <p>
    #            The description of table creation configuration.
    #         </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::TableCreationConfiguration]
    # @!attribute buffering_hints
    #   <p>Describes hints for the buffering to perform before delivering data to the
    #            destination. These options are treated as hints, and therefore Firehose might
    #            choose to use different values when it is optimal. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other.</p>
    #   @return [Types::BufferingHints]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p> Describes how Firehose will backup records. Currently,Firehose only supports
    #            <code>FailedDataOnly</code>. </p>
    #   @return [String]
    # @!attribute retry_options
    #   <p> The retry behavior in case Firehose is unable to deliver data to a destination.</p>
    #   @return [Types::RetryOptions]
    # @!attribute role_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose for calling Apache Iceberg Tables.
    #         </p>
    #   @return [String]
    # @!attribute append_only
    #   <p> Describes whether all incoming data for this delivery stream will be append only
    #            (inserts only and not for updates and deletes) for Iceberg delivery. This feature is only
    #            applicable for Apache Iceberg Tables.</p>
    #            <p>The default value is false. If you set this value to true, Firehose automatically
    #            increases the throughput limit of a stream based on the throttling levels of the stream. If
    #            you set this parameter to true for a stream with updates and deletes, you will see out of
    #            order delivery.</p>
    #            <p> </p>
    #   @return [Boolean]
    # @!attribute catalog_configuration
    #   <p>
    #            Configuration describing where the destination Iceberg tables are persisted.
    #         </p>
    #   @return [Types::CatalogConfiguration]
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    class IcebergDestinationDescription < Struct.new(
      :destination_table_configuration_list,
      :schema_evolution_configuration,
      :table_creation_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :retry_options,
      :role_arn,
      :append_only,
      :catalog_configuration,
      :s3_destination_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes an update for a destination in Apache Iceberg Tables.
    #       </p>
    # @!attribute destination_table_configuration_list
    #   <p> Provides a list of <code>DestinationTableConfigurations</code> which Firehose uses
    #            to deliver data to Apache Iceberg Tables. Firehose will write data with insert if table specific configuration is not provided here.</p>
    #   @return [Array<Types::DestinationTableConfiguration>]
    # @!attribute schema_evolution_configuration
    #   <p>
    #            The configuration to enable automatic schema evolution.
    #         </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::SchemaEvolutionConfiguration]
    # @!attribute table_creation_configuration
    #   <p>
    #            The configuration to enable automatic table creation.
    #         </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::TableCreationConfiguration]
    # @!attribute buffering_hints
    #   <p>Describes hints for the buffering to perform before delivering data to the
    #            destination. These options are treated as hints, and therefore Firehose might
    #            choose to use different values when it is optimal. The <code>SizeInMBs</code> and
    #               <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
    #            one of them, you must also provide a value for the other.</p>
    #   @return [Types::BufferingHints]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p> Describes how Firehose will backup records. Currently,Firehose only supports
    #            <code>FailedDataOnly</code>. </p>
    #   @return [String]
    # @!attribute retry_options
    #   <p> The retry behavior in case Firehose is unable to deliver data to a destination.</p>
    #   @return [Types::RetryOptions]
    # @!attribute role_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the IAM role to be assumed by Firehose for calling Apache Iceberg Tables.
    #         </p>
    #   @return [String]
    # @!attribute append_only
    #   <p> Describes whether all incoming data for this delivery stream will be append only
    #            (inserts only and not for updates and deletes) for Iceberg delivery. This feature is only
    #            applicable for Apache Iceberg Tables. </p>
    #            <p>The default value is false. If you set this value to true, Firehose automatically
    #            increases the throughput limit of a stream based on the throttling levels of the stream. If
    #            you set this parameter to true for a stream with updates and deletes, you will see out of
    #            order delivery. </p>
    #   @return [Boolean]
    # @!attribute catalog_configuration
    #   <p>
    #            Configuration describing where the destination Iceberg tables are persisted.
    #         </p>
    #   @return [Types::CatalogConfiguration]
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    class IcebergDestinationUpdate < Struct.new(
      :destination_table_configuration_list,
      :schema_evolution_configuration,
      :table_creation_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :retry_options,
      :role_arn,
      :append_only,
      :catalog_configuration,
      :s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the deserializer you want to use to convert the format of the input data.
    #          This parameter is required if <code>Enabled</code> is set to true.</p>
    # @!attribute deserializer
    #   <p>Specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe
    #            or the OpenX JSON SerDe. If both are non-null, the server rejects the request.</p>
    #   @return [Types::Deserializer]
    class InputFormatConfiguration < Struct.new(
      :deserializer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified input parameter has a value that is not valid.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Firehose throws this exception when an attempt to put records or to start
    #          or stop Firehose stream encryption fails. This happens when the KMS service throws one of
    #          the following exception types: <code>AccessDeniedException</code>,
    #             <code>InvalidStateException</code>, <code>DisabledException</code>, or
    #             <code>NotFoundException</code>.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidKMSResourceException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Only requests from CloudWatch Logs are supported when CloudWatch Logs decompression is enabled.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidSourceException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an encryption key for a destination in Amazon S3.</p>
    # @!attribute awskms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the encryption key. Must belong to the same Amazon Web Services Region as the destination Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    class KMSEncryptionConfig < Struct.new(
      :awskms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as
    #          the source for a Firehose stream.</p>
    # @!attribute kinesis_stream_arn
    #   <p>The ARN of the source Kinesis data stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon
    #               Kinesis Data Streams ARN Format</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that provides access to the source Kinesis data stream. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">Amazon Web Services
    #               Identity and Access Management (IAM) ARN Format</a>.</p>
    #   @return [String]
    class KinesisStreamSourceConfiguration < Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a Kinesis data stream used as the source for a Firehose
    #          stream.</p>
    # @!attribute kinesis_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the source Kinesis data stream. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon
    #               Kinesis Data Streams ARN Format</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role used by the source Kinesis data stream. For more information, see
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">Amazon Web Services
    #               Identity and Access Management (IAM) ARN Format</a>.</p>
    #   @return [String]
    # @!attribute delivery_start_timestamp
    #   <p>Firehose starts retrieving records from the Kinesis data stream starting
    #            with this timestamp.</p>
    #   @return [Time]
    class KinesisStreamSourceDescription < Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      :delivery_start_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have already reached the limit for a requested resource.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of Firehose streams to list. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute delivery_stream_type
    #   <p>The Firehose stream type. This can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DirectPut</code>: Provider applications access the Firehose stream
    #                  directly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KinesisStreamAsSource</code>: The Firehose stream uses a Kinesis data
    #                  stream as a source.</p>
    #               </li>
    #            </ul>
    #            <p>This parameter is optional. If this parameter is omitted, Firehose streams of all
    #            types are returned.</p>
    #   @return [String]
    # @!attribute exclusive_start_delivery_stream_name
    #   <p>The list of Firehose streams returned by this call to
    #               <code>ListDeliveryStreams</code> will start with the Firehose stream whose name comes
    #            alphabetically immediately after the name you specify in
    #               <code>ExclusiveStartDeliveryStreamName</code>.</p>
    #   @return [String]
    class ListDeliveryStreamsInput < Struct.new(
      :limit,
      :delivery_stream_type,
      :exclusive_start_delivery_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_names
    #   <p>The names of the Firehose streams.</p>
    #   @return [Array<String>]
    # @!attribute has_more_delivery_streams
    #   <p>Indicates whether there are more Firehose streams available to list.</p>
    #   @return [Boolean]
    class ListDeliveryStreamsOutput < Struct.new(
      :delivery_stream_names,
      :has_more_delivery_streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream whose tags you want to list.</p>
    #   @return [String]
    # @!attribute exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If you set this parameter,
    #               <code>ListTagsForDeliveryStream</code> gets all tags that occur after
    #               <code>ExclusiveStartTagKey</code>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #            associated with the Firehose stream, <code>HasMoreTags</code> is set to <code>true</code>
    #            in the response. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last
    #            key in the response. </p>
    #   @return [Integer]
    class ListTagsForDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :exclusive_start_tag_key,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags associated with <code>DeliveryStreamName</code>, starting with the
    #            first tag after <code>ExclusiveStartTagKey</code> and up to the specified
    #               <code>Limit</code>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute has_more_tags
    #   <p>If this is <code>true</code> in the response, more tags are available. To list the
    #            remaining tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned
    #            and call <code>ListTagsForDeliveryStream</code> again.</p>
    #   @return [Boolean]
    class ListTagsForDeliveryStreamOutput < Struct.new(
      :tags,
      :has_more_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the Amazon MSK cluster to be used as the source for a delivery
    #          stream.</p>
    # @!attribute msk_cluster_arn
    #   <p>The ARN of the Amazon MSK cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The topic name within the Amazon MSK cluster. </p>
    #   @return [String]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration of the Amazon MSK cluster.</p>
    #   @return [Types::AuthenticationConfiguration]
    # @!attribute read_from_timestamp
    #   <p>The start date and time in UTC for the offset position within your MSK topic from where
    #            Firehose begins to read. By default, this is set to timestamp when Firehose becomes Active. </p>
    #            <p>If you want to create a Firehose stream with Earliest start position from SDK or CLI,
    #            you need to set the <code>ReadFromTimestamp</code> parameter to Epoch
    #            (1970-01-01T00:00:00Z). </p>
    #   @return [Time]
    class MSKSourceConfiguration < Struct.new(
      :msk_cluster_arn,
      :topic_name,
      :authentication_configuration,
      :read_from_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Amazon MSK cluster used as the source for a Firehose stream.</p>
    # @!attribute msk_cluster_arn
    #   <p>The ARN of the Amazon MSK cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The topic name within the Amazon MSK cluster.</p>
    #   @return [String]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration of the Amazon MSK cluster.</p>
    #   @return [Types::AuthenticationConfiguration]
    # @!attribute delivery_start_timestamp
    #   <p>Firehose starts retrieving records from the topic within the Amazon MSK
    #            cluster starting with this timestamp.</p>
    #   @return [Time]
    # @!attribute read_from_timestamp
    #   <p>The start date and time in UTC for the offset position within your MSK topic from where
    #            Firehose begins to read. By default, this is set to timestamp when Firehose becomes Active. </p>
    #            <p>If you want to create a Firehose stream with Earliest start position from SDK or CLI,
    #            you need to set the <code>ReadFromTimestampUTC</code> parameter to Epoch
    #            (1970-01-01T00:00:00Z). </p>
    #   @return [Time]
    class MSKSourceDescription < Struct.new(
      :msk_cluster_arn,
      :topic_name,
      :authentication_configuration,
      :delivery_start_timestamp,
      :read_from_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The OpenX SerDe. Used by Firehose for deserializing data, which means
    #          converting it from the JSON format in preparation for serializing it to the Parquet or ORC
    #          format. This is one of two deserializers you can choose, depending on which one offers the
    #          functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
    # @!attribute convert_dots_in_json_keys_to_underscores
    #   <p>When set to <code>true</code>, specifies that the names of the keys include dots and
    #            that you want Firehose to replace them with underscores. This is useful
    #            because Apache Hive does not allow dots in column names. For example, if the JSON contains
    #            a key whose name is "a.b", you can define the column name to be "a_b" when using this
    #            option.</p>
    #            <p>The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute case_insensitive
    #   <p>When set to <code>true</code>, which is the default, Firehose converts
    #            JSON keys to lowercase before deserializing them.</p>
    #   @return [Boolean]
    # @!attribute column_to_json_key_mappings
    #   <p>Maps column names to JSON keys that aren't identical to the column names. This is
    #            useful when the JSON contains keys that are Hive keywords. For example,
    #               <code>timestamp</code> is a Hive keyword. If you have a JSON key named
    #               <code>timestamp</code>, set this parameter to <code>{"ts": "timestamp"}</code> to map
    #            this key to a column named <code>ts</code>.</p>
    #   @return [Hash<String, String>]
    class OpenXJsonSerDe < Struct.new(
      :convert_dots_in_json_keys_to_underscores,
      :case_insensitive,
      :column_to_json_key_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A serializer to use for converting data to the ORC format before storing it in Amazon
    #          S3. For more information, see <a href="https://orc.apache.org/docs/">Apache
    #          ORC</a>.</p>
    # @!attribute stripe_size_bytes
    #   <p>The number of bytes in each stripe. The default is 64 MiB and the minimum is 8
    #            MiB.</p>
    #   @return [Integer]
    # @!attribute block_size_bytes
    #   <p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to
    #            copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the
    #            minimum is 64 MiB. Firehose uses this value for padding calculations.</p>
    #   @return [Integer]
    # @!attribute row_index_stride
    #   <p>The number of rows between index entries. The default is 10,000 and the minimum is
    #            1,000.</p>
    #   @return [Integer]
    # @!attribute enable_padding
    #   <p>Set this to <code>true</code> to indicate that you want stripes to be padded to the HDFS
    #            block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS
    #            before querying. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute padding_tolerance
    #   <p>A number between 0 and 1 that defines the tolerance for block padding as a decimal
    #            fraction of stripe size. The default value is 0.05, which means 5 percent of stripe
    #            size.</p>
    #            <p>For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block
    #            padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB
    #            block. In such a case, if the available size within the block is more than 3.2 MiB, a new,
    #            smaller stripe is inserted to fit within that space. This ensures that no stripe crosses
    #            block boundaries and causes remote reads within a node-local task.</p>
    #            <p>Firehose ignores this parameter when <a>OrcSerDe$EnablePadding</a> is <code>false</code>.</p>
    #   @return [Float]
    # @!attribute compression
    #   <p>The compression code to use over data blocks. The default is <code>SNAPPY</code>.</p>
    #   @return [String]
    # @!attribute bloom_filter_columns
    #   <p>The column names for which you want Firehose to create bloom filters. The
    #            default is <code>null</code>.</p>
    #   @return [Array<String>]
    # @!attribute bloom_filter_false_positive_probability
    #   <p>The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the
    #            Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.</p>
    #   @return [Float]
    # @!attribute dictionary_key_threshold
    #   <p>Represents the fraction of the total number of non-null rows. To turn off dictionary
    #            encoding, set this fraction to a number that is less than the number of distinct keys in a
    #            dictionary. To always use dictionary encoding, set this threshold to 1.</p>
    #   @return [Float]
    # @!attribute format_version
    #   <p>The version of the file to write. The possible values are <code>V0_11</code> and
    #               <code>V0_12</code>. The default is <code>V0_12</code>.</p>
    #   @return [String]
    class OrcSerDe < Struct.new(
      :stripe_size_bytes,
      :block_size_bytes,
      :row_index_stride,
      :enable_padding,
      :padding_tolerance,
      :compression,
      :bloom_filter_columns,
      :bloom_filter_false_positive_probability,
      :dictionary_key_threshold,
      :format_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the serializer that you want Firehose to use to convert the
    #          format of your data before it writes it to Amazon S3. This parameter is required if
    #             <code>Enabled</code> is set to true.</p>
    # @!attribute serializer
    #   <p>Specifies which serializer to use. You can choose either the ORC SerDe or the Parquet
    #            SerDe. If both are non-null, the server rejects the request.</p>
    #   @return [Types::Serializer]
    class OutputFormatConfiguration < Struct.new(
      :serializer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A serializer to use for converting data to the Parquet format before storing it in
    #          Amazon S3. For more information, see <a href="https://parquet.apache.org/docs/">Apache Parquet</a>.</p>
    # @!attribute block_size_bytes
    #   <p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to
    #            copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the
    #            minimum is 64 MiB. Firehose uses this value for padding calculations.</p>
    #   @return [Integer]
    # @!attribute page_size_bytes
    #   <p>The Parquet page size. Column chunks are divided into pages. A page is conceptually an
    #            indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and
    #            the default is 1 MiB.</p>
    #   @return [Integer]
    # @!attribute compression
    #   <p>The compression code to use over data blocks. The possible values are
    #               <code>UNCOMPRESSED</code>, <code>SNAPPY</code>, and <code>GZIP</code>, with the default
    #            being <code>SNAPPY</code>. Use <code>SNAPPY</code> for higher decompression speed. Use
    #               <code>GZIP</code> if the compression ratio is more important than speed.</p>
    #   @return [String]
    # @!attribute enable_dictionary_compression
    #   <p>Indicates whether to enable dictionary compression.</p>
    #   @return [Boolean]
    # @!attribute max_padding_bytes
    #   <p>The maximum amount of padding to apply. This is useful if you intend to copy the data
    #            from Amazon S3 to HDFS before querying. The default is 0.</p>
    #   @return [Integer]
    # @!attribute writer_version
    #   <p>Indicates the version of row format to output. The possible values are <code>V1</code>
    #            and <code>V2</code>. The default is <code>V1</code>.</p>
    #   @return [String]
    class ParquetSerDe < Struct.new(
      :block_size_bytes,
      :page_size_bytes,
      :compression,
      :enable_dictionary_compression,
      :max_padding_bytes,
      :writer_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single field in a <code>PartitionSpec</code>. </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute source_name
    #   <p>
    #            The column name to be configured in partition spec.
    #         </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [String]
    class PartitionField < Struct.new(
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents how to produce partition data for a table. Partition data is produced by
    #          transforming columns in a table. Each column transform is represented by a named
    #             <code>PartitionField</code>. </p>
    #          <p>Here is an example of the schema in JSON. </p>
    #          <p>
    #             <code>"partitionSpec": { "identity": [ {"sourceName": "column1"}, {"sourceName":
    #             "column2"}, {"sourceName": "column3"} ] }</code>
    #          </p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute identity
    #   <p> List of identity <a href="https://iceberg.apache.org/spec/#partition-transforms">transforms</a> that performs an identity transformation. The transform takes the
    #            source value, and does not modify it. Result type is the source type.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Array<Types::PartitionField>]
    class PartitionSpec < Struct.new(
      :identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data processing configuration.</p>
    # @!attribute enabled
    #   <p>Enables or disables data processing.</p>
    #   @return [Boolean]
    # @!attribute processors
    #   <p>The data processors.</p>
    #   @return [Array<Types::Processor>]
    class ProcessingConfiguration < Struct.new(
      :enabled,
      :processors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data processor.</p>
    #          <note>
    #             <p>If you want to add a new line delimiter between records in objects that are delivered to Amazon S3, choose <code>AppendDelimiterToRecord</code> as a processor type. You don’t have to put a processor parameter when you select <code>AppendDelimiterToRecord</code>. </p>
    #          </note>
    # @!attribute type
    #   <p>The type of processor.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The processor parameters.</p>
    #   @return [Array<Types::ProcessorParameter>]
    class Processor < Struct.new(
      :type,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the processor parameter. </p>
    # @!attribute parameter_name
    #   <p>The name of the parameter. Currently the following default values are supported: 3
    #            for <code>NumberOfRetries</code> and 60 for the <code>BufferIntervalInSeconds</code>. The
    #               <code>BufferSizeInMBs</code> ranges between 0.2 MB and up to 3MB. The default buffering
    #            hint is 1MB for all destinations, except Splunk. For Splunk, the default buffering hint is
    #            256 KB. </p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The parameter value.</p>
    #   @return [String]
    class ProcessorParameter < Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute records
    #   <p>One or more records.</p>
    #   @return [Array<Types::Record>]
    class PutRecordBatchInput < Struct.new(
      :delivery_stream_name,
      :records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_put_count
    #   <p>The number of records that might have failed processing. This number might be greater
    #            than 0 even if the <a>PutRecordBatch</a> call succeeds. Check
    #               <code>FailedPutCount</code> to determine whether there are records that you need to
    #            resend.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Indicates whether server-side encryption (SSE) was enabled during this operation.</p>
    #   @return [Boolean]
    # @!attribute request_responses
    #   <p>The results array. For each record, the index of the response element is the same as
    #            the index used in the request array.</p>
    #   @return [Array<Types::PutRecordBatchResponseEntry>]
    class PutRecordBatchOutput < Struct.new(
      :failed_put_count,
      :encrypted,
      :request_responses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the result for an individual record from a <a>PutRecordBatch</a>
    #          request. If the record is successfully added to your Firehose stream, it receives a record
    #          ID. If the record fails to be added to your Firehose stream, the result includes an error
    #          code and an error message.</p>
    # @!attribute record_id
    #   <p>The ID of the record.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for an individual record result.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for an individual record result.</p>
    #   @return [String]
    class PutRecordBatchResponseEntry < Struct.new(
      :record_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute record
    #   <p>The record.</p>
    #   @return [Types::Record]
    class PutRecordInput < Struct.new(
      :delivery_stream_name,
      :record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_id
    #   <p>The ID of the record.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>Indicates whether server-side encryption (SSE) was enabled during this operation.</p>
    #   @return [Boolean]
    class PutRecordOutput < Struct.new(
      :record_id,
      :encrypted,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The unit of data in a Firehose stream.</p>
    # @!attribute data
    #   <p>The data blob, which is base64-encoded when the blob is serialized. The maximum size
    #            of the data blob, before base64-encoding, is 1,000 KiB.</p>
    #   @return [String]
    class Record < Struct.new(
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in Amazon Redshift.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute cluster_jdbcurl
    #   <p>The database connection string.</p>
    #   @return [String]
    # @!attribute copy_command
    #   <p>The <code>COPY</code> command.</p>
    #   @return [Types::CopyCommand]
    # @!attribute username
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The user password.</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon Redshift. Default value is 3600 (60 minutes).</p>
    #   @return [Types::RedshiftRetryOptions]
    # @!attribute s3_configuration
    #   <p>The configuration for the intermediate Amazon S3 location from which Amazon Redshift
    #            obtains data. Restrictions are described in the topic for <a>CreateDeliveryStream</a>.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            in <code>RedshiftDestinationConfiguration.S3Configuration</code> because the Amazon
    #            Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these
    #            compression formats.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode. After you create a Firehose stream, you can update it to
    #            enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the
    #            Firehose stream to disable it. </p>
    #   @return [String]
    # @!attribute s3_backup_configuration
    #   <p>The configuration for backup in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Amazon Redshift.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class RedshiftDestinationConfiguration < Struct.new(
      :role_arn,
      :cluster_jdbcurl,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_configuration,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :cloud_watch_logging_options,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a destination in Amazon Redshift.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute cluster_jdbcurl
    #   <p>The database connection string.</p>
    #   @return [String]
    # @!attribute copy_command
    #   <p>The <code>COPY</code> command.</p>
    #   @return [Types::CopyCommand]
    # @!attribute username
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon Redshift. Default value is 3600 (60 minutes).</p>
    #   @return [Types::RedshiftRetryOptions]
    # @!attribute s3_destination_description
    #   <p>The Amazon S3 destination.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p>The Amazon S3 backup mode.</p>
    #   @return [String]
    # @!attribute s3_backup_description
    #   <p>The configuration for backup in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Amazon Redshift.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class RedshiftDestinationDescription < Struct.new(
      :role_arn,
      :cluster_jdbcurl,
      :copy_command,
      :username,
      :retry_options,
      :s3_destination_description,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :cloud_watch_logging_options,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in Amazon Redshift.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute cluster_jdbcurl
    #   <p>The database connection string.</p>
    #   @return [String]
    # @!attribute copy_command
    #   <p>The <code>COPY</code> command.</p>
    #   @return [Types::CopyCommand]
    # @!attribute username
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The user password.</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver documents to
    #            Amazon Redshift. Default value is 3600 (60 minutes).</p>
    #   @return [Types::RedshiftRetryOptions]
    # @!attribute s3_update
    #   <p>The Amazon S3 destination.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            in <code>RedshiftDestinationUpdate.S3Update</code> because the Amazon Redshift
    #               <code>COPY</code> operation that reads from the S3 bucket doesn't support these
    #            compression formats.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute s3_backup_mode
    #   <p>You can update a Firehose stream to enable Amazon S3 backup if it is disabled. If
    #            backup is enabled, you can't update the Firehose stream to disable it. </p>
    #   @return [String]
    # @!attribute s3_backup_update
    #   <p>The Amazon S3 destination for backup.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Amazon Redshift.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class RedshiftDestinationUpdate < Struct.new(
      :role_arn,
      :cluster_jdbcurl,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :cloud_watch_logging_options,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures retry behavior in case Firehose is unable to deliver
    #          documents to Amazon Redshift.</p>
    # @!attribute duration_in_seconds
    #   <p>The length of time during which Firehose retries delivery after a
    #            failure, starting from the initial request and including the first attempt. The default
    #            value is 3600 seconds (60 minutes). Firehose does not retry if the value of
    #               <code>DurationInSeconds</code> is 0 (zero) or if the first delivery attempt takes longer
    #            than the current value.</p>
    #   @return [Integer]
    class RedshiftRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is already in use and not available for this operation.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be found.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The retry behavior in case Firehose is unable to deliver data to a destination.</p>
    # @!attribute duration_in_seconds
    #   <p>The period of time during which Firehose retries to deliver data to the
    #            specified destination.</p>
    #   @return [Integer]
    class RetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>A prefix that Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering option. If no value is specified, <code>BufferingHints</code> object
    #            default values are used.</p>
    #   @return [Types::BufferingHints]
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            for Amazon Redshift destinations because they are not supported by the Amazon Redshift
    #               <code>COPY</code> operation that reads from the S3 bucket.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    class S3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a destination in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>A prefix that Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering option. If no value is specified, <code>BufferingHints</code> object
    #            default values are used.</p>
    #   @return [Types::BufferingHints]
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    class S3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in Amazon S3.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services credentials. For more
    #            information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and
    #                  Amazon Web Services Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3
    #            files. You can also specify a custom prefix, as described in <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>A prefix that Firehose evaluates and adds to failed records before writing
    #            them to S3. This prefix appears immediately following the bucket name. For information
    #            about how to specify this prefix, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html">Custom Prefixes for Amazon S3
    #            Objects</a>.</p>
    #   @return [String]
    # @!attribute buffering_hints
    #   <p>The buffering option. If no value is specified, <code>BufferingHints</code> object
    #            default values are used.</p>
    #   @return [Types::BufferingHints]
    # @!attribute compression_format
    #   <p>The compression format. If no value is specified, the default is
    #               <code>UNCOMPRESSED</code>.</p>
    #            <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
    #            for Amazon Redshift destinations because they are not supported by the Amazon Redshift
    #               <code>COPY</code> operation that reads from the S3 bucket.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration. If no value is specified, the default is no
    #            encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    class S3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the schema to which you want Firehose to configure your data
    #          before it writes it to Amazon S3. This parameter is required if <code>Enabled</code> is set
    #          to true.</p>
    # @!attribute role_arn
    #   <p>The role that Firehose can use to access Amazon Web Services Glue. This
    #            role must be in the same account you use for Firehose. Cross-account roles
    #            aren't allowed.</p>
    #            <important>
    #               <p>If the <code>SchemaConfiguration</code> request parameter is used as part of invoking
    #               the <code>CreateDeliveryStream</code> API, then the <code>RoleARN</code> property is
    #               required and its value must be specified.</p>
    #            </important>
    #   @return [String]
    # @!attribute catalog_id
    #   <p>The ID of the Amazon Web Services Glue Data Catalog. If you don't supply this, the
    #               Amazon Web Services account ID is used by default.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Specifies the name of the Amazon Web Services Glue database that contains the schema for
    #            the output data.</p>
    #            <important>
    #               <p>If the <code>SchemaConfiguration</code> request parameter is used as part of invoking
    #               the <code>CreateDeliveryStream</code> API, then the <code>DatabaseName</code> property
    #               is required and its value must be specified.</p>
    #            </important>
    #   @return [String]
    # @!attribute table_name
    #   <p>Specifies the Amazon Web Services Glue table that contains the column information that
    #            constitutes your data schema.</p>
    #            <important>
    #               <p>If the <code>SchemaConfiguration</code> request parameter is used as part of invoking
    #               the <code>CreateDeliveryStream</code> API, then the <code>TableName</code> property is
    #               required and its value must be specified.</p>
    #            </important>
    #   @return [String]
    # @!attribute region
    #   <p>If you don't specify an Amazon Web Services Region, the default is the current
    #            Region.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Specifies the table version for the output data schema. If you don't specify this
    #            version ID, or if you set it to <code>LATEST</code>, Firehose uses the most
    #            recent version. This means that any updates to the table are automatically picked
    #            up.</p>
    #   @return [String]
    class SchemaConfiguration < Struct.new(
      :role_arn,
      :catalog_id,
      :database_name,
      :table_name,
      :region,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to enable schema evolution.</p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute enabled
    #   <p>
    #            Specify whether you want to enable schema evolution.
    #         </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Boolean]
    class SchemaEvolutionConfiguration < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that defines how Firehose accesses the secret.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the secret that stores your credentials. It must be in the same region as the
    #            Firehose stream and the role. The secret ARN can reside in a different account than the Firehose stream and role as Firehose supports cross-account secret access. This parameter is required when <b>Enabled</b> is set to <code>True</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>
    #            Specifies the role that Firehose assumes when calling the Secrets Manager API operation. When you provide the role, it overrides any destination specific role defined in the destination configuration. If you do not provide the then we use the destination specific role. This parameter is required for Splunk.
    #         </p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether you want to use the secrets manager feature. When set as
    #               <code>True</code> the secrets manager configuration overwrites the existing secrets in
    #            the destination configuration. When it's set to <code>False</code> Firehose falls back to
    #            the credentials in the destination configuration.</p>
    #   @return [Boolean]
    class SecretsManagerConfiguration < Struct.new(
      :secret_arn,
      :role_arn,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The serializer that you want Firehose to use to convert data to the target
    #          format before writing it to Amazon S3. Firehose supports two types of
    #          serializers: the ORC SerDe and the Parquet SerDe.</p>
    # @!attribute parquet_ser_de
    #   <p>A serializer to use for converting data to the Parquet format before storing it in
    #            Amazon S3. For more information, see <a href="https://parquet.apache.org/docs/contribution-guidelines/">Apache Parquet</a>.</p>
    #   @return [Types::ParquetSerDe]
    # @!attribute orc_ser_de
    #   <p>A serializer to use for converting data to the ORC format before storing it in Amazon
    #            S3. For more information, see <a href="https://orc.apache.org/docs/">Apache
    #            ORC</a>.</p>
    #   @return [Types::OrcSerDe]
    class Serializer < Struct.new(
      :parquet_ser_de,
      :orc_ser_de,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unavailable. Back off and retry the operation. If you continue to see
    #          the exception, throughput limits for the Firehose stream may have been exceeded. For more
    #          information about limits and how to request an increase, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Firehose
    #          Limits</a>.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Describes the buffering to perform before delivering data to the Snowflake destination. If you do not specify any value, Firehose uses the default values.
    #       </p>
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the
    #            destination. The default value is 128. </p>
    #   @return [Integer]
    # @!attribute interval_in_seconds
    #   <p>
    #            Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 0.
    #         </p>
    #   @return [Integer]
    class SnowflakeBufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configure Snowflake destination</p>
    # @!attribute account_url
    #   <p>URL for accessing your Snowflake account. This URL must include your <a href="https://docs.snowflake.com/en/user-guide/admin-account-identifier">account identifier</a>. 
    #            Note that the protocol (https://) and port number are optional.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key used to encrypt your Snowflake client. For information, see <a href="https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation">Using Key Pair Authentication & Key Rotation</a>.</p>
    #   @return [String]
    # @!attribute key_passphrase
    #   <p>Passphrase to decrypt the private key when the key is encrypted. For information, see <a href="https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation">Using Key Pair Authentication & Key Rotation</a>.</p>
    #   @return [String]
    # @!attribute user
    #   <p>User login name for the Snowflake account.</p>
    #   @return [String]
    # @!attribute database
    #   <p>All data in Snowflake is maintained in databases.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>Each database consists of one or more schemas, which are logical groupings of database objects, such as tables and views</p>
    #   @return [String]
    # @!attribute table
    #   <p>All data in Snowflake is stored in database tables, logically structured as collections of columns and rows.</p>
    #   @return [String]
    # @!attribute snowflake_role_configuration
    #   <p>Optionally configure a Snowflake role. Otherwise the default user role will be used.</p>
    #   @return [Types::SnowflakeRoleConfiguration]
    # @!attribute data_loading_option
    #   <p>Choose to load JSON keys mapped to table column names or choose to split the JSON payload where content is mapped to a record content column and source metadata is mapped to a record metadata column.</p>
    #   @return [String]
    # @!attribute meta_data_column_name
    #   <p>Specify a column name in the table, where the metadata information has to be loaded.
    #            When you enable this field, you will see the following column in the snowflake table, which
    #            differs based on the source type.</p>
    #            <p>For Direct PUT as source </p>
    #            <p>
    #               <code>{ "firehoseDeliveryStreamName" : "streamname", "IngestionTime" : "timestamp"
    #               }</code>
    #            </p>
    #            <p>For Kinesis Data Stream as source </p>
    #            <p>
    #               <code> "kinesisStreamName" : "streamname", "kinesisShardId" : "Id",
    #               "kinesisPartitionKey" : "key", "kinesisSequenceNumber" : "1234", "subsequenceNumber" :
    #               "2334", "IngestionTime" : "timestamp" }</code>
    #            </p>
    #   @return [String]
    # @!attribute content_column_name
    #   <p>The name of the record content column.</p>
    #   @return [String]
    # @!attribute snowflake_vpc_configuration
    #   <p>The VPCE ID for Firehose to privately connect with Snowflake. The ID format is
    #            com.amazonaws.vpce.[region].vpce-svc-<[id]>. For more information, see <a href="https://docs.snowflake.com/en/user-guide/admin-security-privatelink">Amazon PrivateLink & Snowflake</a>
    #            </p>
    #   @return [Types::SnowflakeVpcConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Snowflake role</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>The time period where Firehose will retry sending data to the chosen HTTP endpoint.</p>
    #   @return [Types::SnowflakeRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Choose an S3 backup mode</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>Describes the configuration of a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Snowflake.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    # @!attribute buffering_hints
    #   <p>
    #            Describes the buffering to perform before delivering data to the Snowflake destination. If you do not specify any value, Firehose uses the default values.
    #         </p>
    #   @return [Types::SnowflakeBufferingHints]
    class SnowflakeDestinationConfiguration < Struct.new(
      :account_url,
      :private_key,
      :key_passphrase,
      :user,
      :database,
      :schema,
      :table,
      :snowflake_role_configuration,
      :data_loading_option,
      :meta_data_column_name,
      :content_column_name,
      :snowflake_vpc_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :secrets_manager_configuration,
      :buffering_hints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional Snowflake destination description</p>
    # @!attribute account_url
    #   <p>URL for accessing your Snowflake account. This URL must include your <a href="https://docs.snowflake.com/en/user-guide/admin-account-identifier">account identifier</a>. 
    #            Note that the protocol (https://) and port number are optional.</p>
    #   @return [String]
    # @!attribute user
    #   <p>User login name for the Snowflake account.</p>
    #   @return [String]
    # @!attribute database
    #   <p>All data in Snowflake is maintained in databases.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>Each database consists of one or more schemas, which are logical groupings of database objects, such as tables and views</p>
    #   @return [String]
    # @!attribute table
    #   <p>All data in Snowflake is stored in database tables, logically structured as collections of columns and rows.</p>
    #   @return [String]
    # @!attribute snowflake_role_configuration
    #   <p>Optionally configure a Snowflake role. Otherwise the default user role will be used.</p>
    #   @return [Types::SnowflakeRoleConfiguration]
    # @!attribute data_loading_option
    #   <p>Choose to load JSON keys mapped to table column names or choose to split the JSON payload where content is mapped to a record content column and source metadata is mapped to a record metadata column.</p>
    #   @return [String]
    # @!attribute meta_data_column_name
    #   <p>The name of the record metadata column</p>
    #   @return [String]
    # @!attribute content_column_name
    #   <p>The name of the record content column</p>
    #   @return [String]
    # @!attribute snowflake_vpc_configuration
    #   <p>The VPCE ID for Firehose to privately connect with Snowflake. The ID format is
    #            com.amazonaws.vpce.[region].vpce-svc-<[id]>. For more information, see <a href="https://docs.snowflake.com/en/user-guide/admin-security-privatelink">Amazon PrivateLink & Snowflake</a>
    #            </p>
    #   @return [Types::SnowflakeVpcConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Snowflake role</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>The time period where Firehose will retry sending data to the chosen HTTP endpoint.</p>
    #   @return [Types::SnowflakeRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Choose an S3 backup mode</p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>Describes a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Snowflake.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    # @!attribute buffering_hints
    #   <p>
    #            Describes the buffering to perform before delivering data to the Snowflake destination. If you do not specify any value, Firehose uses the default values.
    #         </p>
    #   @return [Types::SnowflakeBufferingHints]
    class SnowflakeDestinationDescription < Struct.new(
      :account_url,
      :user,
      :database,
      :schema,
      :table,
      :snowflake_role_configuration,
      :data_loading_option,
      :meta_data_column_name,
      :content_column_name,
      :snowflake_vpc_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :secrets_manager_configuration,
      :buffering_hints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update to configuration settings</p>
    # @!attribute account_url
    #   <p>URL for accessing your Snowflake account. This URL must include your <a href="https://docs.snowflake.com/en/user-guide/admin-account-identifier">account identifier</a>. 
    #            Note that the protocol (https://) and port number are optional.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key used to encrypt your Snowflake client. For information, see <a href="https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation">Using Key Pair Authentication & Key Rotation</a>.</p>
    #   @return [String]
    # @!attribute key_passphrase
    #   <p>Passphrase to decrypt the private key when the key is encrypted. For information, see <a href="https://docs.snowflake.com/en/user-guide/data-load-snowpipe-streaming-configuration#using-key-pair-authentication-key-rotation">Using Key Pair Authentication & Key Rotation</a>.</p>
    #   @return [String]
    # @!attribute user
    #   <p>User login name for the Snowflake account.</p>
    #   @return [String]
    # @!attribute database
    #   <p>All data in Snowflake is maintained in databases.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>Each database consists of one or more schemas, which are logical groupings of database objects, such as tables and views</p>
    #   @return [String]
    # @!attribute table
    #   <p>All data in Snowflake is stored in database tables, logically structured as collections of columns and rows.</p>
    #   @return [String]
    # @!attribute snowflake_role_configuration
    #   <p>Optionally configure a Snowflake role. Otherwise the default user role will be used.</p>
    #   @return [Types::SnowflakeRoleConfiguration]
    # @!attribute data_loading_option
    #   <p> JSON keys mapped to table column names or choose to split the JSON payload where content is mapped to a record content column and source metadata is mapped to a record metadata column.</p>
    #   @return [String]
    # @!attribute meta_data_column_name
    #   <p>The name of the record metadata column</p>
    #   @return [String]
    # @!attribute content_column_name
    #   <p>The name of the content metadata column</p>
    #   @return [String]
    # @!attribute cloud_watch_logging_options
    #   <p>Describes the Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute processing_configuration
    #   <p>Describes a data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Snowflake role</p>
    #   @return [String]
    # @!attribute retry_options
    #   <p>Specify how long Firehose retries sending data to the New Relic HTTP endpoint.
    #            
    #            After sending data, Firehose first waits for an acknowledgment from the HTTP endpoint. If an error occurs or the acknowledgment doesn’t arrive within the acknowledgment timeout period, Firehose starts the retry duration counter. It keeps retrying until the retry duration expires. After that, Firehose considers it a data delivery failure and backs up the data to your Amazon S3 bucket.
    #            
    #            Every time that Firehose sends data to the HTTP endpoint (either the initial attempt or a retry), it restarts the acknowledgement timeout counter and waits for an acknowledgement from the HTTP endpoint.
    #            
    #            Even if the retry duration expires, Firehose still waits for the acknowledgment until it receives it or the acknowledgement timeout period is reached. If the acknowledgment times out, Firehose determines whether there's time left in the retry counter. If there is time left, it retries again and repeats the logic until it receives an acknowledgment or determines that the retry time has expired.
    #            
    #            If you don't want Firehose to retry sending data, set this value to 0.</p>
    #   @return [Types::SnowflakeRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Choose an S3 backup mode. Once you set the mode as <code>AllData</code>, you can not
    #            change it to <code>FailedDataOnly</code>.</p>
    #   @return [String]
    # @!attribute s3_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            Describes the Secrets Manager configuration in Snowflake.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    # @!attribute buffering_hints
    #   <p>
    #            Describes the buffering to perform before delivering data to the Snowflake destination. 
    #         </p>
    #   @return [Types::SnowflakeBufferingHints]
    class SnowflakeDestinationUpdate < Struct.new(
      :account_url,
      :private_key,
      :key_passphrase,
      :user,
      :database,
      :schema,
      :table,
      :snowflake_role_configuration,
      :data_loading_option,
      :meta_data_column_name,
      :content_column_name,
      :cloud_watch_logging_options,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :secrets_manager_configuration,
      :buffering_hints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specify how long Firehose retries sending data to the New Relic HTTP endpoint.
    #          
    #          After sending data, Firehose first waits for an acknowledgment from the HTTP endpoint. If an error occurs or the acknowledgment doesn’t arrive within the acknowledgment timeout period, Firehose starts the retry duration counter. It keeps retrying until the retry duration expires. After that, Firehose considers it a data delivery failure and backs up the data to your Amazon S3 bucket.
    #          
    #          Every time that Firehose sends data to the HTTP endpoint (either the initial attempt or a retry), it restarts the acknowledgement timeout counter and waits for an acknowledgement from the HTTP endpoint.
    #          
    #          Even if the retry duration expires, Firehose still waits for the acknowledgment until it receives it or the acknowledgement timeout period is reached. If the acknowledgment times out, Firehose determines whether there's time left in the retry counter. If there is time left, it retries again and repeats the logic until it receives an acknowledgment or determines that the retry time has expired.
    #          
    #          If you don't want Firehose to retry sending data, set this value to 0.</p>
    # @!attribute duration_in_seconds
    #   <p>the time period where Firehose will retry sending data to the chosen HTTP endpoint.</p>
    #   @return [Integer]
    class SnowflakeRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optionally configure a Snowflake role. Otherwise the default user role will be used.</p>
    # @!attribute enabled
    #   <p>Enable Snowflake role</p>
    #   @return [Boolean]
    # @!attribute snowflake_role
    #   <p>The Snowflake role you wish to configure</p>
    #   @return [String]
    class SnowflakeRoleConfiguration < Struct.new(
      :enabled,
      :snowflake_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configure a Snowflake VPC</p>
    # @!attribute private_link_vpce_id
    #   <p>The VPCE ID for Firehose to privately connect with Snowflake. The ID format is
    #            com.amazonaws.vpce.[region].vpce-svc-<[id]>. For more information, see <a href="https://docs.snowflake.com/en/user-guide/admin-security-privatelink">Amazon PrivateLink & Snowflake</a>
    #            </p>
    #   @return [String]
    class SnowflakeVpcConfiguration < Struct.new(
      :private_link_vpce_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a Kinesis data stream used as the source for a Firehose
    #          stream.</p>
    # @!attribute direct_put_source_description
    #   <p>Details about Direct PUT used as the source for a Firehose stream.
    #            </p>
    #   @return [Types::DirectPutSourceDescription]
    # @!attribute kinesis_stream_source_description
    #   <p>The <a>KinesisStreamSourceDescription</a> value for the source Kinesis
    #            data stream.</p>
    #   @return [Types::KinesisStreamSourceDescription]
    # @!attribute msk_source_description
    #   <p>The configuration description for the Amazon MSK cluster to be used as the source for a delivery
    #            stream.</p>
    #   @return [Types::MSKSourceDescription]
    # @!attribute database_source_description
    #   <p>Details about a database used as the source for a Firehose stream.</p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Types::DatabaseSourceDescription]
    class SourceDescription < Struct.new(
      :direct_put_source_description,
      :kinesis_stream_source_description,
      :msk_source_description,
      :database_source_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The buffering options. If no value is specified, the default values for Splunk are used.</p>
    # @!attribute interval_in_seconds
    #   <p>Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 60 (1 minute).</p>
    #   @return [Integer]
    # @!attribute size_in_m_bs
    #   <p>Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
    #            
    #            </p>
    #   @return [Integer]
    class SplunkBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a destination in Splunk.</p>
    # @!attribute hec_endpoint
    #   <p>The HTTP Event Collector (HEC) endpoint to which Firehose sends your
    #            data.</p>
    #   @return [String]
    # @!attribute hec_endpoint_type
    #   <p>This type can be either "Raw" or "Event."</p>
    #   @return [String]
    # @!attribute hec_token
    #   <p>This is a GUID that you obtain from your Splunk cluster when you create a new HEC
    #            endpoint.</p>
    #   @return [String]
    # @!attribute hec_acknowledgment_timeout_in_seconds
    #   <p>The amount of time that Firehose waits to receive an acknowledgment from
    #            Splunk after it sends it data. At the end of the timeout period, Firehose
    #            either tries to send the data again or considers it an error, based on your retry
    #            settings.</p>
    #   @return [Integer]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver data to Splunk,
    #            or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    #   @return [Types::SplunkRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When set to
    #               <code>FailedEventsOnly</code>, Firehose writes any data that could not be
    #            indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
    #            Firehose delivers all incoming records to Amazon S3, and also writes failed
    #            documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
    #            <p>You can update this backup mode from <code>FailedEventsOnly</code> to
    #               <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
    #               <code>FailedEventsOnly</code>.</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>The configuration for the backup Amazon S3 location.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for Splunk are used.</p>
    #   @return [Types::SplunkBufferingHints]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Splunk.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class SplunkDestinationConfiguration < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :buffering_hints,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a destination in Splunk.</p>
    # @!attribute hec_endpoint
    #   <p>The HTTP Event Collector (HEC) endpoint to which Firehose sends your
    #            data.</p>
    #   @return [String]
    # @!attribute hec_endpoint_type
    #   <p>This type can be either "Raw" or "Event."</p>
    #   @return [String]
    # @!attribute hec_token
    #   <p>A GUID you obtain from your Splunk cluster when you create a new HEC
    #            endpoint.</p>
    #   @return [String]
    # @!attribute hec_acknowledgment_timeout_in_seconds
    #   <p>The amount of time that Firehose waits to receive an acknowledgment from
    #            Splunk after it sends it data. At the end of the timeout period, Firehose
    #            either tries to send the data again or considers it an error, based on your retry
    #            settings.</p>
    #   @return [Integer]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver data to Splunk
    #            or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    #   @return [Types::SplunkRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Defines how documents should be delivered to Amazon S3. When set to
    #               <code>FailedDocumentsOnly</code>, Firehose writes any data that could not
    #            be indexed to the configured Amazon S3 destination. When set to <code>AllDocuments</code>,
    #            Firehose delivers all incoming records to Amazon S3, and also writes failed
    #            documents to Amazon S3. Default value is <code>FailedDocumentsOnly</code>. </p>
    #   @return [String]
    # @!attribute s3_destination_description
    #   <p>The Amazon S3 destination.></p>
    #   @return [Types::S3DestinationDescription]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for Splunk are used.</p>
    #   @return [Types::SplunkBufferingHints]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Splunk.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class SplunkDestinationDescription < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :buffering_hints,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an update for a destination in Splunk.</p>
    # @!attribute hec_endpoint
    #   <p>The HTTP Event Collector (HEC) endpoint to which Firehose sends your
    #            data.</p>
    #   @return [String]
    # @!attribute hec_endpoint_type
    #   <p>This type can be either "Raw" or "Event."</p>
    #   @return [String]
    # @!attribute hec_token
    #   <p>A GUID that you obtain from your Splunk cluster when you create a new HEC
    #            endpoint.</p>
    #   @return [String]
    # @!attribute hec_acknowledgment_timeout_in_seconds
    #   <p>The amount of time that Firehose waits to receive an acknowledgment from
    #            Splunk after it sends data. At the end of the timeout period, Firehose either
    #            tries to send the data again or considers it an error, based on your retry
    #            settings.</p>
    #   @return [Integer]
    # @!attribute retry_options
    #   <p>The retry behavior in case Firehose is unable to deliver data to Splunk
    #            or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
    #   @return [Types::SplunkRetryOptions]
    # @!attribute s3_backup_mode
    #   <p>Specifies how you want Firehose to back up documents to Amazon S3. When
    #            set to <code>FailedDocumentsOnly</code>, Firehose writes any data that could
    #            not be indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
    #            Firehose delivers all incoming records to Amazon S3, and also writes failed
    #            documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
    #            <p>You can update this backup mode from <code>FailedEventsOnly</code> to
    #               <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
    #               <code>FailedEventsOnly</code>.</p>
    #   @return [String]
    # @!attribute s3_update
    #   <p>Your update to the configuration of the backup Amazon S3 location.</p>
    #   @return [Types::S3DestinationUpdate]
    # @!attribute processing_configuration
    #   <p>The data processing configuration.</p>
    #   @return [Types::ProcessingConfiguration]
    # @!attribute cloud_watch_logging_options
    #   <p>The Amazon CloudWatch logging options for your Firehose stream.</p>
    #   @return [Types::CloudWatchLoggingOptions]
    # @!attribute buffering_hints
    #   <p>The buffering options. If no value is specified, the default values for Splunk are used.</p>
    #   @return [Types::SplunkBufferingHints]
    # @!attribute secrets_manager_configuration
    #   <p>
    #            The configuration that defines how you access secrets for Splunk.
    #         </p>
    #   @return [Types::SecretsManagerConfiguration]
    class SplunkDestinationUpdate < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options,
      :buffering_hints,
      :secrets_manager_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures retry behavior in case Firehose is unable to deliver
    #          documents to Splunk, or if it doesn't receive an acknowledgment from Splunk.</p>
    # @!attribute duration_in_seconds
    #   <p>The total amount of time that Firehose spends on retries. This duration
    #            starts after the initial attempt to send data to Splunk fails. It doesn't include the
    #            periods during which Firehose waits for acknowledgment from Splunk after each
    #            attempt.</p>
    #   @return [Integer]
    class SplunkRetryOptions < Struct.new(
      :duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream for which you want to enable server-side encryption
    #            (SSE).</p>
    #   @return [String]
    # @!attribute delivery_stream_encryption_configuration_input
    #   <p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
    #            Server-Side Encryption (SSE).</p>
    #   @return [Types::DeliveryStreamEncryptionConfigurationInput]
    class StartDeliveryStreamEncryptionInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_encryption_configuration_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartDeliveryStreamEncryptionOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream for which you want to disable server-side encryption
    #            (SSE).</p>
    #   @return [String]
    class StopDeliveryStreamEncryptionInput < Struct.new(
      :delivery_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopDeliveryStreamEncryptionOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to enable automatic table creation.</p>
    #          <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    # @!attribute enabled
    #   <p>
    #            Specify whether you want to enable automatic table creation.
    #         </p>
    #            <p>Amazon Data Firehose is in preview release and is subject to change.</p>
    #   @return [Boolean]
    class TableCreationConfiguration < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata that you can assign to a Firehose stream, consisting of a key-value
    #          pair.</p>
    # @!attribute key
    #   <p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters:
    #            Unicode letters, digits, white space, _ . / = + - % @</p>
    #   @return [String]
    # @!attribute value
    #   <p>An optional string, which you can use to describe or define the tag. Maximum length:
    #            256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - %
    #            @</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream to which you want to add the tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key-value pairs to use to create the tags.</p>
    #   @return [Array<Types::Tag>]
    class TagDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagDeliveryStreamOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the delivery
    #            stream.</p>
    #   @return [Array<String>]
    class UntagDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagDeliveryStreamOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream_name
    #   <p>The name of the Firehose stream.</p>
    #   @return [String]
    # @!attribute current_delivery_stream_version_id
    #   <p>Obtain this value from the <code>VersionId</code> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service
    #            perform conditional operations. For example, if there is an interleaving update and this
    #            value is null, then the update destination fails. After the update is successful, the
    #               <code>VersionId</code> value is updated. The service then performs a merge of the old
    #            configuration with the new configuration.</p>
    #   @return [String]
    # @!attribute destination_id
    #   <p>The ID of the destination.</p>
    #   @return [String]
    # @!attribute s3_destination_update
    #   <p>[Deprecated] Describes an update for a destination in Amazon S3.</p>
    #   @deprecated
    #   @return [Types::S3DestinationUpdate]
    # @!attribute extended_s3_destination_update
    #   <p>Describes an update for a destination in Amazon S3.</p>
    #   @return [Types::ExtendedS3DestinationUpdate]
    # @!attribute redshift_destination_update
    #   <p>Describes an update for a destination in Amazon Redshift.</p>
    #   @return [Types::RedshiftDestinationUpdate]
    # @!attribute elasticsearch_destination_update
    #   <p>Describes an update for a destination in Amazon OpenSearch Service.</p>
    #   @return [Types::ElasticsearchDestinationUpdate]
    # @!attribute amazonopensearchservice_destination_update
    #   <p>Describes an update for a destination in Amazon OpenSearch Service.</p>
    #   @return [Types::AmazonopensearchserviceDestinationUpdate]
    # @!attribute splunk_destination_update
    #   <p>Describes an update for a destination in Splunk.</p>
    #   @return [Types::SplunkDestinationUpdate]
    # @!attribute http_endpoint_destination_update
    #   <p>Describes an update to the specified HTTP endpoint destination.</p>
    #   @return [Types::HttpEndpointDestinationUpdate]
    # @!attribute amazon_open_search_serverless_destination_update
    #   <p>Describes an update for a destination in the Serverless offering for Amazon OpenSearch
    #            Service.</p>
    #   @return [Types::AmazonOpenSearchServerlessDestinationUpdate]
    # @!attribute snowflake_destination_update
    #   <p>Update to the Snowflake destination configuration settings.</p>
    #   @return [Types::SnowflakeDestinationUpdate]
    # @!attribute iceberg_destination_update
    #   <p>
    #            Describes an update for a destination in Apache Iceberg Tables.
    #         </p>
    #   @return [Types::IcebergDestinationUpdate]
    class UpdateDestinationInput < Struct.new(
      :delivery_stream_name,
      :current_delivery_stream_version_id,
      :destination_id,
      :s3_destination_update,
      :extended_s3_destination_update,
      :redshift_destination_update,
      :elasticsearch_destination_update,
      :amazonopensearchservice_destination_update,
      :splunk_destination_update,
      :http_endpoint_destination_update,
      :amazon_open_search_serverless_destination_update,
      :snowflake_destination_update,
      :iceberg_destination_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDestinationOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the VPC of the Amazon OpenSearch or Amazon OpenSearch Serverless
    #          destination.</p>
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets that you want Firehose to use to create ENIs in the
    #            VPC of the Amazon OpenSearch Service destination. Make sure that the routing tables and inbound and
    #            outbound rules allow traffic to flow from the subnets whose IDs are specified here to the
    #            subnets that have the destination Amazon OpenSearch Service endpoints. Firehose creates at
    #            least one ENI in each of the subnets that are specified here. Do not delete or modify these
    #            ENIs.</p>
    #            <p>The number of ENIs that Firehose creates in the subnets specified here
    #            scales up and down automatically based on throughput. To enable Firehose to
    #            scale up the number of ENIs to match throughput, ensure that you have sufficient quota. To
    #            help you calculate the quota you need, assume that Firehose can create up to
    #            three ENIs for this Firehose stream for each of the subnets specified here. For more
    #            information about ENI quota, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis">Network Interfaces
    #            </a> in the Amazon VPC Quotas topic.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that you want the Firehose stream to use to create endpoints in
    #            the destination VPC. You can use your existing Firehose delivery role or you
    #            can specify a new role. In either case, make sure that the role trusts the Firehose service principal and that it grants the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcs</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcAttribute</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSubnets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSecurityGroups</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeNetworkInterfaces</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterface</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterfacePermission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DeleteNetworkInterface</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>When you specify subnets for delivering data to the destination in a private VPC, make sure you have enough number of free IP addresses in chosen subnets. If there is no available free IP address in a specified subnet, Firehose cannot create or add ENIs for the data delivery in the private VPC, and the delivery will be degraded or fail.</p>
    #            </important>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups that you want Firehose to use when it
    #            creates ENIs in the VPC of the Amazon OpenSearch Service destination. You can use the same security group
    #            that the Amazon OpenSearch Service domain uses or different ones. If you specify different security groups
    #            here, ensure that they allow outbound HTTPS traffic to the Amazon OpenSearch Service domain's security
    #            group. Also ensure that the Amazon OpenSearch Service domain's security group allows HTTPS traffic from the
    #            security groups specified here. If you use the same security group for both your delivery
    #            stream and the Amazon OpenSearch Service domain, make sure the security group inbound rule allows HTTPS
    #            traffic. For more information about security group rules, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules">Security group
    #               rules</a> in the Amazon VPC documentation.</p>
    #   @return [Array<String>]
    class VpcConfiguration < Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the VPC of the Amazon OpenSearch Service destination.</p>
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets that Firehose uses to create ENIs in the VPC of the
    #            Amazon OpenSearch Service destination. Make sure that the routing tables and inbound and outbound rules
    #            allow traffic to flow from the subnets whose IDs are specified here to the subnets that
    #            have the destination Amazon OpenSearch Service endpoints. Firehose creates at least one ENI in
    #            each of the subnets that are specified here. Do not delete or modify these ENIs.</p>
    #            <p>The number of ENIs that Firehose creates in the subnets specified here
    #            scales up and down automatically based on throughput. To enable Firehose to
    #            scale up the number of ENIs to match throughput, ensure that you have sufficient quota. To
    #            help you calculate the quota you need, assume that Firehose can create up to
    #            three ENIs for this Firehose stream for each of the subnets specified here. For more
    #            information about ENI quota, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis">Network Interfaces
    #            </a> in the Amazon VPC Quotas topic.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that the Firehose stream uses to create endpoints in the
    #            destination VPC. You can use your existing Firehose delivery role or you can
    #            specify a new role. In either case, make sure that the role trusts the Firehose service principal and that it grants the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcs</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeVpcAttribute</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSubnets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeSecurityGroups</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DescribeNetworkInterfaces</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterface</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:CreateNetworkInterfacePermission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ec2:DeleteNetworkInterface</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you revoke these permissions after you create the Firehose stream, Firehose can't scale out by creating more ENIs when necessary. You might therefore see a
    #            degradation in performance.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups that Firehose uses when it creates ENIs in
    #            the VPC of the Amazon OpenSearch Service destination. You can use the same security group that the Amazon
    #            ES domain uses or different ones. If you specify different security groups, ensure that
    #            they allow outbound HTTPS traffic to the Amazon OpenSearch Service domain's security group. Also ensure
    #            that the Amazon OpenSearch Service domain's security group allows HTTPS traffic from the security groups
    #            specified here. If you use the same security group for both your Firehose stream and the
    #            Amazon OpenSearch Service domain, make sure the security group inbound rule allows HTTPS traffic. For more
    #            information about security group rules, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules">Security group
    #               rules</a> in the Amazon VPC documentation.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the Amazon OpenSearch Service destination's VPC.</p>
    #   @return [String]
    class VpcConfigurationDescription < Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
