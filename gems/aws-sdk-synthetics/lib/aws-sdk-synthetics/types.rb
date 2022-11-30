# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Synthetics
  module Types

    # A structure that contains the configuration for canary artifacts,
    # including the encryption-at-rest settings for artifacts that the
    # canary uploads to Amazon S3.
    #
    # @!attribute [rw] s3_encryption
    #   A structure that contains the configuration of the
    #   encryption-at-rest settings for artifacts that the canary uploads to
    #   Amazon S3. Artifact encryption functionality is available only for
    #   canaries that use Synthetics runtime version
    #   syn-nodejs-puppeteer-3.3 or later. For more information, see
    #   [Encrypting canary artifacts][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html
    #   @return [Types::S3EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ArtifactConfigInput AWS API Documentation
    #
    class ArtifactConfigInput < Struct.new(
      :s3_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration for canary artifacts,
    # including the encryption-at-rest settings for artifacts that the
    # canary uploads to Amazon S3.
    #
    # @!attribute [rw] s3_encryption
    #   A structure that contains the configuration of encryption settings
    #   for canary artifacts that are stored in Amazon S3.
    #   @return [Types::S3EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ArtifactConfigOutput AWS API Documentation
    #
    class ArtifactConfigOutput < Struct.new(
      :s3_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_identifier
    #   Specifies the group. You can specify the group name, the ARN, or the
    #   group ID as the `GroupIdentifier`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the canary that you want to associate with the specified
    #   group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/AssociateResourceRequest AWS API Documentation
    #
    class AssociateResourceRequest < Struct.new(
      :group_identifier,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/AssociateResourceResponse AWS API Documentation
    #
    class AssociateResourceResponse < Aws::EmptyStructure; end

    # The request was not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing a screenshot that is used as a baseline
    # during visual monitoring comparisons made by the canary.
    #
    # @!attribute [rw] screenshot_name
    #   The name of the screenshot. This is generated the first time the
    #   canary is run after the `UpdateCanary` operation that specified for
    #   this canary to perform visual monitoring.
    #   @return [String]
    #
    # @!attribute [rw] ignore_coordinates
    #   Coordinates that define the part of a screen to ignore during
    #   screenshot comparisons. To obtain the coordinates to use here, use
    #   the CloudWatch console to draw the boundaries on the screen. For
    #   more information, see [ Editing or deleting a canary][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/synthetics_canaries_deletion.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/BaseScreenshot AWS API Documentation
    #
    class BaseScreenshot < Struct.new(
      :screenshot_name,
      :ignore_coordinates)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains all information about one canary in your
    # account.
    #
    # @!attribute [rw] id
    #   The unique ID of this canary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the canary.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   This structure contains information about the canary's Lambda
    #   handler and where its code is stored by CloudWatch Synthetics.
    #   @return [Types::CanaryCodeOutput]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role used to run the canary. This role must
    #   include `lambda.amazonaws.com` as a principal in the trust policy.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A structure that contains information about how often the canary is
    #   to run, and when these runs are to stop.
    #   @return [Types::CanaryScheduleOutput]
    #
    # @!attribute [rw] run_config
    #   A structure that contains information about a canary run.
    #   @return [Types::CanaryRunConfigOutput]
    #
    # @!attribute [rw] success_retention_period_in_days
    #   The number of days to retain data about successful runs of this
    #   canary.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_retention_period_in_days
    #   The number of days to retain data about failed runs of this canary.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   A structure that contains information about the canary's status.
    #   @return [Types::CanaryStatus]
    #
    # @!attribute [rw] timeline
    #   A structure that contains information about when the canary was
    #   created, modified, and most recently run.
    #   @return [Types::CanaryTimeline]
    #
    # @!attribute [rw] artifact_s3_location
    #   The location in Amazon S3 where Synthetics stores artifacts from the
    #   runs of this canary. Artifacts include the log file, screenshots,
    #   and HAR files.
    #   @return [String]
    #
    # @!attribute [rw] engine_arn
    #   The ARN of the Lambda function that is used as your canary's
    #   engine. For more information about Lambda ARN format, see [Resources
    #   and Conditions for Lambda Actions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/lambda-api-permissions-ref.html
    #   @return [String]
    #
    # @!attribute [rw] runtime_version
    #   Specifies the runtime version to use for the canary. For more
    #   information about runtime versions, see [ Canary Runtime
    #   Versions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   If this canary is to test an endpoint in a VPC, this structure
    #   contains information about the subnets and security groups of the
    #   VPC endpoint. For more information, see [ Running a Canary in a
    #   VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #   @return [Types::VpcConfigOutput]
    #
    # @!attribute [rw] visual_reference
    #   If this canary performs visual monitoring by comparing screenshots,
    #   this structure contains the ID of the canary run to use as the
    #   baseline for screenshots, and the coordinates of any parts of the
    #   screen to ignore during the visual monitoring comparison.
    #   @return [Types::VisualReferenceOutput]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs that are associated with the canary.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] artifact_config
    #   A structure that contains the configuration for canary artifacts,
    #   including the encryption-at-rest settings for artifacts that the
    #   canary uploads to Amazon S3.
    #   @return [Types::ArtifactConfigOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/Canary AWS API Documentation
    #
    class Canary < Struct.new(
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
      :tags,
      :artifact_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to input your script code for the canary. This
    # structure contains the Lambda handler with the location where the
    # canary should start running the script. If the script is stored in an
    # S3 bucket, the bucket name, key, and version are also included. If the
    # script was passed into the canary directly, the script code is
    # contained in the value of `Zipfile`.
    #
    # @!attribute [rw] s3_bucket
    #   If your canary script is located in S3, specify the bucket name
    #   here. Do not include `s3://` as the start of the bucket name.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The S3 key of your script. For more information, see [Working with
    #   Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingObjects.html
    #   @return [String]
    #
    # @!attribute [rw] s3_version
    #   The S3 version ID of your script.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   If you input your canary script directly into the canary instead of
    #   referring to an S3 location, the value of this parameter is the
    #   base64-encoded contents of the .zip file that contains the script.
    #   It must be smaller than 225 Kb.
    #
    #   For large canary scripts, we recommend that you use an S3 location
    #   instead of inputting it directly with this parameter.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The entry point to use for the source code when running the canary.
    #   For canaries that use the `syn-python-selenium-1.0` runtime or a
    #   `syn-nodejs.puppeteer` runtime earlier than
    #   `syn-nodejs.puppeteer-3.4`, the handler must be specified as `
    #   fileName.handler`. For `syn-python-selenium-1.1`,
    #   `syn-nodejs.puppeteer-3.4`, and later runtimes, the handler can be
    #   specified as ` fileName.functionName `, or you can specify a folder
    #   where canary scripts reside as ` folder/fileName.functionName `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryCodeInput AWS API Documentation
    #
    class CanaryCodeInput < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_version,
      :zip_file,
      :handler)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the canary's Lambda handler
    # and where its code is stored by CloudWatch Synthetics.
    #
    # @!attribute [rw] source_location_arn
    #   The ARN of the Lambda layer where Synthetics stores the canary
    #   script code.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The entry point to use for the source code when running the canary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryCodeOutput AWS API Documentation
    #
    class CanaryCodeOutput < Struct.new(
      :source_location_arn,
      :handler)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the most recent run of a
    # single canary.
    #
    # @!attribute [rw] canary_name
    #   The name of the canary.
    #   @return [String]
    #
    # @!attribute [rw] last_run
    #   The results from this canary's most recent run.
    #   @return [Types::CanaryRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryLastRun AWS API Documentation
    #
    class CanaryLastRun < Struct.new(
      :canary_name,
      :last_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the details about one run of one canary.
    #
    # @!attribute [rw] id
    #   A unique ID that identifies this canary run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the canary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this run.
    #   @return [Types::CanaryRunStatus]
    #
    # @!attribute [rw] timeline
    #   A structure that contains the start and end times of this run.
    #   @return [Types::CanaryRunTimeline]
    #
    # @!attribute [rw] artifact_s3_location
    #   The location where the canary stored artifacts from the run.
    #   Artifacts include the log file, screenshots, and HAR files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryRun AWS API Documentation
    #
    class CanaryRun < Struct.new(
      :id,
      :name,
      :status,
      :timeline,
      :artifact_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains input information for a canary run.
    #
    # @!attribute [rw] timeout_in_seconds
    #   How long the canary is allowed to run before it must stop. You
    #   can't set this time to be longer than the frequency of the runs of
    #   this canary.
    #
    #   If you omit this field, the frequency of the canary is used as this
    #   value, up to a maximum of 14 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_in_mb
    #   The maximum amount of memory available to the canary while it is
    #   running, in MB. This value must be a multiple of 64.
    #   @return [Integer]
    #
    # @!attribute [rw] active_tracing
    #   Specifies whether this canary is to use active X-Ray tracing when it
    #   runs. Active tracing enables this canary run to be displayed in the
    #   ServiceLens and X-Ray service maps even if the canary does not hit
    #   an endpoint that has X-Ray tracing enabled. Using X-Ray tracing
    #   incurs charges. For more information, see [ Canaries and X-Ray
    #   tracing][1].
    #
    #   You can enable active tracing only for canaries that use version
    #   `syn-nodejs-2.0` or later for their canary runtime.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_tracing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_variables
    #   Specifies the keys and values to use for any environment variables
    #   used in the canary script. Use the following format:
    #
    #   \\\{ "key1" : "value1", "key2" : "value2", ...\\}
    #
    #   Keys must start with a letter and be at least two characters. The
    #   total size of your environment variables cannot exceed 4 KB. You
    #   can't specify any Lambda reserved environment variables as the keys
    #   for your environment variables. For more information about reserved
    #   keys, see [ Runtime environment variables][1].
    #
    #   The environment variables keys and values are not encrypted. Do not
    #   store sensitive information in this field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-runtime
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryRunConfigInput AWS API Documentation
    #
    class CanaryRunConfigInput < Struct.new(
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing,
      :environment_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a canary run.
    #
    # @!attribute [rw] timeout_in_seconds
    #   How long the canary is allowed to run before it must stop.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_in_mb
    #   The maximum amount of memory available to the canary while it is
    #   running, in MB. This value must be a multiple of 64.
    #   @return [Integer]
    #
    # @!attribute [rw] active_tracing
    #   Displays whether this canary run used active X-Ray tracing.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryRunConfigOutput AWS API Documentation
    #
    class CanaryRunConfigOutput < Struct.new(
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the status information about a canary run.
    #
    # @!attribute [rw] state
    #   The current state of the run.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   If run of the canary failed, this field contains the reason for the
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_code
    #   If this value is `CANARY_FAILURE`, an exception occurred in the
    #   canary code. If this value is `EXECUTION_FAILURE`, an exception
    #   occurred in CloudWatch Synthetics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryRunStatus AWS API Documentation
    #
    class CanaryRunStatus < Struct.new(
      :state,
      :state_reason,
      :state_reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the start and end times of a single canary
    # run.
    #
    # @!attribute [rw] started
    #   The start time of the run.
    #   @return [Time]
    #
    # @!attribute [rw] completed
    #   The end time of the run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryRunTimeline AWS API Documentation
    #
    class CanaryRunTimeline < Struct.new(
      :started,
      :completed)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies how often a canary is to make runs and the
    # date and time when it should stop making runs.
    #
    # @!attribute [rw] expression
    #   A `rate` expression or a `cron` expression that defines how often
    #   the canary is to run.
    #
    #   For a rate expression, The syntax is `rate(number unit)`. *unit* can
    #   be `minute`, `minutes`, or `hour`.
    #
    #   For example, `rate(1 minute)` runs the canary once a minute,
    #   `rate(10 minutes)` runs it once every 10 minutes, and `rate(1 hour)`
    #   runs it once every hour. You can specify a frequency between `rate(1
    #   minute)` and `rate(1 hour)`.
    #
    #   Specifying `rate(0 minute)` or `rate(0 hour)` is a special value
    #   that causes the canary to run only once when it is started.
    #
    #   Use `cron(expression)` to specify a cron expression. You can't
    #   schedule a canary to wait for more than a year before running. For
    #   information about the syntax for cron expressions, see [ Scheduling
    #   canary runs using cron][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   How long, in seconds, for the canary to continue making regular runs
    #   according to the schedule in the `Expression` value. If you specify
    #   0, the canary continues making runs until you stop it. If you omit
    #   this field, the default of 0 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryScheduleInput AWS API Documentation
    #
    class CanaryScheduleInput < Struct.new(
      :expression,
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # How long, in seconds, for the canary to continue making regular runs
    # according to the schedule in the `Expression` value.
    #
    # @!attribute [rw] expression
    #   A `rate` expression or a `cron` expression that defines how often
    #   the canary is to run.
    #
    #   For a rate expression, The syntax is `rate(number unit)`. *unit* can
    #   be `minute`, `minutes`, or `hour`.
    #
    #   For example, `rate(1 minute)` runs the canary once a minute,
    #   `rate(10 minutes)` runs it once every 10 minutes, and `rate(1 hour)`
    #   runs it once every hour. You can specify a frequency between `rate(1
    #   minute)` and `rate(1 hour)`.
    #
    #   Specifying `rate(0 minute)` or `rate(0 hour)` is a special value
    #   that causes the canary to run only once when it is started.
    #
    #   Use `cron(expression)` to specify a cron expression. For information
    #   about the syntax for cron expressions, see [ Scheduling canary runs
    #   using cron][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   How long, in seconds, for the canary to continue making regular runs
    #   after it was created. The runs are performed according to the
    #   schedule in the `Expression` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryScheduleOutput AWS API Documentation
    #
    class CanaryScheduleOutput < Struct.new(
      :expression,
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the current state of the canary.
    #
    # @!attribute [rw] state
    #   The current state of the canary.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   If the canary has insufficient permissions to run, this field
    #   provides more details.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_code
    #   If the canary cannot run or has failed, this field displays the
    #   reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryStatus AWS API Documentation
    #
    class CanaryStatus < Struct.new(
      :state,
      :state_reason,
      :state_reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about when the canary was created
    # and modified.
    #
    # @!attribute [rw] created
    #   The date and time the canary was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date and time the canary was most recently modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_started
    #   The date and time that the canary's most recent run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_stopped
    #   The date and time that the canary's most recent run ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryTimeline AWS API Documentation
    #
    class CanaryTimeline < Struct.new(
      :created,
      :last_modified,
      :last_started,
      :last_stopped)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflicting operation is already in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for this canary. Be sure to give it a descriptive name that
    #   distinguishes it from other canaries in your account.
    #
    #   Do not include secrets or proprietary information in your canary
    #   names. The canary name makes up part of the canary ARN, and the ARN
    #   is included in outbound calls over the internet. For more
    #   information, see [Security Considerations for Synthetics
    #   Canaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html
    #   @return [String]
    #
    # @!attribute [rw] code
    #   A structure that includes the entry point from which the canary
    #   should start running your script. If the script is stored in an S3
    #   bucket, the bucket name, key, and version are also included.
    #   @return [Types::CanaryCodeInput]
    #
    # @!attribute [rw] artifact_s3_location
    #   The location in Amazon S3 where Synthetics stores artifacts from the
    #   test runs of this canary. Artifacts include the log file,
    #   screenshots, and HAR files. The name of the S3 bucket can't include
    #   a period (.).
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role to be used to run the canary. This role must
    #   already exist, and must include `lambda.amazonaws.com` as a
    #   principal in the trust policy. The role must also have the following
    #   permissions:
    #
    #   * `s3:PutObject`
    #
    #   * `s3:GetBucketLocation`
    #
    #   * `s3:ListAllMyBuckets`
    #
    #   * `cloudwatch:PutMetricData`
    #
    #   * `logs:CreateLogGroup`
    #
    #   * `logs:CreateLogStream`
    #
    #   * `logs:PutLogEvents`
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A structure that contains information about how often the canary is
    #   to run and when these test runs are to stop.
    #   @return [Types::CanaryScheduleInput]
    #
    # @!attribute [rw] run_config
    #   A structure that contains the configuration for individual canary
    #   runs, such as timeout value and environment variables.
    #
    #   The environment variables keys and values are not encrypted. Do not
    #   store sensitive information in this field.
    #   @return [Types::CanaryRunConfigInput]
    #
    # @!attribute [rw] success_retention_period_in_days
    #   The number of days to retain data about successful runs of this
    #   canary. If you omit this field, the default of 31 days is used. The
    #   valid range is 1 to 455 days.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_retention_period_in_days
    #   The number of days to retain data about failed runs of this canary.
    #   If you omit this field, the default of 31 days is used. The valid
    #   range is 1 to 455 days.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime_version
    #   Specifies the runtime version to use for the canary. For a list of
    #   valid runtime versions and more information about runtime versions,
    #   see [ Canary Runtime Versions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   If this canary is to test an endpoint in a VPC, this structure
    #   contains information about the subnet and security groups of the VPC
    #   endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #   @return [Types::VpcConfigInput]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the canary. You can
    #   associate as many as 50 tags with a canary.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions, by granting a user
    #   permission to access or change only the resources that have certain
    #   tag values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] artifact_config
    #   A structure that contains the configuration for canary artifacts,
    #   including the encryption-at-rest settings for artifacts that the
    #   canary uploads to Amazon S3.
    #   @return [Types::ArtifactConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CreateCanaryRequest AWS API Documentation
    #
    class CreateCanaryRequest < Struct.new(
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
      :tags,
      :artifact_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] canary
    #   The full details about the canary you have created.
    #   @return [Types::Canary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CreateCanaryResponse AWS API Documentation
    #
    class CreateCanaryResponse < Struct.new(
      :canary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the group. It can include any Unicode characters.
    #
    #   The names for all groups in your account, across all Regions, must
    #   be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the group. You can
    #   associate as many as 50 tags with a group.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions, by granting a user
    #   permission to access or change only the resources that have certain
    #   tag values.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   A structure that contains information about the group that was just
    #   created.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the canary that you want to delete. To find the names of
    #   your canaries, use [DescribeCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #   @return [String]
    #
    # @!attribute [rw] delete_lambda
    #   Specifies whether to also delete the Lambda functions and layers
    #   used by this canary. The default is false.
    #
    #   Type: Boolean
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteCanaryRequest AWS API Documentation
    #
    class DeleteCanaryRequest < Struct.new(
      :name,
      :delete_lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteCanaryResponse AWS API Documentation
    #
    class DeleteCanaryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] group_identifier
    #   Specifies which group to delete. You can specify the group name, the
    #   ARN, or the group ID as the `GroupIdentifier`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `DescribeCanariesLastRun` operation
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `DescribeLastRun` operation. If you omit this parameter,
    #   the default of 100 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] names
    #   Use this parameter to return only canaries that match the names that
    #   you specify here. You can specify as many as five canary names.
    #
    #   If you specify this parameter, the operation is successful only if
    #   you have authorization to view all the canaries that you specify in
    #   your request. If you do not have permission to view any of the
    #   canaries, the request fails with a 403 response.
    #
    #   You are required to use the `Names` parameter if you are logged on
    #   to a user or role that has an IAM policy that restricts which
    #   canaries that you are allowed to view. For more information, see [
    #   Limiting a user to viewing specific canaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesLastRunRequest AWS API Documentation
    #
    class DescribeCanariesLastRunRequest < Struct.new(
      :next_token,
      :max_results,
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] canaries_last_run
    #   An array that contains the information from the most recent run of
    #   each canary.
    #   @return [Array<Types::CanaryLastRun>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `DescribeCanariesLastRun` operation
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesLastRunResponse AWS API Documentation
    #
    class DescribeCanariesLastRunResponse < Struct.new(
      :canaries_last_run,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent operation to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many canaries are returned each
    #   time you use the `DescribeCanaries` operation. If you omit this
    #   parameter, the default of 100 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] names
    #   Use this parameter to return only canaries that match the names that
    #   you specify here. You can specify as many as five canary names.
    #
    #   If you specify this parameter, the operation is successful only if
    #   you have authorization to view all the canaries that you specify in
    #   your request. If you do not have permission to view any of the
    #   canaries, the request fails with a 403 response.
    #
    #   You are required to use this parameter if you are logged on to a
    #   user or role that has an IAM policy that restricts which canaries
    #   that you are allowed to view. For more information, see [ Limiting a
    #   user to viewing specific canaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesRequest AWS API Documentation
    #
    class DescribeCanariesRequest < Struct.new(
      :next_token,
      :max_results,
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] canaries
    #   Returns an array. Each item in the array contains the full
    #   information about one canary.
    #   @return [Array<Types::Canary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `DescribeCanaries` operation to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesResponse AWS API Documentation
    #
    class DescribeCanariesResponse < Struct.new(
      :canaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `DescribeRuntimeVersions` operation
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `DescribeRuntimeVersions` operation. If you omit this
    #   parameter, the default of 100 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeRuntimeVersionsRequest AWS API Documentation
    #
    class DescribeRuntimeVersionsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_versions
    #   An array of objects that display the details about each Synthetics
    #   canary runtime version.
    #   @return [Array<Types::RuntimeVersion>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `DescribeRuntimeVersions` operation
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeRuntimeVersionsResponse AWS API Documentation
    #
    class DescribeRuntimeVersionsResponse < Struct.new(
      :runtime_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_identifier
    #   Specifies the group. You can specify the group name, the ARN, or the
    #   group ID as the `GroupIdentifier`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the canary that you want to remove from the specified
    #   group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DisassociateResourceRequest AWS API Documentation
    #
    class DisassociateResourceRequest < Struct.new(
      :group_identifier,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DisassociateResourceResponse AWS API Documentation
    #
    class DisassociateResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the canary that you want details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanaryRequest AWS API Documentation
    #
    class GetCanaryRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] canary
    #   A structure that contains the full information about the canary.
    #   @return [Types::Canary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanaryResponse AWS API Documentation
    #
    class GetCanaryResponse < Struct.new(
      :canary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the canary that you want to see runs for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `GetCanaryRuns` operation to retrieve
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `GetCanaryRuns` operation. If you omit this parameter,
    #   the default of 100 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanaryRunsRequest AWS API Documentation
    #
    class GetCanaryRunsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] canary_runs
    #   An array of structures. Each structure contains the details of one
    #   of the retrieved canary runs.
    #   @return [Array<Types::CanaryRun>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `GetCanaryRuns` operation to retrieve
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanaryRunsResponse AWS API Documentation
    #
    class GetCanaryRunsResponse < Struct.new(
      :canary_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_identifier
    #   Specifies the group to return information for. You can specify the
    #   group name, the ARN, or the group ID as the `GroupIdentifier`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   A structure that contains information about the group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one group.
    #
    # @!attribute [rw] id
    #   The unique ID of the group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs that are associated with the canary.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_time
    #   The date and time that the group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the group was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/Group AWS API Documentation
    #
    class Group < Struct.new(
      :id,
      :name,
      :arn,
      :tags,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing some information about a group.
    #
    # @!attribute [rw] id
    #   The unique ID of the group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GroupSummary AWS API Documentation
    #
    class GroupSummary < Struct.new(
      :id,
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure occurred. Try the operation again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unknown internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent operation to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many groups are returned each
    #   time you use the `ListAssociatedGroups` operation. If you omit this
    #   parameter, the default of 20 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the canary that you want to view groups for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListAssociatedGroupsRequest AWS API Documentation
    #
    class ListAssociatedGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   An array of structures that contain information about the groups
    #   that this canary is associated with.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `ListAssociatedGroups` operation to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListAssociatedGroupsResponse AWS API Documentation
    #
    class ListAssociatedGroupsResponse < Struct.new(
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent operation to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many canary ARNs are returned
    #   each time you use the `ListGroupResources` operation. If you omit
    #   this parameter, the default of 20 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] group_identifier
    #   Specifies the group to return information for. You can specify the
    #   group name, the ARN, or the group ID as the `GroupIdentifier`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListGroupResourcesRequest AWS API Documentation
    #
    class ListGroupResourcesRequest < Struct.new(
      :next_token,
      :max_results,
      :group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   An array of ARNs. These ARNs are for the canaries that are
    #   associated with the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `ListGroupResources` operation to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListGroupResourcesResponse AWS API Documentation
    #
    class ListGroupResourcesResponse < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent operation to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many groups are returned each
    #   time you use the `ListGroups` operation. If you omit this parameter,
    #   the default of 20 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   An array of structures that each contain information about one
    #   group.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `ListGroups` operation to retrieve
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the canary or group that you want to view tags for.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #
    #   The ARN format of a group is
    #   `arn:aws:synthetics:Region:account-id:group:group-name `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource that
    #   you specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the input resources is larger than is allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/RequestEntityTooLargeException AWS API Documentation
    #
    class RequestEntityTooLargeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the specified resources was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about one canary runtime version.
    # For more information about runtime versions, see [ Canary Runtime
    # Versions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #
    # @!attribute [rw] version_name
    #   The name of the runtime version. For a list of valid runtime
    #   versions, see [ Canary Runtime Versions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the runtime version, created by Amazon.
    #   @return [String]
    #
    # @!attribute [rw] release_date
    #   The date that the runtime version was released.
    #   @return [Time]
    #
    # @!attribute [rw] deprecation_date
    #   If this runtime version is deprecated, this value is the date of
    #   deprecation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/RuntimeVersion AWS API Documentation
    #
    class RuntimeVersion < Struct.new(
      :version_name,
      :description,
      :release_date,
      :deprecation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration of encryption-at-rest
    # settings for canary artifacts that the canary uploads to Amazon S3.
    #
    # For more information, see [Encrypting canary artifacts][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html
    #
    # @!attribute [rw] encryption_mode
    #   The encryption method to use for artifacts created by this canary.
    #   Specify `SSE_S3` to use server-side encryption (SSE) with an Amazon
    #   S3-managed key. Specify `SSE-KMS` to use server-side encryption with
    #   a customer-managed KMS key.
    #
    #   If you omit this parameter, an Amazon Web Services-managed KMS key
    #   is used.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the customer-managed KMS key to use, if you specify
    #   `SSE-KMS` for `EncryptionMode`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/S3EncryptionConfig AWS API Documentation
    #
    class S3EncryptionConfig < Struct.new(
      :encryption_mode,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded a service quota value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the canary that you want to run. To find canary names,
    #   use [DescribeCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/StartCanaryRequest AWS API Documentation
    #
    class StartCanaryRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/StartCanaryResponse AWS API Documentation
    #
    class StartCanaryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the canary that you want to stop. To find the names of
    #   your canaries, use [ListCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/StopCanaryRequest AWS API Documentation
    #
    class StopCanaryRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/StopCanaryResponse AWS API Documentation
    #
    class StopCanaryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the canary or group that you're adding tags to.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #
    #   The ARN format of a group is
    #   `arn:aws:synthetics:Region:account-id:group:group-name `
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # There were too many simultaneous requests. Try the operation again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the canary or group that you're removing tags from.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #
    #   The ARN format of a group is
    #   `arn:aws:synthetics:Region:account-id:group:group-name `
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the canary that you want to update. To find the names of
    #   your canaries, use [DescribeCanaries][1].
    #
    #   You cannot change the name of a canary that has already been
    #   created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #   @return [String]
    #
    # @!attribute [rw] code
    #   A structure that includes the entry point from which the canary
    #   should start running your script. If the script is stored in an S3
    #   bucket, the bucket name, key, and version are also included.
    #   @return [Types::CanaryCodeInput]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role to be used to run the canary. This role must
    #   already exist, and must include `lambda.amazonaws.com` as a
    #   principal in the trust policy. The role must also have the following
    #   permissions:
    #
    #   * `s3:PutObject`
    #
    #   * `s3:GetBucketLocation`
    #
    #   * `s3:ListAllMyBuckets`
    #
    #   * `cloudwatch:PutMetricData`
    #
    #   * `logs:CreateLogGroup`
    #
    #   * `logs:CreateLogStream`
    #
    #   * `logs:CreateLogStream`
    #   @return [String]
    #
    # @!attribute [rw] runtime_version
    #   Specifies the runtime version to use for the canary. For a list of
    #   valid runtime versions and for more information about runtime
    #   versions, see [ Canary Runtime Versions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A structure that contains information about how often the canary is
    #   to run, and when these runs are to stop.
    #   @return [Types::CanaryScheduleInput]
    #
    # @!attribute [rw] run_config
    #   A structure that contains the timeout value that is used for each
    #   individual run of the canary.
    #
    #   The environment variables keys and values are not encrypted. Do not
    #   store sensitive information in this field.
    #   @return [Types::CanaryRunConfigInput]
    #
    # @!attribute [rw] success_retention_period_in_days
    #   The number of days to retain data about successful runs of this
    #   canary.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_retention_period_in_days
    #   The number of days to retain data about failed runs of this canary.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_config
    #   If this canary is to test an endpoint in a VPC, this structure
    #   contains information about the subnet and security groups of the VPC
    #   endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #   @return [Types::VpcConfigInput]
    #
    # @!attribute [rw] visual_reference
    #   Defines the screenshots to use as the baseline for comparisons
    #   during visual monitoring comparisons during future runs of this
    #   canary. If you omit this parameter, no changes are made to any
    #   baseline screenshots that the canary might be using already.
    #
    #   Visual monitoring is supported only on canaries running the
    #   **syn-puppeteer-node-3.2** runtime or later. For more information,
    #   see [ Visual monitoring][1] and [ Visual monitoring blueprint][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html
    #   @return [Types::VisualReferenceInput]
    #
    # @!attribute [rw] artifact_s3_location
    #   The location in Amazon S3 where Synthetics stores artifacts from the
    #   test runs of this canary. Artifacts include the log file,
    #   screenshots, and HAR files. The name of the S3 bucket can't include
    #   a period (.).
    #   @return [String]
    #
    # @!attribute [rw] artifact_config
    #   A structure that contains the configuration for canary artifacts,
    #   including the encryption-at-rest settings for artifacts that the
    #   canary uploads to Amazon S3.
    #   @return [Types::ArtifactConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/UpdateCanaryRequest AWS API Documentation
    #
    class UpdateCanaryRequest < Struct.new(
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
      :artifact_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/UpdateCanaryResponse AWS API Documentation
    #
    class UpdateCanaryResponse < Aws::EmptyStructure; end

    # A parameter could not be validated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that specifies what screenshots to use as a baseline for
    # visual monitoring by this canary. It can optionally also specify parts
    # of the screenshots to ignore during the visual monitoring comparison.
    #
    # Visual monitoring is supported only on canaries running the
    # **syn-puppeteer-node-3.2** runtime or later. For more information, see
    # [ Visual monitoring][1] and [ Visual monitoring blueprint][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html
    #
    # @!attribute [rw] base_screenshots
    #   An array of screenshots that will be used as the baseline for visual
    #   monitoring in future runs of this canary. If there is a screenshot
    #   that you don't want to be used for visual monitoring, remove it
    #   from this array.
    #   @return [Array<Types::BaseScreenshot>]
    #
    # @!attribute [rw] base_canary_run_id
    #   Specifies which canary run to use the screenshots from as the
    #   baseline for future visual monitoring with this canary. Valid values
    #   are `nextrun` to use the screenshots from the next run after this
    #   update is made, `lastrun` to use the screenshots from the most
    #   recent run before this update was made, or the value of `Id` in the
    #   [ CanaryRun][1] from any past run of this canary.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRun.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/VisualReferenceInput AWS API Documentation
    #
    class VisualReferenceInput < Struct.new(
      :base_screenshots,
      :base_canary_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # If this canary performs visual monitoring by comparing screenshots,
    # this structure contains the ID of the canary run that is used as the
    # baseline for screenshots, and the coordinates of any parts of those
    # screenshots that are ignored during visual monitoring comparison.
    #
    # Visual monitoring is supported only on canaries running the
    # **syn-puppeteer-node-3.2** runtime or later.
    #
    # @!attribute [rw] base_screenshots
    #   An array of screenshots that are used as the baseline for
    #   comparisons during visual monitoring.
    #   @return [Array<Types::BaseScreenshot>]
    #
    # @!attribute [rw] base_canary_run_id
    #   The ID of the canary run that produced the baseline screenshots that
    #   are used for visual monitoring comparisons by this canary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/VisualReferenceOutput AWS API Documentation
    #
    class VisualReferenceOutput < Struct.new(
      :base_screenshots,
      :base_canary_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # If this canary is to test an endpoint in a VPC, this structure
    # contains information about the subnets and security groups of the VPC
    # endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets where this canary is to run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups for this canary.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/VpcConfigInput AWS API Documentation
    #
    class VpcConfigInput < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # If this canary is to test an endpoint in a VPC, this structure
    # contains information about the subnets and security groups of the VPC
    # endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #
    # @!attribute [rw] vpc_id
    #   The IDs of the VPC where this canary is to run.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets where this canary is to run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups for this canary.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/VpcConfigOutput AWS API Documentation
    #
    class VpcConfigOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
