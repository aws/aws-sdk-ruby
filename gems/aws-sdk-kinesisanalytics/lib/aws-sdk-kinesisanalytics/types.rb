# frozen_string_literal: true

# This is generated code!

module Aws::KinesisAnalytics
  # This module contains the types returned by client operations.
  module Types

    # @!attribute application_name
    #   <p>The Kinesis Analytics application name.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    #   @return [Integer]
    # @!attribute cloud_watch_logging_option
    #   <p>Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN.
    #               Note: To write application messages to CloudWatch, the IAM role that is used must have
    #               the <code>PutLogEvents</code> policy action enabled.</p>
    #   @return [Types::CloudWatchLoggingOption]
    class AddApplicationCloudWatchLoggingOptionRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AddApplicationCloudWatchLoggingOptionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>Name of the application to which you want to add the input processing configuration.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>Version of the application to which you want to add the input processing configuration. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> 
    #               operation to get the current application version.  If the version specified is not the current version, the 
    #               <code>ConcurrentModificationException</code> is returned.</p>
    #   @return [Integer]
    # @!attribute input_id
    #   <p>The ID of the input configuration to add the input processing configuration to. You
    #               can get a list of the input IDs for an application using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #   @return [String]
    # @!attribute input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to add to the application.</p>
    #   @return [Types::InputProcessingConfiguration]
    class AddApplicationInputProcessingConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id,
      :input_processing_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AddApplicationInputProcessingConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>Current version of your Amazon Kinesis Analytics application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation 
    #               to find the current application version.</p>
    #   @return [Integer]
    # @!attribute input
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html">Input</a> to add.</p>
    #   @return [Types::Input]
    class AddApplicationInputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class AddApplicationInputResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of the application to which you want to add the output configuration.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>Version of the application to which you want to add the output configuration. You
    #               can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current
    #               application version. If the version specified is not the current version, the
    #                   <code>ConcurrentModificationException</code> is returned. </p>
    #   @return [Integer]
    # @!attribute output
    #   <p>An array of objects, each describing one output configuration. In the output
    #               configuration, you specify the name of an in-application stream, a destination (that is,
    #               an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda
    #               function), and record the formation to use when writing to the destination.</p>
    #   @return [Types::Output]
    class AddApplicationOutputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :output,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class AddApplicationOutputResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of an existing application.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>Version of the application for which you are adding the reference data source. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified is not the current version, the 
    #               <code>ConcurrentModificationException</code> is returned.</p>
    #   @return [Integer]
    # @!attribute reference_data_source
    #   <p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>
    #   @return [Types::ReferenceDataSource]
    class AddApplicationReferenceDataSourceRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class AddApplicationReferenceDataSourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>
    # @!attribute application_name
    #   <p>Name of the application.</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>Description of the application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>ARN of the application.</p>
    #   @return [String]
    # @!attribute application_status
    #   <p>Status of the application.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>Time stamp when the application version was created.</p>
    #   @return [Time]
    # @!attribute last_update_timestamp
    #   <p>Time stamp when the application was last updated.</p>
    #   @return [Time]
    # @!attribute input_descriptions
    #   <p>Describes the application input configuration. 
    #               For more information, 
    #               see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. 
    #               
    #           </p>
    #   @return [Array<Types::InputDescription>]
    # @!attribute output_descriptions
    #   <p>Describes the application output configuration.
    #               For more information, 
    #               see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. 
    #               
    #           </p>
    #   @return [Array<Types::OutputDescription>]
    # @!attribute reference_data_source_descriptions
    #   <p>Describes reference data sources configured for the application. 
    #               
    #               For more information, 
    #               see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. 
    #               
    #           </p>
    #   @return [Array<Types::ReferenceDataSourceDescription>]
    # @!attribute cloud_watch_logging_option_descriptions
    #   <p>Describes the CloudWatch log streams that are configured to receive application
    #               messages. For more information about using CloudWatch log streams with Amazon Kinesis
    #               Analytics applications, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon
    #                   CloudWatch Logs</a>. </p>
    #   @return [Array<Types::CloudWatchLoggingOptionDescription>]
    # @!attribute application_code
    #   <p>Returns the application code that you provided to perform data analysis on any of the in-application streams in your application.</p>
    #   @return [String]
    # @!attribute application_version_id
    #   <p>Provides the current application version.</p>
    #   @return [Integer]
    class ApplicationDetail < Struct.new(
      :application_name,
      :application_description,
      :application_arn,
      :application_status,
      :create_timestamp,
      :last_update_timestamp,
      :input_descriptions,
      :output_descriptions,
      :reference_data_source_descriptions,
      :cloud_watch_logging_option_descriptions,
      :application_code,
      :application_version_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>
    # @!attribute application_name
    #   <p>Name of the application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>ARN of the application.</p>
    #   @return [String]
    # @!attribute application_status
    #   <p>Status of the application.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      :application_name,
      :application_arn,
      :application_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes updates to apply to an existing Amazon Kinesis Analytics application.</p>
    # @!attribute input_updates
    #   <p>Describes application input configuration updates.</p>
    #   @return [Array<Types::InputUpdate>]
    # @!attribute application_code_update
    #   <p>Describes application code updates.</p>
    #   @return [String]
    # @!attribute output_updates
    #   <p>Describes application output configuration updates.</p>
    #   @return [Array<Types::OutputUpdate>]
    # @!attribute reference_data_source_updates
    #   <p>Describes application reference data source updates.</p>
    #   @return [Array<Types::ReferenceDataSourceUpdate>]
    # @!attribute cloud_watch_logging_option_updates
    #   <p>Describes application CloudWatch logging option updates.</p>
    #   @return [Array<Types::CloudWatchLoggingOptionUpdate>]
    class ApplicationUpdate < Struct.new(
      :input_updates,
      :application_code_update,
      :output_updates,
      :reference_data_source_updates,
      :cloud_watch_logging_option_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional mapping information when the record format 
    #             uses delimiters, such as CSV. For example, the following sample records 
    #             use CSV format, where the records use the <i>'\n'</i> as the row delimiter and a comma (",") as the column delimiter:
    #         </p>
    #         
    #         <p>
    #             <code>"name1", "address1"</code>
    #          </p>
    #         <p>
    #             <code>"name2", "address2"</code>
    #          </p>
    # @!attribute record_row_delimiter
    #   <p>Row delimiter. For example, in a CSV format, <i>'\n'</i> is the typical row delimiter.</p>
    #   @return [String]
    # @!attribute record_column_delimiter
    #   <p>Column delimiter. For example, in a CSV format, a comma (",") is the typical column delimiter.</p>
    #   @return [String]
    class CSVMappingParameters < Struct.new(
      :record_row_delimiter,
      :record_column_delimiter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of CloudWatch logging options, including the log stream
    #             Amazon Resource Name (ARN) and the role ARN.</p>
    # @!attribute log_stream_arn
    #   <p>ARN of the CloudWatch log to receive application messages.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>IAM ARN of the role to use to send application messages. Note: To write application
    #               messages to CloudWatch, the IAM role that is used must have the
    #               <code>PutLogEvents</code> policy action enabled.</p>
    #   @return [String]
    class CloudWatchLoggingOption < Struct.new(
      :log_stream_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Description of the CloudWatch logging option.</p>
    # @!attribute cloud_watch_logging_option_id
    #   <p>ID of the CloudWatch logging option description.</p>
    #   @return [String]
    # @!attribute log_stream_arn
    #   <p>ARN of the CloudWatch log to receive application messages.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>
    #   @return [String]
    class CloudWatchLoggingOptionDescription < Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes CloudWatch logging option updates.</p>
    # @!attribute cloud_watch_logging_option_id
    #   <p>ID of the CloudWatch logging option to update</p>
    #   @return [String]
    # @!attribute log_stream_arn_update
    #   <p>ARN of the CloudWatch log to receive application messages.</p>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>
    #   @return [String]
    class CloudWatchLoggingOptionUpdate < Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>User-provided application code (query) is invalid. This can be a simple syntax error.</p>
    # @!attribute message
    #   <p>Test</p>
    #   @return [String]
    class CodeValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>TBD</p>
    # @!attribute application_name
    #   <p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>
    #   @return [String]
    # @!attribute application_description
    #   <p>Summary description of the application.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Use this parameter to configure the application input.</p>
    #           <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p>
    #           <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of
    #               data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role
    #               that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p>
    #           <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>
    #   @return [Array<Types::Input>]
    # @!attribute outputs
    #   <p>You can configure application output to write data from any of the in-application streams to up to three destinations.</p>
    #           <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery
    #               streams, AWS Lambda destinations, or any combination of the three.</p>
    #           <p>In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the 
    #               destination stream or Lambda function on your behalf.</p>
    #           <p>In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format
    #               of data in the stream (for example, JSON, CSV). You also must provide an IAM role that
    #               Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.</p>
    #   @return [Array<Types::Output>]
    # @!attribute cloud_watch_logging_options
    #   <p>Use this parameter to configure a CloudWatch log stream to monitor application
    #               configuration errors. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon
    #                   CloudWatch Logs</a>.</p>
    #   @return [Array<Types::CloudWatchLoggingOption>]
    # @!attribute application_code
    #   <p>One or more SQL statements that read input data, transform it, and generate output.
    #               For example, you can write a SQL statement that reads data from one in-application
    #               stream, generates a running average of the number of advertisement clicks by vendor, and
    #               insert resulting rows in another in-application stream using pumps. For more information
    #               about the typical pattern, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html">Application
    #                   Code</a>. </p>
    #           
    #           <p>You can provide such series of SQL statements, 
    #               where output of one statement can be
    #               used as the input for the next statement. You store 
    #               intermediate results by creating in-application streams and pumps.</p>
    #           
    #           <p>Note that the application code must create the streams with names 
    #               specified in the <code>Outputs</code>. For example, 
    #               if your <code>Outputs</code> defines output streams named 
    #               <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>,
    #               then your application code must create these streams. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    #           For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    #   @return [Array<Types::Tag>]
    class CreateApplicationRequest < Struct.new(
      :application_name,
      :application_description,
      :inputs,
      :outputs,
      :cloud_watch_logging_options,
      :application_code,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>TBD</p>
    # @!attribute application_summary
    #   <p>In response to your <code>CreateApplication</code> request, Amazon Kinesis Analytics returns a 
    #               response with a summary of the application it created, including the application Amazon Resource Name (ARN), 
    #               name, and status.</p>
    #   @return [Types::ApplicationSummary]
    class CreateApplicationResponse < Struct.new(
      :application_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>The Kinesis Analytics application name.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    #   @return [Integer]
    # @!attribute cloud_watch_logging_option_id
    #   <p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to
    #               delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation. </p>
    #   @return [String]
    class DeleteApplicationCloudWatchLoggingOptionRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationCloudWatchLoggingOptionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>The Kinesis Analytics application name.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    #   @return [Integer]
    # @!attribute input_id
    #   <p>The ID of the input configuration from which to delete the input processing
    #               configuration. You can get a list of the input IDs for an application by using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #   @return [String]
    class DeleteApplicationInputProcessingConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationInputProcessingConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Amazon Kinesis Analytics application name.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>Amazon Kinesis Analytics application version. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified is not the current version, the 
    #               <code>ConcurrentModificationException</code> is returned.
    #           </p>
    #   @return [Integer]
    # @!attribute output_id
    #   <p>The ID of the configuration to delete. 
    #               Each output configuration that is added to the application, either when the application is 
    #               created or later using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationOutput.html">AddApplicationOutput</a> operation, has a unique ID. 
    #               You need to provide the ID to uniquely identify the output configuration that you want to 
    #               delete from the application configuration. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the specific
    #               <code>OutputId</code>. 
    #           </p>
    #   @return [String]
    class DeleteApplicationOutputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :output_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class DeleteApplicationOutputResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>Name of an existing application.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>Version of the application.  
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified 
    #               is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
    #   @return [Integer]
    # @!attribute reference_id
    #   <p>ID of the reference data source. When you add a reference data source to your 
    #               application using the 
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the reference ID.
    #           </p>
    #   @return [String]
    class DeleteApplicationReferenceDataSourceRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationReferenceDataSourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of the Amazon Kinesis Analytics application to delete.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>
    #               You can use the <code>DescribeApplication</code> operation to get this value.
    #           </p>
    #   @return [Time]
    class DeleteApplicationRequest < Struct.new(
      :application_name,
      :create_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class DeleteApplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of the application.</p>
    #   @return [String]
    class DescribeApplicationRequest < Struct.new(
      :application_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_detail
    #   <p>Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.</p>
    #   @return [Types::ApplicationDetail]
    class DescribeApplicationResponse < Struct.new(
      :application_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data format when records are written to the destination. 
    #             For more information, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. 
    #             
    #             
    #         </p>
    # @!attribute record_format_type
    #   <p>Specifies the format of the records on the output stream.</p>
    #   @return [String]
    class DestinationSchema < Struct.new(
      :record_format_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the streaming source.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>
    #   @return [String]
    # @!attribute input_starting_position_configuration
    #   <p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>
    #   @return [Types::InputStartingPositionConfiguration]
    # @!attribute s3_configuration
    #   <p>Specify this parameter to discover a schema from data in an Amazon S3
    #               object.</p>
    #   @return [Types::S3Configuration]
    # @!attribute input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>
    #   @return [Types::InputProcessingConfiguration]
    class DiscoverInputSchemaRequest < Struct.new(
      :resource_arn,
      :role_arn,
      :input_starting_position_configuration,
      :s3_configuration,
      :input_processing_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute input_schema
    #   <p>Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.</p>
    #   @return [Types::SourceSchema]
    # @!attribute parsed_input_records
    #   <p>An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).</p>
    #   @return [Array<Array<String>>]
    # @!attribute processed_input_records
    #   <p>Stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter.</p>
    #   @return [Array<String>]
    # @!attribute raw_input_records
    #   <p>Raw stream data that was sampled to infer the schema.</p>
    #   @return [Array<String>]
    class DiscoverInputSchemaResponse < Struct.new(
      :input_schema,
      :parsed_input_records,
      :processed_input_records,
      :raw_input_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When you configure the application input, you specify the streaming source,  the 
    #             in-application stream name that is created, and the mapping between the two. 
    #             For more information, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
    # @!attribute name_prefix
    #   <p>Name prefix to use when creating an in-application stream. Suppose that you specify
    #               a prefix "MyInApplicationStream." Amazon Kinesis Analytics then creates one or more (as
    #               per the <code>InputParallelism</code> count you specified) in-application streams with
    #               names "MyInApplicationStream_001," "MyInApplicationStream_002," and so on. </p>
    #   @return [String]
    # @!attribute input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> for the input. An input
    #               processor transforms records as they are received from the stream, before the
    #               application's SQL code executes. Currently, the only input processing configuration
    #               available is <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html">InputLambdaProcessor</a>.</p>
    #   @return [Types::InputProcessingConfiguration]
    # @!attribute kinesis_streams_input
    #   <p>If the streaming source is an Amazon Kinesis stream, 
    #               identifies the stream's Amazon Resource Name (ARN) and an IAM role 
    #               that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
    #           <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>
    #   @return [Types::KinesisStreamsInput]
    # @!attribute kinesis_firehose_input
    #   <p>If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies
    #               the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to
    #               access the stream on your behalf.</p>
    #           <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>
    #   @return [Types::KinesisFirehoseInput]
    # @!attribute input_parallelism
    #   <p>Describes the number of in-application streams to create. </p>
    #            <p>Data from your source is routed to these in-application input streams.</p>
    #           <p>    (see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.</p>
    #   @return [Types::InputParallelism]
    # @!attribute input_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.</p>
    #           <p>Also used to describe the format of the reference data source.</p>
    #   @return [Types::SourceSchema]
    class Input < Struct.new(
      :name_prefix,
      :input_processing_configuration,
      :kinesis_streams_input,
      :kinesis_firehose_input,
      :input_parallelism,
      :input_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When you start your application, 
    #             you provide this configuration, which identifies the input source and the point 
    #             in the input source at which you want the application to start processing records.</p>
    # @!attribute id
    #   <p>Input source ID. You can get this ID by calling 
    #               the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #   @return [String]
    # @!attribute input_starting_position_configuration
    #   <p>Point at which you want the application to start processing 
    #               records from the streaming source.</p>
    #   @return [Types::InputStartingPositionConfiguration]
    class InputConfiguration < Struct.new(
      :id,
      :input_starting_position_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the application input configuration. 
    #             For more information, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. 
    #         </p>
    # @!attribute input_id
    #   <p>Input ID associated with the application input. 
    #               This is the ID that Amazon Kinesis Analytics assigns to each 
    #               input configuration you add to your application. </p>
    #   @return [String]
    # @!attribute name_prefix
    #   <p>In-application name prefix.</p>
    #   @return [String]
    # @!attribute in_app_stream_names
    #   <p>Returns the in-application stream names that are mapped to the 
    #               stream source.</p>
    #   @return [Array<String>]
    # @!attribute input_processing_configuration_description
    #   <p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>
    #   @return [Types::InputProcessingConfigurationDescription]
    # @!attribute kinesis_streams_input_description
    #   <p>If an Amazon Kinesis stream is configured as streaming source, provides Amazon
    #               Kinesis stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis
    #               Analytics to access the stream on your behalf.</p>
    #   @return [Types::KinesisStreamsInputDescription]
    # @!attribute kinesis_firehose_input_description
    #   <p>If an Amazon Kinesis Firehose delivery stream is configured as a streaming source,
    #               provides the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics
    #               to access the stream on your behalf.</p>
    #   @return [Types::KinesisFirehoseInputDescription]
    # @!attribute input_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding 
    #               columns in the in-application stream that is being created. </p>
    #   @return [Types::SourceSchema]
    # @!attribute input_parallelism
    #   <p>Describes the configured parallelism (number of in-application streams 
    #               mapped to the streaming source).</p>
    #   @return [Types::InputParallelism]
    # @!attribute input_starting_position_configuration
    #   <p>Point at which the application is configured to read from the input stream.</p>
    #   @return [Types::InputStartingPositionConfiguration]
    class InputDescription < Struct.new(
      :input_id,
      :name_prefix,
      :in_app_stream_names,
      :input_processing_configuration_description,
      :kinesis_streams_input_description,
      :kinesis_firehose_input_description,
      :input_schema,
      :input_parallelism,
      :input_starting_position_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that
    #             is used to preprocess records in the stream, and the ARN of the IAM role that is used to
    #             access the AWS Lambda function. </p>
    # @!attribute resource_arn
    #   <p>The ARN of the <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that operates
    #               on records in the stream.</p>
    #               <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda">Example ARNs: AWS Lambda</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>
    #   @return [String]
    class InputLambdaProcessor < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that
    #             is used to preprocess records in the stream, and the ARN of the IAM role that is  used
    #             to access the AWS Lambda expression.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that is used to preprocess the records in the stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>
    #   @return [String]
    class InputLambdaProcessorDescription < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an update to the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html">InputLambdaProcessor</a> that is used to preprocess the records in the stream.</p>
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the new <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that
    #               is used to preprocess the records in the stream.</p>
    #           <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda">Example ARNs: AWS Lambda</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>The ARN of the new IAM role that is used to access the AWS Lambda
    #               function.</p>
    #   @return [String]
    class InputLambdaProcessorUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the number of in-application streams to create for a given 
    #             streaming source. For information about parallelism, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #         </p>
    # @!attribute count
    #   <p>Number of in-application streams to create. 
    #               For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.
    #           </p>
    #   @return [Integer]
    class InputParallelism < Struct.new(
      :count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides updates to the parallelism count.</p>
    # @!attribute count_update
    #   <p>Number of in-application streams to create for the specified 
    #               streaming source.</p>
    #   @return [Integer]
    class InputParallelismUpdate < Struct.new(
      :count_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of a processor that is used to preprocess the records in the
    #             stream before being processed by your application code. Currently, the only input
    #             processor available is <a href="https://docs.aws.amazon.com/lambda/">AWS
    #                 Lambda</a>.</p>
    # @!attribute input_lambda_processor
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html">InputLambdaProcessor</a> that is used to preprocess the records
    #               in the stream before being processed by your application code.</p>
    #   @return [Types::InputLambdaProcessor]
    class InputProcessingConfiguration < Struct.new(
      :input_lambda_processor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration information about an input processor. Currently, the only input processor available is 
    #             <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>
    # @!attribute input_lambda_processor_description
    #   <p>Provides configuration information about the associated <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessorDescription.html">InputLambdaProcessorDescription</a>.</p>
    #   @return [Types::InputLambdaProcessorDescription]
    class InputProcessingConfigurationDescription < Struct.new(
      :input_lambda_processor_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes updates to an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a>. </p>
    # @!attribute input_lambda_processor_update
    #   <p>Provides update information for an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html">InputLambdaProcessor</a>.</p>
    #   @return [Types::InputLambdaProcessorUpdate]
    class InputProcessingConfigurationUpdate < Struct.new(
      :input_lambda_processor_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes updates for the application's input schema.</p>
    # @!attribute record_format_update
    #   <p>Specifies the format of the records on the streaming source.</p>
    #   @return [Types::RecordFormat]
    # @!attribute record_encoding_update
    #   <p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>
    #   @return [String]
    # @!attribute record_column_updates
    #   <p>A list of <code>RecordColumn</code> objects. Each object describes the mapping 
    #               of the streaming source element to the corresponding column in the in-application stream. </p>
    #   @return [Array<Types::RecordColumn>]
    class InputSchemaUpdate < Struct.new(
      :record_format_update,
      :record_encoding_update,
      :record_column_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the point at which the application reads from 
    #             the streaming source.</p>
    # @!attribute input_starting_position
    #   <p>The starting position on the stream.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>NOW</code> - Start reading just after the most recent record in the
    #                       stream, start at the request time stamp that the customer issued.</p>
    #                   
    #                   
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, 
    #                       which is the oldest record available in the stream. This option is not available 
    #                       for an Amazon Kinesis Firehose delivery stream.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InputStartingPositionConfiguration < Struct.new(
      :input_starting_position,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes updates to a specific input configuration (identified by the 
    #             <code>InputId</code> of an application). </p>
    # @!attribute input_id
    #   <p>Input ID of the application input to be updated.</p>
    #   @return [String]
    # @!attribute name_prefix_update
    #   <p>Name prefix for in-application streams that Amazon Kinesis Analytics creates 
    #               for the specific streaming source.</p>
    #   @return [String]
    # @!attribute input_processing_configuration_update
    #   <p>Describes updates for an input processing configuration.</p>
    #   @return [Types::InputProcessingConfigurationUpdate]
    # @!attribute kinesis_streams_input_update
    #   <p>If an Amazon Kinesis stream is the streaming source to be updated, provides an
    #               updated stream Amazon Resource Name (ARN) and IAM role ARN.</p>
    #   @return [Types::KinesisStreamsInputUpdate]
    # @!attribute kinesis_firehose_input_update
    #   <p>If an Amazon Kinesis Firehose delivery stream is the streaming source to be
    #               updated, provides an updated stream ARN and IAM role ARN.</p>
    #   @return [Types::KinesisFirehoseInputUpdate]
    # @!attribute input_schema_update
    #   <p>Describes the data format on the streaming source, and 
    #               how record elements on the streaming source map to columns of the in-application stream that is created.</p>
    #   @return [Types::InputSchemaUpdate]
    # @!attribute input_parallelism_update
    #   <p>Describes the parallelism updates (the number in-application 
    #               streams Amazon Kinesis Analytics creates for the specific streaming source).</p>
    #   @return [Types::InputParallelismUpdate]
    class InputUpdate < Struct.new(
      :input_id,
      :name_prefix_update,
      :input_processing_configuration_update,
      :kinesis_streams_input_update,
      :kinesis_firehose_input_update,
      :input_schema_update,
      :input_parallelism_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>User-provided application configuration is not valid.</p>
    # @!attribute message
    #   <p>test</p>
    #   @return [String]
    class InvalidApplicationConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specified input parameter value is invalid.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
    # @!attribute record_row_path
    #   <p>Path to the top-level parent that contains the records.</p>
    #   @return [String]
    class JSONMappingParameters < Struct.new(
      :record_row_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You
    #             provide the delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that
    #             enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
    # @!attribute resource_arn
    #   <p>ARN of the input delivery stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream
    #               on your behalf. You need to make sure that the role has the necessary permissions to
    #               access the stream.</p>
    #   @return [String]
    class KinesisFirehoseInput < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source 
    #             in the application input configuration. 
    #         </p>
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics assumes to access the stream.</p>
    #   @return [String]
    class KinesisFirehoseInputDescription < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When updating application input configuration, provides information about an  
    #             Amazon Kinesis Firehose delivery stream as the streaming source.</p>
    # @!attribute resource_arn_update
    #   <p>Amazon Resource Name (ARN) of the input Amazon Kinesis Firehose delivery stream to
    #               read.</p>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream
    #               on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisFirehoseInputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When configuring application output, 
    #             identifies an Amazon Kinesis Firehose delivery stream as the destination. 
    #             You provide the stream Amazon Resource Name (ARN) and an IAM role  
    #             that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>
    # @!attribute resource_arn
    #   <p>ARN of the destination Amazon Kinesis Firehose delivery stream to write to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisFirehoseOutput < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             For an application output, describes 
    #             the Amazon Kinesis Firehose delivery stream configured as its destination.
    #         </p>
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>
    #   @return [String]
    class KinesisFirehoseOutputDescription < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             When updating an output configuration using the 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a> operation, 
    #             provides information about an Amazon Kinesis Firehose delivery stream configured as 
    #             the destination.
    #         </p>
    # @!attribute resource_arn_update
    #   <p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream to write to.</p>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream
    #               on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisFirehoseOutputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Identifies an Amazon Kinesis stream as the streaming source. You provide the
    #             stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis
    #             Analytics to access the stream on your behalf.</p>
    # @!attribute resource_arn
    #   <p>ARN of the input Amazon Kinesis stream to read.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisStreamsInput < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the Amazon Kinesis stream that is configured as the streaming source 
    #             in the application input configuration. 
    #           </p>
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>
    #   @return [String]
    class KinesisStreamsInputDescription < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When updating application input configuration, provides information about an 
    #             Amazon Kinesis stream as the streaming source.</p>
    # @!attribute resource_arn_update
    #   <p>Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.</p>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisStreamsInputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When configuring application output, identifies an Amazon Kinesis stream as the
    #             destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN
    #             that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>
    # @!attribute resource_arn
    #   <p>ARN of the destination Amazon Kinesis stream to write to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisStreamsOutput < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             For an application output, describes 
    #             the Amazon Kinesis stream configured as its destination.
    #         </p>
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>
    #   @return [String]
    class KinesisStreamsOutputDescription < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             When updating an output configuration using the 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a>  operation, 
    #             provides information about an Amazon Kinesis stream configured as 
    #             the destination.
    #         </p>
    # @!attribute resource_arn_update
    #   <p>Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.</p>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>
    #   @return [String]
    class KinesisStreamsOutputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When configuring application output, identifies an AWS Lambda function as the
    #             destination. You provide the function Amazon Resource Name (ARN) and also an IAM role
    #             ARN that Amazon Kinesis Analytics can use to write to the function on your behalf. </p>
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the destination Lambda function to write
    #               to.</p>
    #           <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda">Example ARNs: AWS Lambda</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>
    #   @return [String]
    class LambdaOutput < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>For an application output, describes the AWS Lambda function configured as its
    #             destination. </p>
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the destination Lambda function.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function.</p>
    #   @return [String]
    class LambdaOutputDescription < Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When updating an output configuration using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a>
    #             operation, provides information about an AWS Lambda function configured as the
    #             destination.</p>
    # @!attribute resource_arn_update
    #   <p>Amazon Resource Name (ARN) of the destination Lambda function.</p>
    #           <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda">Example ARNs: AWS Lambda</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn_update
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>
    #   @return [String]
    class LambdaOutputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exceeded the number of applications allowed.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute limit
    #   <p>Maximum number of applications to list.</p>
    #   @return [Integer]
    # @!attribute exclusive_start_application_name
    #   <p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      :limit,
      :exclusive_start_application_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_summaries
    #   <p>List of <code>ApplicationSummary</code> objects. </p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute has_more_applications
    #   <p>Returns true if there are more applications to retrieve.</p>
    #   @return [Boolean]
    class ListApplicationsResponse < Struct.new(
      :application_summaries,
      :has_more_applications,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the application for which to retrieve tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value tags assigned to the application.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When configuring application input 
    #             at the time of creating or updating an application, 
    #             provides additional mapping information specific to 
    #             the record format (such as JSON, CSV, or record fields delimited 
    #             by some delimiter) on the streaming source.</p>
    # @!attribute json_mapping_parameters
    #   <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
    #   @return [Types::JSONMappingParameters]
    # @!attribute csv_mapping_parameters
    #   <p>Provides additional mapping information when the record format uses delimiters 
    #               (for example, CSV).</p>
    #   @return [Types::CSVMappingParameters]
    class MappingParameters < Struct.new(
      :json_mapping_parameters,
      :csv_mapping_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes application output configuration in which you identify 
    #             an in-application stream and a destination where you want the 
    #             in-application stream data to be written. The destination can be 
    #             an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.
    #         </p>
    #         
    #         <p></p>
    #         <p>For limits on how many destinations an application can write and other 
    #             limitations, see 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. 
    #         </p>
    # @!attribute name
    #   <p>Name of the in-application stream.</p>
    #   @return [String]
    # @!attribute kinesis_streams_output
    #   <p>Identifies an Amazon Kinesis stream 
    #               as the destination.</p>
    #   @return [Types::KinesisStreamsOutput]
    # @!attribute kinesis_firehose_output
    #   <p>Identifies an Amazon Kinesis Firehose delivery stream as the destination.</p>
    #   @return [Types::KinesisFirehoseOutput]
    # @!attribute lambda_output
    #   <p>Identifies an AWS Lambda function as the destination.</p>
    #   @return [Types::LambdaOutput]
    # @!attribute destination_schema
    #   <p>Describes the data format when records are written to the destination. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>.</p>
    #   @return [Types::DestinationSchema]
    class Output < Struct.new(
      :name,
      :kinesis_streams_output,
      :kinesis_firehose_output,
      :lambda_output,
      :destination_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the application output configuration, which includes  
    #             the in-application stream name and the destination where the stream data 
    #             is written. The destination can be an Amazon Kinesis stream or an  
    #             Amazon Kinesis Firehose delivery stream.
    #         </p>
    # @!attribute output_id
    #   <p>A unique identifier for the output configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the in-application stream configured as output.</p>
    #   @return [String]
    # @!attribute kinesis_streams_output_description
    #   <p>Describes Amazon Kinesis stream configured as the 
    #               destination where output is written.</p>
    #   @return [Types::KinesisStreamsOutputDescription]
    # @!attribute kinesis_firehose_output_description
    #   <p>Describes the Amazon Kinesis Firehose delivery stream configured as the 
    #               destination where output is written.</p>
    #   @return [Types::KinesisFirehoseOutputDescription]
    # @!attribute lambda_output_description
    #   <p>Describes the AWS Lambda function configured as the destination where output is
    #               written.</p>
    #   @return [Types::LambdaOutputDescription]
    # @!attribute destination_schema
    #   <p>Data format used for writing data to the destination.</p>
    #   @return [Types::DestinationSchema]
    class OutputDescription < Struct.new(
      :output_id,
      :name,
      :kinesis_streams_output_description,
      :kinesis_firehose_output_description,
      :lambda_output_description,
      :destination_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes updates to the output configuration identified by 
    #             the <code>OutputId</code>.
    #         </p>
    # @!attribute output_id
    #   <p>Identifies the specific output configuration that you want to update.</p>
    #   @return [String]
    # @!attribute name_update
    #   <p>If you want to specify a different in-application stream 
    #               for this output configuration, use this field to 
    #               specify the new in-application stream name.</p>
    #   @return [String]
    # @!attribute kinesis_streams_output_update
    #   <p>Describes an Amazon Kinesis stream as the destination for the output.</p>
    #   @return [Types::KinesisStreamsOutputUpdate]
    # @!attribute kinesis_firehose_output_update
    #   <p>Describes an Amazon Kinesis Firehose delivery stream as the destination for the
    #               output.</p>
    #   @return [Types::KinesisFirehoseOutputUpdate]
    # @!attribute lambda_output_update
    #   <p>Describes an AWS Lambda function as the destination for the output.</p>
    #   @return [Types::LambdaOutputUpdate]
    # @!attribute destination_schema_update
    #   <p>Describes the data format when records are written to the destination. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>.</p>
    #   @return [Types::DestinationSchema]
    class OutputUpdate < Struct.new(
      :output_id,
      :name_update,
      :kinesis_streams_output_update,
      :kinesis_firehose_output_update,
      :lambda_output_update,
      :destination_schema_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the mapping of each data element in the streaming 
    #             source to the corresponding column in the in-application stream.</p>
    #         <p>Also used to describe the format of the reference data source.</p>
    # @!attribute name
    #   <p>Name of the column created in the in-application input stream or reference table.</p>
    #   @return [String]
    # @!attribute mapping
    #   <p>Reference to the data element in the streaming input or the reference data source. This element
    #               is required if the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_RecordFormat.html#analytics-Type-RecordFormat-RecordFormatTypel">RecordFormatType</a> is <code>JSON</code>.</p>
    #   @return [String]
    # @!attribute sql_type
    #   <p>Type of column created in the in-application input stream or reference table.</p>
    #   @return [String]
    class RecordColumn < Struct.new(
      :name,
      :mapping,
      :sql_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Describes the record format and relevant mapping information that 
    #             should be applied to schematize the records on the stream.
    #         </p>
    # @!attribute record_format_type
    #   <p>The type of record format.</p>
    #   @return [String]
    # @!attribute mapping_parameters
    #   <p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>
    #   @return [Types::MappingParameters]
    class RecordFormat < Struct.new(
      :record_format_type,
      :mapping_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>
    # @!attribute table_name
    #   <p>Name of the in-application table to create.</p>
    #   @return [String]
    # @!attribute s3_reference_data_source
    #   <p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.
    #               
    #               An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <code>UpdateApplication</code> operation to trigger reloading of data into your application. </p>
    #   @return [Types::S3ReferenceDataSource]
    # @!attribute reference_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
    #   @return [Types::SourceSchema]
    class ReferenceDataSource < Struct.new(
      :table_name,
      :s3_reference_data_source,
      :reference_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the reference data source configured for an application.</p>
    # @!attribute reference_id
    #   <p>ID of the reference data source. This is the ID 
    #               that Amazon Kinesis Analytics assigns when you add the reference data source 
    #               to your application using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a> operation.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The in-application table name created by the specific reference data source configuration.</p>
    #   @return [String]
    # @!attribute s3_reference_data_source_description
    #   <p>Provides the S3 bucket name, the object key name that contains the reference data. It also provides the Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application reference table.</p>
    #   @return [Types::S3ReferenceDataSourceDescription]
    # @!attribute reference_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
    #   @return [Types::SourceSchema]
    class ReferenceDataSourceDescription < Struct.new(
      :reference_id,
      :table_name,
      :s3_reference_data_source_description,
      :reference_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>
    # @!attribute reference_id
    #   <p>ID of the reference data source being updated. You can use the 
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get this value.</p>
    #   @return [String]
    # @!attribute table_name_update
    #   <p>In-application table name that is created by this update.</p>
    #   @return [String]
    # @!attribute s3_reference_data_source_update
    #   <p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>
    #   @return [Types::S3ReferenceDataSourceUpdate]
    # @!attribute reference_schema_update
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream. </p>
    #   @return [Types::SourceSchema]
    class ReferenceDataSourceUpdate < Struct.new(
      :reference_id,
      :table_name_update,
      :s3_reference_data_source_update,
      :reference_schema_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Application is not available for this operation.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specified application can't be found.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Discovery failed to get a record from the 
    #             streaming source because of the Amazon Kinesis Streams  
    #             ProvisionedThroughputExceededException. For more information, 
    #             see <a href="https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html">GetRecords</a> 
    #             in the Amazon Kinesis Streams API Reference.</p>
    # @!attribute message
    #   @return [String]
    class ResourceProvisionedThroughputExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of an Amazon S3 data source, including the Amazon Resource
    #             Name (ARN) of the S3 bucket, the ARN of the IAM role that is used to access the bucket,
    #             and the name of the Amazon S3 object that contains the data.</p>
    # @!attribute role_arn
    #   <p>IAM ARN of the role used to access the data.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>ARN of the S3 bucket that contains the data.</p>
    #   @return [String]
    # @!attribute file_key
    #   <p>The name of the object that contains the data.</p>
    #   @return [String]
    class S3Configuration < Struct.new(
      :role_arn,
      :bucket_arn,
      :file_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p>
    #         <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, 
    #             you call the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a> operation to trigger 
    #             reloading of data into your application.</p>
    # @!attribute bucket_arn
    #   <p>Amazon Resource Name (ARN) of the S3 bucket.</p>
    #   @return [String]
    # @!attribute file_key
    #   <p>Object key name containing reference data.</p>
    #   @return [String]
    # @!attribute reference_role_arn
    #   <p>ARN of the IAM role that the service can assume to read data on your behalf. This role must have permission for the <code>s3:GetObject</code> action on the object and trust policy that allows Amazon Kinesis Analytics service principal to assume this role.</p>
    #   @return [String]
    class S3ReferenceDataSource < Struct.new(
      :bucket_arn,
      :file_key,
      :reference_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the bucket name and object key name that stores the reference data.</p>
    # @!attribute bucket_arn
    #   <p>Amazon Resource Name (ARN) of the S3 bucket.</p>
    #   @return [String]
    # @!attribute file_key
    #   <p>Amazon S3 object key name.</p>
    #   @return [String]
    # @!attribute reference_role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table.</p>
    #   @return [String]
    class S3ReferenceDataSourceDescription < Struct.new(
      :bucket_arn,
      :file_key,
      :reference_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>
    # @!attribute bucket_arn_update
    #   <p>Amazon Resource Name (ARN) of the S3 bucket.</p>
    #   @return [String]
    # @!attribute file_key_update
    #   <p>Object key name.</p>
    #   @return [String]
    # @!attribute reference_role_arn_update
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.</p>
    #   @return [String]
    class S3ReferenceDataSourceUpdate < Struct.new(
      :bucket_arn_update,
      :file_key_update,
      :reference_role_arn_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unavailable. Back off and retry the operation. </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
    # @!attribute record_format
    #   <p>Specifies the format of the records on the streaming source.</p>
    #   @return [Types::RecordFormat]
    # @!attribute record_encoding
    #   <p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>
    #   @return [String]
    # @!attribute record_columns
    #   <p>A list of <code>RecordColumn</code> objects.</p>
    #   @return [Array<Types::RecordColumn>]
    class SourceSchema < Struct.new(
      :record_format,
      :record_encoding,
      :record_columns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of the application.</p>
    #   @return [String]
    # @!attribute input_configurations
    #   <p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>
    #   @return [Array<Types::InputConfiguration>]
    class StartApplicationRequest < Struct.new(
      :application_name,
      :input_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class StartApplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>Name of the running application to stop.</p>
    #   @return [String]
    class StopApplicationRequest < Struct.new(
      :application_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class StopApplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Note that 
    #         the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    #       For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    # @!attribute key
    #   <p>The key of the key-value tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key-value tag. The value is optional.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the application to assign the tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value tags to assign to the application.</p>
    #   @return [Array<Types::Tag>]
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

    # <p>Application created with too many tags, or too many tags added to an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Data format is not valid. Amazon Kinesis Analytics is not able to detect schema for
    #             the given streaming source.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute raw_input_records
    #   @return [Array<String>]
    # @!attribute processed_input_records
    #   @return [Array<String>]
    class UnableToDetectSchemaException < Struct.new(
      :message,
      :raw_input_records,
      :processed_input_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation. </p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys of tags to remove from the specified application.</p>
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

    # @!attribute application_name
    #   <p>Name of the Amazon Kinesis Analytics application to update.</p>
    #   @return [String]
    # @!attribute current_application_version_id
    #   <p>The current application version ID. You can use the 
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get this value.</p>
    #   @return [Integer]
    # @!attribute application_update
    #   <p>Describes application updates.</p>
    #   @return [Types::ApplicationUpdate]
    class UpdateApplicationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :application_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateApplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
