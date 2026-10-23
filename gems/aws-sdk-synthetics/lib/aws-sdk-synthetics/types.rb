# frozen_string_literal: true

# This is generated code!

module Aws::Synthetics
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permission to perform this operation on this resource.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration for canary artifacts, including the 
    #          encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    # @!attribute s3_encryption
    #   <p>A structure that contains the configuration of the encryption-at-rest settings for artifacts that the canary uploads
    #            to Amazon S3. 
    #            Artifact encryption functionality is available only for canaries that use Synthetics runtime version 
    #            syn-nodejs-puppeteer-3.3 or later. For more information, see
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html">Encrypting canary artifacts</a>
    #            </p>
    #   @return [Types::S3EncryptionConfig]
    class ArtifactConfigInput < Struct.new(
      nil,
      :s3_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration for canary artifacts, including 
    #          the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    # @!attribute s3_encryption
    #   <p>A structure that contains the configuration of encryption settings for canary artifacts that are stored in Amazon S3. </p>
    #   @return [Types::S3EncryptionConfig]
    class ArtifactConfigOutput < Struct.new(
      nil,
      :s3_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_identifier
    #   <p>Specifies the group. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the canary that you want to associate with the specified group.</p>
    #   @return [String]
    class AssociateResourceRequest < Struct.new(
      nil,
      :group_identifier,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was not valid.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure representing a screenshot that is used as a baseline during visual monitoring comparisons made by the canary.</p>
    # @!attribute screenshot_name
    #   <p>The name of the screenshot. This is generated the first time the canary is run after the <code>UpdateCanary</code> operation that
    #         specified for this canary to perform visual monitoring.</p>
    #   @return [String]
    # @!attribute ignore_coordinates
    #   <p>Coordinates that define the part of a screen to ignore during screenshot comparisons. To obtain the 
    #            coordinates to use here, use the 
    #            CloudWatch console to draw the boundaries on the screen. For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/synthetics_canaries_deletion.html">
    #               Editing or deleting a canary</a>
    #            </p>
    #   @return [Array<String>]
    class BaseScreenshot < Struct.new(
      nil,
      :screenshot_name,
      :ignore_coordinates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that specifies the browser type to use for a canary run.</p>
    # @!attribute browser_type
    #   <p>The browser type associated with this browser configuration.</p>
    #   @return [String]
    class BrowserConfig < Struct.new(
      nil,
      :browser_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains all information about one canary in your account.</p>
    # @!attribute id
    #   <p>The unique ID of this canary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the canary.</p>
    #   @return [String]
    # @!attribute code
    #   <p>This structure contains information about the canary's Lambda handler and 
    #         where its code is stored by CloudWatch Synthetics.</p>
    #   @return [Types::CanaryCodeOutput]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role used to run the canary. This role must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A structure that contains information about how often the canary is to run, and when
    #            these runs are to stop.</p>
    #   @return [Types::CanaryScheduleOutput]
    # @!attribute run_config
    #   <p>A structure that contains information about a canary run.</p>
    #   @return [Types::CanaryRunConfigOutput]
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute status
    #   <p>A structure that contains information about the canary's status.</p>
    #   @return [Types::CanaryStatus]
    # @!attribute timeline
    #   <p>A structure that contains information about when the canary was created, modified, and
    #            most recently run.</p>
    #   @return [Types::CanaryTimeline]
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the runs of this
    #            canary. Artifacts include the log file, screenshots, and HAR files.</p>
    #   @return [String]
    # @!attribute engine_arn
    #   <p>The ARN of the Lambda function that is used as your canary's engine. For more information 
    #            about Lambda ARN format, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-api-permissions-ref.html">Resources and Conditions for Lambda Actions</a>.</p>
    #   @return [String]
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary. For more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnets and security groups of the VPC endpoint. 
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    #   @return [Types::VpcConfigOutput]
    # @!attribute visual_reference
    #   <p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run to use as the baseline for screenshots, and the coordinates
    #         of any parts of the screen to ignore during the visual monitoring comparison.</p>
    #   @return [Types::VisualReferenceOutput]
    # @!attribute provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #            when the canary is deleted. If it is <code>AUTOMATIC</code>, the Lambda functions and layers will be deleted
    #            when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    #   @return [String]
    # @!attribute browser_configs
    #   <p>A structure that specifies the browser type to use for a canary run. CloudWatch Synthetics supports running canaries on both <code>CHROME</code> and <code>FIREFOX</code> browsers.</p>
    #            <note>
    #               <p>If not specified, <code>browserConfigs</code> defaults to Chrome.</p>
    #            </note>
    #   @return [Array<Types::BrowserConfig>]
    # @!attribute engine_configs
    #   <p>A list of engine configurations for the canary, one for each browser type that the canary is configured to run on.</p>
    #            <p>All runtime versions <code>syn-nodejs-puppeteer-11.0</code> and above, and <code>syn-nodejs-playwright-3.0</code> and above, use <code>engineConfigs</code> only. 
    #            You can no longer use <code>engineArn</code> in these versions.</p>
    #            <p>Runtime versions older than <code>syn-nodejs-puppeteer-11.0</code> and <code>syn-nodejs-playwright-3.0</code> continue to support <code>engineArn</code> to ensure backward compatibility.</p>
    #   @return [Array<Types::EngineConfig>]
    # @!attribute visual_references
    #   <p>A list of visual reference configurations for the canary, one for each browser type that the canary is configured to run on. Visual references are used for visual monitoring comparisons.</p>
    #            <p>
    #               <code>syn-nodejs-puppeteer-11.0</code> and above, and <code>syn-nodejs-playwright-3.0</code> and above, only supports <code>visualReferences</code>. <code>visualReference</code> field is not supported.</p>
    #            <p>Versions older than <code>syn-nodejs-puppeteer-11.0</code> supports both <code>visualReference</code> and <code>visualReferences</code> for backward compatibility. It is recommended to use <code>visualReferences</code>
    #            for consistency and future compatibility.</p>
    #   @return [Array<Types::VisualReferenceOutput>]
    # @!attribute tags
    #   <p>The list of key-value pairs that are associated with the canary.</p>
    #   @return [Hash<String, String>]
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including 
    #            the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #   @return [Types::ArtifactConfigOutput]
    # @!attribute dry_run_config
    #   <p>Returns the dry run configurations for a canary.</p>
    #   @return [Types::DryRunConfigOutput]
    class Canary < Struct.new(
      nil,
      :id,
      :name,
      :code,
      :execution_role_arn,
      :schedule,
      :run_config,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :status,
      :timeline,
      :artifact_s3_location,
      :engine_arn,
      :runtime_version,
      :vpc_config,
      :visual_reference,
      :provisioned_resource_cleanup,
      :browser_configs,
      :engine_configs,
      :visual_references,
      :tags,
      :artifact_config,
      :dry_run_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to input your script code for the canary. This structure contains the
    #          Lambda handler with the location where the canary should start running the script. If the
    #          script is stored in an Amazon S3 bucket, the bucket name, key, and version are also included. If
    #          the script was passed into the canary directly, the script code is contained in the value
    #          of <code>Zipfile</code>. </p>
    #          <p>If you are uploading your canary scripts with an Amazon S3 bucket, your zip file should include your 
    #       script in a certain folder structure.</p>
    #          <ul>
    #             <li>
    #                <p>For Node.js canaries, the folder structure must be <code>nodejs/node_modules/<i>myCanaryFilename.js</i>
    #                   </code>
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_WritingCanary_Nodejs.html#CloudWatch_Synthetics_Canaries_package">Packaging your Node.js canary files</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>For Python canaries, the folder structure must be <code>python/<i>myCanaryFilename.py</i>
    #                   </code> or <code>python/<i>myFolder/myCanaryFilename.py</i>
    #                   </code>
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_WritingCanary_Python.html#CloudWatch_Synthetics_Canaries_WritingCanary_Python_package">Packaging your Python canary files</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute s3_bucket
    #   <p>If your canary script is located in Amazon S3, specify the bucket name here. Do not include <code>s3://</code> as the 
    #            start of the bucket name.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 key of your script. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingObjects.html">Working with Amazon S3 Objects</a>.</p>
    #   @return [String]
    # @!attribute s3_version
    #   <p>The Amazon S3 version ID of your script.</p>
    #   @return [String]
    # @!attribute zip_file
    #   <p>If you input your canary script directly into the canary instead of referring to an Amazon S3
    #            location, the value of this parameter is the base64-encoded contents of the .zip file that 
    #            contains the script. It must be smaller than 225 Kb.</p>
    #            <p>For large canary scripts, we recommend that you use an Amazon S3 location instead of inputting it 
    #         directly with this parameter.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The entry point to use for the source code when running the canary. For canaries that use the 
    #            <code>syn-python-selenium-1.0</code> runtime
    #            or a <code>syn-nodejs.puppeteer</code> runtime earlier than <code>syn-nodejs.puppeteer-3.4</code>, 
    #            the handler must be specified as <code>
    #                  <i>fileName</i>.handler</code>. For 
    #            <code>syn-python-selenium-1.1</code>, <code>syn-nodejs.puppeteer-3.4</code>, and later runtimes, the handler can be specified as 
    #               <code>
    #                  <i>fileName</i>.<i>functionName</i>
    #               </code>, or
    #               you can specify a folder where canary scripts reside as 
    #   <code>
    #                  <i>folder</i>/<i>fileName</i>.<i>functionName</i>
    #               </code>.</p>
    #            <p>This field is required when you don't specify <code>BlueprintTypes</code> and is not allowed when you specify <code>BlueprintTypes</code>.</p>
    #   @return [String]
    # @!attribute blueprint_types
    #   <p>
    #               <code>BlueprintTypes</code> is a list of templates that enable simplified canary creation. You can create canaries for common monitoring scenarios by providing only a JSON configuration file instead of writing custom scripts. The only supported value is <code>multi-checks</code>.</p>
    #            <p>Multi-checks monitors HTTP/DNS/SSL/TCP endpoints with built-in authentication schemes (Basic, API Key, OAuth, SigV4) and assertion capabilities. When you specify <code>BlueprintTypes</code>, the Handler field cannot be specified since the blueprint provides a pre-defined entry point.</p>
    #            <p>
    #               <code>BlueprintTypes</code> is supported only on canaries for syn-nodejs-3.0 runtime or later.</p>
    #   @return [Array<String>]
    # @!attribute dependencies
    #   <p>A list of dependencies that should be used for running this canary. Specify the dependencies as a key-value pair, where the key is the type of dependency and the value is the dependency reference.</p>
    #   @return [Array<Types::Dependency>]
    class CanaryCodeInput < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      :s3_version,
      :zip_file,
      :handler,
      :blueprint_types,
      :dependencies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:handler] = '' unless options.key?(:handler)
        super
      end
    end

    # <p>This structure contains information about the canary's Lambda handler and 
    #       where its code is stored by CloudWatch Synthetics.</p>
    # @!attribute source_location_arn
    #   <p>The ARN of the Lambda layer where Synthetics stores the canary script code.</p>
    #   @return [String]
    # @!attribute handler
    #   <p>The entry point to use for the source code when running the canary.</p>
    #            <p>This field is required when you don't specify <code>BlueprintTypes</code> and is not allowed when you specify <code>BlueprintTypes</code>.</p>
    #   @return [String]
    # @!attribute blueprint_types
    #   <p>
    #               <code>BlueprintTypes</code> is a list of templates that enable simplified canary creation. You can create canaries for common monitoring scenarios by providing only a JSON configuration file instead of writing custom scripts. The only supported value is <code>multi-checks</code>.</p>
    #            <p>Multi-checks monitors HTTP/DNS/SSL/TCP endpoints with built-in authentication schemes (Basic, API Key, OAuth, SigV4) and assertion capabilities. When you specify <code>BlueprintTypes</code>, the Handler field cannot be specified since the blueprint provides a pre-defined entry point.</p>
    #            <p>
    #               <code>BlueprintTypes</code> is supported only on canaries for syn-nodejs-3.0 runtime or later.</p>
    #   @return [Array<String>]
    # @!attribute dependencies
    #   <p>A list of dependencies that are used for running this canary. The dependencies are specified as a key-value pair, where the key is the type of dependency and the value is the dependency reference.</p>
    #   @return [Array<Types::Dependency>]
    class CanaryCodeOutput < Struct.new(
      nil,
      :source_location_arn,
      :handler,
      :blueprint_types,
      :dependencies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the dry run configurations set for a canary.</p>
    # @!attribute dry_run_id
    #   <p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>
    #   @return [String]
    class CanaryDryRunConfigOutput < Struct.new(
      nil,
      :dry_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the most recent run of a single canary.</p>
    # @!attribute canary_name
    #   <p>The name of the canary.</p>
    #   @return [String]
    # @!attribute last_run
    #   <p>The results from this canary's most recent run.</p>
    #   @return [Types::CanaryRun]
    class CanaryLastRun < Struct.new(
      nil,
      :canary_name,
      :last_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the details about one run of one canary.</p>
    # @!attribute id
    #   <p>A unique ID that identifies this canary run.</p>
    #   @return [String]
    # @!attribute scheduled_run_id
    #   <p>The ID of the scheduled canary run.</p>
    #   @return [String]
    # @!attribute retry_attempt
    #   <p>The count in number of the retry attempt.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the canary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this run.</p>
    #   @return [Types::CanaryRunStatus]
    # @!attribute timeline
    #   <p>A structure that contains the start and end times of this run.</p>
    #   @return [Types::CanaryRunTimeline]
    # @!attribute artifact_s3_location
    #   <p>The location where the canary stored artifacts from the run. Artifacts include 
    #            the log file, screenshots, and HAR files.</p>
    #   @return [String]
    # @!attribute dry_run_config
    #   <p>Returns the dry run configurations for a canary.</p>
    #   @return [Types::CanaryDryRunConfigOutput]
    # @!attribute browser_type
    #   <p>The browser type associated with this canary run.</p>
    #   @return [String]
    class CanaryRun < Struct.new(
      nil,
      :id,
      :scheduled_run_id,
      :retry_attempt,
      :name,
      :status,
      :timeline,
      :artifact_s3_location,
      :dry_run_config,
      :browser_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains input information for a canary run.</p>
    # @!attribute timeout_in_seconds
    #   <p>How long the canary is allowed to run before it must stop. You can't set this time to be longer
    #            than the frequency of the runs of this canary.</p>
    #            <p>If you omit this field, the
    #            frequency of the canary is used as this value, up to a maximum of 14 minutes.</p>
    #   @return [Integer]
    # @!attribute memory_in_mb
    #   <p>The maximum amount of memory available to the canary while it is running, in MB. This value must be a multiple of 64.</p>
    #   @return [Integer]
    # @!attribute active_tracing
    #   <p>Specifies whether this canary is to use active X-Ray tracing when it runs. Active tracing 
    #            enables
    #            this canary run to be displayed in the ServiceLens and X-Ray service maps even if the canary does 
    #            not hit an endpoint that has X-Ray tracing enabled. Using X-Ray tracing incurs charges.
    #         For more information, see  <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_tracing.html">
    #            Canaries and X-Ray tracing</a>.</p>
    #            <p>You can enable active tracing only for canaries that use version <code>syn-nodejs-2.0</code> 
    #         or later for their canary runtime.</p>
    #   @return [Boolean]
    # @!attribute environment_variables
    #   <p>Specifies the keys and values to use for any environment variables
    #         used in the canary script. Use the following format:</p>
    #            <p>{ "key1" : "value1", "key2" : "value2", ...}</p>
    #            <p>Keys must start with a letter and be at least two characters. The total size
    #            of your environment variables cannot exceed 4 KB. You can't specify any Lambda
    #            reserved environment variables as the keys for your environment variables. For 
    #            more information about reserved keys, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-runtime">
    #               Runtime environment variables</a>.</p>
    #            <important>
    #               <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables 
    #            are not encrypted on the client side. Do not store sensitive information
    #            in them.</p>
    #            </important>
    #   @return [Hash<String, String>]
    # @!attribute ephemeral_storage
    #   <p>Specifies the amount of ephemeral storage (in MB) to allocate for the canary run during execution. This temporary storage is used for storing canary run artifacts (which are uploaded to an Amazon S3 bucket at the end of the run), and any canary browser operations. This temporary storage is cleared after the run is completed. Default storage value is 1024 MB.</p>
    #   @return [Integer]
    class CanaryRunConfigInput < Struct.new(
      nil,
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing,
      :environment_variables,
      :ephemeral_storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a canary run.</p>
    # @!attribute timeout_in_seconds
    #   <p>How long the canary is allowed to run before it must stop.</p>
    #   @return [Integer]
    # @!attribute memory_in_mb
    #   <p>The maximum amount of memory available to the canary while it is running, in MB. This value
    #            must be a multiple of 64.</p>
    #   @return [Integer]
    # @!attribute active_tracing
    #   <p>Displays whether this canary run used active X-Ray tracing. </p>
    #   @return [Boolean]
    # @!attribute ephemeral_storage
    #   <p>Specifies the amount of ephemeral storage (in MB) to allocate for the canary run during execution. This temporary storage is used for storing canary run artifacts (which are uploaded to an Amazon S3 bucket at the end of the run), and any canary browser operations. This temporary storage is cleared after the run is completed. Default storage value is 1024 MB.</p>
    #   @return [Integer]
    class CanaryRunConfigOutput < Struct.new(
      nil,
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing,
      :ephemeral_storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the status information about a canary run.</p>
    # @!attribute state
    #   <p>The current state of the run.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>If run of the canary failed, this field contains the reason for the error.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>If this value is <code>CANARY_FAILURE</code>, either the canary script failed or Synthetics ran into a fatal error when running the canary. For example,  a canary timeout misconfiguration setting can cause the canary to timeout before Synthetics can evaluate its status.
    #           </p>
    #            <p> If this value is <code>EXECUTION_FAILURE</code>, a non-critical failure occurred such as failing to save generated debug artifacts (for example, screenshots or har files).</p>
    #            <p>If both types of failures occurred, the <code>CANARY_FAILURE</code> takes precedence. To understand the exact error, use the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRunStatus.html">StateReason</a> API.</p>
    #   @return [String]
    # @!attribute test_result
    #   <p>Specifies the status of canary script for this run. When Synthetics tries to determine the status but fails, the result is marked as <code>UNKNOWN</code>.
    #            For the overall status of canary run, see <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRunStatus.html">State</a>.</p>
    #   @return [String]
    class CanaryRunStatus < Struct.new(
      nil,
      :state,
      :state_reason,
      :state_reason_code,
      :test_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the start and end times of a single canary run.</p>
    # @!attribute started
    #   <p>The start time of the run.</p>
    #   @return [Time]
    # @!attribute completed
    #   <p>The end time of the run.</p>
    #   @return [Time]
    # @!attribute metric_timestamp_for_run_and_retries
    #   <p>The time at which the metrics will be generated for this run or retries.</p>
    #   @return [Time]
    class CanaryRunTimeline < Struct.new(
      nil,
      :started,
      :completed,
      :metric_timestamp_for_run_and_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure specifies how often a canary is to make runs and the date and time
    #          when it should stop making runs.</p>
    # @!attribute expression
    #   <p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>
    #            <p>For a rate expression, The syntax is
    #                  <code>rate(<i>number unit</i>)</code>. <i>unit</i>
    #            can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
    #            <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every 
    #         10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can
    #            specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>
    #            <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value 
    #            that causes the 
    #            canary to run only once when it is started.</p>
    #            <p>Use <code>cron(<i>expression</i>)</code> to specify a cron 
    #            expression. You can't schedule a canary to wait for more than a year before running. For information about the syntax for cron expressions, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html">
    #               Scheduling canary runs using cron</a>.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, for the canary to continue making regular runs according to
    #            the schedule in the <code>Expression</code> value. If you specify 0, the canary continues
    #            making runs until you stop it. If you omit this field, the default of 0 is used.</p>
    #   @return [Integer]
    # @!attribute retry_config
    #   <p>A structure that contains the retry configuration for a canary</p>
    #   @return [Types::RetryConfigInput]
    class CanaryScheduleInput < Struct.new(
      nil,
      :expression,
      :duration_in_seconds,
      :retry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>How long, in seconds, for the canary to continue making regular runs according to the schedule in the 
    #          <code>Expression</code> value.</p>
    # @!attribute expression
    #   <p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>
    #            <p>For a rate expression, The syntax is
    #            <code>rate(<i>number unit</i>)</code>. <i>unit</i>
    #            can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
    #            <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every 
    #            10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can
    #            specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>
    #            <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value 
    #            that causes the 
    #            canary to run only once when it is started.</p>
    #            <p>Use <code>cron(<i>expression</i>)</code> to specify a cron 
    #            expression. For information about the syntax for cron expressions, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html">
    #               Scheduling canary runs using cron</a>.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, for the canary to continue making regular runs after it 
    #            was created. The runs are performed according to the schedule in the 
    #            <code>Expression</code> value.</p>
    #   @return [Integer]
    # @!attribute retry_config
    #   <p>A structure that contains the retry configuration for a canary</p>
    #   @return [Types::RetryConfigOutput]
    class CanaryScheduleOutput < Struct.new(
      nil,
      :expression,
      :duration_in_seconds,
      :retry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the current state of the canary.</p>
    # @!attribute state
    #   <p>The current state of the canary.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>If the canary creation or update failed, this field provides details on the failure.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>If the canary creation or update failed, this field displays the reason code.</p>
    #   @return [String]
    class CanaryStatus < Struct.new(
      nil,
      :state,
      :state_reason,
      :state_reason_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about when the canary was created and modified.</p>
    # @!attribute created
    #   <p>The date and time the canary was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date and time the canary was most recently modified.</p>
    #   @return [Time]
    # @!attribute last_started
    #   <p>The date and time that the canary's most recent run started.</p>
    #   @return [Time]
    # @!attribute last_stopped
    #   <p>The date and time that the canary's most recent run ended.</p>
    #   @return [Time]
    class CanaryTimeline < Struct.new(
      nil,
      :created,
      :last_modified,
      :last_started,
      :last_stopped,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conflicting operation is already in progress.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for this canary. Be sure to give it a descriptive name 
    #            that distinguishes it from other canaries in your account.</p>
    #            <p>Do not include secrets or proprietary information in your canary names. The canary name
    #            makes up part of the canary ARN, and the ARN is included in outbound calls over the
    #            internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
    #               Considerations for Synthetics Canaries</a>.</p>
    #   @return [String]
    # @!attribute code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in 
    #            an Amazon S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    #   @return [Types::CanaryCodeInput]
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
    #            canary. Artifacts include the log file, screenshots, and HAR files.  The name of the 
    #            Amazon S3 bucket can't include a period (.).</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:PutLogEvents</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute schedule
    #   <p>A structure that contains information about how often the canary is to run and when
    #            these test runs are to stop.</p>
    #   @return [Types::CanaryScheduleInput]
    # @!attribute run_config
    #   <p>A structure that contains the configuration for individual canary runs, 
    #            such as timeout value and environment variables.</p>
    #            <important>
    #               <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables 
    #            are not encrypted on the client side. Do not store sensitive information
    #            in them.</p>
    #            </important>
    #   @return [Types::CanaryRunConfigInput]
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary. For a list of valid
    #            runtime versions and more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #         information about the subnet and security groups of the VPC endpoint. 
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #            Running a Canary in a VPC</a>.</p>
    #   @return [Types::VpcConfigInput]
    # @!attribute resources_to_replicate_tags
    #   <p>To have the tags that you apply to this canary also be applied to the Lambda function that
    #            the canary uses, specify this parameter with the value <code>lambda-function</code>.</p>
    #            <p>If you specify this parameter and don't specify any tags in the <code>Tags</code>
    #            parameter, the canary creation fails.</p>
    #   @return [Array<String>]
    # @!attribute provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #         when the canary is deleted. If you omit this parameter, the default of <code>AUTOMATIC</code> is used, which means
    #            that the Lambda functions and layers will be deleted when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    #   @return [String]
    # @!attribute browser_configs
    #   <p>CloudWatch Synthetics now supports multibrowser canaries for <code>syn-nodejs-puppeteer-11.0</code> and <code>syn-nodejs-playwright-3.0</code> runtimes. This feature allows you to run your canaries on both 
    #            Firefox and Chrome browsers. To create a multibrowser canary, you need to specify the BrowserConfigs with a list of browsers you want to use.</p>
    #            <note>
    #               <p>If not specified, <code>browserConfigs</code> defaults to Chrome.</p>
    #            </note>
    #   @return [Array<Types::BrowserConfig>]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the canary. 
    #            You can associate as many as 50 tags with a canary.</p>
    #            <p>Tags can help you organize and categorize your
    #            resources. You can also use them to scope user permissions, by 
    #            granting a user permission to access or change only the resources that have
    #            certain tag values.</p>
    #            <p>To have the tags that you apply to this canary also be applied to the Lambda function that
    #            the canary uses, specify this parameter with the value <code>lambda-function</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including 
    #            the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #   @return [Types::ArtifactConfigInput]
    class CreateCanaryRequest < Struct.new(
      nil,
      :name,
      :code,
      :artifact_s3_location,
      :execution_role_arn,
      :schedule,
      :run_config,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :runtime_version,
      :vpc_config,
      :resources_to_replicate_tags,
      :provisioned_resource_cleanup,
      :browser_configs,
      :tags,
      :artifact_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute canary
    #   <p>The full details about the canary you have created.</p>
    #   @return [Types::Canary]
    class CreateCanaryResponse < Struct.new(
      nil,
      :canary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the group. It can include any Unicode characters.</p>
    #            <p>The names for all groups in your account, across all Regions, must be unique.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the group. 
    #            You can associate as many as 50 tags with a group.</p>
    #            <p>Tags can help you organize and categorize your
    #            resources. You can also use them to scope user permissions, by 
    #            granting a user permission to access or change only the resources that have
    #            certain tag values.</p>
    #   @return [Hash<String, String>]
    class CreateGroupRequest < Struct.new(
      nil,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>A structure that contains information about the group that was just created.</p>
    #   @return [Types::Group]
    class CreateGroupResponse < Struct.new(
      nil,
      :group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to delete. To find the names of your canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #   @return [String]
    # @!attribute delete_lambda
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary. The default
    #         is <code>false</code>.</p>
    #            <p>Your setting for this parameter is used only if the canary doesn't have <code>AUTOMATIC</code> for its 
    #          <code>ProvisionedResourceCleanup</code> field. If that field is set to <code>AUTOMATIC</code>, then the 
    #          Lambda functions and layers will be deleted when this canary is deleted. </p>
    #            <p>Type: Boolean</p>
    #   @return [Boolean]
    class DeleteCanaryRequest < Struct.new(
      nil,
      :name,
      :delete_lambda,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCanaryResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_identifier
    #   <p>Specifies which group to delete. You can specify the group name, the ARN, or the 
    #         group ID as the <code>GroupIdentifier</code>.</p>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      nil,
      :group_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a dependency for a canary.</p>
    # @!attribute type
    #   <p>The type of dependency. Valid value is <code>LambdaLayer</code>.</p>
    #   @return [String]
    # @!attribute reference
    #   <p>The dependency reference. For Lambda layers, this is the ARN of the Lambda layer. For more information 
    #            about Lambda ARN format, see <a href="https://docs.aws.amazon.com/lambda/latest/api/API_Layer.html">Lambda</a>.</p>
    #   @return [String]
    class Dependency < Struct.new(
      nil,
      :type,
      :reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeLastRun</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #   @return [Integer]
    # @!attribute names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of 
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an 
    #            IAM policy that restricts which canaries that you are allowed to view. For more information, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    #   @return [Array<String>]
    # @!attribute browser_type
    #   <p>The type of browser to use for the canary run.</p>
    #   @return [String]
    class DescribeCanariesLastRunRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :names,
      :browser_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute canaries_last_run
    #   <p>An array that contains the information from the most recent run of each
    #            canary.</p>
    #   @return [Array<Types::CanaryLastRun>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class DescribeCanariesLastRunResponse < Struct.new(
      nil,
      :canaries_last_run,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many canaries are returned each time you use
    #         the <code>DescribeCanaries</code> operation. If you omit this parameter, the default of 20 is used.</p>
    #   @return [Integer]
    # @!attribute names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of 
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use this parameter if you are logged on to a user or role that has an 
    #            IAM policy that restricts which canaries that you are allowed to view. For more information, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    #   @return [Array<String>]
    class DescribeCanariesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute canaries
    #   <p>Returns an array. Each item in the array contains the full information about
    #            one canary.</p>
    #   @return [Array<Types::Canary>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class DescribeCanariesResponse < Struct.new(
      nil,
      :canaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeRuntimeVersions</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #   @return [Integer]
    class DescribeRuntimeVersionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_versions
    #   <p>An array of objects that display the details about each Synthetics canary runtime
    #            version.</p>
    #   @return [Array<Types::RuntimeVersion>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class DescribeRuntimeVersionsResponse < Struct.new(
      nil,
      :runtime_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_identifier
    #   <p>Specifies the group. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the canary that you want to remove from the specified group.</p>
    #   @return [String]
    class DisassociateResourceRequest < Struct.new(
      nil,
      :group_identifier,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the dry run configurations set for a canary.</p>
    # @!attribute dry_run_id
    #   <p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>
    #   @return [String]
    # @!attribute last_dry_run_execution_status
    #   <p>Returns the last execution status for a canary's dry run.</p>
    #   @return [String]
    class DryRunConfigOutput < Struct.new(
      nil,
      :dry_run_id,
      :last_dry_run_execution_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure of engine configurations for the canary, one for each browser type that the canary is configured to run on.</p>
    # @!attribute engine_arn
    #   <p>Each engine configuration contains the ARN of the Lambda function that is used as the canary's engine for a specific browser type.
    #            </p>
    #   @return [String]
    # @!attribute browser_type
    #   <p>The browser type associated with this engine configuration.</p>
    #   @return [String]
    class EngineConfig < Struct.new(
      nil,
      :engine_arn,
      :browser_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want details for.</p>
    #   @return [String]
    # @!attribute dry_run_id
    #   <p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>
    #   @return [String]
    class GetCanaryRequest < Struct.new(
      nil,
      :name,
      :dry_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute canary
    #   <p>A structure that contains the full information about the canary.</p>
    #   @return [Types::Canary]
    class GetCanaryResponse < Struct.new(
      nil,
      :canary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to see runs for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>GetCanaryRuns</code> operation to retrieve the next 
    #            set of results.</p>
    #            <note>
    #               <p>When auto retry is enabled for the canary, the first subsequent retry is suffixed with *1 indicating its the first retry and the next subsequent try is suffixed with *2.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>GetCanaryRuns</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #   @return [Integer]
    # @!attribute dry_run_id
    #   <p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>
    #   @return [String]
    # @!attribute run_type
    #   <ul>
    #               <li>
    #                  <p>When you provide <code>RunType=CANARY_RUN</code> and <code>dryRunId</code>, you will get an exception
    #               
    #               
    #              </p>
    #               </li>
    #               <li>
    #                  <p>When a value is not provided for <code>RunType</code>, the default value is <code>CANARY_RUN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>When <code>CANARY_RUN</code> is provided, all canary runs excluding dry runs are returned</p>
    #               </li>
    #               <li>
    #                  <p>When <code>DRY_RUN</code> is provided, all dry runs excluding canary runs are returned</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetCanaryRunsRequest < Struct.new(
      nil,
      :name,
      :next_token,
      :max_results,
      :dry_run_id,
      :run_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute canary_runs
    #   <p>An array of structures. Each structure contains the details of one of the 
    #            retrieved canary runs.</p>
    #   @return [Array<Types::CanaryRun>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>GetCanaryRuns</code> 
    #            operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class GetCanaryRunsResponse < Struct.new(
      nil,
      :canary_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_identifier
    #   <p>Specifies the group to return information for. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    #   @return [String]
    class GetGroupRequest < Struct.new(
      nil,
      :group_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>A structure that contains information about the group.</p>
    #   @return [Types::Group]
    class GetGroupResponse < Struct.new(
      nil,
      :group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one group.</p>
    # @!attribute id
    #   <p>The unique ID of the group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs that are associated with the canary.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_time
    #   <p>The date and time that the group was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time that the group was most recently updated.</p>
    #   @return [Time]
    class Group < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :tags,
      :created_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing some information about a group.</p>
    # @!attribute id
    #   <p>The unique ID of the group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the group.</p>
    #   @return [String]
    class GroupSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal failure occurred. Try the operation again.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unknown internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many groups are returned each time you use
    #            the <code>ListAssociatedGroups</code> operation. If you omit this parameter, the default of 20 is used.</p>
    #   @return [Integer]
    # @!attribute resource_arn
    #   <p>The ARN of the canary that you want to view groups for.</p>
    #   @return [String]
    class ListAssociatedGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>An array of structures that contain information about the groups that this canary is associated with.</p>
    #   @return [Array<Types::GroupSummary>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>ListAssociatedGroups</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class ListAssociatedGroupsResponse < Struct.new(
      nil,
      :groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many canary ARNs are returned each time you use
    #            the <code>ListGroupResources</code> operation. If you omit this parameter, the default of 20 is used.</p>
    #   @return [Integer]
    # @!attribute group_identifier
    #   <p>Specifies the group to return information for. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    #   @return [String]
    class ListGroupResourcesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :group_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>An array of ARNs. These ARNs are for the canaries that are associated with the group.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>ListGroupResources</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class ListGroupResourcesResponse < Struct.new(
      nil,
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify this parameter to limit how many groups are returned each time you use
    #            the <code>ListGroups</code> operation. If you omit this parameter, the default of 20 is used.</p>
    #   @return [Integer]
    class ListGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>An array of structures that each contain information about one group.</p>
    #   @return [Array<Types::GroupSummary>]
    # @!attribute next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>ListGroups</code> operation to retrieve the next 
    #            set of results.</p>
    #   @return [String]
    class ListGroupsResponse < Struct.new(
      nil,
      :groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the canary or group that you want to view tags for.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #            <p>The ARN format of a group is
    #            <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>
    #               </code>
    #            </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource that you specified.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the input resources is larger than is allowed.</p>
    # @!attribute message
    #   @return [String]
    class RequestEntityTooLargeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the specified resources was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the canary's retry configuration.</p>
    #          <note>
    #             <p>The default account level concurrent execution limit from Lambda is 1000. When you have more than 1000 canaries, it's possible there are more than 1000 Lambda invocations due to retries and the console might hang. For more information on the Lambda execution limit, 
    #             see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-concurrency.html#:~:text=As%20your%20functions%20receive%20more,functions%20in%20an%20AWS%20Region">Understanding Lambda function scaling</a>.</p>
    #          </note>
    #          <note>
    #             <p>For canary with <code>MaxRetries = 2</code>, you need to set the <code>CanaryRunConfigInput.TimeoutInSeconds</code> to less than 600 seconds to avoid validation errors.</p>
    #          </note>
    # @!attribute max_retries
    #   <p>The maximum number of retries. The value must be less than or equal to 2.</p>
    #   @return [Integer]
    class RetryConfigInput < Struct.new(
      nil,
      :max_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the canary's retry configuration.</p>
    # @!attribute max_retries
    #   <p>The maximum number of retries. The value must be less than or equal to 2.</p>
    #   @return [Integer]
    class RetryConfigOutput < Struct.new(
      nil,
      :max_retries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one canary runtime version. For more information about
    #          runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #             Canary Runtime Versions</a>.</p>
    # @!attribute version_name
    #   <p>The name of the runtime version. For a list of valid runtime versions, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the runtime version, created by Amazon.</p>
    #   @return [String]
    # @!attribute release_date
    #   <p>The date that the runtime version was released.</p>
    #   @return [Time]
    # @!attribute deprecation_date
    #   <p>If this runtime version is deprecated, this value is the date of deprecation.</p>
    #   @return [Time]
    class RuntimeVersion < Struct.new(
      nil,
      :version_name,
      :description,
      :release_date,
      :deprecation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration of encryption-at-rest settings for canary artifacts that the canary
    #          uploads to Amazon S3. </p>
    #          <p>For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html">Encrypting canary artifacts</a>
    #          </p>
    # @!attribute encryption_mode
    #   <p> The encryption method to use for artifacts created by this canary. Specify <code>SSE_S3</code> to use
    #            server-side encryption (SSE) with an Amazon S3-managed
    #            key. Specify <code>SSE-KMS</code> to use server-side encryption with a customer-managed KMS key.</p>
    #            <p>If you omit this parameter, an 
    #               Amazon Web Services-managed KMS key is used.
    #           </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the customer-managed KMS key to use, if you specify <code>SSE-KMS</code>
    #            for <code>EncryptionMode</code>
    #            </p>
    #   @return [String]
    class S3EncryptionConfig < Struct.new(
      nil,
      :encryption_mode,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded a service quota value.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to dry run. To find
    #            canary names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Use this structure to input your script code for the canary. This structure contains the
    #            Lambda handler with the location where the canary should start running the script. If the
    #            script is stored in an Amazon S3 bucket, the bucket name, key, and version are also included. If
    #            the script was passed into the canary directly, the script code is contained in the value
    #            of <code>Zipfile</code>. </p>
    #            <p>If you are uploading your canary scripts with an Amazon S3 bucket, your zip file should include your 
    #         script in a certain folder structure.</p>
    #            <ul>
    #               <li>
    #                  <p>For Node.js canaries, the folder structure must be <code>nodejs/node_modules/<i>myCanaryFilename.js</i>
    #                     </code>
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_WritingCanary_Nodejs.html#CloudWatch_Synthetics_Canaries_package">Packaging your Node.js canary files</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For Python canaries, the folder structure must be <code>python/<i>myCanaryFilename.py</i>
    #                     </code> or <code>python/<i>myFolder/myCanaryFilename.py</i>
    #                     </code>
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_WritingCanary_Python.html#CloudWatch_Synthetics_Canaries_WritingCanary_Python_package">Packaging your Python canary files</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CanaryCodeInput]
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary.  
    #            For a list of valid runtime versions and for more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #   @return [String]
    # @!attribute run_config
    #   <p>A structure that contains input information for a canary run.</p>
    #   @return [Types::CanaryRunConfigInput]
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnets and security groups of the VPC endpoint. 
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    #   @return [Types::VpcConfigInput]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #   @return [String]
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute visual_reference
    #   <p>An object that specifies what screenshots to use as a baseline for visual monitoring by this canary. It can
    #            optionally also specify parts of the screenshots to ignore during the visual monitoring comparison.</p>
    #            <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #            runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #               Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                  Visual monitoring blueprint</a>
    #            </p>
    #   @return [Types::VisualReferenceInput]
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
    #   
    #            canary. Artifacts include the log file, screenshots, and HAR files.  The name of the 
    #            Amazon S3 bucket can't include a period (.).</p>
    #   @return [String]
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including the 
    #            encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #   @return [Types::ArtifactConfigInput]
    # @!attribute provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #            when the canary is deleted. If you omit this parameter, the default of <code>AUTOMATIC</code> is used, which means
    #   
    #            that the Lambda functions and layers will be deleted when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    #   @return [String]
    # @!attribute browser_configs
    #   <p>A structure that specifies the browser type to use for a canary run. CloudWatch Synthetics supports running canaries on both <code>CHROME</code> and <code>FIREFOX</code> browsers.</p>
    #            <note>
    #               <p>If not specified, <code>browserConfigs</code> defaults to Chrome.</p>
    #            </note>
    #   @return [Array<Types::BrowserConfig>]
    # @!attribute visual_references
    #   <p>A list of visual reference configurations for the canary, one for each browser type that the canary is configured to run on. Visual references are used for visual monitoring comparisons.</p>
    #            <p>
    #               <code>syn-nodejs-puppeteer-11.0</code> and above, and <code>syn-nodejs-playwright-3.0</code> and above, only supports <code>visualReferences</code>. <code>visualReference</code> field is not supported.</p>
    #            <p>Versions older than <code>syn-nodejs-puppeteer-11.0</code> supports both <code>visualReference</code> and <code>visualReferences</code> for backward compatibility. It is recommended to use <code>visualReferences</code>
    #            for consistency and future compatibility.</p>
    #   @return [Array<Types::VisualReferenceInput>]
    class StartCanaryDryRunRequest < Struct.new(
      nil,
      :name,
      :code,
      :runtime_version,
      :run_config,
      :vpc_config,
      :execution_role_arn,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :visual_reference,
      :artifact_s3_location,
      :artifact_config,
      :provisioned_resource_cleanup,
      :browser_configs,
      :visual_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dry_run_config
    #   <p>Returns the dry run configurations for a canary.</p>
    #   @return [Types::DryRunConfigOutput]
    class StartCanaryDryRunResponse < Struct.new(
      nil,
      :dry_run_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to run. To find
    #            canary names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #   @return [String]
    class StartCanaryRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartCanaryResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the canary that you want to stop. To find the names of your 
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">ListCanaries</a>.</p>
    #   @return [String]
    class StopCanaryRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopCanaryResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the canary or group that you're adding tags to.</p>
    #            <p>The ARN format of a canary is
    #   <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #            <p>The ARN format of a group is
    #    <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>
    #               </code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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

    # <p>There were too many simultaneous requests. Try the operation again.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the canary or group that you're removing tags from.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #            <p>The ARN format of a group is
    #            <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>
    #               </code>
    #            </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # @!attribute name
    #   <p>The name of the canary that you want to update. To find the names of your 
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #            <p>You cannot change the name of a canary that has already been created.</p>
    #   @return [String]
    # @!attribute code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in 
    #            an Amazon S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    #   @return [Types::CanaryCodeInput]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute runtime_version
    #   <p>Specifies the runtime version to use for the canary.  
    #            For a list of valid runtime versions and for more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>A structure that contains information about how often the canary is to run, and when
    #            these runs are to stop.</p>
    #   @return [Types::CanaryScheduleInput]
    # @!attribute run_config
    #   <p>A structure that contains the timeout value that is used for each individual run of the 
    #            canary.</p>
    #            <important>
    #               <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables 
    #            are not encrypted on the client side. Do not store sensitive information
    #            in them.</p>
    #            </important>
    #   @return [Types::CanaryRunConfigInput]
    # @!attribute success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    #   @return [Integer]
    # @!attribute vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnet and security groups of the VPC endpoint. 
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    #   @return [Types::VpcConfigInput]
    # @!attribute visual_reference
    #   <p>Defines the screenshots to use as the baseline for comparisons during visual monitoring comparisons during future runs of this canary. If you omit this 
    #         parameter, no changes are made to any baseline screenshots that the canary might be using already.</p>
    #            <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #            runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #               Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                  Visual monitoring blueprint</a>
    #            </p>
    #   @return [Types::VisualReferenceInput]
    # @!attribute artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary. 
    #            Artifacts include the log file, screenshots, and HAR files. The name of the
    #            Amazon S3 bucket can't include a period (.).</p>
    #   @return [String]
    # @!attribute artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, 
    #            including the encryption-at-rest settings for artifacts that 
    #            the canary uploads to Amazon S3.</p>
    #   @return [Types::ArtifactConfigInput]
    # @!attribute provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #            when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    #   @return [String]
    # @!attribute dry_run_id
    #   <p>Update the existing canary using the updated configurations from the DryRun associated with the DryRunId.</p>
    #            <note>
    #               <p>When you use the <code>dryRunId</code> field when updating a canary, the only other field you can provide is the <code>Schedule</code>. Adding any other field will thrown an exception.</p>
    #            </note>
    #   @return [String]
    # @!attribute visual_references
    #   <p>A list of visual reference configurations for the canary, one for each browser type that the canary is configured to run on. Visual references are used for visual monitoring comparisons.</p>
    #            <p>
    #               <code>syn-nodejs-puppeteer-11.0</code> and above, and <code>syn-nodejs-playwright-3.0</code> and above, only supports <code>visualReferences</code>. <code>visualReference</code> field is not supported.</p>
    #            <p>Versions older than <code>syn-nodejs-puppeteer-11.0</code> supports both <code>visualReference</code> and <code>visualReferences</code> for backward compatibility. It is recommended to use <code>visualReferences</code>
    #            for consistency and future compatibility.</p>
    #            <p>For multibrowser visual monitoring,  you can update the baseline for all configured browsers in a single update call by specifying a list of VisualReference objects, one per browser. 
    #            Each VisualReference object maps to a specific browser configuration, allowing you to manage visual baselines for multiple browsers simultaneously.</p>
    #            <p>For single configuration canaries using Chrome browser (default browser), use visualReferences for <code>syn-nodejs-puppeteer-11.0</code> and above, and <code>syn-nodejs-playwright-3.0</code> and 
    #            above canaries. The browserType in the visualReference object is not mandatory.</p>
    #   @return [Array<Types::VisualReferenceInput>]
    # @!attribute browser_configs
    #   <p>A structure that specifies the browser type to use for a canary run. CloudWatch Synthetics supports running canaries on both <code>CHROME</code> and <code>FIREFOX</code> browsers.</p>
    #            <note>
    #               <p>If not specified, <code>browserConfigs</code> defaults to Chrome.</p>
    #            </note>
    #   @return [Array<Types::BrowserConfig>]
    class UpdateCanaryRequest < Struct.new(
      nil,
      :name,
      :code,
      :execution_role_arn,
      :runtime_version,
      :schedule,
      :run_config,
      :success_retention_period_in_days,
      :failure_retention_period_in_days,
      :vpc_config,
      :visual_reference,
      :artifact_s3_location,
      :artifact_config,
      :provisioned_resource_cleanup,
      :dry_run_id,
      :visual_references,
      :browser_configs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCanaryResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter could not be validated.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that specifies what screenshots to use as a baseline for visual monitoring by this canary. It can
    #          optionally also specify parts of the screenshots to ignore during the visual monitoring comparison.</p>
    #          <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #          runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #             Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                Visual monitoring blueprint</a>
    #          </p>
    # @!attribute base_screenshots
    #   <p>An array of screenshots that will be used as the baseline for visual monitoring in future runs of this canary. If there is a screenshot that you don't want to be used for
    #         visual monitoring, remove it from this array.</p>
    #   @return [Array<Types::BaseScreenshot>]
    # @!attribute base_canary_run_id
    #   <p>Specifies which canary run to use the screenshots from as the baseline for future visual monitoring with this canary. Valid values are 
    #            <code>nextrun</code> to use the screenshots from the next run after this update is made, <code>lastrun</code> to use the screenshots from the most recent run 
    #            before this update was made, or the value of <code>Id</code> in the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRun.html">
    #               CanaryRun</a> from a run of this a canary in the past 31 days. If you specify the <code>Id</code> of a canary run older than 31 days, 
    #            the operation returns a 400 validation exception error..</p>
    #   @return [String]
    # @!attribute browser_type
    #   <p>The browser type associated with this visual reference.</p>
    #   @return [String]
    class VisualReferenceInput < Struct.new(
      nil,
      :base_screenshots,
      :base_canary_run_id,
      :browser_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run that is used as the baseline for screenshots, and the coordinates
    #          of any parts of those screenshots that are ignored during visual monitoring comparison.</p>
    #          <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b> runtime or later.</p>
    # @!attribute base_screenshots
    #   <p>An array of screenshots that are used as the baseline for comparisons during visual monitoring.</p>
    #   @return [Array<Types::BaseScreenshot>]
    # @!attribute base_canary_run_id
    #   <p>The ID of the canary run that produced the baseline screenshots 
    #            that are used for visual monitoring comparisons by this canary.</p>
    #   @return [String]
    # @!attribute browser_type
    #   <p>The browser type associated with this visual reference.</p>
    #   @return [String]
    class VisualReferenceOutput < Struct.new(
      nil,
      :base_screenshots,
      :base_canary_run_id,
      :browser_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If this canary is to test an endpoint in a VPC, this structure contains
    #          information about the subnets and security groups of the VPC endpoint. 
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #             Running a Canary in a VPC</a>.</p>
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets where this canary is to run.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups for this canary.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_allowed_for_dual_stack
    #   <p>Set this to <code>true</code> to allow outbound IPv6 traffic on VPC canaries that are connected to dual-stack subnets. The default is <code>false</code>
    #            </p>
    #   @return [Boolean]
    class VpcConfigInput < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      :ipv6_allowed_for_dual_stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If this canary is to test an endpoint in a VPC, this structure contains
    #          information about the subnets and security groups of the VPC endpoint. 
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #             Running a Canary in a VPC</a>.</p>
    # @!attribute vpc_id
    #   <p>The IDs of the VPC where this canary is to run.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets where this canary is to run.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups for this canary.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_allowed_for_dual_stack
    #   <p>Indicates whether this canary allows outbound IPv6 traffic if it is connected to dual-stack subnets.</p>
    #   @return [Boolean]
    class VpcConfigOutput < Struct.new(
      nil,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ipv6_allowed_for_dual_stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
