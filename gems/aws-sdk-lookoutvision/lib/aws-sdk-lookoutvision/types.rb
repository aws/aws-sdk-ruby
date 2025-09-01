# frozen_string_literal: true

# This is generated code!

module Aws::LookoutVision
  # This module contains the types returned by client operations.
  module Types

    # <p>You are not authorized to perform the action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an anomaly type found on an image by an image segmentation model. 
    #          For more information, see <a>DetectAnomalies</a>.</p>
    # @!attribute name
    #   <p>The name of an anomaly type found in an image.  
    #            <code>Name</code> maps to an anomaly type in the training dataset, apart from the anomaly type <code>background</code>.
    #         The service automatically inserts the <code>background</code> anomaly type into the response from <code>DetectAnomalies</code>. </p>
    #   @return [String]
    # @!attribute pixel_anomaly
    #   <p>Information about the pixel mask that covers an anomaly type.</p>
    #   @return [Types::PixelAnomaly]
    class Anomaly < Struct.new(
      :name,
      :pixel_anomaly,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The update or deletion of a resource caused an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project in which you want to create a dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of the dataset. Specify <code>train</code> for a training dataset.
    #         Specify <code>test</code> for a test dataset.</p>
    #   @return [String]
    # @!attribute dataset_source
    #   <p>The location of the manifest file that Amazon Lookout for Vision uses to create the dataset.</p>
    #            <p>If you don't specify <code>DatasetSource</code>, an empty dataset is created and the operation 
    #         synchronously returns. Later, you can add JSON Lines by calling <a>UpdateDatasetEntries</a>.
    #        </p>
    #            <p>If you specify a value for <code>DataSource</code>, the manifest at the S3 location
    #        is validated and used to create the dataset. The call to <code>CreateDataset</code> is asynchronous
    #        and might take a while to complete. To find out the current status, Check the value of <code>Status</code>
    #        returned in a call to <a>DescribeDataset</a>.</p>
    #   @return [Types::DatasetSource]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>CreateDataset</code>.
    #         In this case, safely retry your call
    #          to <code>CreateDataset</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateDataset</code>. An idempotency
    #          token is active for 8 hours.
    #       </p>
    #   @return [String]
    class CreateDatasetRequest < Struct.new(
      :project_name,
      :dataset_type,
      :dataset_source,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_metadata
    #   <p>Information about the dataset.</p>
    #   @return [Types::DatasetMetadata]
    class CreateDatasetResponse < Struct.new(
      :dataset_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project in which you want to create a model version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the version of the model.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>
    #         completes only once.  You choose the value to pass. For example, An issue
    #         might prevent you from getting a response from <code>CreateModel</code>.
    #         In this case, safely retry your call
    #          to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #               This prevents retries after a network error from starting multiple training jobs. You'll need to
    #               provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>The location where Amazon Lookout for Vision saves the training results.</p>
    #   @return [Types::OutputConfig]
    # @!attribute kms_key_id
    #   <p>The identifier for your AWS KMS key.
    #            The key is used to encrypt training and test images copied into the service for model training. Your 
    #            source images are unaffected.
    #            If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the model.</p>
    #   @return [Array<Types::Tag>]
    class CreateModelRequest < Struct.new(
      :project_name,
      :description,
      :client_token,
      :output_config,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_metadata
    #   <p>The response from a call to <code>CreateModel</code>.</p>
    #   @return [Types::ModelMetadata]
    class CreateModelResponse < Struct.new(
      :model_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name for the project.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateProject</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from 
    #         getting a response from <code>CreateProject</code>.
    #         In this case, safely retry your call
    #          to <code>CreateProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #             This prevents retries after a network error from making multiple project creation requests. You'll need to
    #              provide your own value for other use cases. </p>
    #            <p>An error occurs
    #          if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateProject</code>. An idempotency
    #          token is active for 8 hours.</p>
    #   @return [String]
    class CreateProjectRequest < Struct.new(
      :project_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_metadata
    #   <p>Information about the project.</p>
    #   @return [Types::ProjectMetadata]
    class CreateProjectResponse < Struct.new(
      :project_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The description for a dataset. For more information, see <a>DescribeDataset</a>.</p>
    # @!attribute project_name
    #   <p>The name of the project that contains the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of the dataset. The value <code>train</code> represents a training dataset or single dataset project.
    #         The value <code>test</code> represents a test dataset.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the time and date that the dataset was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The Unix timestamp for the date and time that the dataset was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the dataset.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for the dataset. </p>
    #   @return [String]
    # @!attribute image_stats
    #   <p>Statistics about the images in a dataset.</p>
    #   @return [Types::DatasetImageStats]
    class DatasetDescription < Struct.new(
      :project_name,
      :dataset_type,
      :creation_timestamp,
      :last_updated_timestamp,
      :status,
      :status_message,
      :image_stats,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Location information about a manifest file. You can use a manifest file to
    #       create a dataset.</p>
    # @!attribute s3_object
    #   <p>The S3 bucket location for the manifest file.</p>
    #   @return [Types::InputS3Object]
    class DatasetGroundTruthManifest < Struct.new(
      :s3_object,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Statistics about the images in a dataset.</p>
    # @!attribute total
    #   <p>The total number of images in the dataset.</p>
    #   @return [Integer]
    # @!attribute labeled
    #   <p>The total number of labeled images.</p>
    #   @return [Integer]
    # @!attribute normal
    #   <p>The total number of images labeled as normal.</p>
    #   @return [Integer]
    # @!attribute anomaly
    #   <p>the total number of images labeled as an anomaly.</p>
    #   @return [Integer]
    class DatasetImageStats < Struct.new(
      :total,
      :labeled,
      :normal,
      :anomaly,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information for an Amazon Lookout for Vision dataset. For more information,
    #       see <a>DescribeDataset</a> and <a>ProjectDescription</a>.</p>
    # @!attribute dataset_type
    #   <p>The type of the dataset.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the date and time that the dataset was created. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status for the dataset.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for the dataset.</p>
    #   @return [String]
    class DatasetMetadata < Struct.new(
      :dataset_type,
      :creation_timestamp,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the location of a manifest file that Amazon Lookout for Vision uses to to create a dataset.</p>
    # @!attribute ground_truth_manifest
    #   <p>Location information for the manifest file.</p>
    #   @return [Types::DatasetGroundTruthManifest]
    class DatasetSource < Struct.new(
      :ground_truth_manifest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatasetStatus
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_COMPLETE = 'CREATE_COMPLETE'
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      UPDATE_COMPLETE = 'UPDATE_COMPLETE'
      UPDATE_FAILED_ROLLBACK_IN_PROGRESS = 'UPDATE_FAILED_ROLLBACK_IN_PROGRESS'
      UPDATE_FAILED_ROLLBACK_COMPLETE = 'UPDATE_FAILED_ROLLBACK_COMPLETE'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      DELETE_COMPLETE = 'DELETE_COMPLETE'
      DELETE_FAILED = 'DELETE_FAILED'
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to delete.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of the dataset to delete. Specify <code>train</code> to delete the training dataset.
    #         Specify <code>test</code> to delete the test dataset. To delete the dataset in a single dataset project, 
    #            specify <code>train</code>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from getting a response from <code>DeleteDataset</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteDataset</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #                    This prevents retries after a network error from making multiple deletetion requests. You'll need to
    #                    provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteDataset</code>. An idempotency
    #          token is active for 8 hours.</p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      :project_name,
      :dataset_type,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDatasetResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model that you want to delete.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model that you want to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteModel</code>
    #         completes only once.  You choose the value to pass. For example, an issue might prevent
    #         you from getting a response from <code>DeleteModel</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for ClientToken, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple model deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    #   @return [String]
    class DeleteModelRequest < Struct.new(
      :project_name,
      :model_version,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model that was deleted.</p>
    #   @return [String]
    class DeleteModelResponse < Struct.new(
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteProject</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>DeleteProject</code>.
    #            In this case, safely retry your call
    #            to <code>DeleteProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple project deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>DeleteProject</code>. An idempotency
    #            token is active for 8 hours.</p>
    #   @return [String]
    class DeleteProjectRequest < Struct.new(
      :project_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that was deleted.</p>
    #   @return [String]
    class DeleteProjectResponse < Struct.new(
      :project_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to describe.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of the dataset to describe. Specify <code>train</code> to describe the 
    #         training dataset. Specify <code>test</code> to describe the test dataset.
    #         If you have a single dataset project, specify <code>train</code>
    #            </p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      :project_name,
      :dataset_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_description
    #   <p>The description of the requested dataset. </p>
    #   @return [Types::DatasetDescription]
    class DescribeDatasetResponse < Struct.new(
      :dataset_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model packaging job that you want to describe. 
    #   </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The job name for the model packaging job. 
    #   
    #   </p>
    #   @return [String]
    class DescribeModelPackagingJobRequest < Struct.new(
      :project_name,
      :job_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_packaging_description
    #   <p>The description of the model packaging job.
    #   </p>
    #   @return [Types::ModelPackagingDescription]
    class DescribeModelPackagingJobResponse < Struct.new(
      :model_packaging_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The project that contains the version of a model that you want to describe.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model that you want to describe.</p>
    #   @return [String]
    class DescribeModelRequest < Struct.new(
      :project_name,
      :model_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_description
    #   <p>Contains the description of the model.</p>
    #   @return [Types::ModelDescription]
    class DescribeModelResponse < Struct.new(
      :model_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that you want to describe.</p>
    #   @return [String]
    class DescribeProjectRequest < Struct.new(
      :project_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_description
    #   <p>The description of the project.</p>
    #   @return [Types::ProjectDescription]
    class DescribeProjectResponse < Struct.new(
      :project_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model version that you want to use.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model that you want to use.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The unencrypted image bytes that you want to analyze. </p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The type of the image passed in <code>Body</code>.
    #            Valid values are <code>image/png</code> (PNG format images) and <code>image/jpeg</code> (JPG format images). </p>
    #   @return [String]
    class DetectAnomaliesRequest < Struct.new(
      :project_name,
      :model_version,
      :body,
      :content_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute detect_anomaly_result
    #   <p>The results of the <code>DetectAnomalies</code> operation.</p>
    #   @return [Types::DetectAnomalyResult]
    class DetectAnomaliesResponse < Struct.new(
      :detect_anomaly_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The prediction results from a call to <a>DetectAnomalies</a>.
    #       <code>DetectAnomalyResult</code> includes classification information for the prediction (<code>IsAnomalous</code> and <code>Confidence</code>).
    #          If the model you use is an image segementation model, <code>DetectAnomalyResult</code> also includes segmentation information (<code>Anomalies</code>
    #          and <code>AnomalyMask</code>). Classification information is calculated separately from segmentation information
    #          and you shouldn't assume a relationship between them.</p>
    # @!attribute source
    #   <p>The source of the image that was analyzed. <code>direct</code> means that the
    #         images was supplied from the local computer. No other values are supported.</p>
    #   @return [Types::ImageSource]
    # @!attribute is_anomalous
    #   <p>True if Amazon Lookout for Vision classifies the image as containing an anomaly, otherwise false.</p>
    #   @return [Boolean]
    # @!attribute confidence
    #   <p>The confidence that Lookout for Vision has in the accuracy of the classification in <code>IsAnomalous</code>.</p>
    #   @return [Float]
    # @!attribute anomalies
    #   <p>If the model is an image segmentation model, <code>Anomalies</code> contains a list of
    #            anomaly types found in the image. There is one entry for each type of anomaly found (even
    #            if multiple instances of an anomaly type exist on the image). The first element in the list
    #            is always an anomaly type representing the image background ('background') and shouldn't be
    #            considered an anomaly. Amazon Lookout for Vision automatically add the background anomaly type to the
    #            response, and you don't need to declare a background anomaly type in your dataset.</p>
    #            <p>If the list has one entry ('background'), no anomalies were found on the image.</p>
    #            <p></p>
    #            <p>An image classification model doesn't return an <code>Anomalies</code> list. </p>
    #   @return [Array<Types::Anomaly>]
    # @!attribute anomaly_mask
    #   <p>If the model is an image segmentation model, <code>AnomalyMask</code> contains pixel masks that covers all anomaly types found on the image.
    #             
    #         Each anomaly type has a different mask color. To map a color to an anomaly type, see the <code>color</code> field
    #         of the <a>PixelAnomaly</a> object.</p>
    #            <p>An image classification model doesn't return an <code>Anomalies</code> list. </p>
    #   @return [String]
    class DetectAnomalyResult < Struct.new(
      :source,
      :is_anomalous,
      :confidence,
      :anomalies,
      :anomaly_mask,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information for the AWS IoT Greengrass component created in a model packaging job. 
    #    For more information, see <a>StartModelPackagingJob</a>.
    # </p>
    #          <note>
    #             <p>You can't specify a component with the same <code>ComponentName</code> and <code>Componentversion</code> as
    #       an existing component with the same component name and component version.</p>
    #          </note>
    # @!attribute compiler_options
    #   <p>Additional compiler options for the Greengrass component. Currently, 
    #      only NVIDIA Graphics Processing Units (GPU) and CPU accelerators are supported. 
    #      If you specify <code>TargetDevice</code>, don't specify <code>CompilerOptions</code>.</p>
    #            <p>For more information, see 
    #         <i>Compiler options</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #   @return [String]
    # @!attribute target_device
    #   <p>The target device for the model. Currently the only supported value is <code>jetson_xavier</code>.
    #         If you specify <code>TargetDevice</code>, you can't specify
    #         <code>TargetPlatform</code>.
    #   
    #   </p>
    #   @return [String]
    # @!attribute target_platform
    #   <p>The target platform for the model. If you specify <code>TargetPlatform</code>, you can't specify
    #            <code>TargetDevice</code>. 
    #         </p>
    #   @return [Types::TargetPlatform]
    # @!attribute s3_output_location
    #   <p>
    #            An S3 location in which Lookout for Vision stores the component artifacts. 
    #         </p>
    #   @return [Types::S3Location]
    # @!attribute component_name
    #   <p>
    #      A name for the AWS IoT Greengrass component. 
    #   </p>
    #   @return [String]
    # @!attribute component_version
    #   <p>A Version for the AWS IoT Greengrass component. If you don't provide a
    #         value, a default value of <code>
    #                  <i>Model Version</i>.0.0</code> is used.
    #   </p>
    #   @return [String]
    # @!attribute component_description
    #   <p>
    #      A description for the AWS IoT Greengrass component.
    #   </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #      A set of tags (key-value pairs) that you want to attach to the AWS IoT Greengrass component.
    #   </p>
    #   @return [Array<Types::Tag>]
    class GreengrassConfiguration < Struct.new(
      :compiler_options,
      :target_device,
      :target_platform,
      :s3_output_location,
      :component_name,
      :component_version,
      :component_description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the AWS IoT Greengrass component created by a model packaging job.
    # 
    # </p>
    # @!attribute component_version_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the component.
    #   </p>
    #   @return [String]
    # @!attribute component_name
    #   <p>
    #   The name of the component.
    #   </p>
    #   @return [String]
    # @!attribute component_version
    #   <p>
    #   The version of the component.
    #   </p>
    #   @return [String]
    class GreengrassOutputDetails < Struct.new(
      :component_version_arn,
      :component_name,
      :component_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The source for an image.</p>
    # @!attribute type
    #   <p>The type of the image.</p>
    #   @return [String]
    class ImageSource < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon S3 Location information for an input manifest file. </p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that contains the manifest.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name and location of the manifest file withiin the bucket.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the bucket.</p>
    #   @return [String]
    class InputS3Object < Struct.new(
      :bucket,
      :key,
      :version_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Lookout for Vision experienced a service issue. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The period of time, in seconds, before the operation can be retried.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to list.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of the dataset that you want to list.  Specify <code>train</code> to list 
    #            the training dataset. Specify <code>test</code> to list the test dataset. If you have a single dataset
    #         project, specify <code>train</code>.</p>
    #   @return [String]
    # @!attribute labeled
    #   <p>Specify <code>true</code> to include labeled entries, otherwise specify <code>false</code>. If you
    #         don't specify a value, Lookout for Vision returns all entries.</p>
    #   @return [Boolean]
    # @!attribute anomaly_class
    #   <p>Specify <code>normal</code> to include only normal images. Specify <code>anomaly</code> to only include
    #            anomalous entries. If you don't specify a value, Amazon Lookout for Vision returns normal and anomalous images.</p>
    #   @return [String]
    # @!attribute before_creation_date
    #   <p>Only includes entries before the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    #   @return [Time]
    # @!attribute after_creation_date
    #   <p>Only includes entries after the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of dataset entries.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #   @return [Integer]
    # @!attribute source_ref_contains
    #   <p>Perform a "contains" search on the  values of the <code>source-ref</code> key within the dataset. 
    #            For example a value of "IMG_17"  returns all JSON Lines where the <code>source-ref</code> key value matches <i>*IMG_17*</i>.</p>
    #   @return [String]
    class ListDatasetEntriesRequest < Struct.new(
      :project_name,
      :dataset_type,
      :labeled,
      :anomaly_class,
      :before_creation_date,
      :after_creation_date,
      :next_token,
      :max_results,
      :source_ref_contains,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_entries
    #   <p>A list of the entries (JSON Lines) within the dataset.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Lookout for Vision returns this token
    #            that you can use in the subsequent request to retrieve the next set ofdataset entries.</p>
    #   @return [String]
    class ListDatasetEntriesResponse < Struct.new(
      :dataset_entries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>
    #   The name of the project for which you want to list the model packaging jobs.
    #   </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination 
    #         token to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #   @return [Integer]
    class ListModelPackagingJobsRequest < Struct.new(
      :project_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_packaging_jobs
    #   <p>
    #   A list of the model packaging jobs created for the specified Amazon Lookout for Vision project.
    #   </p>
    #   @return [Array<Types::ModelPackagingJobMetadata>]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #      results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination 
    #      token to retrieve the next set of results.
    #   </p>
    #   @return [String]
    class ListModelPackagingJobsResponse < Struct.new(
      :model_packaging_jobs,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model versions that you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of models.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #   @return [Integer]
    class ListModelsRequest < Struct.new(
      :project_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute models
    #   <p>A list of model versions in the specified project. </p>
    #   @return [Array<Types::ModelMetadata>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Lookout for Vision returns this token
    #            that you can use in the subsequent request to retrieve the next set of models. </p>
    #   @return [String]
    class ListModelsResponse < Struct.new(
      :models,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of projects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #   @return [Integer]
    class ListProjectsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute projects
    #   <p>A list of projects in your AWS account.</p>
    #   @return [Array<Types::ProjectMetadata>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Lookout for Vision returns this token
    #            that you can use in the subsequent request to retrieve the next set of projects.</p>
    #   @return [String]
    class ListProjectsResponse < Struct.new(
      :projects,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model for which you want to list tags. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of tag keys and values attached to the specified model.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Lookout for Vision model.</p>
    # @!attribute model_version
    #   <p>The version of the model</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the model was created. </p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the model.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for the model.</p>
    #   @return [String]
    # @!attribute performance
    #   <p>Performance metrics for the model. Created during training.</p>
    #   @return [Types::ModelPerformance]
    # @!attribute output_config
    #   <p>The S3 location where Amazon Lookout for Vision saves model training files.</p>
    #   @return [Types::OutputConfig]
    # @!attribute evaluation_manifest
    #   <p>The S3 location where Amazon Lookout for Vision saves the manifest file
    #            that was used to test the trained model and generate the performance scores.</p>
    #   @return [Types::OutputS3Object]
    # @!attribute evaluation_result
    #   <p>The S3 location where Amazon Lookout for Vision saves the performance metrics.</p>
    #   @return [Types::OutputS3Object]
    # @!attribute evaluation_end_timestamp
    #   <p>The unix timestamp for the date and time that the evaluation ended. </p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>The identifer for the AWS Key Management Service (AWS KMS) key that was used to encrypt the model
    #            during training.</p>
    #   @return [String]
    # @!attribute min_inference_units
    #   <p>The minimum number of inference units used by the model. For more information,
    #            see <a>StartModel</a>
    #            </p>
    #   @return [Integer]
    # @!attribute max_inference_units
    #   <p>The maximum number of inference units Amazon Lookout for Vision uses to auto-scale the model.
    #            For more information, see <a>StartModel</a>.</p>
    #   @return [Integer]
    class ModelDescription < Struct.new(
      :model_version,
      :model_arn,
      :creation_timestamp,
      :description,
      :status,
      :status_message,
      :performance,
      :output_config,
      :evaluation_manifest,
      :evaluation_result,
      :evaluation_end_timestamp,
      :kms_key_id,
      :min_inference_units,
      :max_inference_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelHostingStatus
      STARTING_HOSTING = 'STARTING_HOSTING'
      HOSTED = 'HOSTED'
      HOSTING_FAILED = 'HOSTING_FAILED'
      STOPPING_HOSTING = 'STOPPING_HOSTING'
      SYSTEM_UPDATING = 'SYSTEM_UPDATING'
    end

    # <p>Describes an Amazon Lookout for Vision model.</p>
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the model was created. </p>
    #   @return [Time]
    # @!attribute model_version
    #   <p>The version of the model.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the model.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for the model.</p>
    #   @return [String]
    # @!attribute performance
    #   <p>Performance metrics for the model. Not available until training has successfully completed.</p>
    #   @return [Types::ModelPerformance]
    class ModelMetadata < Struct.new(
      :creation_timestamp,
      :model_version,
      :model_arn,
      :description,
      :status,
      :status_message,
      :performance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # Configuration information for a Amazon Lookout for Vision model packaging job. For more information,
    # see <a>StartModelPackagingJob</a>.
    # </p>
    # @!attribute greengrass
    #   <p>
    #   Configuration information for the AWS IoT Greengrass component in a model packaging job.
    #   </p>
    #   @return [Types::GreengrassConfiguration]
    class ModelPackagingConfiguration < Struct.new(
      :greengrass,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # Information about a model packaging job. For more information, see 
    # <a>DescribeModelPackagingJob</a>.
    # </p>
    # @!attribute job_name
    #   <p>
    #   The name of the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project that's associated with a model that's in the model package.
    #   
    #   </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used in the model packaging job.
    #   
    #   </p>
    #   @return [String]
    # @!attribute model_packaging_configuration
    #   <p>
    #   The configuration information used in the model packaging job.
    #   </p>
    #   @return [Types::ModelPackagingConfiguration]
    # @!attribute model_packaging_job_description
    #   <p>The description for the model packaging job.
    #   
    #   </p>
    #   @return [String]
    # @!attribute model_packaging_method
    #   <p>The AWS service used to package the job. Currently Lookout for Vision can package
    #   jobs with AWS IoT Greengrass.
    #   </p>
    #   @return [String]
    # @!attribute model_packaging_output_details
    #   <p>Information about the output of the model packaging job. For more information,
    #      see <a>DescribeModelPackagingJob</a>.
    #   </p>
    #   @return [Types::ModelPackagingOutputDetails]
    # @!attribute status
    #   <p>
    #   The status of the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>
    #   The status message for the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>
    #      The Unix timestamp for the time and date that the model packaging job was created.
    #   </p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>
    #      The Unix timestamp for the time and date that the model packaging job was last updated.
    #   </p>
    #   @return [Time]
    class ModelPackagingDescription < Struct.new(
      :job_name,
      :project_name,
      :model_version,
      :model_packaging_configuration,
      :model_packaging_job_description,
      :model_packaging_method,
      :model_packaging_output_details,
      :status,
      :status_message,
      :creation_timestamp,
      :last_updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #    Metadata for a model packaging job. For more information, see <a>ListModelPackagingJobs</a>.
    # </p>
    # @!attribute job_name
    #   <p>
    #   The name of the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute project_name
    #   <p>
    #   The project that contains the model that is in the model package.
    #   </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>
    #   The version of the model that is in the model package.
    #   </p>
    #   @return [String]
    # @!attribute model_packaging_job_description
    #   <p>
    #   The description for the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute model_packaging_method
    #   <p>
    #   The AWS service used to package the job. Currently Lookout for Vision can package
    #         jobs with AWS IoT Greengrass.
    #   </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message for the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the time and date that the model packaging job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The Unix timestamp for the time and date that the model packaging job was last updated.</p>
    #   @return [Time]
    class ModelPackagingJobMetadata < Struct.new(
      :job_name,
      :project_name,
      :model_version,
      :model_packaging_job_description,
      :model_packaging_method,
      :status,
      :status_message,
      :creation_timestamp,
      :last_updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelPackagingJobStatus
      CREATED = 'CREATED'
      RUNNING = 'RUNNING'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
    end

    # <p>
    # Information about the output from a model packaging job.
    # </p>
    # @!attribute greengrass
    #   <p>
    #   Information about the AWS IoT Greengrass component in a model packaging job.
    #   </p>
    #   @return [Types::GreengrassOutputDetails]
    class ModelPackagingOutputDetails < Struct.new(
      :greengrass,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the evaluation performance of a trained model. </p>
    # @!attribute f1_score
    #   <p>The overall F1 score metric for the trained model.</p>
    #   @return [Float]
    # @!attribute recall
    #   <p>The overall recall metric value for the trained model. </p>
    #   @return [Float]
    # @!attribute precision
    #   <p>The overall precision metric value for the trained model.</p>
    #   @return [Float]
    class ModelPerformance < Struct.new(
      :f1_score,
      :recall,
      :precision,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelStatus
      TRAINING = 'TRAINING'
      TRAINED = 'TRAINED'
      TRAINING_FAILED = 'TRAINING_FAILED'
      STARTING_HOSTING = 'STARTING_HOSTING'
      HOSTED = 'HOSTED'
      HOSTING_FAILED = 'HOSTING_FAILED'
      STOPPING_HOSTING = 'STOPPING_HOSTING'
      SYSTEM_UPDATING = 'SYSTEM_UPDATING'
      DELETING = 'DELETING'
    end

    # <p>The S3 location where Amazon Lookout for Vision saves model training files.</p>
    # @!attribute s3_location
    #   <p>The S3 location for the output.</p>
    #   @return [Types::S3Location]
    class OutputConfig < Struct.new(
      :s3_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The S3 location where Amazon Lookout for Vision saves training output.</p>
    # @!attribute bucket
    #   <p>The bucket that contains the training output.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The location of the training output in the bucket.</p>
    #   @return [String]
    class OutputS3Object < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the pixels in an anomaly mask. For more information, see <a>Anomaly</a>.
    #       <code>PixelAnomaly</code> is only returned by image segmentation models.</p>
    # @!attribute total_percentage_area
    #   <p>The percentage area of the image that the anomaly type covers.</p>
    #   @return [Float]
    # @!attribute color
    #   <p>A hex color value for the mask that covers an anomaly type. Each anomaly type has
    #            a different mask color. The color maps to the color of the anomaly type used in the
    #            training dataset. </p>
    #   @return [String]
    class PixelAnomaly < Struct.new(
      :total_percentage_area,
      :color,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describe an Amazon Lookout for Vision project. For more information, see <a>DescribeProject</a>.</p>
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the project was created. </p>
    #   @return [Time]
    # @!attribute datasets
    #   <p>A list of datasets in the project.</p>
    #   @return [Array<Types::DatasetMetadata>]
    class ProjectDescription < Struct.new(
      :project_arn,
      :project_name,
      :creation_timestamp,
      :datasets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata about an Amazon Lookout for Vision project.</p>
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the project was created. </p>
    #   @return [Time]
    class ProjectMetadata < Struct.new(
      :project_arn,
      :project_name,
      :creation_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceType
      PROJECT = 'PROJECT'
      DATASET = 'DATASET'
      MODEL = 'MODEL'
      TRIAL = 'TRIAL'
      MODEL_PACKAGE_JOB = 'MODEL_PACKAGE_JOB'
    end

    # <p>Information about the location of training output or the output of a model packaging job.</p>
    # @!attribute bucket
    #   <p>The S3 bucket that contains the training or model packaging job output. If you are training a model,
    #            the bucket must in your AWS account. If you use an S3 bucket for a model packaging job,
    #         the S3 bucket must be in the same AWS Region and AWS account in which you use AWS IoT Greengrass.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The path of the folder, within the S3 bucket, that contains the output.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A service quota was exceeded the allowed limit. For more information, see
    #         Limits in Amazon Lookout for Vision in the Amazon Lookout for Vision Developer Guide. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>
    #   The name of the project which contains the version of the model that you want to package.
    #   </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>
    #   The version of the model within the project that you want to package.
    #   </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>A name for the model packaging job. If you don't supply a value, the service creates
    #      a job name for you.
    #   </p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration for the model packaging job.
    #   </p>
    #   @return [Types::ModelPackagingConfiguration]
    # @!attribute description
    #   <p>A description for the model packaging job.
    #   </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModelPackagingJob</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>StartModelPackagingJob</code>.
    #         In this case, safely retry your call
    #         to <code>StartModelPackagingJob</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #         This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #         provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #         value for <code>ClientToken</code> is considered a new call to <code>StartModelPackagingJob</code>. An idempotency
    #         token is active for 8 hours.
    #      </p>
    #   @return [String]
    class StartModelPackagingJobRequest < Struct.new(
      :project_name,
      :model_version,
      :job_name,
      :configuration,
      :description,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The job name for the model packaging job. If you don't supply a job name in the <code>JobName</code> input parameter,
    #      the service creates a job name for you.
    #   
    #   </p>
    #   @return [String]
    class StartModelPackagingJobResponse < Struct.new(
      :job_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model that you want to start.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model that you want to start.</p>
    #   @return [String]
    # @!attribute min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #            inference unit represents 1 hour of processing. 
    #            Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #            of inference units that you use.
    #         </p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue might prevent 
    #            you from getting a response from <code>StartModel</code>.
    #            In this case, safely retry your call
    #            to <code>StartModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple start requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>StartModel</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    #   @return [String]
    # @!attribute max_inference_units
    #   <p>The maximum number of inference units to use for auto-scaling the model. If you don't
    #            specify a value, Amazon Lookout for Vision doesn't auto-scale the model.</p>
    #   @return [Integer]
    class StartModelRequest < Struct.new(
      :project_name,
      :model_version,
      :min_inference_units,
      :client_token,
      :max_inference_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current running status of the model.</p>
    #   @return [String]
    class StartModelResponse < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model that you want to stop.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model that you want to stop.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StopModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue 
    #            might prevent you from getting a response from <code>StopModel</code>.
    #            In this case, safely retry your call
    #            to <code>StopModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple stop requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>StopModel</code>. An idempotency
    #            token is active for 8 hours.
    #            
    #           
    #         </p>
    #   @return [String]
    class StopModelRequest < Struct.new(
      :project_name,
      :model_version,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the model.</p>
    #   @return [String]
    class StopModelResponse < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A key and value pair that is attached to the specified Amazon Lookout for Vision model.</p>
    # @!attribute key
    #   <p>The key of the tag that is attached to the specified model.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag that is attached to the specified model.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model to assign the tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value tags to assign to the model.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetDevice
      JETSON_XAVIER = 'jetson_xavier'
    end

    # <p>The platform on which a model runs on an AWS IoT Greengrass core device.</p>
    # @!attribute os
    #   <p>The target operating system for the model. Linux is the only operating system
    #            that is currently supported.
    #         </p>
    #   @return [String]
    # @!attribute arch
    #   <p>The target architecture for the model. The currently supported architectures are
    #            X86_64 (64-bit version of the x86 instruction set) and ARM_64 (ARMv8 64-bit CPU).
    #         </p>
    #   @return [String]
    # @!attribute accelerator
    #   <p>The target accelerator for the model. Currently, Amazon Lookout for Vision only supports NVIDIA (Nvidia graphics processing unit) 
    #            and CPU accelerators. If you specify NVIDIA as an accelerator, you must also specify the <code>gpu-code</code>, <code>trt-ver</code>,
    #            and <code>cuda-ver</code> compiler options. If you don't specify an accelerator, Lookout for Vision uses the CPU for compilation and we highly recommend that you use the
    #            <a>GreengrassConfiguration$CompilerOptions</a> field. For example, you can use the following compiler options for CPU: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>mcpu</code>: CPU micro-architecture. For example, <code>{'mcpu': 'skylake-avx512'}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mattr</code>: CPU flags. For example, <code>{'mattr': ['+neon', '+vfpv4']}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class TargetPlatform < Struct.new(
      :os,
      :arch,
      :accelerator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetPlatformAccelerator
      NVIDIA = 'NVIDIA'
    end

    module TargetPlatformArch
      ARM64 = 'ARM64'
      X86_64 = 'X86_64'
    end

    module TargetPlatformOs
      LINUX = 'LINUX'
    end

    # <p>Amazon Lookout for Vision is temporarily unable to process the request. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code. </p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The period of time, in seconds, before the operation can be retried. </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model from which you want to remove tags. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to update.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The type of the dataset that you want to update. Specify <code>train</code> to update
    #         the training dataset. Specify <code>test</code> to update the test dataset. If you
    #          have a single dataset project, specify <code>train</code>.</p>
    #   @return [String]
    # @!attribute changes
    #   <p>The entries to add to the dataset.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>UpdateDatasetEntries</code>
    #            completes only once.  You choose the value to pass. For example, An issue 
    #            might prevent you from getting a response from <code>UpdateDatasetEntries</code>.
    #            In this case, safely retry your call
    #            to <code>UpdateDatasetEntries</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple updates with the same dataset entries. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs
    #            if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>UpdateDatasetEntries</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    #   @return [String]
    class UpdateDatasetEntriesRequest < Struct.new(
      :project_name,
      :dataset_type,
      :changes,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the dataset update.</p>
    #   @return [String]
    class UpdateDatasetEntriesResponse < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An input validation error occured. For example, invalid characters in a project name,
    #       or if a pagination token is invalid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
