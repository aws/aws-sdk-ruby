# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticBeanstalk
  module Types

    # @note When making an API call, you may pass AbortEnvironmentUpdateMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #       }
    #
    # @!attribute [rw] environment_id
    #   This specifies the ID of the environment with the in-progress update
    #   that you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   This specifies the name of the environment with the in-progress
    #   update that you want to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/AbortEnvironmentUpdateMessage AWS API Documentation
    #
    class AbortEnvironmentUpdateMessage < Struct.new(
      :environment_id,
      :environment_name)
      include Aws::Structure
    end

    # Describes the properties of an application.
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   User-defined description of the application.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date when the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The date when the application was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] versions
    #   The names of the versions for this application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration_templates
    #   The names of the configuration templates associated with this
    #   application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_lifecycle_config
    #   The lifecycle settings for the application.
    #   @return [Types::ApplicationResourceLifecycleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationDescription AWS API Documentation
    #
    class ApplicationDescription < Struct.new(
      :application_arn,
      :application_name,
      :description,
      :date_created,
      :date_updated,
      :versions,
      :configuration_templates,
      :resource_lifecycle_config)
      include Aws::Structure
    end

    # Result message containing a single description of an application.
    #
    # @!attribute [rw] application
    #   The ApplicationDescription of the application.
    #   @return [Types::ApplicationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationDescriptionMessage AWS API Documentation
    #
    class ApplicationDescriptionMessage < Struct.new(
      :application)
      include Aws::Structure
    end

    # Result message containing a list of application descriptions.
    #
    # @!attribute [rw] applications
    #   This parameter contains a list of ApplicationDescription.
    #   @return [Array<Types::ApplicationDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationDescriptionsMessage AWS API Documentation
    #
    class ApplicationDescriptionsMessage < Struct.new(
      :applications)
      include Aws::Structure
    end

    # Application request metrics for an AWS Elastic Beanstalk environment.
    #
    # @!attribute [rw] duration
    #   The amount of time that the metrics cover (usually 10 seconds). For
    #   example, you might have 5 requests (`request_count`) within the most
    #   recent time slice of 10 seconds (`duration`).
    #   @return [Integer]
    #
    # @!attribute [rw] request_count
    #   Average number of requests handled by the web server per second over
    #   the last 10 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] status_codes
    #   Represents the percentage of requests over the last 10 seconds that
    #   resulted in each type of status code response.
    #   @return [Types::StatusCodes]
    #
    # @!attribute [rw] latency
    #   Represents the average latency for the slowest X percent of requests
    #   over the last 10 seconds. Latencies are in seconds with one
    #   millisecond resolution.
    #   @return [Types::Latency]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationMetrics AWS API Documentation
    #
    class ApplicationMetrics < Struct.new(
      :duration,
      :request_count,
      :status_codes,
      :latency)
      include Aws::Structure
    end

    # The resource lifecycle configuration for an application. Defines
    # lifecycle settings for resources that belong to the application, and
    # the service role that Elastic Beanstalk assumes in order to apply
    # lifecycle settings. The version lifecycle configuration defines
    # lifecycle settings for application versions.
    #
    # @note When making an API call, you may pass ApplicationResourceLifecycleConfig
    #   data as a hash:
    #
    #       {
    #         service_role: "String",
    #         version_lifecycle_config: {
    #           max_count_rule: {
    #             enabled: false, # required
    #             max_count: 1,
    #             delete_source_from_s3: false,
    #           },
    #           max_age_rule: {
    #             enabled: false, # required
    #             max_age_in_days: 1,
    #             delete_source_from_s3: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] service_role
    #   The ARN of an IAM service role that Elastic Beanstalk has permission
    #   to assume.
    #
    #   The `ServiceRole` property is required the first time that you
    #   provide a `VersionLifecycleConfig` for the application in one of the
    #   supporting calls (`CreateApplication` or
    #   `UpdateApplicationResourceLifecycle`). After you provide it once, in
    #   either one of the calls, Elastic Beanstalk persists the Service Role
    #   with the application, and you don't need to specify it again in
    #   subsequent `UpdateApplicationResourceLifecycle` calls. You can,
    #   however, specify it in subsequent calls to change the Service Role
    #   to another value.
    #   @return [String]
    #
    # @!attribute [rw] version_lifecycle_config
    #   The application version lifecycle configuration.
    #   @return [Types::ApplicationVersionLifecycleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationResourceLifecycleConfig AWS API Documentation
    #
    class ApplicationResourceLifecycleConfig < Struct.new(
      :service_role,
      :version_lifecycle_config)
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_lifecycle_config
    #   The lifecycle configuration.
    #   @return [Types::ApplicationResourceLifecycleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationResourceLifecycleDescriptionMessage AWS API Documentation
    #
    class ApplicationResourceLifecycleDescriptionMessage < Struct.new(
      :application_name,
      :resource_lifecycle_config)
      include Aws::Structure
    end

    # Describes the properties of an application version.
    #
    # @!attribute [rw] application_version_arn
    #   The Amazon Resource Name (ARN) of the application version.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application to which the application version
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application version.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   A unique identifier for the application version.
    #   @return [String]
    #
    # @!attribute [rw] source_build_information
    #   If the version's source code was retrieved from AWS CodeCommit, the
    #   location of the source code for the application version.
    #   @return [Types::SourceBuildInformation]
    #
    # @!attribute [rw] build_arn
    #   Reference to the artifact from the AWS CodeBuild build.
    #   @return [String]
    #
    # @!attribute [rw] source_bundle
    #   The storage location of the application version's source bundle in
    #   Amazon S3.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] date_created
    #   The creation date of the application version.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The last modified date of the application version.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The processing status of the application version. Reflects the state
    #   of the application version during its creation. Many of the values
    #   are only applicable if you specified `True` for the `Process`
    #   parameter of the `CreateApplicationVersion` action. The following
    #   list describes the possible values.
    #
    #   * `Unprocessed` – Application version wasn't pre-processed or
    #     validated. Elastic Beanstalk will validate configuration files
    #     during deployment of the application version to an environment.
    #
    #   * `Processing` – Elastic Beanstalk is currently processing the
    #     application version.
    #
    #   * `Building` – Application version is currently undergoing an AWS
    #     CodeBuild build.
    #
    #   * `Processed` – Elastic Beanstalk was successfully pre-processed and
    #     validated.
    #
    #   * `Failed` – Either the AWS CodeBuild build failed or configuration
    #     files didn't pass validation. This application version isn't
    #     usable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationVersionDescription AWS API Documentation
    #
    class ApplicationVersionDescription < Struct.new(
      :application_version_arn,
      :application_name,
      :description,
      :version_label,
      :source_build_information,
      :build_arn,
      :source_bundle,
      :date_created,
      :date_updated,
      :status)
      include Aws::Structure
    end

    # Result message wrapping a single description of an application
    # version.
    #
    # @!attribute [rw] application_version
    #   The ApplicationVersionDescription of the application version.
    #   @return [Types::ApplicationVersionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationVersionDescriptionMessage AWS API Documentation
    #
    class ApplicationVersionDescriptionMessage < Struct.new(
      :application_version)
      include Aws::Structure
    end

    # Result message wrapping a list of application version descriptions.
    #
    # @!attribute [rw] application_versions
    #   List of `ApplicationVersionDescription` objects sorted in order of
    #   creation.
    #   @return [Array<Types::ApplicationVersionDescription>]
    #
    # @!attribute [rw] next_token
    #   In a paginated request, the token that you can pass in a subsequent
    #   request to get the next response page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationVersionDescriptionsMessage AWS API Documentation
    #
    class ApplicationVersionDescriptionsMessage < Struct.new(
      :application_versions,
      :next_token)
      include Aws::Structure
    end

    # The application version lifecycle settings for an application. Defines
    # the rules that Elastic Beanstalk applies to an application's versions
    # in order to avoid hitting the per-region limit for application
    # versions.
    #
    # When Elastic Beanstalk deletes an application version from its
    # database, you can no longer deploy that version to an environment. The
    # source bundle remains in S3 unless you configure the rule to delete
    # it.
    #
    # @note When making an API call, you may pass ApplicationVersionLifecycleConfig
    #   data as a hash:
    #
    #       {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false,
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false,
    #         },
    #       }
    #
    # @!attribute [rw] max_count_rule
    #   Specify a max count rule to restrict the number of application
    #   versions that are retained for an application.
    #   @return [Types::MaxCountRule]
    #
    # @!attribute [rw] max_age_rule
    #   Specify a max age rule to restrict the length of time that
    #   application versions are retained for an application.
    #   @return [Types::MaxAgeRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplicationVersionLifecycleConfig AWS API Documentation
    #
    class ApplicationVersionLifecycleConfig < Struct.new(
      :max_count_rule,
      :max_age_rule)
      include Aws::Structure
    end

    # Request to execute a scheduled managed action immediately.
    #
    # @note When making an API call, you may pass ApplyEnvironmentManagedActionRequest
    #   data as a hash:
    #
    #       {
    #         environment_name: "String",
    #         environment_id: "String",
    #         action_id: "String", # required
    #       }
    #
    # @!attribute [rw] environment_name
    #   The name of the target environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the target environment.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   The action ID of the scheduled managed action to execute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplyEnvironmentManagedActionRequest AWS API Documentation
    #
    class ApplyEnvironmentManagedActionRequest < Struct.new(
      :environment_name,
      :environment_id,
      :action_id)
      include Aws::Structure
    end

    # The result message containing information about the managed action.
    #
    # @!attribute [rw] action_id
    #   The action ID of the managed action.
    #   @return [String]
    #
    # @!attribute [rw] action_description
    #   A description of the managed action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of managed action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the managed action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ApplyEnvironmentManagedActionResult AWS API Documentation
    #
    class ApplyEnvironmentManagedActionResult < Struct.new(
      :action_id,
      :action_description,
      :action_type,
      :status)
      include Aws::Structure
    end

    # Describes an Auto Scaling launch configuration.
    #
    # @!attribute [rw] name
    #   The name of the `AutoScalingGroup` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/AutoScalingGroup AWS API Documentation
    #
    class AutoScalingGroup < Struct.new(
      :name)
      include Aws::Structure
    end

    # Settings for an AWS CodeBuild build.
    #
    # @note When making an API call, you may pass BuildConfiguration
    #   data as a hash:
    #
    #       {
    #         artifact_name: "String",
    #         code_build_service_role: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #         image: "NonEmptyString", # required
    #         timeout_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] artifact_name
    #   The name of the artifact of the CodeBuild build. If provided,
    #   Elastic Beanstalk stores the build artifact in the S3 location
    #   *S3-bucket*/resources/*application-name*/codebuild/codebuild-*version-label*-*artifact-name*.zip.
    #   If not provided, Elastic Beanstalk stores the build artifact in the
    #   S3 location
    #   *S3-bucket*/resources/*application-name*/codebuild/codebuild-*version-label*.zip.
    #   @return [String]
    #
    # @!attribute [rw] code_build_service_role
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that enables AWS CodeBuild to interact with
    #   dependent AWS services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the build project will use.
    #
    #   * `BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for
    #     builds`
    #
    #   * `BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for
    #     builds`
    #
    #   * `BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for
    #     builds`
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The ID of the Docker image to use for this build project.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait until timing out any related build that does not get marked as
    #   completed. The default is 60 minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/BuildConfiguration AWS API Documentation
    #
    class BuildConfiguration < Struct.new(
      :artifact_name,
      :code_build_service_role,
      :compute_type,
      :image,
      :timeout_in_minutes)
      include Aws::Structure
    end

    # The builder used to build the custom platform.
    #
    # @!attribute [rw] arn
    #   The ARN of the builder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Builder AWS API Documentation
    #
    class Builder < Struct.new(
      :arn)
      include Aws::Structure
    end

    # CPU utilization metrics for an instance.
    #
    # @!attribute [rw] user
    #   Percentage of time that the CPU has spent in the `User` state over
    #   the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] nice
    #   Available on Linux environments only.
    #
    #   Percentage of time that the CPU has spent in the `Nice` state over
    #   the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] system
    #   Available on Linux environments only.
    #
    #   Percentage of time that the CPU has spent in the `System` state over
    #   the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] idle
    #   Percentage of time that the CPU has spent in the `Idle` state over
    #   the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] io_wait
    #   Available on Linux environments only.
    #
    #   Percentage of time that the CPU has spent in the `I/O Wait` state
    #   over the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] irq
    #   Available on Linux environments only.
    #
    #   Percentage of time that the CPU has spent in the `IRQ` state over
    #   the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] soft_irq
    #   Available on Linux environments only.
    #
    #   Percentage of time that the CPU has spent in the `SoftIRQ` state
    #   over the last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] privileged
    #   Available on Windows environments only.
    #
    #   Percentage of time that the CPU has spent in the `Privileged` state
    #   over the last 10 seconds.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CPUUtilization AWS API Documentation
    #
    class CPUUtilization < Struct.new(
      :user,
      :nice,
      :system,
      :idle,
      :io_wait,
      :irq,
      :soft_irq,
      :privileged)
      include Aws::Structure
    end

    # Results message indicating whether a CNAME is available.
    #
    # @note When making an API call, you may pass CheckDNSAvailabilityMessage
    #   data as a hash:
    #
    #       {
    #         cname_prefix: "DNSCnamePrefix", # required
    #       }
    #
    # @!attribute [rw] cname_prefix
    #   The prefix used when this CNAME is reserved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CheckDNSAvailabilityMessage AWS API Documentation
    #
    class CheckDNSAvailabilityMessage < Struct.new(
      :cname_prefix)
      include Aws::Structure
    end

    # Indicates if the specified CNAME is available.
    #
    # @!attribute [rw] available
    #   Indicates if the specified CNAME is available:
    #
    #   * `true`\: The CNAME is available.
    #
    #   * `false`\: The CNAME is not available.
    #   @return [Boolean]
    #
    # @!attribute [rw] fully_qualified_cname
    #   The fully qualified CNAME to reserve when CreateEnvironment is
    #   called with the provided prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CheckDNSAvailabilityResultMessage AWS API Documentation
    #
    class CheckDNSAvailabilityResultMessage < Struct.new(
      :available,
      :fully_qualified_cname)
      include Aws::Structure
    end

    # Request to create or update a group of environments.
    #
    # @note When making an API call, you may pass ComposeEnvironmentsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         group_name: "GroupName",
    #         version_labels: ["VersionLabel"],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application to which the specified source bundles
    #   belong.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group to which the target environments belong.
    #   Specify a group name only if the environment name defined in each
    #   target environment's manifest ends with a + (plus) character. See
    #   [Environment Manifest (env.yaml)][1] for details.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #   @return [String]
    #
    # @!attribute [rw] version_labels
    #   A list of version labels, specifying one or more application source
    #   bundles that belong to the target application. Each source bundle
    #   must include an environment manifest that specifies the name of the
    #   environment and the name of the solution stack to use, and
    #   optionally can specify environment links to create.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ComposeEnvironmentsMessage AWS API Documentation
    #
    class ComposeEnvironmentsMessage < Struct.new(
      :application_name,
      :group_name,
      :version_labels)
      include Aws::Structure
    end

    # Describes the possible values for a configuration option.
    #
    # @!attribute [rw] namespace
    #   A unique namespace identifying the option's associated AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration option.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for this configuration option.
    #   @return [String]
    #
    # @!attribute [rw] change_severity
    #   An indication of which action is required if the value for this
    #   configuration option changes:
    #
    #   * `NoInterruption`\: There is no interruption to the environment or
    #     application availability.
    #
    #   * `RestartEnvironment`\: The environment is entirely restarted, all
    #     AWS resources are deleted and recreated, and the environment is
    #     unavailable during the process.
    #
    #   * `RestartApplicationServer`\: The environment is available the
    #     entire time. However, a short application outage occurs when the
    #     application servers on the running Amazon EC2 instances are
    #     restarted.
    #   @return [String]
    #
    # @!attribute [rw] user_defined
    #   An indication of whether the user defined this configuration option:
    #
    #   * `true`\: This configuration option was defined by the user. It is
    #     a valid choice for specifying if this as an `Option to Remove`
    #     when updating configuration settings.
    #
    #   * `false`\: This configuration was not defined by the user.
    #
    #   Constraint: You can remove only `UserDefined` options from a
    #   configuration.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] value_type
    #   An indication of which type of values this option has and whether it
    #   is allowable to select one or more than one of the possible values:
    #
    #   * `Scalar`\: Values for this option are a single selection from the
    #     possible values, or an unformatted string, or numeric value
    #     governed by the `MIN/MAX/Regex` constraints.
    #
    #   * `List`\: Values for this option are multiple selections from the
    #     possible values.
    #
    #   * `Boolean`\: Values for this option are either `true` or `false` .
    #
    #   * `Json`\: Values for this option are a JSON representation of a
    #     `ConfigDocument`.
    #   @return [String]
    #
    # @!attribute [rw] value_options
    #   If specified, values for the configuration option are selected from
    #   this list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_value
    #   If specified, the configuration option must be a numeric value
    #   greater than this value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   If specified, the configuration option must be a numeric value less
    #   than this value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_length
    #   If specified, the configuration option must be a string value no
    #   longer than this value.
    #   @return [Integer]
    #
    # @!attribute [rw] regex
    #   If specified, the configuration option must be a string value that
    #   satisfies this regular expression.
    #   @return [Types::OptionRestrictionRegex]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ConfigurationOptionDescription AWS API Documentation
    #
    class ConfigurationOptionDescription < Struct.new(
      :namespace,
      :name,
      :default_value,
      :change_severity,
      :user_defined,
      :value_type,
      :value_options,
      :min_value,
      :max_value,
      :max_length,
      :regex)
      include Aws::Structure
    end

    # A specification identifying an individual configuration option along
    # with its current value. For a list of possible option values, go to
    # [Option Values][1] in the *AWS Elastic Beanstalk Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html
    #
    # @note When making an API call, you may pass ConfigurationOptionSetting
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue",
    #       }
    #
    # @!attribute [rw] resource_name
    #   A unique resource name for a time-based scaling configuration
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   A unique namespace identifying the option's associated AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] option_name
    #   The name of the configuration option.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The current value for the configuration option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ConfigurationOptionSetting AWS API Documentation
    #
    class ConfigurationOptionSetting < Struct.new(
      :resource_name,
      :namespace,
      :option_name,
      :value)
      include Aws::Structure
    end

    # Describes the settings for a specified configuration set.
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack these configuration options belong
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   A list of ConfigurationOptionDescription.
    #   @return [Array<Types::ConfigurationOptionDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ConfigurationOptionsDescription AWS API Documentation
    #
    class ConfigurationOptionsDescription < Struct.new(
      :solution_stack_name,
      :platform_arn,
      :options)
      include Aws::Structure
    end

    # Describes the settings for a configuration set.
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack this configuration set uses.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application associated with this configuration set.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   If not `null`, the name of the configuration template for this
    #   configuration set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes this configuration set.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   If not `null`, the name of the environment for this configuration
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   If this configuration set is associated with an environment, the
    #   `DeploymentStatus` parameter indicates the deployment status of this
    #   configuration set:
    #
    #   * `null`\: This configuration is not associated with a running
    #     environment.
    #
    #   * `pending`\: This is a draft configuration that is not deployed to
    #     the associated environment but is in the process of deploying.
    #
    #   * `deployed`\: This is the configuration that is currently deployed
    #     to the associated running environment.
    #
    #   * `failed`\: This is a draft configuration that failed to
    #     successfully deploy.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date (in UTC time) when this configuration set was created.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The date (in UTC time) when this configuration set was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] option_settings
    #   A list of the configuration options and their values in this
    #   configuration set.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ConfigurationSettingsDescription AWS API Documentation
    #
    class ConfigurationSettingsDescription < Struct.new(
      :solution_stack_name,
      :platform_arn,
      :application_name,
      :template_name,
      :description,
      :environment_name,
      :deployment_status,
      :date_created,
      :date_updated,
      :option_settings)
      include Aws::Structure
    end

    # The results from a request to change the configuration settings of an
    # environment.
    #
    # @!attribute [rw] configuration_settings
    #   A list of ConfigurationSettingsDescription.
    #   @return [Array<Types::ConfigurationSettingsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ConfigurationSettingsDescriptions AWS API Documentation
    #
    class ConfigurationSettingsDescriptions < Struct.new(
      :configuration_settings)
      include Aws::Structure
    end

    # Provides a list of validation messages.
    #
    # @!attribute [rw] messages
    #   A list of ValidationMessage.
    #   @return [Array<Types::ValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ConfigurationSettingsValidationMessages AWS API Documentation
    #
    class ConfigurationSettingsValidationMessages < Struct.new(
      :messages)
      include Aws::Structure
    end

    # Request to create an application.
    #
    # @note When making an API call, you may pass CreateApplicationMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         description: "Description",
    #         resource_lifecycle_config: {
    #           service_role: "String",
    #           version_lifecycle_config: {
    #             max_count_rule: {
    #               enabled: false, # required
    #               max_count: 1,
    #               delete_source_from_s3: false,
    #             },
    #             max_age_rule: {
    #               enabled: false, # required
    #               max_age_in_days: 1,
    #               delete_source_from_s3: false,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #
    #   Constraint: This name must be unique within your account. If the
    #   specified name already exists, the action returns an
    #   `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_lifecycle_config
    #   Specify an application resource lifecycle configuration to prevent
    #   your application from accumulating too many versions.
    #   @return [Types::ApplicationResourceLifecycleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateApplicationMessage AWS API Documentation
    #
    class CreateApplicationMessage < Struct.new(
      :application_name,
      :description,
      :resource_lifecycle_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationVersionMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         version_label: "VersionLabel", # required
    #         description: "Description",
    #         source_build_information: {
    #           source_type: "Git", # required, accepts Git, Zip
    #           source_repository: "CodeCommit", # required, accepts CodeCommit, S3
    #           source_location: "SourceLocation", # required
    #         },
    #         source_bundle: {
    #           s3_bucket: "S3Bucket",
    #           s3_key: "S3Key",
    #         },
    #         build_configuration: {
    #           artifact_name: "String",
    #           code_build_service_role: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #           image: "NonEmptyString", # required
    #           timeout_in_minutes: 1,
    #         },
    #         auto_create_application: false,
    #         process: false,
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application. If no application is found with this
    #   name, and `AutoCreateApplication` is `false`, returns an
    #   `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   A label identifying this version.
    #
    #   Constraint: Must be unique per application. If an application
    #   version already exists with this label for the specified
    #   application, AWS Elastic Beanstalk returns an
    #   `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes this version.
    #   @return [String]
    #
    # @!attribute [rw] source_build_information
    #   Specify a commit in an AWS CodeCommit Git repository to use as the
    #   source code for the application version.
    #   @return [Types::SourceBuildInformation]
    #
    # @!attribute [rw] source_bundle
    #   The Amazon S3 bucket and key that identify the location of the
    #   source bundle for this version.
    #
    #   <note markdown="1"> The Amazon S3 bucket must be in the same region as the environment.
    #
    #    </note>
    #
    #   Specify a source bundle in S3 or a commit in an AWS CodeCommit
    #   repository (with `SourceBuildInformation`), but not both. If neither
    #   `SourceBundle` nor `SourceBuildInformation` are provided, Elastic
    #   Beanstalk uses a sample application.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] build_configuration
    #   Settings for an AWS CodeBuild build.
    #   @return [Types::BuildConfiguration]
    #
    # @!attribute [rw] auto_create_application
    #   Set to `true` to create an application with the specified name if it
    #   doesn't already exist.
    #   @return [Boolean]
    #
    # @!attribute [rw] process
    #   Pre-processes and validates the environment manifest (`env.yaml`)
    #   and configuration files (`*.config` files in the `.ebextensions`
    #   folder) in the source bundle. Validating configuration files can
    #   identify issues prior to deploying the application version to an
    #   environment.
    #
    #   You must turn processing on for application versions that you create
    #   using AWS CodeBuild or AWS CodeCommit. For application versions
    #   built from a source bundle in Amazon S3, processing is optional.
    #
    #   <note markdown="1"> The `Process` option validates Elastic Beanstalk configuration
    #   files. It doesn't validate your application's configuration files,
    #   like proxy server or Docker configuration.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateApplicationVersionMessage AWS API Documentation
    #
    class CreateApplicationVersionMessage < Struct.new(
      :application_name,
      :version_label,
      :description,
      :source_build_information,
      :source_bundle,
      :build_configuration,
      :auto_create_application,
      :process)
      include Aws::Structure
    end

    # Request to create a configuration template.
    #
    # @note When making an API call, you may pass CreateConfigurationTemplateMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         template_name: "ConfigurationTemplateName", # required
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         source_configuration: {
    #           application_name: "ApplicationName",
    #           template_name: "ConfigurationTemplateName",
    #         },
    #         environment_id: "EnvironmentId",
    #         description: "Description",
    #         option_settings: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application to associate with this configuration
    #   template. If no application is found with this name, AWS Elastic
    #   Beanstalk returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template.
    #
    #   Constraint: This name must be unique per application.
    #
    #   Default: If a configuration template already exists with this name,
    #   AWS Elastic Beanstalk returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack used by this configuration. The
    #   solution stack specifies the operating system, architecture, and
    #   application server for a configuration template. It determines the
    #   set of configuration options as well as the possible and default
    #   values.
    #
    #   Use ListAvailableSolutionStacks to obtain a list of available
    #   solution stacks.
    #
    #   A solution stack name or a source configuration parameter must be
    #   specified, otherwise AWS Elastic Beanstalk returns an
    #   `InvalidParameterValue` error.
    #
    #   If a solution stack name is not specified and the source
    #   configuration parameter is specified, AWS Elastic Beanstalk uses the
    #   same solution stack as the source configuration template.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the custom platform.
    #   @return [String]
    #
    # @!attribute [rw] source_configuration
    #   If specified, AWS Elastic Beanstalk uses the configuration values
    #   from the specified configuration template to create a new
    #   configuration.
    #
    #   Values specified in the `OptionSettings` parameter of this call
    #   overrides any values obtained from the `SourceConfiguration`.
    #
    #   If no configuration template is found, returns an
    #   `InvalidParameterValue` error.
    #
    #   Constraint: If both the solution stack name parameter and the source
    #   configuration parameters are specified, the solution stack of the
    #   source configuration template must match the specified solution
    #   stack name or else AWS Elastic Beanstalk returns an
    #   `InvalidParameterCombination` error.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment used with this configuration template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes this configuration.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   If specified, AWS Elastic Beanstalk sets the specified configuration
    #   option to the requested value. The new value overrides the value
    #   obtained from the solution stack or the source configuration
    #   template.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateConfigurationTemplateMessage AWS API Documentation
    #
    class CreateConfigurationTemplateMessage < Struct.new(
      :application_name,
      :template_name,
      :solution_stack_name,
      :platform_arn,
      :source_configuration,
      :environment_id,
      :description,
      :option_settings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         environment_name: "EnvironmentName",
    #         group_name: "GroupName",
    #         description: "Description",
    #         cname_prefix: "DNSCnamePrefix",
    #         tier: {
    #           name: "String",
    #           type: "String",
    #           version: "String",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         version_label: "VersionLabel",
    #         template_name: "ConfigurationTemplateName",
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         option_settings: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue",
    #           },
    #         ],
    #         options_to_remove: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application that contains the version to be
    #   deployed.
    #
    #   If no application is found with this name, `CreateEnvironment`
    #   returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   A unique name for the deployment environment. Used in the
    #   application URL.
    #
    #   Constraint: Must be from 4 to 40 characters in length. The name can
    #   contain only letters, numbers, and hyphens. It cannot start or end
    #   with a hyphen. This name must be unique within a region in your
    #   account. If the specified name already exists in the region, AWS
    #   Elastic Beanstalk returns an `InvalidParameterValue` error.
    #
    #   Default: If the CNAME parameter is not specified, the environment
    #   name becomes part of the CNAME, and therefore part of the visible
    #   URL for your application.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group to which the target environment belongs.
    #   Specify a group name only if the environment's name is specified in
    #   an environment manifest and not with the environment name parameter.
    #   See [Environment Manifest (env.yaml)][1] for details.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes this environment.
    #   @return [String]
    #
    # @!attribute [rw] cname_prefix
    #   If specified, the environment attempts to use this value as the
    #   prefix for the CNAME. If not specified, the CNAME is generated
    #   automatically by appending a random alphanumeric string to the
    #   environment name.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   This specifies the tier to use for creating this environment.
    #   @return [Types::EnvironmentTier]
    #
    # @!attribute [rw] tags
    #   This specifies the tags applied to resources in the environment.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_label
    #   The name of the application version to deploy.
    #
    #   If the specified application has no associated application versions,
    #   AWS Elastic Beanstalk `UpdateEnvironment` returns an
    #   `InvalidParameterValue` error.
    #
    #   Default: If not specified, AWS Elastic Beanstalk attempts to launch
    #   the sample application in the container.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template to use in deployment. If no
    #   configuration template is found with this name, AWS Elastic
    #   Beanstalk returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   This is an alternative to specifying a template name. If specified,
    #   AWS Elastic Beanstalk sets the configuration values to the default
    #   values associated with the specified solution stack.
    #
    #   For a list of current solution stacks, see [Elastic Beanstalk
    #   Supported Platforms][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   If specified, AWS Elastic Beanstalk sets the specified configuration
    #   options to the requested value in the configuration set for the new
    #   environment. These override the values obtained from the solution
    #   stack or the configuration template.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @!attribute [rw] options_to_remove
    #   A list of custom user-defined configuration options to remove from
    #   the configuration set for this new environment.
    #   @return [Array<Types::OptionSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateEnvironmentMessage AWS API Documentation
    #
    class CreateEnvironmentMessage < Struct.new(
      :application_name,
      :environment_name,
      :group_name,
      :description,
      :cname_prefix,
      :tier,
      :tags,
      :version_label,
      :template_name,
      :solution_stack_name,
      :platform_arn,
      :option_settings,
      :options_to_remove)
      include Aws::Structure
    end

    # Request to create a new platform version.
    #
    # @note When making an API call, you may pass CreatePlatformVersionRequest
    #   data as a hash:
    #
    #       {
    #         platform_name: "PlatformName", # required
    #         platform_version: "PlatformVersion", # required
    #         platform_definition_bundle: { # required
    #           s3_bucket: "S3Bucket",
    #           s3_key: "S3Key",
    #         },
    #         environment_name: "EnvironmentName",
    #         option_settings: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] platform_name
    #   The name of your custom platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The number, such as 1.0.2, for the new platform version.
    #   @return [String]
    #
    # @!attribute [rw] platform_definition_bundle
    #   The location of the platform definition archive in Amazon S3.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] environment_name
    #   The name of the builder environment.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   The configuration option settings to apply to the builder
    #   environment.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreatePlatformVersionRequest AWS API Documentation
    #
    class CreatePlatformVersionRequest < Struct.new(
      :platform_name,
      :platform_version,
      :platform_definition_bundle,
      :environment_name,
      :option_settings)
      include Aws::Structure
    end

    # @!attribute [rw] platform_summary
    #   Detailed information about the new version of the custom platform.
    #   @return [Types::PlatformSummary]
    #
    # @!attribute [rw] builder
    #   The builder used to create the custom platform.
    #   @return [Types::Builder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreatePlatformVersionResult AWS API Documentation
    #
    class CreatePlatformVersionResult < Struct.new(
      :platform_summary,
      :builder)
      include Aws::Structure
    end

    # Results of a CreateStorageLocationResult call.
    #
    # @!attribute [rw] s3_bucket
    #   The name of the Amazon S3 bucket created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CreateStorageLocationResultMessage AWS API Documentation
    #
    class CreateStorageLocationResultMessage < Struct.new(
      :s3_bucket)
      include Aws::Structure
    end

    # A custom AMI available to platforms.
    #
    # @!attribute [rw] virtualization_type
    #   The type of virtualization used to create the custom AMI.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   THe ID of the image used to create the custom AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/CustomAmi AWS API Documentation
    #
    class CustomAmi < Struct.new(
      :virtualization_type,
      :image_id)
      include Aws::Structure
    end

    # Request to delete an application.
    #
    # @note When making an API call, you may pass DeleteApplicationMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         terminate_env_by_force: false,
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application to delete.
    #   @return [String]
    #
    # @!attribute [rw] terminate_env_by_force
    #   When set to true, running environments will be terminated before
    #   deleting the application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteApplicationMessage AWS API Documentation
    #
    class DeleteApplicationMessage < Struct.new(
      :application_name,
      :terminate_env_by_force)
      include Aws::Structure
    end

    # Request to delete an application version.
    #
    # @note When making an API call, you may pass DeleteApplicationVersionMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         version_label: "VersionLabel", # required
    #         delete_source_bundle: false,
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application to which the version belongs.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   The label of the version to delete.
    #   @return [String]
    #
    # @!attribute [rw] delete_source_bundle
    #   Set to `true` to delete the source bundle from your storage bucket.
    #   Otherwise, the application version is deleted only from Elastic
    #   Beanstalk and the source bundle remains in Amazon S3.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteApplicationVersionMessage AWS API Documentation
    #
    class DeleteApplicationVersionMessage < Struct.new(
      :application_name,
      :version_label,
      :delete_source_bundle)
      include Aws::Structure
    end

    # Request to delete a configuration template.
    #
    # @note When making an API call, you may pass DeleteConfigurationTemplateMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         template_name: "ConfigurationTemplateName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application to delete the configuration template
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteConfigurationTemplateMessage AWS API Documentation
    #
    class DeleteConfigurationTemplateMessage < Struct.new(
      :application_name,
      :template_name)
      include Aws::Structure
    end

    # Request to delete a draft environment configuration.
    #
    # @note When making an API call, you may pass DeleteEnvironmentConfigurationMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         environment_name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application the environment is associated with.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to delete the draft configuration from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeleteEnvironmentConfigurationMessage AWS API Documentation
    #
    class DeleteEnvironmentConfigurationMessage < Struct.new(
      :application_name,
      :environment_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePlatformVersionRequest
    #   data as a hash:
    #
    #       {
    #         platform_arn: "PlatformArn",
    #       }
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the version of the custom platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeletePlatformVersionRequest AWS API Documentation
    #
    class DeletePlatformVersionRequest < Struct.new(
      :platform_arn)
      include Aws::Structure
    end

    # @!attribute [rw] platform_summary
    #   Detailed information about the version of the custom platform.
    #   @return [Types::PlatformSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DeletePlatformVersionResult AWS API Documentation
    #
    class DeletePlatformVersionResult < Struct.new(
      :platform_summary)
      include Aws::Structure
    end

    # Information about an application version deployment.
    #
    # @!attribute [rw] version_label
    #   The version label of the application version in the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment. This number increases by one each time
    #   that you deploy source code or change instance configuration
    #   settings.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the deployment:
    #
    #   * `In Progress`\: The deployment is in progress.
    #
    #   * `Deployed`\: The deployment succeeded.
    #
    #   * `Failed`\: The deployment failed.
    #   @return [String]
    #
    # @!attribute [rw] deployment_time
    #   For in-progress deployments, the time that the deployment started.
    #
    #   For completed deployments, the time that the deployment ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :version_label,
      :deployment_id,
      :status,
      :deployment_time)
      include Aws::Structure
    end

    # @!attribute [rw] resource_quotas
    #   The Elastic Beanstalk resource quotas associated with the calling
    #   AWS account.
    #   @return [Types::ResourceQuotas]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeAccountAttributesResult AWS API Documentation
    #
    class DescribeAccountAttributesResult < Struct.new(
      :resource_quotas)
      include Aws::Structure
    end

    # Request to describe application versions.
    #
    # @note When making an API call, you may pass DescribeApplicationVersionsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         version_labels: ["VersionLabel"],
    #         max_records: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] application_name
    #   Specify an application name to show only application versions for
    #   that application.
    #   @return [String]
    #
    # @!attribute [rw] version_labels
    #   Specify a version label to show a specific application version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_records
    #   For a paginated request. Specify a maximum number of application
    #   versions to include in each response.
    #
    #   If no `MaxRecords` is specified, all available application versions
    #   are retrieved in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For a paginated request. Specify a token from a previous response
    #   page to retrieve the next response page. All other parameter values
    #   must be identical to the ones specified in the initial request.
    #
    #   If no `NextToken` is specified, the first page is retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeApplicationVersionsMessage AWS API Documentation
    #
    class DescribeApplicationVersionsMessage < Struct.new(
      :application_name,
      :version_labels,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # Request to describe one or more applications.
    #
    # @note When making an API call, you may pass DescribeApplicationsMessage
    #   data as a hash:
    #
    #       {
    #         application_names: ["ApplicationName"],
    #       }
    #
    # @!attribute [rw] application_names
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to only include those with the specified names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeApplicationsMessage AWS API Documentation
    #
    class DescribeApplicationsMessage < Struct.new(
      :application_names)
      include Aws::Structure
    end

    # Result message containing a list of application version descriptions.
    #
    # @note When making an API call, you may pass DescribeConfigurationOptionsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         template_name: "ConfigurationTemplateName",
    #         environment_name: "EnvironmentName",
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         options: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application associated with the configuration
    #   template or environment. Only needed if you want to describe the
    #   configuration options associated with either the configuration
    #   template or environment.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template whose configuration options
    #   you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment whose configuration options you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack whose configuration options you want
    #   to describe.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the custom platform.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   If specified, restricts the descriptions to only the specified
    #   options.
    #   @return [Array<Types::OptionSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeConfigurationOptionsMessage AWS API Documentation
    #
    class DescribeConfigurationOptionsMessage < Struct.new(
      :application_name,
      :template_name,
      :environment_name,
      :solution_stack_name,
      :platform_arn,
      :options)
      include Aws::Structure
    end

    # Result message containing all of the configuration settings for a
    # specified solution stack or configuration template.
    #
    # @note When making an API call, you may pass DescribeConfigurationSettingsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         template_name: "ConfigurationTemplateName",
    #         environment_name: "EnvironmentName",
    #       }
    #
    # @!attribute [rw] application_name
    #   The application for the environment or configuration template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template to describe.
    #
    #   Conditional: You must specify either this parameter or an
    #   EnvironmentName, but not both. If you specify both, AWS Elastic
    #   Beanstalk returns an `InvalidParameterCombination` error. If you do
    #   not specify either, AWS Elastic Beanstalk returns a
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to describe.
    #
    #   Condition: You must specify either this or a TemplateName, but not
    #   both. If you specify both, AWS Elastic Beanstalk returns an
    #   `InvalidParameterCombination` error. If you do not specify either,
    #   AWS Elastic Beanstalk returns `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeConfigurationSettingsMessage AWS API Documentation
    #
    class DescribeConfigurationSettingsMessage < Struct.new(
      :application_name,
      :template_name,
      :environment_name)
      include Aws::Structure
    end

    # See the example below to learn how to create a request body.
    #
    # @note When making an API call, you may pass DescribeEnvironmentHealthRequest
    #   data as a hash:
    #
    #       {
    #         environment_name: "EnvironmentName",
    #         environment_id: "EnvironmentId",
    #         attribute_names: ["Status"], # accepts Status, Color, Causes, ApplicationMetrics, InstancesHealth, All, HealthStatus, RefreshedAt
    #       }
    #
    # @!attribute [rw] environment_name
    #   Specify the environment by name.
    #
    #   You must specify either this or an EnvironmentName, or both.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   Specify the environment by ID.
    #
    #   You must specify either this or an EnvironmentName, or both.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   Specify the response elements to return. To retrieve all attributes,
    #   set to `All`. If no attribute names are specified, returns the name
    #   of the environment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentHealthRequest AWS API Documentation
    #
    class DescribeEnvironmentHealthRequest < Struct.new(
      :environment_name,
      :environment_id,
      :attribute_names)
      include Aws::Structure
    end

    # Health details for an AWS Elastic Beanstalk environment.
    #
    # @!attribute [rw] environment_name
    #   The environment's name.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The [health status][1] of the environment. For example, `Ok`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The environment's operational status. `Ready`, `Launching`,
    #   `Updating`, `Terminating`, or `Terminated`.
    #   @return [String]
    #
    # @!attribute [rw] color
    #   The [health color][1] of the environment.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
    #   @return [String]
    #
    # @!attribute [rw] causes
    #   Descriptions of the data that contributed to the environment's
    #   current health status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] application_metrics
    #   Application request metrics for the environment.
    #   @return [Types::ApplicationMetrics]
    #
    # @!attribute [rw] instances_health
    #   Summary health information for the instances in the environment.
    #   @return [Types::InstanceHealthSummary]
    #
    # @!attribute [rw] refreshed_at
    #   The date and time that the health information was retrieved.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentHealthResult AWS API Documentation
    #
    class DescribeEnvironmentHealthResult < Struct.new(
      :environment_name,
      :health_status,
      :status,
      :color,
      :causes,
      :application_metrics,
      :instances_health,
      :refreshed_at)
      include Aws::Structure
    end

    # Request to list completed and failed managed actions.
    #
    # @note When making an API call, you may pass DescribeEnvironmentManagedActionHistoryRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         next_token: "String",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the target environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the target environment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of items to return for a single request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActionHistoryRequest AWS API Documentation
    #
    class DescribeEnvironmentManagedActionHistoryRequest < Struct.new(
      :environment_id,
      :environment_name,
      :next_token,
      :max_items)
      include Aws::Structure
    end

    # A result message containing a list of completed and failed managed
    # actions.
    #
    # @!attribute [rw] managed_action_history_items
    #   A list of completed and failed managed actions.
    #   @return [Array<Types::ManagedActionHistoryItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that you pass to
    #   DescribeEnvironmentManagedActionHistory to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActionHistoryResult AWS API Documentation
    #
    class DescribeEnvironmentManagedActionHistoryResult < Struct.new(
      :managed_action_history_items,
      :next_token)
      include Aws::Structure
    end

    # Request to list an environment's upcoming and in-progress managed
    # actions.
    #
    # @note When making an API call, you may pass DescribeEnvironmentManagedActionsRequest
    #   data as a hash:
    #
    #       {
    #         environment_name: "String",
    #         environment_id: "String",
    #         status: "Scheduled", # accepts Scheduled, Pending, Running, Unknown
    #       }
    #
    # @!attribute [rw] environment_name
    #   The name of the target environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the target environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   To show only actions with a particular status, specify a status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActionsRequest AWS API Documentation
    #
    class DescribeEnvironmentManagedActionsRequest < Struct.new(
      :environment_name,
      :environment_id,
      :status)
      include Aws::Structure
    end

    # The result message containing a list of managed actions.
    #
    # @!attribute [rw] managed_actions
    #   A list of upcoming and in-progress managed actions.
    #   @return [Array<Types::ManagedAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentManagedActionsResult AWS API Documentation
    #
    class DescribeEnvironmentManagedActionsResult < Struct.new(
      :managed_actions)
      include Aws::Structure
    end

    # Request to describe the resources in an environment.
    #
    # @note When making an API call, you may pass DescribeEnvironmentResourcesMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to retrieve AWS resource usage data.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to retrieve AWS resource usage data.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentResourcesMessage AWS API Documentation
    #
    class DescribeEnvironmentResourcesMessage < Struct.new(
      :environment_id,
      :environment_name)
      include Aws::Structure
    end

    # Request to describe one or more environments.
    #
    # @note When making an API call, you may pass DescribeEnvironmentsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         version_label: "VersionLabel",
    #         environment_ids: ["EnvironmentId"],
    #         environment_names: ["EnvironmentName"],
    #         include_deleted: false,
    #         included_deleted_back_to: Time.now,
    #         max_records: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] application_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that are associated with this
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that are associated with this
    #   application version.
    #   @return [String]
    #
    # @!attribute [rw] environment_ids
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that have the specified IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment_names
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those that have the specified names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_deleted
    #   Indicates whether to include deleted environments:
    #
    #   `true`\: Environments that have been deleted after
    #   `IncludedDeletedBackTo` are displayed.
    #
    #   `false`\: Do not include deleted environments.
    #   @return [Boolean]
    #
    # @!attribute [rw] included_deleted_back_to
    #   If specified when `IncludeDeleted` is set to `true`, then
    #   environments deleted after this date are displayed.
    #   @return [Time]
    #
    # @!attribute [rw] max_records
    #   For a paginated request. Specify a maximum number of environments to
    #   include in each response.
    #
    #   If no `MaxRecords` is specified, all available environments are
    #   retrieved in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For a paginated request. Specify a token from a previous response
    #   page to retrieve the next response page. All other parameter values
    #   must be identical to the ones specified in the initial request.
    #
    #   If no `NextToken` is specified, the first page is retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEnvironmentsMessage AWS API Documentation
    #
    class DescribeEnvironmentsMessage < Struct.new(
      :application_name,
      :version_label,
      :environment_ids,
      :environment_names,
      :include_deleted,
      :included_deleted_back_to,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # Request to retrieve a list of events for an environment.
    #
    # @note When making an API call, you may pass DescribeEventsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         version_label: "VersionLabel",
    #         template_name: "ConfigurationTemplateName",
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         platform_arn: "PlatformArn",
    #         request_id: "RequestId",
    #         severity: "TRACE", # accepts TRACE, DEBUG, INFO, WARN, ERROR, FATAL
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         max_records: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] application_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to include only those associated with this application.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those associated with this application version.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those that are associated with this environment
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those associated with this environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those associated with this environment.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the version of the custom platform.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   If specified, AWS Elastic Beanstalk restricts the described events
    #   to include only those associated with this request ID.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   If specified, limits the events returned from this call to include
    #   only those with the specified severity or higher.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those that occur on or after this time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   If specified, AWS Elastic Beanstalk restricts the returned
    #   descriptions to those that occur up to, but not including, the
    #   `EndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] max_records
    #   Specifies the maximum number of events that can be returned,
    #   beginning with the most recent event.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token. If specified, the events return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :application_name,
      :version_label,
      :template_name,
      :environment_id,
      :environment_name,
      :platform_arn,
      :request_id,
      :severity,
      :start_time,
      :end_time,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # Parameters for a call to `DescribeInstancesHealth`.
    #
    # @note When making an API call, you may pass DescribeInstancesHealthRequest
    #   data as a hash:
    #
    #       {
    #         environment_name: "EnvironmentName",
    #         environment_id: "EnvironmentId",
    #         attribute_names: ["HealthStatus"], # accepts HealthStatus, Color, Causes, ApplicationMetrics, RefreshedAt, LaunchedAt, System, Deployment, AvailabilityZone, InstanceType, All
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] environment_name
    #   Specify the AWS Elastic Beanstalk environment by name.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   Specify the AWS Elastic Beanstalk environment by ID.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   Specifies the response elements you wish to receive. To retrieve all
    #   attributes, set to `All`. If no attribute names are specified,
    #   returns a list of instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token returned by a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeInstancesHealthRequest AWS API Documentation
    #
    class DescribeInstancesHealthRequest < Struct.new(
      :environment_name,
      :environment_id,
      :attribute_names,
      :next_token)
      include Aws::Structure
    end

    # Detailed health information about the Amazon EC2 instances in an AWS
    # Elastic Beanstalk environment.
    #
    # @!attribute [rw] instance_health_list
    #   Detailed health information about each instance.
    #
    #   The output differs slightly between Linux and Windows environments.
    #   There is a difference in the members that are supported under the
    #   `<CPUUtilization>` type.
    #   @return [Array<Types::SingleInstanceHealth>]
    #
    # @!attribute [rw] refreshed_at
    #   The date and time that the health information was retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribeInstancesHealthResult AWS API Documentation
    #
    class DescribeInstancesHealthResult < Struct.new(
      :instance_health_list,
      :refreshed_at,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePlatformVersionRequest
    #   data as a hash:
    #
    #       {
    #         platform_arn: "PlatformArn",
    #       }
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the version of the platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribePlatformVersionRequest AWS API Documentation
    #
    class DescribePlatformVersionRequest < Struct.new(
      :platform_arn)
      include Aws::Structure
    end

    # @!attribute [rw] platform_description
    #   Detailed information about the version of the platform.
    #   @return [Types::PlatformDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/DescribePlatformVersionResult AWS API Documentation
    #
    class DescribePlatformVersionResult < Struct.new(
      :platform_description)
      include Aws::Structure
    end

    # Describes the properties of an environment.
    #
    # @!attribute [rw] environment_name
    #   The name of this environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of this environment.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application associated with this environment.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   The application version deployed in this environment.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the `SolutionStack` deployed with this environment.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template used to originally launch
    #   this environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes this environment.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_url
    #   For load-balanced, autoscaling environments, the URL to the
    #   LoadBalancer. For single-instance environments, the IP address of
    #   the instance.
    #   @return [String]
    #
    # @!attribute [rw] cname
    #   The URL to the CNAME for this environment.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The creation date for this environment.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The last modified date for this environment.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current operational status of the environment:
    #
    #   * `Launching`\: Environment is in the process of initial deployment.
    #
    #   * `Updating`\: Environment is in the process of updating its
    #     configuration settings or application version.
    #
    #   * `Ready`\: Environment is available to have an action performed on
    #     it, such as update or terminate.
    #
    #   * `Terminating`\: Environment is in the shut-down process.
    #
    #   * `Terminated`\: Environment is not running.
    #   @return [String]
    #
    # @!attribute [rw] abortable_operation_in_progress
    #   Indicates if there is an in-progress environment configuration
    #   update or application version deployment that you can cancel.
    #
    #   `true:` There is an update in progress.
    #
    #   `false:` There are no updates currently in progress.
    #   @return [Boolean]
    #
    # @!attribute [rw] health
    #   Describes the health status of the environment. AWS Elastic
    #   Beanstalk indicates the failure levels for a running environment:
    #
    #   * `Red`\: Indicates the environment is not responsive. Occurs when
    #     three or more consecutive failures occur for an environment.
    #
    #   * `Yellow`\: Indicates that something is wrong. Occurs when two
    #     consecutive failures occur for an environment.
    #
    #   * `Green`\: Indicates the environment is healthy and fully
    #     functional.
    #
    #   * `Grey`\: Default health for a new environment. The environment is
    #     not fully launched and health checks have not started or health
    #     checks are suspended during an `UpdateEnvironment` or
    #     `RestartEnvironement` request.
    #
    #   Default: `Grey`
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   Returns the health status of the application running in your
    #   environment. For more information, see [Health Colors and
    #   Statuses][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The description of the AWS resources used by this environment.
    #   @return [Types::EnvironmentResourcesDescription]
    #
    # @!attribute [rw] tier
    #   Describes the current tier of this environment.
    #   @return [Types::EnvironmentTier]
    #
    # @!attribute [rw] environment_links
    #   A list of links to other environments in the same group.
    #   @return [Array<Types::EnvironmentLink>]
    #
    # @!attribute [rw] environment_arn
    #   The environment's Amazon Resource Name (ARN), which can be used in
    #   other API requests that require an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentDescription AWS API Documentation
    #
    class EnvironmentDescription < Struct.new(
      :environment_name,
      :environment_id,
      :application_name,
      :version_label,
      :solution_stack_name,
      :platform_arn,
      :template_name,
      :description,
      :endpoint_url,
      :cname,
      :date_created,
      :date_updated,
      :status,
      :abortable_operation_in_progress,
      :health,
      :health_status,
      :resources,
      :tier,
      :environment_links,
      :environment_arn)
      include Aws::Structure
    end

    # Result message containing a list of environment descriptions.
    #
    # @!attribute [rw] environments
    #   Returns an EnvironmentDescription list.
    #   @return [Array<Types::EnvironmentDescription>]
    #
    # @!attribute [rw] next_token
    #   In a paginated request, the token that you can pass in a subsequent
    #   request to get the next response page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentDescriptionsMessage AWS API Documentation
    #
    class EnvironmentDescriptionsMessage < Struct.new(
      :environments,
      :next_token)
      include Aws::Structure
    end

    # The information retrieved from the Amazon EC2 instances.
    #
    # @!attribute [rw] info_type
    #   The type of information retrieved.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The Amazon EC2 Instance ID for this information.
    #   @return [String]
    #
    # @!attribute [rw] sample_timestamp
    #   The time stamp when this information was retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The retrieved information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentInfoDescription AWS API Documentation
    #
    class EnvironmentInfoDescription < Struct.new(
      :info_type,
      :ec2_instance_id,
      :sample_timestamp,
      :message)
      include Aws::Structure
    end

    # A link to another environment, defined in the environment's manifest.
    # Links provide connection information in system properties that can be
    # used to connect to another environment in the same group. See
    # [Environment Manifest (env.yaml)][1] for details.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #
    # @!attribute [rw] link_name
    #   The name of the link.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the linked environment (the dependency).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentLink AWS API Documentation
    #
    class EnvironmentLink < Struct.new(
      :link_name,
      :environment_name)
      include Aws::Structure
    end

    # Describes the AWS resources in use by this environment. This data is
    # live.
    #
    # @!attribute [rw] environment_name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_groups
    #   The `AutoScalingGroups` used by this environment.
    #   @return [Array<Types::AutoScalingGroup>]
    #
    # @!attribute [rw] instances
    #   The Amazon EC2 instances used by this environment.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] launch_configurations
    #   The Auto Scaling launch configurations in use by this environment.
    #   @return [Array<Types::LaunchConfiguration>]
    #
    # @!attribute [rw] load_balancers
    #   The LoadBalancers in use by this environment.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] triggers
    #   The `AutoScaling` triggers in use by this environment.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] queues
    #   The queues used by this environment.
    #   @return [Array<Types::Queue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentResourceDescription AWS API Documentation
    #
    class EnvironmentResourceDescription < Struct.new(
      :environment_name,
      :auto_scaling_groups,
      :instances,
      :launch_configurations,
      :load_balancers,
      :triggers,
      :queues)
      include Aws::Structure
    end

    # Result message containing a list of environment resource descriptions.
    #
    # @!attribute [rw] environment_resources
    #   A list of EnvironmentResourceDescription.
    #   @return [Types::EnvironmentResourceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentResourceDescriptionsMessage AWS API Documentation
    #
    class EnvironmentResourceDescriptionsMessage < Struct.new(
      :environment_resources)
      include Aws::Structure
    end

    # Describes the AWS resources in use by this environment. This data is
    # not live data.
    #
    # @!attribute [rw] load_balancer
    #   Describes the LoadBalancer.
    #   @return [Types::LoadBalancerDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentResourcesDescription AWS API Documentation
    #
    class EnvironmentResourcesDescription < Struct.new(
      :load_balancer)
      include Aws::Structure
    end

    # Describes the properties of an environment tier
    #
    # @note When making an API call, you may pass EnvironmentTier
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         type: "String",
    #         version: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of this environment tier.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this environment tier.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of this environment tier. When you don't set a value to
    #   it, Elastic Beanstalk uses the latest compatible worker tier
    #   version.
    #
    #   <note markdown="1"> This member is deprecated. Any specific version that you set may
    #   become out of date. We recommend leaving it unspecified.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EnvironmentTier AWS API Documentation
    #
    class EnvironmentTier < Struct.new(
      :name,
      :type,
      :version)
      include Aws::Structure
    end

    # Describes an event.
    #
    # @!attribute [rw] event_date
    #   The date when the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The event message.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The application associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   The release label for the application version associated with this
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration associated with this event.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment associated with this event.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The web service request ID for the activity of this event.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of this event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EventDescription AWS API Documentation
    #
    class EventDescription < Struct.new(
      :event_date,
      :message,
      :application_name,
      :version_label,
      :template_name,
      :environment_name,
      :platform_arn,
      :request_id,
      :severity)
      include Aws::Structure
    end

    # Result message wrapping a list of event descriptions.
    #
    # @!attribute [rw] events
    #   A list of EventDescription.
    #   @return [Array<Types::EventDescription>]
    #
    # @!attribute [rw] next_token
    #   If returned, this indicates that there are more results to obtain.
    #   Use this token in the next DescribeEvents call to get the next batch
    #   of events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/EventDescriptionsMessage AWS API Documentation
    #
    class EventDescriptionsMessage < Struct.new(
      :events,
      :next_token)
      include Aws::Structure
    end

    # The description of an Amazon EC2 instance.
    #
    # @!attribute [rw] id
    #   The ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :id)
      include Aws::Structure
    end

    # Represents summary information about the health of an instance. For
    # more information, see [Health Colors and Statuses][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
    #
    # @!attribute [rw] no_data
    #   **Grey.** AWS Elastic Beanstalk and the health agent are reporting
    #   no data on an instance.
    #   @return [Integer]
    #
    # @!attribute [rw] unknown
    #   **Grey.** AWS Elastic Beanstalk and the health agent are reporting
    #   an insufficient amount of data on an instance.
    #   @return [Integer]
    #
    # @!attribute [rw] pending
    #   **Grey.** An operation is in progress on an instance within the
    #   command timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] ok
    #   **Green.** An instance is passing health checks and the health agent
    #   is not reporting any problems.
    #   @return [Integer]
    #
    # @!attribute [rw] info
    #   **Green.** An operation is in progress on an instance.
    #   @return [Integer]
    #
    # @!attribute [rw] warning
    #   **Yellow.** The health agent is reporting a moderate number of
    #   request failures or other issues for an instance or environment.
    #   @return [Integer]
    #
    # @!attribute [rw] degraded
    #   **Red.** The health agent is reporting a high number of request
    #   failures or other issues for an instance or environment.
    #   @return [Integer]
    #
    # @!attribute [rw] severe
    #   **Red.** The health agent is reporting a very high number of request
    #   failures or other issues for an instance or environment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/InstanceHealthSummary AWS API Documentation
    #
    class InstanceHealthSummary < Struct.new(
      :no_data,
      :unknown,
      :pending,
      :ok,
      :info,
      :warning,
      :degraded,
      :severe)
      include Aws::Structure
    end

    # Represents the average latency for the slowest X percent of requests
    # over the last 10 seconds.
    #
    # @!attribute [rw] p999
    #   The average latency for the slowest 0.1 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p99
    #   The average latency for the slowest 1 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p95
    #   The average latency for the slowest 5 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p90
    #   The average latency for the slowest 10 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p85
    #   The average latency for the slowest 15 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p75
    #   The average latency for the slowest 25 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p50
    #   The average latency for the slowest 50 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @!attribute [rw] p10
    #   The average latency for the slowest 90 percent of requests over the
    #   last 10 seconds.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Latency AWS API Documentation
    #
    class Latency < Struct.new(
      :p999,
      :p99,
      :p95,
      :p90,
      :p85,
      :p75,
      :p50,
      :p10)
      include Aws::Structure
    end

    # Describes an Auto Scaling launch configuration.
    #
    # @!attribute [rw] name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/LaunchConfiguration AWS API Documentation
    #
    class LaunchConfiguration < Struct.new(
      :name)
      include Aws::Structure
    end

    # A list of available AWS Elastic Beanstalk solution stacks.
    #
    # @!attribute [rw] solution_stacks
    #   A list of available solution stacks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] solution_stack_details
    #   A list of available solution stacks and their
    #   SolutionStackDescription.
    #   @return [Array<Types::SolutionStackDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListAvailableSolutionStacksResultMessage AWS API Documentation
    #
    class ListAvailableSolutionStacksResultMessage < Struct.new(
      :solution_stacks,
      :solution_stack_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPlatformVersionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             type: "PlatformFilterType",
    #             operator: "PlatformFilterOperator",
    #             values: ["PlatformFilterValue"],
    #           },
    #         ],
    #         max_records: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] filters
    #   List only the platforms where the platform member value relates to
    #   one of the supplied values.
    #   @return [Array<Types::PlatformFilter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of platform values returned in one call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The starting index into the remaining list of platforms. Use the
    #   `NextToken` value from a previous `ListPlatformVersion` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListPlatformVersionsRequest AWS API Documentation
    #
    class ListPlatformVersionsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] platform_summary_list
    #   Detailed information about the platforms.
    #   @return [Array<Types::PlatformSummary>]
    #
    # @!attribute [rw] next_token
    #   The starting index into the remaining list of platforms. if this
    #   value is not `null`, you can use it in a subsequent
    #   `ListPlatformVersion` call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListPlatformVersionsResult AWS API Documentation
    #
    class ListPlatformVersionsResult < Struct.new(
      :platform_summary_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resouce for which a tag list
    #   is requested.
    #
    #   Must be the ARN of an Elastic Beanstalk environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # Describes the properties of a Listener for the LoadBalancer.
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the Listener.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that is used by the Listener.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Listener AWS API Documentation
    #
    class Listener < Struct.new(
      :protocol,
      :port)
      include Aws::Structure
    end

    # Describes a LoadBalancer.
    #
    # @!attribute [rw] name
    #   The name of the LoadBalancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/LoadBalancer AWS API Documentation
    #
    class LoadBalancer < Struct.new(
      :name)
      include Aws::Structure
    end

    # Describes the details of a LoadBalancer.
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the LoadBalancer.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain name of the LoadBalancer.
    #   @return [String]
    #
    # @!attribute [rw] listeners
    #   A list of Listeners used by the LoadBalancer.
    #   @return [Array<Types::Listener>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/LoadBalancerDescription AWS API Documentation
    #
    class LoadBalancerDescription < Struct.new(
      :load_balancer_name,
      :domain,
      :listeners)
      include Aws::Structure
    end

    # The record of an upcoming or in-progress managed action.
    #
    # @!attribute [rw] action_id
    #   A unique identifier for the managed action.
    #   @return [String]
    #
    # @!attribute [rw] action_description
    #   A description of the managed action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of managed action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the managed action. If the action is `Scheduled`, you
    #   can apply it immediately with ApplyEnvironmentManagedAction.
    #   @return [String]
    #
    # @!attribute [rw] window_start_time
    #   The start time of the maintenance window in which the managed action
    #   will execute.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ManagedAction AWS API Documentation
    #
    class ManagedAction < Struct.new(
      :action_id,
      :action_description,
      :action_type,
      :status,
      :window_start_time)
      include Aws::Structure
    end

    # The record of a completed or failed managed action.
    #
    # @!attribute [rw] action_id
    #   A unique identifier for the managed action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The type of the managed action.
    #   @return [String]
    #
    # @!attribute [rw] action_description
    #   A description of the managed action.
    #   @return [String]
    #
    # @!attribute [rw] failure_type
    #   If the action failed, the type of failure.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the action.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   If the action failed, a description of the failure.
    #   @return [String]
    #
    # @!attribute [rw] executed_time
    #   The date and time that the action started executing.
    #   @return [Time]
    #
    # @!attribute [rw] finished_time
    #   The date and time that the action finished executing.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ManagedActionHistoryItem AWS API Documentation
    #
    class ManagedActionHistoryItem < Struct.new(
      :action_id,
      :action_type,
      :action_description,
      :failure_type,
      :status,
      :failure_description,
      :executed_time,
      :finished_time)
      include Aws::Structure
    end

    # A lifecycle rule that deletes application versions after the specified
    # number of days.
    #
    # @note When making an API call, you may pass MaxAgeRule
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         max_age_in_days: 1,
    #         delete_source_from_s3: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specify `true` to apply the rule, or `false` to disable it.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_age_in_days
    #   Specify the number of days to retain an application versions.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_source_from_s3
    #   Set to `true` to delete a version's source bundle from Amazon S3
    #   when Elastic Beanstalk deletes the application version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/MaxAgeRule AWS API Documentation
    #
    class MaxAgeRule < Struct.new(
      :enabled,
      :max_age_in_days,
      :delete_source_from_s3)
      include Aws::Structure
    end

    # A lifecycle rule that deletes the oldest application version when the
    # maximum count is exceeded.
    #
    # @note When making an API call, you may pass MaxCountRule
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         max_count: 1,
    #         delete_source_from_s3: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Specify `true` to apply the rule, or `false` to disable it.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_count
    #   Specify the maximum number of application versions to retain.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_source_from_s3
    #   Set to `true` to delete a version's source bundle from Amazon S3
    #   when Elastic Beanstalk deletes the application version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/MaxCountRule AWS API Documentation
    #
    class MaxCountRule < Struct.new(
      :enabled,
      :max_count,
      :delete_source_from_s3)
      include Aws::Structure
    end

    # A regular expression representing a restriction on a string
    # configuration option value.
    #
    # @!attribute [rw] pattern
    #   The regular expression pattern that a string configuration option
    #   value with this restriction must match.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A unique name representing this regular expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/OptionRestrictionRegex AWS API Documentation
    #
    class OptionRestrictionRegex < Struct.new(
      :pattern,
      :label)
      include Aws::Structure
    end

    # A specification identifying an individual configuration option.
    #
    # @note When making an API call, you may pass OptionSpecification
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #       }
    #
    # @!attribute [rw] resource_name
    #   A unique resource name for a time-based scaling configuration
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   A unique namespace identifying the option's associated AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] option_name
    #   The name of the configuration option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/OptionSpecification AWS API Documentation
    #
    class OptionSpecification < Struct.new(
      :resource_name,
      :namespace,
      :option_name)
      include Aws::Structure
    end

    # Detailed information about a platform.
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_owner
    #   The AWS account ID of the person who created the platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_name
    #   The name of the platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The version of the platform.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack used by the platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_status
    #   The status of the platform.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date when the platform was created.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The date when the platform was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] platform_category
    #   The category of the platform.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the platform.
    #   @return [String]
    #
    # @!attribute [rw] maintainer
    #   Information about the maintainer of the platform.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_name
    #   The operating system used by the platform.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_version
    #   The version of the operating system used by the platform.
    #   @return [String]
    #
    # @!attribute [rw] programming_languages
    #   The programming languages supported by the platform.
    #   @return [Array<Types::PlatformProgrammingLanguage>]
    #
    # @!attribute [rw] frameworks
    #   The frameworks supported by the platform.
    #   @return [Array<Types::PlatformFramework>]
    #
    # @!attribute [rw] custom_ami_list
    #   The custom AMIs supported by the platform.
    #   @return [Array<Types::CustomAmi>]
    #
    # @!attribute [rw] supported_tier_list
    #   The tiers supported by the platform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_addon_list
    #   The additions supported by the platform.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/PlatformDescription AWS API Documentation
    #
    class PlatformDescription < Struct.new(
      :platform_arn,
      :platform_owner,
      :platform_name,
      :platform_version,
      :solution_stack_name,
      :platform_status,
      :date_created,
      :date_updated,
      :platform_category,
      :description,
      :maintainer,
      :operating_system_name,
      :operating_system_version,
      :programming_languages,
      :frameworks,
      :custom_ami_list,
      :supported_tier_list,
      :supported_addon_list)
      include Aws::Structure
    end

    # Specify criteria to restrict the results when listing custom
    # platforms.
    #
    # The filter is evaluated as the expression:
    #
    # `Type` `Operator` `Values[i]`
    #
    # @note When making an API call, you may pass PlatformFilter
    #   data as a hash:
    #
    #       {
    #         type: "PlatformFilterType",
    #         operator: "PlatformFilterOperator",
    #         values: ["PlatformFilterValue"],
    #       }
    #
    # @!attribute [rw] type
    #   The custom platform attribute to which the filter values are
    #   applied.
    #
    #   Valid Values: `PlatformName` \| `PlatformVersion` \|
    #   `PlatformStatus` \| `PlatformOwner`
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to apply to the `Type` with each of the `Values`.
    #
    #   Valid Values: `=` (equal to) \| `!=` (not equal to) \| `<` (less
    #   than) \| `<=` (less than or equal to) \| `>` (greater than) \| `>=`
    #   (greater than or equal to) \| `contains` \| `begins_with` \|
    #   `ends_with`
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of values applied to the custom platform attribute.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/PlatformFilter AWS API Documentation
    #
    class PlatformFilter < Struct.new(
      :type,
      :operator,
      :values)
      include Aws::Structure
    end

    # A framework supported by the custom platform.
    #
    # @!attribute [rw] name
    #   The name of the framework.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the framework.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/PlatformFramework AWS API Documentation
    #
    class PlatformFramework < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # A programming language supported by the platform.
    #
    # @!attribute [rw] name
    #   The name of the programming language.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the programming language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/PlatformProgrammingLanguage AWS API Documentation
    #
    class PlatformProgrammingLanguage < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # Detailed information about a platform.
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_owner
    #   The AWS account ID of the person who created the platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_status
    #   The status of the platform. You can create an environment from the
    #   platform once it is ready.
    #   @return [String]
    #
    # @!attribute [rw] platform_category
    #   The category of platform.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_name
    #   The operating system used by the platform.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_version
    #   The version of the operating system used by the platform.
    #   @return [String]
    #
    # @!attribute [rw] supported_tier_list
    #   The tiers in which the platform runs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_addon_list
    #   The additions associated with the platform.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/PlatformSummary AWS API Documentation
    #
    class PlatformSummary < Struct.new(
      :platform_arn,
      :platform_owner,
      :platform_status,
      :platform_category,
      :operating_system_name,
      :operating_system_version,
      :supported_tier_list,
      :supported_addon_list)
      include Aws::Structure
    end

    # Describes a queue.
    #
    # @!attribute [rw] name
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Queue AWS API Documentation
    #
    class Queue < Struct.new(
      :name,
      :url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebuildEnvironmentMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to rebuild.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to rebuild.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RebuildEnvironmentMessage AWS API Documentation
    #
    class RebuildEnvironmentMessage < Struct.new(
      :environment_id,
      :environment_name)
      include Aws::Structure
    end

    # Request to retrieve logs from an environment and store them in your
    # Elastic Beanstalk storage bucket.
    #
    # @note When making an API call, you may pass RequestEnvironmentInfoMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         info_type: "tail", # required, accepts tail, bundle
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment of the requested data.
    #
    #   If no such environment is found, `RequestEnvironmentInfo` returns an
    #   `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment of the requested data.
    #
    #   If no such environment is found, `RequestEnvironmentInfo` returns an
    #   `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] info_type
    #   The type of information to request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RequestEnvironmentInfoMessage AWS API Documentation
    #
    class RequestEnvironmentInfoMessage < Struct.new(
      :environment_id,
      :environment_name,
      :info_type)
      include Aws::Structure
    end

    # The AWS Elastic Beanstalk quota information for a single resource type
    # in an AWS account. It reflects the resource's limits for this
    # account.
    #
    # @!attribute [rw] maximum
    #   The maximum number of instances of this Elastic Beanstalk resource
    #   type that an AWS account can use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ResourceQuota AWS API Documentation
    #
    class ResourceQuota < Struct.new(
      :maximum)
      include Aws::Structure
    end

    # A set of per-resource AWS Elastic Beanstalk quotas associated with an
    # AWS account. They reflect Elastic Beanstalk resource limits for this
    # account.
    #
    # @!attribute [rw] application_quota
    #   The quota for applications in the AWS account.
    #   @return [Types::ResourceQuota]
    #
    # @!attribute [rw] application_version_quota
    #   The quota for application versions in the AWS account.
    #   @return [Types::ResourceQuota]
    #
    # @!attribute [rw] environment_quota
    #   The quota for environments in the AWS account.
    #   @return [Types::ResourceQuota]
    #
    # @!attribute [rw] configuration_template_quota
    #   The quota for configuration templates in the AWS account.
    #   @return [Types::ResourceQuota]
    #
    # @!attribute [rw] custom_platform_quota
    #   The quota for custom platforms in the AWS account.
    #   @return [Types::ResourceQuota]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ResourceQuotas AWS API Documentation
    #
    class ResourceQuotas < Struct.new(
      :application_quota,
      :application_version_quota,
      :environment_quota,
      :configuration_template_quota,
      :custom_platform_quota)
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resouce for which a tag list
    #   was requested.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   A list of tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ResourceTagsDescriptionMessage AWS API Documentation
    #
    class ResourceTagsDescriptionMessage < Struct.new(
      :resource_arn,
      :resource_tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestartAppServerMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to restart the server for.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to restart the server for.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RestartAppServerMessage AWS API Documentation
    #
    class RestartAppServerMessage < Struct.new(
      :environment_id,
      :environment_name)
      include Aws::Structure
    end

    # Request to download logs retrieved with RequestEnvironmentInfo.
    #
    # @note When making an API call, you may pass RetrieveEnvironmentInfoMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         info_type: "tail", # required, accepts tail, bundle
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the data's environment.
    #
    #   If no such environment is found, returns an `InvalidParameterValue`
    #   error.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the data's environment.
    #
    #   If no such environment is found, returns an `InvalidParameterValue`
    #   error.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] info_type
    #   The type of information to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RetrieveEnvironmentInfoMessage AWS API Documentation
    #
    class RetrieveEnvironmentInfoMessage < Struct.new(
      :environment_id,
      :environment_name,
      :info_type)
      include Aws::Structure
    end

    # Result message containing a description of the requested environment
    # info.
    #
    # @!attribute [rw] environment_info
    #   The EnvironmentInfoDescription of the environment.
    #   @return [Array<Types::EnvironmentInfoDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/RetrieveEnvironmentInfoResultMessage AWS API Documentation
    #
    class RetrieveEnvironmentInfoResultMessage < Struct.new(
      :environment_info)
      include Aws::Structure
    end

    # The bucket and key of an item stored in Amazon S3.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket where the data is located.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key where the data is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :s3_bucket,
      :s3_key)
      include Aws::Structure
    end

    # Detailed health information about an Amazon EC2 instance in your
    # Elastic Beanstalk environment.
    #
    # @!attribute [rw] instance_id
    #   The ID of the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   Returns the health status of the specified instance. For more
    #   information, see [Health Colors and Statuses][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
    #   @return [String]
    #
    # @!attribute [rw] color
    #   Represents the color indicator that gives you information about the
    #   health of the EC2 instance. For more information, see [Health Colors
    #   and Statuses][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
    #   @return [String]
    #
    # @!attribute [rw] causes
    #   Represents the causes, which provide more information about the
    #   current health status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] launched_at
    #   The time at which the EC2 instance was launched.
    #   @return [Time]
    #
    # @!attribute [rw] application_metrics
    #   Request metrics from your application.
    #   @return [Types::ApplicationMetrics]
    #
    # @!attribute [rw] system
    #   Operating system metrics from the instance.
    #   @return [Types::SystemStatus]
    #
    # @!attribute [rw] deployment
    #   Information about the most recent deployment to an instance.
    #   @return [Types::Deployment]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone in which the instance runs.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SingleInstanceHealth AWS API Documentation
    #
    class SingleInstanceHealth < Struct.new(
      :instance_id,
      :health_status,
      :color,
      :causes,
      :launched_at,
      :application_metrics,
      :system,
      :deployment,
      :availability_zone,
      :instance_type)
      include Aws::Structure
    end

    # Describes the solution stack.
    #
    # @!attribute [rw] solution_stack_name
    #   The name of the solution stack.
    #   @return [String]
    #
    # @!attribute [rw] permitted_file_types
    #   The permitted file types allowed for a solution stack.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SolutionStackDescription AWS API Documentation
    #
    class SolutionStackDescription < Struct.new(
      :solution_stack_name,
      :permitted_file_types)
      include Aws::Structure
    end

    # Location of the source code for an application version.
    #
    # @note When making an API call, you may pass SourceBuildInformation
    #   data as a hash:
    #
    #       {
    #         source_type: "Git", # required, accepts Git, Zip
    #         source_repository: "CodeCommit", # required, accepts CodeCommit, S3
    #         source_location: "SourceLocation", # required
    #       }
    #
    # @!attribute [rw] source_type
    #   The type of repository.
    #
    #   * `Git`
    #
    #   * `Zip`
    #   @return [String]
    #
    # @!attribute [rw] source_repository
    #   Location where the repository is stored.
    #
    #   * `CodeCommit`
    #
    #   * `S3`
    #   @return [String]
    #
    # @!attribute [rw] source_location
    #   The location of the source code, as a formatted string, depending on
    #   the value of `SourceRepository`
    #
    #   * For `CodeCommit`, the format is the repository name and commit ID,
    #     separated by a forward slash. For example,
    #     `my-git-repo/265cfa0cf6af46153527f55d6503ec030551f57a`.
    #
    #   * For `S3`, the format is the S3 bucket name and object key,
    #     separated by a forward slash. For example,
    #     `my-s3-bucket/Folders/my-source-file`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SourceBuildInformation AWS API Documentation
    #
    class SourceBuildInformation < Struct.new(
      :source_type,
      :source_repository,
      :source_location)
      include Aws::Structure
    end

    # A specification for an environment configuration
    #
    # @note When making an API call, you may pass SourceConfiguration
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         template_name: "ConfigurationTemplateName",
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application associated with the configuration.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :application_name,
      :template_name)
      include Aws::Structure
    end

    # Represents the percentage of requests over the last 10 seconds that
    # resulted in each type of status code response. For more information,
    # see [Status Code Definitions][1].
    #
    #
    #
    # [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html
    #
    # @!attribute [rw] status_2xx
    #   The percentage of requests over the last 10 seconds that resulted in
    #   a 2xx (200, 201, etc.) status code.
    #   @return [Integer]
    #
    # @!attribute [rw] status_3xx
    #   The percentage of requests over the last 10 seconds that resulted in
    #   a 3xx (300, 301, etc.) status code.
    #   @return [Integer]
    #
    # @!attribute [rw] status_4xx
    #   The percentage of requests over the last 10 seconds that resulted in
    #   a 4xx (400, 401, etc.) status code.
    #   @return [Integer]
    #
    # @!attribute [rw] status_5xx
    #   The percentage of requests over the last 10 seconds that resulted in
    #   a 5xx (500, 501, etc.) status code.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/StatusCodes AWS API Documentation
    #
    class StatusCodes < Struct.new(
      :status_2xx,
      :status_3xx,
      :status_4xx,
      :status_5xx)
      include Aws::Structure
    end

    # Swaps the CNAMEs of two environments.
    #
    # @note When making an API call, you may pass SwapEnvironmentCNAMEsMessage
    #   data as a hash:
    #
    #       {
    #         source_environment_id: "EnvironmentId",
    #         source_environment_name: "EnvironmentName",
    #         destination_environment_id: "EnvironmentId",
    #         destination_environment_name: "EnvironmentName",
    #       }
    #
    # @!attribute [rw] source_environment_id
    #   The ID of the source environment.
    #
    #   Condition: You must specify at least the `SourceEnvironmentID` or
    #   the `SourceEnvironmentName`. You may also specify both. If you
    #   specify the `SourceEnvironmentId`, you must specify the
    #   `DestinationEnvironmentId`.
    #   @return [String]
    #
    # @!attribute [rw] source_environment_name
    #   The name of the source environment.
    #
    #   Condition: You must specify at least the `SourceEnvironmentID` or
    #   the `SourceEnvironmentName`. You may also specify both. If you
    #   specify the `SourceEnvironmentName`, you must specify the
    #   `DestinationEnvironmentName`.
    #   @return [String]
    #
    # @!attribute [rw] destination_environment_id
    #   The ID of the destination environment.
    #
    #   Condition: You must specify at least the `DestinationEnvironmentID`
    #   or the `DestinationEnvironmentName`. You may also specify both. You
    #   must specify the `SourceEnvironmentId` with the
    #   `DestinationEnvironmentId`.
    #   @return [String]
    #
    # @!attribute [rw] destination_environment_name
    #   The name of the destination environment.
    #
    #   Condition: You must specify at least the `DestinationEnvironmentID`
    #   or the `DestinationEnvironmentName`. You may also specify both. You
    #   must specify the `SourceEnvironmentName` with the
    #   `DestinationEnvironmentName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SwapEnvironmentCNAMEsMessage AWS API Documentation
    #
    class SwapEnvironmentCNAMEsMessage < Struct.new(
      :source_environment_id,
      :source_environment_name,
      :destination_environment_id,
      :destination_environment_name)
      include Aws::Structure
    end

    # CPU utilization and load average metrics for an Amazon EC2 instance.
    #
    # @!attribute [rw] cpu_utilization
    #   CPU utilization metrics for the instance.
    #   @return [Types::CPUUtilization]
    #
    # @!attribute [rw] load_average
    #   Load average in the last 1-minute, 5-minute, and 15-minute periods.
    #   For more information, see [Operating System Metrics][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/SystemStatus AWS API Documentation
    #
    class SystemStatus < Struct.new(
      :cpu_utilization,
      :load_average)
      include Aws::Structure
    end

    # Describes a tag applied to a resource in an environment.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Request to terminate an environment.
    #
    # @note When making an API call, you may pass TerminateEnvironmentMessage
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         terminate_resources: false,
    #         force_terminate: false,
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to terminate.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to terminate.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] terminate_resources
    #   Indicates whether the associated AWS resources should shut down when
    #   the environment is terminated:
    #
    #   * `true`\: The specified environment as well as the associated AWS
    #     resources, such as Auto Scaling group and LoadBalancer, are
    #     terminated.
    #
    #   * `false`\: AWS Elastic Beanstalk resource management is removed
    #     from the environment, but the AWS resources continue to operate.
    #
    #   For more information, see the [ AWS Elastic Beanstalk User Guide.
    #   ][1]
    #
    #   Default: `true`
    #
    #   Valid Values: `true` \| `false`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/ug/
    #   @return [Boolean]
    #
    # @!attribute [rw] force_terminate
    #   Terminates the target environment even if another environment in the
    #   same group is dependent on it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/TerminateEnvironmentMessage AWS API Documentation
    #
    class TerminateEnvironmentMessage < Struct.new(
      :environment_id,
      :environment_name,
      :terminate_resources,
      :force_terminate)
      include Aws::Structure
    end

    # Describes a trigger.
    #
    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :name)
      include Aws::Structure
    end

    # Request to update an application.
    #
    # @note When making an API call, you may pass UpdateApplicationMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application to update. If no such application is
    #   found, `UpdateApplication` returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the application.
    #
    #   Default: If not specified, AWS Elastic Beanstalk does not update the
    #   description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationMessage AWS API Documentation
    #
    class UpdateApplicationMessage < Struct.new(
      :application_name,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationResourceLifecycleMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         resource_lifecycle_config: { # required
    #           service_role: "String",
    #           version_lifecycle_config: {
    #             max_count_rule: {
    #               enabled: false, # required
    #               max_count: 1,
    #               delete_source_from_s3: false,
    #             },
    #             max_age_rule: {
    #               enabled: false, # required
    #               max_age_in_days: 1,
    #               delete_source_from_s3: false,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] resource_lifecycle_config
    #   The lifecycle configuration.
    #   @return [Types::ApplicationResourceLifecycleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationResourceLifecycleMessage AWS API Documentation
    #
    class UpdateApplicationResourceLifecycleMessage < Struct.new(
      :application_name,
      :resource_lifecycle_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationVersionMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         version_label: "VersionLabel", # required
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application associated with this version.
    #
    #   If no application is found with this name, `UpdateApplication`
    #   returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] version_label
    #   The name of the version to update.
    #
    #   If no application version is found with this label,
    #   `UpdateApplication` returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for this version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateApplicationVersionMessage AWS API Documentation
    #
    class UpdateApplicationVersionMessage < Struct.new(
      :application_name,
      :version_label,
      :description)
      include Aws::Structure
    end

    # The result message containing the options for the specified solution
    # stack.
    #
    # @note When making an API call, you may pass UpdateConfigurationTemplateMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         template_name: "ConfigurationTemplateName", # required
    #         description: "Description",
    #         option_settings: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue",
    #           },
    #         ],
    #         options_to_remove: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application associated with the configuration
    #   template to update.
    #
    #   If no application is found with this name,
    #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template to update.
    #
    #   If no configuration template is found with this name,
    #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   A list of configuration option settings to update with the new
    #   specified option value.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @!attribute [rw] options_to_remove
    #   A list of configuration options to remove from the configuration
    #   set.
    #
    #   Constraint: You can remove only `UserDefined` configuration options.
    #   @return [Array<Types::OptionSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateConfigurationTemplateMessage AWS API Documentation
    #
    class UpdateConfigurationTemplateMessage < Struct.new(
      :application_name,
      :template_name,
      :description,
      :option_settings,
      :options_to_remove)
      include Aws::Structure
    end

    # Request to update an environment.
    #
    # @note When making an API call, you may pass UpdateEnvironmentMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName",
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         group_name: "GroupName",
    #         description: "Description",
    #         tier: {
    #           name: "String",
    #           type: "String",
    #           version: "String",
    #         },
    #         version_label: "VersionLabel",
    #         template_name: "ConfigurationTemplateName",
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         option_settings: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue",
    #           },
    #         ],
    #         options_to_remove: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application with which the environment is
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to update.
    #
    #   If no environment with this ID exists, AWS Elastic Beanstalk returns
    #   an `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentName, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to update. If no environment with this
    #   name exists, AWS Elastic Beanstalk returns an
    #   `InvalidParameterValue` error.
    #
    #   Condition: You must specify either this or an EnvironmentId, or
    #   both. If you do not specify either, AWS Elastic Beanstalk returns
    #   `MissingRequiredParameter` error.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group to which the target environment belongs.
    #   Specify a group name only if the environment's name is specified in
    #   an environment manifest and not with the environment name or
    #   environment ID parameters. See [Environment Manifest (env.yaml)][1]
    #   for details.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   If this parameter is specified, AWS Elastic Beanstalk updates the
    #   description of this environment.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   This specifies the tier to use to update the environment.
    #
    #   Condition: At this time, if you change the tier version, name, or
    #   type, AWS Elastic Beanstalk returns `InvalidParameterValue` error.
    #   @return [Types::EnvironmentTier]
    #
    # @!attribute [rw] version_label
    #   If this parameter is specified, AWS Elastic Beanstalk deploys the
    #   named application version to the environment. If no such application
    #   version is found, returns an `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   If this parameter is specified, AWS Elastic Beanstalk deploys this
    #   configuration template to the environment. If no such configuration
    #   template is found, AWS Elastic Beanstalk returns an
    #   `InvalidParameterValue` error.
    #   @return [String]
    #
    # @!attribute [rw] solution_stack_name
    #   This specifies the platform version that the environment will run
    #   after the environment is updated.
    #   @return [String]
    #
    # @!attribute [rw] platform_arn
    #   The ARN of the platform, if used.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   If specified, AWS Elastic Beanstalk updates the configuration set
    #   associated with the running environment and sets the specified
    #   configuration options to the requested value.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @!attribute [rw] options_to_remove
    #   A list of custom user-defined configuration options to remove from
    #   the configuration set for this environment.
    #   @return [Array<Types::OptionSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateEnvironmentMessage AWS API Documentation
    #
    class UpdateEnvironmentMessage < Struct.new(
      :application_name,
      :environment_id,
      :environment_name,
      :group_name,
      :description,
      :tier,
      :version_label,
      :template_name,
      :solution_stack_name,
      :platform_arn,
      :option_settings,
      :options_to_remove)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTagsForResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags_to_add: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         tags_to_remove: ["TagKey"],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resouce to be updated.
    #
    #   Must be the ARN of an Elastic Beanstalk environment.
    #   @return [String]
    #
    # @!attribute [rw] tags_to_add
    #   A list of tags to add or update.
    #
    #   If a key of an existing tag is added, the tag's value is updated.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] tags_to_remove
    #   A list of tag keys to remove.
    #
    #   If a tag key doesn't exist, it is silently ignored.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/UpdateTagsForResourceMessage AWS API Documentation
    #
    class UpdateTagsForResourceMessage < Struct.new(
      :resource_arn,
      :tags_to_add,
      :tags_to_remove)
      include Aws::Structure
    end

    # A list of validation messages for a specified configuration template.
    #
    # @note When making an API call, you may pass ValidateConfigurationSettingsMessage
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         template_name: "ConfigurationTemplateName",
    #         environment_name: "EnvironmentName",
    #         option_settings: [ # required
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   The name of the application that the configuration template or
    #   environment belongs to.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the configuration template to validate the settings
    #   against.
    #
    #   Condition: You cannot specify both this and an environment name.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment to validate the settings against.
    #
    #   Condition: You cannot specify both this and a configuration template
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   A list of the options and desired values to evaluate.
    #   @return [Array<Types::ConfigurationOptionSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ValidateConfigurationSettingsMessage AWS API Documentation
    #
    class ValidateConfigurationSettingsMessage < Struct.new(
      :application_name,
      :template_name,
      :environment_name,
      :option_settings)
      include Aws::Structure
    end

    # An error or warning for a desired configuration option value.
    #
    # @!attribute [rw] message
    #   A message describing the error or warning.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   An indication of the severity of this message:
    #
    #   * `error`\: This message indicates that this is not a valid setting
    #     for an option.
    #
    #   * `warning`\: This message is providing information you should take
    #     into account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to which the option belongs.
    #   @return [String]
    #
    # @!attribute [rw] option_name
    #   The name of the option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk-2010-12-01/ValidationMessage AWS API Documentation
    #
    class ValidationMessage < Struct.new(
      :message,
      :severity,
      :namespace,
      :option_name)
      include Aws::Structure
    end

  end
end
