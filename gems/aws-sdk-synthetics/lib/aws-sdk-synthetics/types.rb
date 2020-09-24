# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Synthetics
  module Types

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
    #   Specifies the runtime version to use for the canary. Currently, the
    #   only valid values are `syn-nodejs-2.0`, `syn-nodejs-2.0-beta`, and
    #   `syn-1.0`. For more information about runtime versions, see [ Canary
    #   Runtime Versions][1].
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
    # @!attribute [rw] tags
    #   The list of key-value pairs that are associated with the canary.
    #   @return [Hash<String,String>]
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
      :tags)
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
    # @note When making an API call, you may pass CanaryCodeInput
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "String",
    #         s3_key: "String",
    #         s3_version: "String",
    #         zip_file: "data",
    #         handler: "String", # required
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   If your canary script is located in S3, specify the full bucket name
    #   here. The bucket must already exist. Specify the full bucket name,
    #   including `s3://` as the start of the bucket name.
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
    #   referring to an S3 location, the value of this parameter is the .zip
    #   file that contains the script. It can be up to 5 MB.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The entry point to use for the source code when running the canary.
    #   This value must end with the string `.handler`.
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
    # @note When making an API call, you may pass CanaryRunConfigInput
    #   data as a hash:
    #
    #       {
    #         timeout_in_seconds: 1,
    #         memory_in_mb: 1,
    #         active_tracing: false,
    #       }
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
    #   Specifies whether this canary is to use active AWS X-Ray tracing
    #   when it runs. Active tracing enables this canary run to be displayed
    #   in the ServiceLens and X-Ray service maps even if the canary does
    #   not hit an endpoint that has X-ray tracing enabled. Using X-Ray
    #   tracing incurs charges. For more information, see [ Canaries and
    #   X-Ray tracing][1].
    #
    #   You can enable active tracing only for canaries that use version
    #   `syn-nodejs-2.0` or later for their canary runtime.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_tracing.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CanaryRunConfigInput AWS API Documentation
    #
    class CanaryRunConfigInput < Struct.new(
      :timeout_in_seconds,
      :memory_in_mb,
      :active_tracing)
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
    #   Displays whether this canary run used active AWS X-Ray tracing.
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
    # @note When making an API call, you may pass CanaryScheduleInput
    #   data as a hash:
    #
    #       {
    #         expression: "String", # required
    #         duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] expression
    #   A rate expression that defines how often the canary is to run. The
    #   syntax is `rate(number unit)`. *unit* can be `minute`, `minutes`, or
    #   `hour`.
    #
    #   For example, `rate(1 minute)` runs the canary once a minute,
    #   `rate(10 minutes)` runs it once every 10 minutes, and `rate(1 hour)`
    #   runs it once every hour. You can specify a frequency between `rate(1
    #   minute)` and `rate(1 hour)`.
    #
    #   Specifying `rate(0 minute)` or `rate(0 hour)` is a special value
    #   that causes the canary to run only once when it is started.
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
    #   A rate expression that defines how often the canary is to run. The
    #   syntax is `rate(number unit)`. *unit* can be `minute`, `minutes`, or
    #   `hour`.
    #
    #   For example, `rate(1 minute)` runs the canary once a minute,
    #   `rate(10 minutes)` runs it once every 10 minutes, and `rate(1 hour)`
    #   runs it once every hour.
    #
    #   Specifying `rate(0 minute)` or `rate(0 hour)` is a special value
    #   that causes the canary to run only once when it is started.
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

    # @note When making an API call, you may pass CreateCanaryRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #         code: { # required
    #           s3_bucket: "String",
    #           s3_key: "String",
    #           s3_version: "String",
    #           zip_file: "data",
    #           handler: "String", # required
    #         },
    #         artifact_s3_location: "String", # required
    #         execution_role_arn: "RoleArn", # required
    #         schedule: { # required
    #           expression: "String", # required
    #           duration_in_seconds: 1,
    #         },
    #         run_config: {
    #           timeout_in_seconds: 1,
    #           memory_in_mb: 1,
    #           active_tracing: false,
    #         },
    #         success_retention_period_in_days: 1,
    #         failure_retention_period_in_days: 1,
    #         runtime_version: "String", # required
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    #   screenshots, and HAR files.
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
    #   runs, such as timeout value.
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
    #   Specifies the runtime version to use for the canary. Currently, the
    #   only valid values are `syn-nodejs-2.0`, `syn-nodejs-2.0-beta`, and
    #   `syn-1.0`. For more information about runtime versions, see [ Canary
    #   Runtime Versions][1].
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
      :tags)
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

    # @note When making an API call, you may pass DeleteCanaryRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the canary that you want to delete. To find the names of
    #   your canaries, use [DescribeCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteCanaryRequest AWS API Documentation
    #
    class DeleteCanaryRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteCanaryResponse AWS API Documentation
    #
    class DeleteCanaryResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeCanariesLastRunRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there is more data available. You can
    #   use this token in a subsequent `DescribeCanaries` operation to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `DescribeLastRun` operation. If you omit this parameter,
    #   the default of 100 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesLastRunRequest AWS API Documentation
    #
    class DescribeCanariesLastRunRequest < Struct.new(
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass DescribeCanariesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesRequest AWS API Documentation
    #
    class DescribeCanariesRequest < Struct.new(
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass DescribeRuntimeVersionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass GetCanaryRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #       }
    #
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
    #   A strucure that contains the full information about the canary.
    #   @return [Types::Canary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanaryResponse AWS API Documentation
    #
    class GetCanaryResponse < Struct.new(
      :canary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCanaryRunsRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "CanaryArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the canary that you want to view tags for.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
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
    #   The list of tag keys and values associated with the canary that you
    #   specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
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
    #   The name of the runtime version. Currently, the only valid values
    #   are `syn-nodejs-2.0`, `syn-nodejs-2.0-beta`, and `syn-1.0`.
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

    # @note When making an API call, you may pass StartCanaryRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #       }
    #
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

    # @note When making an API call, you may pass StopCanaryRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the canary that you want to stop. To find the names of
    #   your canaries, use [DescribeCanaries][1].
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "CanaryArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the canary that you're adding tags to.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the canary.
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "CanaryArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the canary that you're removing tags from.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
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

    # @note When making an API call, you may pass UpdateCanaryRequest
    #   data as a hash:
    #
    #       {
    #         name: "CanaryName", # required
    #         code: {
    #           s3_bucket: "String",
    #           s3_key: "String",
    #           s3_version: "String",
    #           zip_file: "data",
    #           handler: "String", # required
    #         },
    #         execution_role_arn: "RoleArn",
    #         runtime_version: "String",
    #         schedule: {
    #           expression: "String", # required
    #           duration_in_seconds: 1,
    #         },
    #         run_config: {
    #           timeout_in_seconds: 1,
    #           memory_in_mb: 1,
    #           active_tracing: false,
    #         },
    #         success_retention_period_in_days: 1,
    #         failure_retention_period_in_days: 1,
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #         },
    #       }
    #
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
    #   Specifies the runtime version to use for the canary. Currently, the
    #   only valid values are `syn-nodejs-2.0`, `syn-nodejs-2.0-beta`, and
    #   `syn-1.0`. For more information about runtime versions, see [ Canary
    #   Runtime Versions][1].
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
      :vpc_config)
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

    # If this canary is to test an endpoint in a VPC, this structure
    # contains information about the subnets and security groups of the VPC
    # endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #
    # @note When making an API call, you may pass VpcConfigInput
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #       }
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
