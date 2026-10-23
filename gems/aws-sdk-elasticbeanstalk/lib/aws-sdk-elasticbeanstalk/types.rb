# frozen_string_literal: true

# This is generated code!

module Aws::ElasticBeanstalk
  # This module contains the types returned by client operations.
  module Types

    # <p></p>
    # @!attribute environment_id
    #   <p>This specifies the ID of the environment with the in-progress update that you want to
    #         cancel.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>This specifies the name of the environment with the in-progress update that you want to
    #         cancel.</p>
    #   @return [String]
    class AbortEnvironmentUpdateMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an application.</p>
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>User-defined description of the application.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date when the application was created.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The date when the application was last modified.</p>
    #   @return [Time]
    # @!attribute versions
    #   <p>The names of the versions for this application.</p>
    #   @return [Array<String>]
    # @!attribute configuration_templates
    #   <p>The names of the configuration templates associated with this application.</p>
    #   @return [Array<String>]
    # @!attribute resource_lifecycle_config
    #   <p>The lifecycle settings for the application.</p>
    #   @return [Types::ApplicationResourceLifecycleConfig]
    class ApplicationDescription < Struct.new(
      nil,
      :application_arn,
      :application_name,
      :description,
      :date_created,
      :date_updated,
      :versions,
      :configuration_templates,
      :resource_lifecycle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a list of application descriptions.</p>
    # @!attribute applications
    #   <p>This parameter contains a list of <a>ApplicationDescription</a>.</p>
    #   @return [Array<Types::ApplicationDescription>]
    class ApplicationDescriptionsMessage < Struct.new(
      nil,
      :applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Application request metrics for an AWS Elastic Beanstalk environment.</p>
    # @!attribute duration
    #   <p>The amount of time that the metrics cover (usually 10 seconds). For example, you might
    #         have 5 requests (<code>request_count</code>) within the most recent time slice of 10 seconds
    #           (<code>duration</code>).</p>
    #   @return [Integer]
    # @!attribute request_count
    #   <p>Average number of requests handled by the web server per second over the last 10
    #         seconds.</p>
    #   @return [Integer]
    # @!attribute status_codes
    #   <p>Represents the percentage of requests over the last 10 seconds that resulted in each
    #         type of status code response.</p>
    #   @return [Types::StatusCodes]
    # @!attribute latency
    #   <p>Represents the average latency for the slowest X percent of requests over the last 10
    #         seconds. Latencies are in seconds with one millisecond resolution.</p>
    #   @return [Types::Latency]
    class ApplicationMetrics < Struct.new(
      nil,
      :duration,
      :request_count,
      :status_codes,
      :latency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_count] = 0 unless options.key?(:request_count)
        super
      end
    end

    # <p>The resource lifecycle configuration for an application. Defines lifecycle settings for
    #       resources that belong to the application, and the service role that AWS Elastic Beanstalk assumes
    #       in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle
    #       settings for application versions.</p>
    # @!attribute service_role
    #   <p>The ARN of an IAM service role that Elastic Beanstalk has permission to
    #         assume.</p>
    #            <p>The <code>ServiceRole</code> property is required the first time that you provide a
    #           <code>VersionLifecycleConfig</code> for the application in one of the supporting calls
    #           (<code>CreateApplication</code> or <code>UpdateApplicationResourceLifecycle</code>). After
    #         you provide it once, in either one of the calls, Elastic Beanstalk persists the Service Role with the
    #         application, and you don't need to specify it again in subsequent
    #           <code>UpdateApplicationResourceLifecycle</code> calls. You can, however, specify it in
    #         subsequent calls to change the Service Role to another value.</p>
    #   @return [String]
    # @!attribute version_lifecycle_config
    #   <p>Defines lifecycle settings for application versions.</p>
    #   @return [Types::ApplicationVersionLifecycleConfig]
    class ApplicationResourceLifecycleConfig < Struct.new(
      nil,
      :service_role,
      :version_lifecycle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute resource_lifecycle_config
    #   <p>The lifecycle configuration.</p>
    #   @return [Types::ApplicationResourceLifecycleConfig]
    class ApplicationResourceLifecycleDescriptionMessage < Struct.new(
      nil,
      :application_name,
      :resource_lifecycle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an application version.</p>
    # @!attribute application_version_arn
    #   <p>The Amazon Resource Name (ARN) of the application version.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application to which the application version belongs.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application version.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A unique identifier for the application version.</p>
    #   @return [String]
    # @!attribute source_build_information
    #   <p>If the version's source code was retrieved from AWS CodeCommit, the location of the
    #         source code for the application version.</p>
    #   @return [Types::SourceBuildInformation]
    # @!attribute build_arn
    #   <p>Reference to the artifact from the AWS CodeBuild build.</p>
    #   @return [String]
    # @!attribute source_bundle
    #   <p>The storage location of the application version's source bundle in Amazon S3.</p>
    #   @return [Types::S3Location]
    # @!attribute date_created
    #   <p>The creation date of the application version.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The last modified date of the application version.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The processing status of the application version. Reflects the state of the application
    #         version during its creation. Many of the values are only applicable if you specified
    #           <code>True</code> for the <code>Process</code> parameter of the
    #           <code>CreateApplicationVersion</code> action. The following list describes the possible
    #         values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Unprocessed</code> – Application version wasn't pre-processed or validated.
    #             Elastic Beanstalk will validate configuration files during deployment of the application version to an
    #           environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Processing</code> – Elastic Beanstalk is currently processing the application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Building</code> – Application version is currently undergoing an AWS CodeBuild build.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Processed</code> – Elastic Beanstalk was successfully pre-processed and validated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> – Either the AWS CodeBuild build failed or configuration files didn't
    #             pass validation. This application version isn't usable.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ApplicationVersionDescription < Struct.new(
      nil,
      :application_version_arn,
      :application_name,
      :description,
      :version_label,
      :source_build_information,
      :build_arn,
      :source_bundle,
      :date_created,
      :date_updated,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message wrapping a list of application version descriptions.</p>
    # @!attribute application_versions
    #   <p>List of <code>ApplicationVersionDescription</code> objects sorted in order of
    #         creation.</p>
    #   @return [Array<Types::ApplicationVersionDescription>]
    # @!attribute next_token
    #   <p>In a paginated request, the token that you can pass in a subsequent request to get the
    #         next response page.</p>
    #   @return [String]
    class ApplicationVersionDescriptionsMessage < Struct.new(
      nil,
      :application_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The application version lifecycle settings for an application. Defines the rules that
    #       Elastic Beanstalk applies to an application's versions in order to avoid hitting the
    #       per-region limit for application versions.</p>
    #          <p>When Elastic Beanstalk deletes an application version from its database, you can no
    #       longer deploy that version to an environment. The source bundle remains in S3 unless you
    #       configure the rule to delete it.</p>
    # @!attribute max_count_rule
    #   <p>Specify a max count rule to restrict the number of application versions that are
    #         retained for an application.</p>
    #   @return [Types::MaxCountRule]
    # @!attribute max_age_rule
    #   <p>Specify a max age rule to restrict the length of time that application versions are
    #         retained for an application.</p>
    #   @return [Types::MaxAgeRule]
    class ApplicationVersionLifecycleConfig < Struct.new(
      nil,
      :max_count_rule,
      :max_age_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to execute a scheduled managed action immediately.</p>
    # @!attribute environment_name
    #   <p>The name of the target environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID of the target environment.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>The action ID of the scheduled managed action to execute.</p>
    #   @return [String]
    class ApplyEnvironmentManagedActionRequest < Struct.new(
      nil,
      :environment_name,
      :environment_id,
      :action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result message containing information about the managed action.</p>
    # @!attribute action_id
    #   <p>The action ID of the managed action.</p>
    #   @return [String]
    # @!attribute action_description
    #   <p>A description of the managed action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of managed action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the managed action.</p>
    #   @return [String]
    class ApplyEnvironmentManagedActionResult < Struct.new(
      nil,
      :action_id,
      :action_description,
      :action_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to add or change the operations role used by an environment.</p>
    # @!attribute environment_name
    #   <p>The name of the environment to which to set the operations role.</p>
    #   @return [String]
    # @!attribute operations_role
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
    #         operations role.</p>
    #   @return [String]
    class AssociateEnvironmentOperationsRoleMessage < Struct.new(
      nil,
      :environment_name,
      :operations_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Auto Scaling launch configuration.</p>
    # @!attribute name
    #   <p>The name of the <code>AutoScalingGroup</code> . </p>
    #   @return [String]
    class AutoScalingGroup < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for an AWS CodeBuild build.</p>
    # @!attribute artifact_name
    #   <p>The name of the artifact of the CodeBuild build.
    #       If provided, Elastic Beanstalk stores the build artifact in the S3 location 
    #       <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>-<i>artifact-name</i>.zip.
    #       If not provided, Elastic Beanstalk stores the build artifact in the S3 location 
    #       <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>.zip.
    #       </p>
    #   @return [String]
    # @!attribute code_build_service_role
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>Information about the compute resources the build project will use.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute image
    #   <p>The ID of the Docker image to use for this build project.</p>
    #   @return [String]
    # @!attribute timeout_in_minutes
    #   <p>How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes.</p>
    #   @return [Integer]
    class BuildConfiguration < Struct.new(
      nil,
      :artifact_name,
      :code_build_service_role,
      :compute_type,
      :image,
      :timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The builder used to build the custom platform.</p>
    # @!attribute arn
    #   <p>The ARN of the builder.</p>
    #   @return [String]
    class Builder < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CPU utilization metrics for an instance.</p>
    # @!attribute user
    #   <p>Percentage of time that the CPU has spent in the <code>User</code> state over the last
    #         10 seconds.</p>
    #   @return [Float]
    # @!attribute nice
    #   <p>Available on Linux environments only.</p>
    #            <p>Percentage of time that the CPU has spent in the <code>Nice</code> state over the last
    #         10 seconds.</p>
    #   @return [Float]
    # @!attribute system
    #   <p>Available on Linux environments only.</p>
    #            <p>Percentage of time that the CPU has spent in the <code>System</code> state over the
    #         last 10 seconds.</p>
    #   @return [Float]
    # @!attribute idle
    #   <p>Percentage of time that the CPU has spent in the <code>Idle</code> state over the last
    #         10 seconds.</p>
    #   @return [Float]
    # @!attribute io_wait
    #   <p>Available on Linux environments only.</p>
    #            <p>Percentage of time that the CPU has spent in the <code>I/O Wait</code> state over the
    #         last 10 seconds.</p>
    #   @return [Float]
    # @!attribute irq
    #   <p>Available on Linux environments only.</p>
    #            <p>Percentage of time that the CPU has spent in the <code>IRQ</code> state over the last
    #         10 seconds.</p>
    #   @return [Float]
    # @!attribute soft_irq
    #   <p>Available on Linux environments only.</p>
    #            <p>Percentage of time that the CPU has spent in the <code>SoftIRQ</code> state over the
    #         last 10 seconds.</p>
    #   @return [Float]
    # @!attribute privileged
    #   <p>Available on Windows environments only.</p>
    #            <p>Percentage of time that the CPU has spent in the <code>Privileged</code> state over the
    #         last 10 seconds.</p>
    #   @return [Float]
    class CPUUtilization < Struct.new(
      nil,
      :user,
      :nice,
      :system,
      :idle,
      :io_wait,
      :irq,
      :soft_irq,
      :privileged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Results message indicating whether a CNAME is available.</p>
    # @!attribute cname_prefix
    #   <p>The prefix used when this CNAME is reserved.</p>
    #   @return [String]
    class CheckDNSAvailabilityMessage < Struct.new(
      nil,
      :cname_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates if the specified CNAME is available.</p>
    # @!attribute available
    #   <p>Indicates if the specified CNAME is available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code> : The CNAME is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code> : The CNAME is not available.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute fully_qualified_cname
    #   <p>The fully qualified CNAME to reserve when <a>CreateEnvironment</a> is called
    #         with the provided prefix.</p>
    #   @return [String]
    class CheckDNSAvailabilityResultMessage < Struct.new(
      nil,
      :available,
      :fully_qualified_cname,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AWS CodeBuild is not available in the specified region.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class CodeBuildNotInServiceRegionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create or update a group of environments.</p>
    # @!attribute application_name
    #   <p>The name of the application to which the specified source bundles belong.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group to which the target environments belong. Specify a group name
    #         only if the environment name defined in each target environment's manifest ends with a +
    #         (plus) character. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    #   @return [String]
    # @!attribute version_labels
    #   <p>A list of version labels, specifying one or more application source bundles that belong
    #         to the target application. Each source bundle must include an environment manifest that
    #         specifies the name of the environment and the name of the solution stack to use, and
    #         optionally can specify environment links to create.</p>
    #   @return [Array<String>]
    class ComposeEnvironmentsMessage < Struct.new(
      nil,
      :application_name,
      :group_name,
      :version_labels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a list of environment descriptions.</p>
    # @!attribute environments
    #   <p> Returns an <a>EnvironmentDescription</a> list. </p>
    #   @return [Array<Types::EnvironmentDescription>]
    # @!attribute next_token
    #   <p>In a paginated request, the token that you can pass in a subsequent request to get the
    #         next response page.</p>
    #   @return [String]
    class ComposeEnvironmentsOutput < Struct.new(
      nil,
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the possible values for a configuration option.</p>
    # @!attribute namespace
    #   <p>A unique namespace identifying the option's associated AWS resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration option.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value for this configuration option.</p>
    #   @return [String]
    # @!attribute change_severity
    #   <p>An indication of which action is required if the value for this configuration option
    #         changes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NoInterruption</code> : There is no interruption to the environment or application
    #             availability.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RestartEnvironment</code> : The environment is entirely restarted, all AWS resources
    #             are deleted and recreated, and the environment is unavailable during the
    #             process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RestartApplicationServer</code> : The environment is available the entire time.
    #             However, a short application outage occurs when the application servers on the running
    #             Amazon EC2 instances are restarted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute user_defined
    #   <p>An indication of whether the user defined this configuration option:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code> : This configuration option was defined by the user. It is a valid
    #             choice for specifying if this as an <code>Option to Remove</code> when updating
    #             configuration settings. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code> : This configuration was not defined by the user.</p>
    #               </li>
    #            </ul>
    #            <p> Constraint: You can remove only <code>UserDefined</code> options from a configuration. </p>
    #            <p> Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute value_type
    #   <p>An indication of which type of values this option has and whether it is allowable to
    #         select one or more than one of the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Scalar</code> : Values for this option are a single selection from the possible
    #             values, or an unformatted string, or numeric value governed by the
    #             <code>MIN/MAX/Regex</code> constraints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>List</code> : Values for this option are multiple selections from the possible
    #             values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Boolean</code> : Values for this option are either <code>true</code> or
    #             <code>false</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Json</code> : Values for this option are a JSON representation of a
    #             <code>ConfigDocument</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value_options
    #   <p>If specified, values for the configuration option are selected from this
    #         list.</p>
    #   @return [Array<String>]
    # @!attribute min_value
    #   <p>If specified, the configuration option must be a numeric value greater than this
    #         value.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>If specified, the configuration option must be a numeric value less than this
    #         value.</p>
    #   @return [Integer]
    # @!attribute max_length
    #   <p>If specified, the configuration option must be a string value no longer than this
    #         value.</p>
    #   @return [Integer]
    # @!attribute regex
    #   <p>If specified, the configuration option must be a string value that satisfies this
    #         regular expression.</p>
    #   @return [Types::OptionRestrictionRegex]
    class ConfigurationOptionDescription < Struct.new(
      nil,
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
      :regex,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specification identifying an individual configuration option along with its current
    #       value. For a list of possible namespaces and option values, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the
    #       <i>AWS Elastic Beanstalk Developer Guide</i>. </p>
    # @!attribute resource_name
    #   <p>A unique resource name for the option setting. Use it for a time–based scaling configuration option.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>A unique namespace that identifies the option's associated AWS resource.</p>
    #   @return [String]
    # @!attribute option_name
    #   <p>The name of the configuration option.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The current value for the configuration option.</p>
    #   @return [String]
    class ConfigurationOptionSetting < Struct.new(
      nil,
      :resource_name,
      :namespace,
      :option_name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings for a configuration set.</p>
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack this configuration set uses.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this configuration set.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p> If not <code>null</code>, the name of the configuration template for this
    #         configuration set. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this configuration set.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p> If not <code>null</code>, the name of the environment for this configuration set.
    #       </p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p> If this configuration set is associated with an environment, the
    #           <code>DeploymentStatus</code> parameter indicates the deployment status of this
    #         configuration set: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>null</code>: This configuration is not associated with a running
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: This is a draft configuration that is not deployed to the associated
    #             environment but is in the process of deploying.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deployed</code>: This is the configuration that is currently deployed to the
    #             associated running environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>failed</code>: This is a draft configuration that failed to successfully
    #             deploy.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date (in UTC time) when this configuration set was created.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The date (in UTC time) when this configuration set was last modified.</p>
    #   @return [Time]
    # @!attribute option_settings
    #   <p>A list of the configuration options and their values in this configuration
    #         set.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    class ConfigurationSettingsDescription < Struct.new(
      nil,
      :solution_stack_name,
      :platform_arn,
      :application_name,
      :template_name,
      :description,
      :environment_name,
      :deployment_status,
      :date_created,
      :date_updated,
      :option_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create an application.</p>
    # @!attribute application_name
    #   <p>The name of the application. Must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Your description of the application.</p>
    #   @return [String]
    # @!attribute resource_lifecycle_config
    #   <p>Specifies an application resource lifecycle configuration to prevent your application
    #         from accumulating too many versions.</p>
    #   @return [Types::ApplicationResourceLifecycleConfig]
    # @!attribute tags
    #   <p>Specifies the tags applied to the application.</p>
    #            <p>Elastic Beanstalk applies these tags only to the application. Environments that you create in the
    #         application don't inherit the tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateApplicationMessage < Struct.new(
      nil,
      :application_name,
      :description,
      :resource_lifecycle_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a single description of an application.</p>
    # @!attribute application
    #   <p> The <a>ApplicationDescription</a> of the application. </p>
    #   @return [Types::ApplicationDescription]
    class CreateApplicationOutput < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p> The name of the application. If no application is found with this name, and
    #           <code>AutoCreateApplication</code> is <code>false</code>, returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #   @return [String]
    # @!attribute version_label
    #   <p>A label identifying this version.</p>
    #            <p>Constraint: Must be unique per application. If an application version already exists
    #         with this label for the specified application, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of this application version.</p>
    #   @return [String]
    # @!attribute source_build_information
    #   <p>Specify a commit in an AWS CodeCommit Git repository to use as the source code for the
    #         application version.</p>
    #   @return [Types::SourceBuildInformation]
    # @!attribute source_bundle
    #   <p>The Amazon S3 bucket and key that identify the location of the source bundle for this
    #         version.</p>
    #            <note>
    #               <p>The Amazon S3 bucket must be in the same region as the
    #         environment.</p>
    #            </note>
    #            <p>Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with
    #           <code>SourceBuildInformation</code>), but not both. If neither <code>SourceBundle</code> nor
    #           <code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses a sample
    #         application.</p>
    #   @return [Types::S3Location]
    # @!attribute build_configuration
    #   <p>Settings for an AWS CodeBuild build.</p>
    #   @return [Types::BuildConfiguration]
    # @!attribute auto_create_application
    #   <p>Set to <code>true</code> to create an application with the specified name if it doesn't
    #         already exist.</p>
    #   @return [Boolean]
    # @!attribute process
    #   <p>Pre-processes and validates the environment manifest (<code>env.yaml</code>) and
    #         configuration files (<code>*.config</code> files in the <code>.ebextensions</code> folder) in
    #         the source bundle. Validating configuration files can identify issues prior to deploying the
    #         application version to an environment.</p>
    #            <p>You must turn processing on for application versions that you create using AWS
    #         CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3,
    #         processing is optional.</p>
    #            <note>
    #               <p>The <code>Process</code> option validates Elastic Beanstalk configuration files. It
    #         doesn't validate your application's configuration files, like proxy server or Docker
    #         configuration.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Specifies the tags applied to the application version.</p>
    #            <p>Elastic Beanstalk applies these tags only to the application version. Environments that use the
    #         application version don't inherit the tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateApplicationVersionMessage < Struct.new(
      nil,
      :application_name,
      :version_label,
      :description,
      :source_build_information,
      :source_bundle,
      :build_configuration,
      :auto_create_application,
      :process,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message wrapping a single description of an application version.</p>
    # @!attribute application_version
    #   <p> The <a>ApplicationVersionDescription</a> of the application version.
    #       </p>
    #   @return [Types::ApplicationVersionDescription]
    class CreateApplicationVersionOutput < Struct.new(
      nil,
      :application_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create a configuration template.</p>
    # @!attribute application_name
    #   <p>The name of the Elastic Beanstalk application to associate with this configuration
    #         template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template.</p>
    #            <p>Constraint: This name must be unique per application.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p>The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For
    #         example, <code>64bit Amazon Linux 2013.09 running Tomcat 7 Java 7</code>. A solution stack
    #         specifies the operating system, runtime, and application server for a configuration template.
    #         It also determines the set of configuration options as well as the possible and default
    #         values. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html">Supported Platforms</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <p>You must specify <code>SolutionStackName</code> if you don't specify
    #           <code>PlatformArn</code>, <code>EnvironmentId</code>, or
    #         <code>SourceConfiguration</code>.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html">
    #                  <code>ListAvailableSolutionStacks</code>
    #               </a> API to obtain a list of available
    #         solution stacks.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The Amazon Resource Name (ARN) of the custom platform. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html"> Custom
    #           Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <note>
    #               <p>If you specify <code>PlatformArn</code>, then don't specify
    #             <code>SolutionStackName</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified
    #         configuration template to create a new configuration.</p>
    #            <p>Values specified in <code>OptionSettings</code> override any values obtained from the
    #           <code>SourceConfiguration</code>.</p>
    #            <p>You must specify <code>SourceConfiguration</code> if you don't specify
    #           <code>PlatformArn</code>, <code>EnvironmentId</code>, or
    #         <code>SolutionStackName</code>.</p>
    #            <p>Constraint: If both solution stack name and source configuration are specified, the
    #         solution stack of the source configuration template must match the specified solution stack
    #         name.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute environment_id
    #   <p>The ID of an environment whose settings you want to use to create the configuration
    #         template. You must specify <code>EnvironmentId</code> if you don't specify
    #           <code>PlatformArn</code>, <code>SolutionStackName</code>, or
    #           <code>SourceConfiguration</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for this configuration.</p>
    #   @return [String]
    # @!attribute option_settings
    #   <p>Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these
    #         values override the values obtained from the solution stack or the source configuration
    #         template. For a complete list of Elastic Beanstalk configuration options, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    # @!attribute tags
    #   <p>Specifies the tags applied to the configuration template.</p>
    #   @return [Array<Types::Tag>]
    class CreateConfigurationTemplateMessage < Struct.new(
      nil,
      :application_name,
      :template_name,
      :solution_stack_name,
      :platform_arn,
      :source_configuration,
      :environment_id,
      :description,
      :option_settings,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings for a configuration set.</p>
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack this configuration set uses.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this configuration set.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p> If not <code>null</code>, the name of the configuration template for this
    #         configuration set. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this configuration set.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p> If not <code>null</code>, the name of the environment for this configuration set.
    #       </p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p> If this configuration set is associated with an environment, the
    #           <code>DeploymentStatus</code> parameter indicates the deployment status of this
    #         configuration set: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>null</code>: This configuration is not associated with a running
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: This is a draft configuration that is not deployed to the associated
    #             environment but is in the process of deploying.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deployed</code>: This is the configuration that is currently deployed to the
    #             associated running environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>failed</code>: This is a draft configuration that failed to successfully
    #             deploy.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date (in UTC time) when this configuration set was created.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The date (in UTC time) when this configuration set was last modified.</p>
    #   @return [Time]
    # @!attribute option_settings
    #   <p>A list of the configuration options and their values in this configuration
    #         set.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    class CreateConfigurationTemplateOutput < Struct.new(
      nil,
      :solution_stack_name,
      :platform_arn,
      :application_name,
      :template_name,
      :description,
      :environment_name,
      :deployment_status,
      :date_created,
      :date_updated,
      :option_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>The name of the application that is associated with this environment.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>A unique name for the environment.</p>
    #            <p>Constraint: Must be from 4 to 40 characters in length. The name can contain only
    #         letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique
    #         within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #            <p>If you don't specify the <code>CNAMEPrefix</code> parameter, the environment name becomes part of
    #         the CNAME, and therefore part of the visible URL for your application.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group to which the target environment belongs. Specify a group name
    #         only if the environment's name is specified in an environment manifest and not with the
    #         environment name parameter. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Your description for this environment.</p>
    #   @return [String]
    # @!attribute cname_prefix
    #   <p>If specified, the environment attempts to use this value as the prefix for the CNAME in
    #         your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by
    #         appending a random alphanumeric string to the environment name.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>Specifies the tier to use in creating this environment. The environment tier that you
    #         choose determines whether Elastic Beanstalk provisions resources to support a web application that handles
    #         HTTP(S) requests or a web application that handles background-processing tasks.</p>
    #   @return [Types::EnvironmentTier]
    # @!attribute tags
    #   <p>Specifies the tags applied to resources in the environment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute version_label
    #   <p>The name of the application version to deploy.</p>
    #            <p>Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the Elastic Beanstalk configuration template to use with the environment.</p>
    #            <note>
    #               <p>If you specify <code>TemplateName</code>, then don't specify 
    #             <code>SolutionStackName</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p>The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If
    #         specified, Elastic Beanstalk sets the configuration values to the default values associated with the
    #         specified solution stack. For a list of current solution stacks, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html">Elastic Beanstalk Supported Platforms</a> in the <i>AWS Elastic Beanstalk
    #           Platforms</i> guide.</p>
    #            <note>
    #               <p>If you specify <code>SolutionStackName</code>, don't specify <code>PlatformArn</code> or
    #             <code>TemplateName</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The Amazon Resource Name (ARN) of the custom platform to use with the environment. For
    #         more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html">Custom Platforms</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <note>
    #               <p>If you specify <code>PlatformArn</code>, don't specify
    #           <code>SolutionStackName</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute option_settings
    #   <p>If specified, AWS Elastic Beanstalk sets the specified configuration options to the
    #         requested value in the configuration set for the new environment. These override the values
    #         obtained from the solution stack or the configuration template.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    # @!attribute options_to_remove
    #   <p>A list of custom user-defined configuration options to remove from the configuration
    #         set for this new environment.</p>
    #   @return [Array<Types::OptionSpecification>]
    # @!attribute operations_role
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
    #         operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream
    #         services during this call and during subsequent calls acting on this environment. To specify
    #         an operations role, you must have the <code>iam:PassRole</code> permission for the role. For
    #         more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #   @return [String]
    class CreateEnvironmentMessage < Struct.new(
      nil,
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
      :options_to_remove,
      :operations_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an environment.</p>
    # @!attribute environment_name
    #   <p>The name of this environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of this environment.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this environment.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The application version deployed in this environment.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p> The name of the <code>SolutionStack</code> deployed with this environment. </p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template used to originally launch this
    #         environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this environment.</p>
    #   @return [String]
    # @!attribute endpoint_url
    #   <p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For
    #         single-instance environments, the IP address of the instance.</p>
    #   @return [String]
    # @!attribute cname
    #   <p>The URL to the CNAME for this environment.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The creation date for this environment.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The last modified date for this environment.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current operational status of the environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launching</code>: Environment is in the process of initial deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Updating</code>: Environment is in the process of updating its configuration
    #             settings or application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Ready</code>: Environment is available to have an action performed on it, such as
    #             update or terminate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminating</code>: Environment is in the shut-down process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminated</code>: Environment is not running.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute abortable_operation_in_progress
    #   <p>Indicates if there is an in-progress environment configuration update or application
    #         version deployment that you can cancel.</p>
    #            <p>
    #               <code>true:</code> There is an update in progress. </p>
    #            <p>
    #               <code>false:</code> There are no updates currently in progress. </p>
    #   @return [Boolean]
    # @!attribute health
    #   <p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the
    #         failure levels for a running environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more
    #             consecutive failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive
    #             failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Green</code>: Indicates the environment is healthy and fully functional.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grey</code>: Default health for a new environment. The environment is not fully
    #             launched and health checks have not started or health checks are suspended during an
    #               <code>UpdateEnvironment</code> or <code>RestartEnvironment</code> request.</p>
    #               </li>
    #            </ul>
    #            <p> Default: <code>Grey</code>
    #            </p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Returns the health status of the application running in your environment. For more
    #         information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and
    #           Statuses</a>.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The description of the AWS resources used by this environment.</p>
    #   @return [Types::EnvironmentResourcesDescription]
    # @!attribute tier
    #   <p>Describes the current tier of this environment.</p>
    #   @return [Types::EnvironmentTier]
    # @!attribute environment_links
    #   <p>A list of links to other environments in the same group.</p>
    #   @return [Array<Types::EnvironmentLink>]
    # @!attribute environment_arn
    #   <p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>
    #   @return [String]
    # @!attribute operations_role
    #   <p>The Amazon Resource Name (ARN) of the environment's operations role. For more information,
    #         see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #   @return [String]
    class CreateEnvironmentOutput < Struct.new(
      nil,
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
      :environment_arn,
      :operations_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create a new platform version.</p>
    # @!attribute platform_name
    #   <p>The name of your custom platform.</p>
    #   @return [String]
    # @!attribute platform_version
    #   <p>The number, such as 1.0.2, for the new platform version.</p>
    #   @return [String]
    # @!attribute platform_definition_bundle
    #   <p>The location of the platform definition archive in Amazon S3.</p>
    #   @return [Types::S3Location]
    # @!attribute environment_name
    #   <p>The name of the builder environment.</p>
    #   @return [String]
    # @!attribute option_settings
    #   <p>The configuration option settings to apply to the builder environment.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    # @!attribute tags
    #   <p>Specifies the tags applied to the new platform version.</p>
    #            <p>Elastic Beanstalk applies these tags only to the platform version. Environments that you create using
    #         the platform version don't inherit the tags.</p>
    #   @return [Array<Types::Tag>]
    class CreatePlatformVersionRequest < Struct.new(
      nil,
      :platform_name,
      :platform_version,
      :platform_definition_bundle,
      :environment_name,
      :option_settings,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_summary
    #   <p>Detailed information about the new version of the custom platform.</p>
    #   @return [Types::PlatformSummary]
    # @!attribute builder
    #   <p>The builder used to create the custom platform.</p>
    #   @return [Types::Builder]
    class CreatePlatformVersionResult < Struct.new(
      nil,
      :platform_summary,
      :builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Results of a <a>CreateStorageLocationResult</a> call.</p>
    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket created.</p>
    #   @return [String]
    class CreateStorageLocationResultMessage < Struct.new(
      nil,
      :s3_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom AMI available to platforms.</p>
    # @!attribute virtualization_type
    #   <p>The type of virtualization used to create the custom AMI.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>THe ID of the image used to create the custom AMI.</p>
    #   @return [String]
    class CustomAmi < Struct.new(
      nil,
      :virtualization_type,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete an application.</p>
    # @!attribute application_name
    #   <p>The name of the application to delete.</p>
    #   @return [String]
    # @!attribute terminate_env_by_force
    #   <p>When set to true, running environments will be terminated before deleting the
    #         application.</p>
    #   @return [Boolean]
    class DeleteApplicationMessage < Struct.new(
      nil,
      :application_name,
      :terminate_env_by_force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete an application version.</p>
    # @!attribute application_name
    #   <p>The name of the application to which the version belongs.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The label of the version to delete.</p>
    #   @return [String]
    # @!attribute delete_source_bundle
    #   <p>Set to <code>true</code> to delete the source bundle from your storage bucket.
    #         Otherwise, the application version is deleted only from Elastic Beanstalk and the source
    #         bundle remains in Amazon S3.</p>
    #   @return [Boolean]
    class DeleteApplicationVersionMessage < Struct.new(
      nil,
      :application_name,
      :version_label,
      :delete_source_bundle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete a configuration template.</p>
    # @!attribute application_name
    #   <p>The name of the application to delete the configuration template from.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template to delete.</p>
    #   @return [String]
    class DeleteConfigurationTemplateMessage < Struct.new(
      nil,
      :application_name,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to delete a draft environment configuration.</p>
    # @!attribute application_name
    #   <p>The name of the application the environment is associated with.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to delete the draft configuration from.</p>
    #   @return [String]
    class DeleteEnvironmentConfigurationMessage < Struct.new(
      nil,
      :application_name,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_arn
    #   <p>The ARN of the version of the custom platform.</p>
    #   @return [String]
    class DeletePlatformVersionRequest < Struct.new(
      nil,
      :platform_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_summary
    #   <p>Detailed information about the version of the custom platform.</p>
    #   @return [Types::PlatformSummary]
    class DeletePlatformVersionResult < Struct.new(
      nil,
      :platform_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an application version deployment.</p>
    # @!attribute version_label
    #   <p>The version label of the application version in the deployment.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment. This number increases by one each time that you deploy source
    #         code or change instance configuration settings.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the deployment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>In Progress</code> : The deployment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deployed</code> : The deployment succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> : The deployment failed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deployment_time
    #   <p>For in-progress deployments, the time that the deployment started.</p>
    #            <p>For completed deployments, the time that the deployment ended.</p>
    #   @return [Time]
    class Deployment < Struct.new(
      nil,
      :version_label,
      :deployment_id,
      :status,
      :deployment_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_quotas
    #   <p>The Elastic Beanstalk resource quotas associated with the calling AWS account.</p>
    #   @return [Types::ResourceQuotas]
    class DescribeAccountAttributesResult < Struct.new(
      nil,
      :resource_quotas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe application versions.</p>
    # @!attribute application_name
    #   <p>Specify an application name to show only application versions for that
    #         application.</p>
    #   @return [String]
    # @!attribute version_labels
    #   <p>Specify a version label to show a specific application version.</p>
    #   @return [Array<String>]
    # @!attribute max_records
    #   <p>For a paginated request. Specify a maximum number of application versions to include in
    #         each response.</p>
    #            <p>If no <code>MaxRecords</code> is specified, all available application versions are
    #         retrieved in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
    #         parameter values must be identical to the ones specified in the initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #   @return [String]
    class DescribeApplicationVersionsMessage < Struct.new(
      nil,
      :application_name,
      :version_labels,
      :max_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe one or more applications.</p>
    # @!attribute application_names
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include
    #         those with the specified names.</p>
    #   @return [Array<String>]
    class DescribeApplicationsMessage < Struct.new(
      nil,
      :application_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a list of application version descriptions.</p>
    # @!attribute application_name
    #   <p>The name of the application associated with the configuration template or environment.
    #         Only needed if you want to describe the configuration options associated with either the
    #         configuration template or environment.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template whose configuration options you want to
    #         describe.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment whose configuration options you want to describe.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack whose configuration options you want to
    #         describe.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the custom platform.</p>
    #   @return [String]
    # @!attribute options
    #   <p>If specified, restricts the descriptions to only the specified options.</p>
    #   @return [Array<Types::OptionSpecification>]
    class DescribeConfigurationOptionsMessage < Struct.new(
      nil,
      :application_name,
      :template_name,
      :environment_name,
      :solution_stack_name,
      :platform_arn,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings for a specified configuration set.</p>
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack these configuration options belong to.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute options
    #   <p> A list of <a>ConfigurationOptionDescription</a>. </p>
    #   @return [Array<Types::ConfigurationOptionDescription>]
    class DescribeConfigurationOptionsOutput < Struct.new(
      nil,
      :solution_stack_name,
      :platform_arn,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing all of the configuration settings for a specified solution
    #       stack or configuration template.</p>
    # @!attribute application_name
    #   <p>The application for the environment or configuration template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template to describe.</p>
    #            <p> Conditional: You must specify either this parameter or an EnvironmentName, but not
    #         both. If you specify both, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic
    #         Beanstalk returns a <code>MissingRequiredParameter</code> error. </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to describe.</p>
    #            <p> Condition: You must specify either this or a TemplateName, but not both. If you
    #         specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error.
    #         If you do not specify either, AWS Elastic Beanstalk returns
    #           <code>MissingRequiredParameter</code> error. </p>
    #   @return [String]
    class DescribeConfigurationSettingsMessage < Struct.new(
      nil,
      :application_name,
      :template_name,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The results from a request to change the configuration settings of an
    #       environment.</p>
    # @!attribute configuration_settings
    #   <p> A list of <a>ConfigurationSettingsDescription</a>. </p>
    #   @return [Array<Types::ConfigurationSettingsDescription>]
    class DescribeConfigurationSettingsOutput < Struct.new(
      nil,
      :configuration_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>See the example below to learn how to create a request body.</p>
    # @!attribute environment_name
    #   <p>Specify the environment by name.</p>
    #            <p>You must specify either this or an EnvironmentName, or both.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>Specify the environment by ID.</p>
    #            <p>You must specify either this or an EnvironmentName, or both.</p>
    #   @return [String]
    # @!attribute attribute_names
    #   <p>Specify the response elements to return. To retrieve all attributes, set to
    #           <code>All</code>. If no attribute names are specified, returns the name of the
    #         environment.</p>
    #   @return [Array<String>]
    class DescribeEnvironmentHealthRequest < Struct.new(
      nil,
      :environment_name,
      :environment_id,
      :attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Health details for an AWS Elastic Beanstalk environment.</p>
    # @!attribute environment_name
    #   <p>The environment's name.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">health status</a> of the
    #         environment. For example, <code>Ok</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The environment's operational status. <code>Ready</code>, <code>Launching</code>,
    #           <code>Updating</code>, <code>Terminating</code>, or <code>Terminated</code>.</p>
    #   @return [String]
    # @!attribute color
    #   <p>The <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">health color</a> of the
    #         environment.</p>
    #   @return [String]
    # @!attribute causes
    #   <p>Descriptions of the data that contributed to the environment's current health
    #         status.</p>
    #   @return [Array<String>]
    # @!attribute application_metrics
    #   <p>Application request metrics for the environment.</p>
    #   @return [Types::ApplicationMetrics]
    # @!attribute instances_health
    #   <p>Summary health information for the instances in the environment.</p>
    #   @return [Types::InstanceHealthSummary]
    # @!attribute refreshed_at
    #   <p>The date and time that the health information was retrieved.</p>
    #   @return [Time]
    class DescribeEnvironmentHealthResult < Struct.new(
      nil,
      :environment_name,
      :health_status,
      :status,
      :color,
      :causes,
      :application_metrics,
      :instances_health,
      :refreshed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list completed and failed managed actions.</p>
    # @!attribute environment_id
    #   <p>The environment ID of the target environment.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the target environment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token returned by a previous request.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items to return for a single request.</p>
    #   @return [Integer]
    class DescribeEnvironmentManagedActionHistoryRequest < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      :next_token,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A result message containing a list of completed and failed managed actions.</p>
    # @!attribute managed_action_history_items
    #   <p>A list of completed and failed managed actions.</p>
    #   @return [Array<Types::ManagedActionHistoryItem>]
    # @!attribute next_token
    #   <p>A pagination token that you pass to <a>DescribeEnvironmentManagedActionHistory</a> to get the next page of
    #         results.</p>
    #   @return [String]
    class DescribeEnvironmentManagedActionHistoryResult < Struct.new(
      nil,
      :managed_action_history_items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to list an environment's upcoming and in-progress managed actions.</p>
    # @!attribute environment_name
    #   <p>The name of the target environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID of the target environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>To show only actions with a particular status, specify a status.</p>
    #   @return [String]
    class DescribeEnvironmentManagedActionsRequest < Struct.new(
      nil,
      :environment_name,
      :environment_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result message containing a list of managed actions.</p>
    # @!attribute managed_actions
    #   <p>A list of upcoming and in-progress managed actions.</p>
    #   @return [Array<Types::ManagedAction>]
    class DescribeEnvironmentManagedActionsResult < Struct.new(
      nil,
      :managed_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe the resources in an environment.</p>
    # @!attribute environment_id
    #   <p>The ID of the environment to retrieve AWS resource usage data.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to retrieve AWS resource usage data.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    class DescribeEnvironmentResourcesMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to describe one or more environments.</p>
    # @!attribute application_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that are associated with this application.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that are associated with this application version.</p>
    #   @return [String]
    # @!attribute environment_ids
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that have the specified IDs.</p>
    #   @return [Array<String>]
    # @!attribute environment_names
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that have the specified names.</p>
    #   @return [Array<String>]
    # @!attribute include_deleted
    #   <p>Indicates whether to include deleted environments:</p>
    #            <p>
    #               <code>true</code>: Environments that have been deleted after
    #         <code>IncludedDeletedBackTo</code> are displayed.</p>
    #            <p>
    #               <code>false</code>: Do not include deleted environments.</p>
    #   @return [Boolean]
    # @!attribute included_deleted_back_to
    #   <p> If specified when <code>IncludeDeleted</code> is set to <code>true</code>, then
    #         environments deleted after this date are displayed. </p>
    #   @return [Time]
    # @!attribute max_records
    #   <p>For a paginated request. Specify a maximum number of environments to include in
    #         each response.</p>
    #            <p>If no <code>MaxRecords</code> is specified, all available environments are
    #         retrieved in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
    #         parameter values must be identical to the ones specified in the initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #   @return [String]
    class DescribeEnvironmentsMessage < Struct.new(
      nil,
      :application_name,
      :version_label,
      :environment_ids,
      :environment_names,
      :include_deleted,
      :included_deleted_back_to,
      :max_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a list of environment descriptions.</p>
    # @!attribute environments
    #   <p> Returns an <a>EnvironmentDescription</a> list. </p>
    #   @return [Array<Types::EnvironmentDescription>]
    # @!attribute next_token
    #   <p>In a paginated request, the token that you can pass in a subsequent request to get the
    #         next response page.</p>
    #   @return [String]
    class DescribeEnvironmentsOutput < Struct.new(
      nil,
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to retrieve a list of events for an environment.</p>
    # @!attribute application_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those associated with this application.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this application version.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         are associated with this environment configuration.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this environment.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this environment.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the
    #         returned descriptions to those associated with this custom platform version.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>If specified, AWS Elastic Beanstalk restricts the described events to include only
    #         those associated with this request ID.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>If specified, limits the events returned from this call to include only those with the
    #         specified severity or higher.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         occur on or after this time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         occur up to, but not including, the <code>EndTime</code>. </p>
    #   @return [Time]
    # @!attribute max_records
    #   <p>Specifies the maximum number of events that can be returned, beginning with the most
    #         recent event.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token. If specified, the events return the next batch of results.</p>
    #   @return [String]
    class DescribeEventsMessage < Struct.new(
      nil,
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
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>
    # @!attribute environment_name
    #   <p>Specify the AWS Elastic Beanstalk environment by name.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>Specify the AWS Elastic Beanstalk environment by ID.</p>
    #   @return [String]
    # @!attribute attribute_names
    #   <p>Specifies the response elements you wish to receive. To retrieve all attributes, set to
    #           <code>All</code>. If no attribute names are specified, returns a list of
    #         instances.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Specify the pagination token returned by a previous call.</p>
    #   @return [String]
    class DescribeInstancesHealthRequest < Struct.new(
      nil,
      :environment_name,
      :environment_id,
      :attribute_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk
    #       environment.</p>
    # @!attribute instance_health_list
    #   <p>Detailed health information about each instance.</p>
    #            <p>The output differs slightly between Linux and Windows environments. There is a difference
    #         in the members that are supported under the <code><CPUUtilization></code> type.</p>
    #   @return [Array<Types::SingleInstanceHealth>]
    # @!attribute refreshed_at
    #   <p>The date and time that the health information was retrieved.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>Pagination token for the next page of results, if available.</p>
    #   @return [String]
    class DescribeInstancesHealthResult < Struct.new(
      nil,
      :instance_health_list,
      :refreshed_at,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    class DescribePlatformVersionRequest < Struct.new(
      nil,
      :platform_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_description
    #   <p>Detailed information about the platform version.</p>
    #   @return [Types::PlatformDescription]
    class DescribePlatformVersionResult < Struct.new(
      nil,
      :platform_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to disassociate the operations role from an environment.</p>
    # @!attribute environment_name
    #   <p>The name of the environment from which to disassociate the operations role.</p>
    #   @return [String]
    class DisassociateEnvironmentOperationsRoleMessage < Struct.new(
      nil,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A generic service exception has occurred.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class ElasticBeanstalkServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an environment.</p>
    # @!attribute environment_name
    #   <p>The name of this environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of this environment.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this environment.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The application version deployed in this environment.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p> The name of the <code>SolutionStack</code> deployed with this environment. </p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template used to originally launch this
    #         environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this environment.</p>
    #   @return [String]
    # @!attribute endpoint_url
    #   <p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For
    #         single-instance environments, the IP address of the instance.</p>
    #   @return [String]
    # @!attribute cname
    #   <p>The URL to the CNAME for this environment.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The creation date for this environment.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The last modified date for this environment.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current operational status of the environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launching</code>: Environment is in the process of initial deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Updating</code>: Environment is in the process of updating its configuration
    #             settings or application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Ready</code>: Environment is available to have an action performed on it, such as
    #             update or terminate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminating</code>: Environment is in the shut-down process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminated</code>: Environment is not running.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute abortable_operation_in_progress
    #   <p>Indicates if there is an in-progress environment configuration update or application
    #         version deployment that you can cancel.</p>
    #            <p>
    #               <code>true:</code> There is an update in progress. </p>
    #            <p>
    #               <code>false:</code> There are no updates currently in progress. </p>
    #   @return [Boolean]
    # @!attribute health
    #   <p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the
    #         failure levels for a running environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more
    #             consecutive failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive
    #             failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Green</code>: Indicates the environment is healthy and fully functional.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grey</code>: Default health for a new environment. The environment is not fully
    #             launched and health checks have not started or health checks are suspended during an
    #               <code>UpdateEnvironment</code> or <code>RestartEnvironment</code> request.</p>
    #               </li>
    #            </ul>
    #            <p> Default: <code>Grey</code>
    #            </p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Returns the health status of the application running in your environment. For more
    #         information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and
    #           Statuses</a>.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The description of the AWS resources used by this environment.</p>
    #   @return [Types::EnvironmentResourcesDescription]
    # @!attribute tier
    #   <p>Describes the current tier of this environment.</p>
    #   @return [Types::EnvironmentTier]
    # @!attribute environment_links
    #   <p>A list of links to other environments in the same group.</p>
    #   @return [Array<Types::EnvironmentLink>]
    # @!attribute environment_arn
    #   <p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>
    #   @return [String]
    # @!attribute operations_role
    #   <p>The Amazon Resource Name (ARN) of the environment's operations role. For more information,
    #         see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #   @return [String]
    class EnvironmentDescription < Struct.new(
      nil,
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
      :environment_arn,
      :operations_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information retrieved from the Amazon EC2 instances.</p>
    # @!attribute info_type
    #   <p>The type of information retrieved.</p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>The Amazon EC2 Instance ID for this information.</p>
    #   @return [String]
    # @!attribute sample_timestamp
    #   <p>The time stamp when this information was retrieved.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The retrieved information. Currently contains a presigned Amazon S3 URL. The files are
    #         deleted after 15 minutes.</p>
    #            <p>Anyone in possession of this URL can access the files before they are deleted. Make the
    #         URL available only to trusted parties.</p>
    #   @return [String]
    class EnvironmentInfoDescription < Struct.new(
      nil,
      :info_type,
      :ec2_instance_id,
      :sample_timestamp,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A link to another environment, defined in the environment's manifest. Links provide
    #       connection information in system properties that can be used to connect to another environment
    #       in the same group. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #         (env.yaml)</a> for details.</p>
    # @!attribute link_name
    #   <p>The name of the link.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the linked environment (the dependency).</p>
    #   @return [String]
    class EnvironmentLink < Struct.new(
      nil,
      :link_name,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the AWS resources in use by this environment. This data is live.</p>
    # @!attribute environment_name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute auto_scaling_groups
    #   <p> The <code>AutoScalingGroups</code> used by this environment. </p>
    #   @return [Array<Types::AutoScalingGroup>]
    # @!attribute instances
    #   <p>The Amazon EC2 instances used by this environment.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute launch_configurations
    #   <p>The Auto Scaling launch configurations in use by this environment.</p>
    #   @return [Array<Types::LaunchConfiguration>]
    # @!attribute launch_templates
    #   <p>The Amazon EC2 launch templates in use by this environment.</p>
    #   @return [Array<Types::LaunchTemplate>]
    # @!attribute load_balancers
    #   <p>The LoadBalancers in use by this environment.</p>
    #   @return [Array<Types::LoadBalancer>]
    # @!attribute triggers
    #   <p>The <code>AutoScaling</code> triggers in use by this environment. </p>
    #   @return [Array<Types::Trigger>]
    # @!attribute queues
    #   <p>The queues used by this environment.</p>
    #   @return [Array<Types::Queue>]
    class EnvironmentResourceDescription < Struct.new(
      nil,
      :environment_name,
      :auto_scaling_groups,
      :instances,
      :launch_configurations,
      :launch_templates,
      :load_balancers,
      :triggers,
      :queues,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a list of environment resource descriptions.</p>
    # @!attribute environment_resources
    #   <p> A list of <a>EnvironmentResourceDescription</a>. </p>
    #   @return [Types::EnvironmentResourceDescription]
    class EnvironmentResourceDescriptionsMessage < Struct.new(
      nil,
      :environment_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the AWS resources in use by this environment. This data is not live
    #       data.</p>
    # @!attribute load_balancer
    #   <p>Describes the LoadBalancer.</p>
    #   @return [Types::LoadBalancerDescription]
    class EnvironmentResourcesDescription < Struct.new(
      nil,
      :load_balancer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an environment tier</p>
    # @!attribute name
    #   <p>The name of this environment tier.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>For <i>Web server tier</i> – <code>WebServer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For <i>Worker tier</i> – <code>Worker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this environment tier.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>For <i>Web server tier</i> – <code>Standard</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For <i>Worker tier</i> – <code>SQS/HTTP</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version
    #   <p>The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the
    #         latest compatible worker tier version.</p>
    #            <note>
    #               <p>This member is deprecated. Any specific version that you set may become out of date.
    #           We recommend leaving it unspecified.</p>
    #            </note>
    #   @return [String]
    class EnvironmentTier < Struct.new(
      nil,
      :name,
      :type,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an event.</p>
    # @!attribute event_date
    #   <p>The date when the event occurred.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The event message.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The application associated with the event.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The release label for the application version associated with this event.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration associated with this event.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment associated with this event.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The web service request ID for the activity of this event.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity level of this event.</p>
    #   @return [String]
    class EventDescription < Struct.new(
      nil,
      :event_date,
      :message,
      :application_name,
      :version_label,
      :template_name,
      :environment_name,
      :platform_arn,
      :request_id,
      :severity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message wrapping a list of event descriptions.</p>
    # @!attribute events
    #   <p> A list of <a>EventDescription</a>. </p>
    #   @return [Array<Types::EventDescription>]
    # @!attribute next_token
    #   <p> If returned, this indicates that there are more results to obtain. Use this token in
    #         the next <a>DescribeEvents</a> call to get the next batch of events. </p>
    #   @return [String]
    class EventDescriptionsMessage < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of an Amazon EC2 instance.</p>
    # @!attribute id
    #   <p>The ID of the Amazon EC2 instance.</p>
    #   @return [String]
    class Instance < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents summary information about the health of an instance. For more information,
    #       see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
    # @!attribute no_data
    #   <p>
    #               <b>Grey.</b> AWS Elastic Beanstalk and the health agent are
    #         reporting no data on an instance.</p>
    #   @return [Integer]
    # @!attribute unknown
    #   <p>
    #               <b>Grey.</b> AWS Elastic Beanstalk and the health agent are
    #         reporting an insufficient amount of data on an instance.</p>
    #   @return [Integer]
    # @!attribute pending
    #   <p>
    #               <b>Grey.</b> An operation is in progress on an instance within the
    #         command timeout.</p>
    #   @return [Integer]
    # @!attribute ok
    #   <p>
    #               <b>Green.</b> An instance is passing health checks and the health
    #         agent is not reporting any problems.</p>
    #   @return [Integer]
    # @!attribute info
    #   <p>
    #               <b>Green.</b> An operation is in progress on an instance.</p>
    #   @return [Integer]
    # @!attribute warning
    #   <p>
    #               <b>Yellow.</b> The health agent is reporting a moderate number of
    #         request failures or other issues for an instance or environment.</p>
    #   @return [Integer]
    # @!attribute degraded
    #   <p>
    #               <b>Red.</b> The health agent is reporting a high number of request
    #         failures or other issues for an instance or environment.</p>
    #   @return [Integer]
    # @!attribute severe
    #   <p>
    #               <b>Red.</b> The health agent is reporting a very high number of
    #         request failures or other issues for an instance or environment.</p>
    #   @return [Integer]
    class InstanceHealthSummary < Struct.new(
      nil,
      :no_data,
      :unknown,
      :pending,
      :ok,
      :info,
      :warning,
      :degraded,
      :severe,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account does not have sufficient privileges for one or more AWS
    #       services.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class InsufficientPrivilegesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more input parameters is not valid. Please correct the input parameters and try
    #       the operation again.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the average latency for the slowest X percent of requests over the last 10
    #       seconds.</p>
    # @!attribute p999
    #   <p>The average latency for the slowest 0.1 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p99
    #   <p>The average latency for the slowest 1 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p95
    #   <p>The average latency for the slowest 5 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p90
    #   <p>The average latency for the slowest 10 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p85
    #   <p>The average latency for the slowest 15 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p75
    #   <p>The average latency for the slowest 25 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p50
    #   <p>The average latency for the slowest 50 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    # @!attribute p10
    #   <p>The average latency for the slowest 90 percent of requests over the last 10
    #         seconds.</p>
    #   @return [Float]
    class Latency < Struct.new(
      nil,
      :p999,
      :p99,
      :p95,
      :p90,
      :p85,
      :p75,
      :p50,
      :p10,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Auto Scaling launch configuration.</p>
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #   @return [String]
    class LaunchConfiguration < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon EC2 launch template.</p>
    # @!attribute id
    #   <p>The ID of the launch template.</p>
    #   @return [String]
    class LaunchTemplate < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of available AWS Elastic Beanstalk solution stacks.</p>
    # @!attribute solution_stacks
    #   <p>A list of available solution stacks.</p>
    #   @return [Array<String>]
    # @!attribute solution_stack_details
    #   <p> A list of available solution stacks and their <a>SolutionStackDescription</a>. </p>
    #   @return [Array<Types::SolutionStackDescription>]
    class ListAvailableSolutionStacksResultMessage < Struct.new(
      nil,
      :solution_stacks,
      :solution_stack_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Criteria for restricting the resulting list of platform branches. The filter is evaluated
    #         as a logical conjunction (AND) of the separate <code>SearchFilter</code> terms.</p>
    #            <p>The following list shows valid attribute values for each of the <code>SearchFilter</code>
    #         terms. Most operators take a single value. The <code>in</code> and <code>not_in</code>
    #         operators can take multiple values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Attribute = BranchName</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
    #                 | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
    #                   <code>not_in</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = LifecycleState</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>in</code> |
    #                   <code>not_in</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Values</code>: <code>beta</code> | <code>supported</code> |
    #                   <code>deprecated</code> | <code>retired</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = PlatformName</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
    #                 | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
    #                 <code>not_in</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = TierType</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Values</code>: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>Array size: limited to 10 <code>SearchFilter</code> objects.</p>
    #            <p>Within each <code>SearchFilter</code> item, the <code>Values</code> array is limited to 10
    #         items.</p>
    #   @return [Array<Types::SearchFilter>]
    # @!attribute max_records
    #   <p>The maximum number of platform branch values returned in one call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the
    #         next response page. All other parameter values must be identical to the ones specified in the
    #         initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #   @return [String]
    class ListPlatformBranchesRequest < Struct.new(
      nil,
      :filters,
      :max_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_branch_summary_list
    #   <p>Summary information about the platform branches.</p>
    #   @return [Array<Types::PlatformBranchSummary>]
    # @!attribute next_token
    #   <p>In a paginated request, if this value isn't <code>null</code>, it's the token that you can
    #         pass in a subsequent request to get the next response page.</p>
    #   @return [String]
    class ListPlatformBranchesResult < Struct.new(
      nil,
      :platform_branch_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Criteria for restricting the resulting list of platform versions. The filter is
    #         interpreted as a logical conjunction (AND) of the separate <code>PlatformFilter</code>
    #         terms.</p>
    #   @return [Array<Types::PlatformFilter>]
    # @!attribute max_records
    #   <p>The maximum number of platform version values returned in one call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the
    #         next response page. All other parameter values must be identical to the ones specified in the
    #         initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #   @return [String]
    class ListPlatformVersionsRequest < Struct.new(
      nil,
      :filters,
      :max_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_summary_list
    #   <p>Summary information about the platform versions.</p>
    #   @return [Array<Types::PlatformSummary>]
    # @!attribute next_token
    #   <p>In a paginated request, if this value isn't <code>null</code>, it's the token that you can
    #         pass in a subsequent request to get the next response page.</p>
    #   @return [String]
    class ListPlatformVersionsResult < Struct.new(
      nil,
      :platform_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.</p>
    #            <p>Must be the ARN of an Elastic Beanstalk resource.</p>
    #   @return [String]
    class ListTagsForResourceMessage < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of a Listener for the LoadBalancer.</p>
    # @!attribute protocol
    #   <p>The protocol that is used by the Listener.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port that is used by the Listener.</p>
    #   @return [Integer]
    class Listener < Struct.new(
      nil,
      :protocol,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:port] = 0 unless options.key?(:port)
        super
      end
    end

    # <p>Describes a LoadBalancer.</p>
    # @!attribute name
    #   <p>The name of the LoadBalancer.</p>
    #   @return [String]
    class LoadBalancer < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the details of a LoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the LoadBalancer.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain name of the LoadBalancer.</p>
    #   @return [String]
    # @!attribute listeners
    #   <p>A list of Listeners used by the LoadBalancer.</p>
    #   @return [Array<Types::Listener>]
    class LoadBalancerDescription < Struct.new(
      nil,
      :load_balancer_name,
      :domain,
      :listeners,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The record of an upcoming or in-progress managed action.</p>
    # @!attribute action_id
    #   <p>A unique identifier for the managed action.</p>
    #   @return [String]
    # @!attribute action_description
    #   <p>A description of the managed action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of managed action.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the managed action. If the action is <code>Scheduled</code>, you can
    #         apply it immediately with <a>ApplyEnvironmentManagedAction</a>.</p>
    #   @return [String]
    # @!attribute window_start_time
    #   <p>The start time of the maintenance window in which the managed action will
    #         execute.</p>
    #   @return [Time]
    class ManagedAction < Struct.new(
      nil,
      :action_id,
      :action_description,
      :action_type,
      :status,
      :window_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The record of a completed or failed managed action.</p>
    # @!attribute action_id
    #   <p>A unique identifier for the managed action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The type of the managed action.</p>
    #   @return [String]
    # @!attribute action_description
    #   <p>A description of the managed action.</p>
    #   @return [String]
    # @!attribute failure_type
    #   <p>If the action failed, the type of failure.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the action.</p>
    #   @return [String]
    # @!attribute failure_description
    #   <p>If the action failed, a description of the failure.</p>
    #   @return [String]
    # @!attribute executed_time
    #   <p>The date and time that the action started executing.</p>
    #   @return [Time]
    # @!attribute finished_time
    #   <p>The date and time that the action finished executing.</p>
    #   @return [Time]
    class ManagedActionHistoryItem < Struct.new(
      nil,
      :action_id,
      :action_type,
      :action_description,
      :failure_type,
      :status,
      :failure_description,
      :executed_time,
      :finished_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot modify the managed action in its current state.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class ManagedActionInvalidStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle rule that deletes application versions after the specified number of
    #       days.</p>
    # @!attribute enabled
    #   <p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable
    #         it.</p>
    #   @return [Boolean]
    # @!attribute max_age_in_days
    #   <p>Specify the number of days to retain an application versions.</p>
    #   @return [Integer]
    # @!attribute delete_source_from_s3
    #   <p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when
    #         Elastic Beanstalk deletes the application version.</p>
    #   @return [Boolean]
    class MaxAgeRule < Struct.new(
      nil,
      :enabled,
      :max_age_in_days,
      :delete_source_from_s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle rule that deletes the oldest application version when the maximum count is
    #       exceeded.</p>
    # @!attribute enabled
    #   <p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable
    #         it.</p>
    #   @return [Boolean]
    # @!attribute max_count
    #   <p>Specify the maximum number of application versions to retain.</p>
    #   @return [Integer]
    # @!attribute delete_source_from_s3
    #   <p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when
    #         Elastic Beanstalk deletes the application version.</p>
    #   @return [Boolean]
    class MaxCountRule < Struct.new(
      nil,
      :enabled,
      :max_count,
      :delete_source_from_s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to perform the specified operation because another operation that effects an
    #       element in this activity is already in progress.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class OperationInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A regular expression representing a restriction on a string configuration option
    #       value.</p>
    # @!attribute pattern
    #   <p>The regular expression pattern that a string configuration option value with this
    #         restriction must match.</p>
    #   @return [String]
    # @!attribute label
    #   <p>A unique name representing this regular expression.</p>
    #   @return [String]
    class OptionRestrictionRegex < Struct.new(
      nil,
      :pattern,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specification identifying an individual configuration option.</p>
    # @!attribute resource_name
    #   <p>A unique resource name for a time-based scaling configuration option.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>A unique namespace identifying the option's associated AWS resource.</p>
    #   @return [String]
    # @!attribute option_name
    #   <p>The name of the configuration option.</p>
    #   @return [String]
    class OptionSpecification < Struct.new(
      nil,
      :resource_name,
      :namespace,
      :option_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a platform branch.</p>
    # @!attribute platform_name
    #   <p>The name of the platform to which this platform branch belongs.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the platform branch.</p>
    #   @return [String]
    # @!attribute lifecycle_state
    #   <p>The support life cycle state of the platform branch.</p>
    #            <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> | 
    #         <code>retired</code>
    #            </p>
    #   @return [String]
    # @!attribute branch_order
    #   <p>An ordinal number that designates the order in which platform branches have been added to
    #         a platform. This can be helpful, for example, if your code calls the
    #           <code>ListPlatformBranches</code> action and then displays a list of platform
    #         branches.</p>
    #            <p>A larger <code>BranchOrder</code> value designates a newer platform branch within the
    #         platform.</p>
    #   @return [Integer]
    # @!attribute supported_tier_list
    #   <p>The environment tiers that platform versions in this branch support.</p>
    #            <p>Possible values: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code>
    #            </p>
    #   @return [Array<String>]
    class PlatformBranchSummary < Struct.new(
      nil,
      :platform_name,
      :branch_name,
      :lifecycle_state,
      :branch_order,
      :supported_tier_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:branch_order] = 0 unless options.key?(:branch_order)
        super
      end
    end

    # <p>Detailed information about a platform version.</p>
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute platform_owner
    #   <p>The AWS account ID of the person who created the platform version.</p>
    #   @return [String]
    # @!attribute platform_name
    #   <p>The name of the platform version.</p>
    #   @return [String]
    # @!attribute platform_version
    #   <p>The version of the platform version.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack used by the platform version.</p>
    #   @return [String]
    # @!attribute platform_status
    #   <p>The status of the platform version.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date when the platform version was created.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The date when the platform version was last updated.</p>
    #   @return [Time]
    # @!attribute platform_category
    #   <p>The category of the platform version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the platform version.</p>
    #   @return [String]
    # @!attribute maintainer
    #   <p>Information about the maintainer of the platform version.</p>
    #   @return [String]
    # @!attribute operating_system_name
    #   <p>The operating system used by the platform version.</p>
    #   @return [String]
    # @!attribute operating_system_version
    #   <p>The version of the operating system used by the platform version.</p>
    #   @return [String]
    # @!attribute programming_languages
    #   <p>The programming languages supported by the platform version.</p>
    #   @return [Array<Types::PlatformProgrammingLanguage>]
    # @!attribute frameworks
    #   <p>The frameworks supported by the platform version.</p>
    #   @return [Array<Types::PlatformFramework>]
    # @!attribute custom_ami_list
    #   <p>The custom AMIs supported by the platform version.</p>
    #   @return [Array<Types::CustomAmi>]
    # @!attribute supported_tier_list
    #   <p>The tiers supported by the platform version.</p>
    #   @return [Array<String>]
    # @!attribute supported_addon_list
    #   <p>The additions supported by the platform version.</p>
    #   @return [Array<String>]
    # @!attribute platform_lifecycle_state
    #   <p>The state of the platform version in its lifecycle.</p>
    #            <p>Possible values: <code>Recommended</code> | <code>null</code>
    #            </p>
    #            <p>If a null value is returned, the platform version isn't the recommended one for its
    #         branch. Each platform branch has a single recommended platform version, typically the most
    #         recent one.</p>
    #   @return [String]
    # @!attribute platform_branch_name
    #   <p>The platform branch to which the platform version belongs.</p>
    #   @return [String]
    # @!attribute platform_branch_lifecycle_state
    #   <p>The state of the platform version's branch in its lifecycle.</p>
    #            <p>Possible values: <code>Beta</code> | <code>Supported</code> | <code>Deprecated</code> |
    #         <code>Retired</code>
    #            </p>
    #   @return [String]
    class PlatformDescription < Struct.new(
      nil,
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
      :supported_addon_list,
      :platform_lifecycle_state,
      :platform_branch_name,
      :platform_branch_lifecycle_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes criteria to restrict the results when listing platform versions.</p>
    #          <p>The filter is evaluated as follows: <code>Type Operator Values[1]</code>
    #          </p>
    # @!attribute type
    #   <p>The platform version attribute to which the filter values are applied.</p>
    #            <p>Valid values: <code>PlatformName</code> | <code>PlatformVersion</code> |
    #           <code>PlatformStatus</code> | <code>PlatformBranchName</code> |
    #           <code>PlatformLifecycleState</code> | <code>PlatformOwner</code> |
    #           <code>SupportedTier</code> | <code>SupportedAddon</code> |
    #           <code>ProgrammingLanguageName</code> | <code>OperatingSystemName</code>
    #            </p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to apply to the <code>Type</code> with each of the
    #         <code>Values</code>.</p>
    #            <p>Valid values: <code>=</code> | <code>!=</code> |
    #           <code><</code> | <code><=</code> |
    #           <code>></code> | <code>>=</code> |
    #           <code>contains</code> | <code>begins_with</code> | <code>ends_with</code>
    #            </p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values applied to the filtering platform version attribute. Only one value is supported
    #         for all current operators.</p>
    #            <p>The following list shows valid filter values for some filter attributes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformStatus</code>: <code>Creating</code> | <code>Failed</code> |
    #               <code>Ready</code> | <code>Deleting</code> | <code>Deleted</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PlatformLifecycleState</code>: <code>recommended</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SupportedTier</code>: <code>WebServer/Standard</code> |
    #               <code>Worker/SQS/HTTP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SupportedAddon</code>: <code>Log/S3</code> | <code>Monitoring/Healthd</code> |
    #               <code>WorkerDaemon/SQSD</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class PlatformFilter < Struct.new(
      nil,
      :type,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A framework supported by the platform.</p>
    # @!attribute name
    #   <p>The name of the framework.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the framework.</p>
    #   @return [String]
    class PlatformFramework < Struct.new(
      nil,
      :name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A programming language supported by the platform.</p>
    # @!attribute name
    #   <p>The name of the programming language.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the programming language.</p>
    #   @return [String]
    class PlatformProgrammingLanguage < Struct.new(
      nil,
      :name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a platform version.</p>
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute platform_owner
    #   <p>The AWS account ID of the person who created the platform version.</p>
    #   @return [String]
    # @!attribute platform_status
    #   <p>The status of the platform version. You can create an environment from the platform
    #         version once it is ready.</p>
    #   @return [String]
    # @!attribute platform_category
    #   <p>The category of platform version.</p>
    #   @return [String]
    # @!attribute operating_system_name
    #   <p>The operating system used by the platform version.</p>
    #   @return [String]
    # @!attribute operating_system_version
    #   <p>The version of the operating system used by the platform version.</p>
    #   @return [String]
    # @!attribute supported_tier_list
    #   <p>The tiers in which the platform version runs.</p>
    #   @return [Array<String>]
    # @!attribute supported_addon_list
    #   <p>The additions associated with the platform version.</p>
    #   @return [Array<String>]
    # @!attribute platform_lifecycle_state
    #   <p>The state of the platform version in its lifecycle.</p>
    #            <p>Possible values: <code>recommended</code> | empty</p>
    #            <p>If an empty value is returned, the platform version is supported but isn't the recommended
    #       one for its branch.</p>
    #   @return [String]
    # @!attribute platform_version
    #   <p>The version string of the platform version.</p>
    #   @return [String]
    # @!attribute platform_branch_name
    #   <p>The platform branch to which the platform version belongs.</p>
    #   @return [String]
    # @!attribute platform_branch_lifecycle_state
    #   <p>The state of the platform version's branch in its lifecycle.</p>
    #            <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> |
    #           <code>retired</code>
    #            </p>
    #   @return [String]
    class PlatformSummary < Struct.new(
      nil,
      :platform_arn,
      :platform_owner,
      :platform_status,
      :platform_category,
      :operating_system_name,
      :operating_system_version,
      :supported_tier_list,
      :supported_addon_list,
      :platform_lifecycle_state,
      :platform_version,
      :platform_branch_name,
      :platform_branch_lifecycle_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot delete the platform version because there are still environments running on it.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class PlatformVersionStillReferencedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a queue.</p>
    # @!attribute name
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the queue.</p>
    #   @return [String]
    class Queue < Struct.new(
      nil,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute environment_id
    #   <p>The ID of the environment to rebuild.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to rebuild.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    class RebuildEnvironmentMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk
    #       storage bucket.</p>
    # @!attribute environment_id
    #   <p>The ID of the environment of the requested data.</p>
    #            <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
    #         <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment of the requested data.</p>
    #            <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
    #         <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute info_type
    #   <p>The type of information to request.</p>
    #   @return [String]
    class RequestEnvironmentInfoMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      :info_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource doesn't exist for the specified Amazon Resource Name (ARN).</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS Elastic Beanstalk quota information for a single resource type in an AWS account. It
    #       reflects the resource's limits for this account.</p>
    # @!attribute maximum
    #   <p>The maximum number of instances of this Elastic Beanstalk resource type that an AWS account can
    #         use.</p>
    #   @return [Integer]
    class ResourceQuota < Struct.new(
      nil,
      :maximum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of per-resource AWS Elastic Beanstalk quotas associated with an AWS account. They reflect
    #       Elastic Beanstalk resource limits for this account.</p>
    # @!attribute application_quota
    #   <p>The quota for applications in the AWS account.</p>
    #   @return [Types::ResourceQuota]
    # @!attribute application_version_quota
    #   <p>The quota for application versions in the AWS account.</p>
    #   @return [Types::ResourceQuota]
    # @!attribute environment_quota
    #   <p>The quota for environments in the AWS account.</p>
    #   @return [Types::ResourceQuota]
    # @!attribute configuration_template_quota
    #   <p>The quota for configuration templates in the AWS account.</p>
    #   @return [Types::ResourceQuota]
    # @!attribute custom_platform_quota
    #   <p>The quota for custom platforms in the AWS account.</p>
    #   @return [Types::ResourceQuota]
    class ResourceQuotas < Struct.new(
      nil,
      :application_quota,
      :application_version_quota,
      :environment_quota,
      :configuration_template_quota,
      :custom_platform_quota,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which a tag list was requested.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>A list of tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ResourceTagsDescriptionMessage < Struct.new(
      nil,
      :resource_arn,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The type of the specified Amazon Resource Name (ARN) isn't supported for this operation.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class ResourceTypeNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute environment_id
    #   <p>The ID of the environment to restart the server for.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to restart the server for.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    class RestartAppServerMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>
    # @!attribute environment_id
    #   <p>The ID of the data's environment.</p>
    #            <p>If no such environment is found, returns an <code>InvalidParameterValue</code>
    #         error.</p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code>
    #         error.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the data's environment.</p>
    #            <p> If no such environment is found, returns an <code>InvalidParameterValue</code> error. </p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute info_type
    #   <p>The type of information to retrieve.</p>
    #   @return [String]
    class RetrieveEnvironmentInfoMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      :info_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a description of the requested environment info.</p>
    # @!attribute environment_info
    #   <p> The <a>EnvironmentInfoDescription</a> of the environment. </p>
    #   @return [Array<Types::EnvironmentInfoDescription>]
    class RetrieveEnvironmentInfoResultMessage < Struct.new(
      nil,
      :environment_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The bucket and key of an item stored in Amazon S3.</p>
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket where the data is located.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 key where the data is located.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified S3 bucket does not belong to the S3 region in which the service is
    #       running. The following regions are supported:</p>
    #          <ul>
    #             <li>
    #                <p>IAD/us-east-1</p>
    #             </li>
    #             <li>
    #                <p>PDX/us-west-2</p>
    #             </li>
    #             <li>
    #                <p>DUB/eu-west-1</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class S3LocationNotInServiceRegionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account does not have a subscription to Amazon S3.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class S3SubscriptionRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes criteria to restrict a list of results.</p>
    #          <p>For operators that apply a single value to the attribute, the filter is evaluated as
    #       follows: <code>Attribute Operator Values[1]</code>
    #          </p>
    #          <p>Some operators, e.g. <code>in</code>, can apply multiple values. In this case, the filter
    #       is evaluated as a logical union (OR) of applications of the operator to the attribute with
    #       each one of the values: <code>(Attribute Operator Values[1]) OR (Attribute Operator Values[2])
    #         OR ...</code>
    #          </p>
    #          <p>The valid values for attributes of <code>SearchFilter</code> depend on the API action. For
    #       valid values, see the reference page for the API action you're calling that takes a
    #         <code>SearchFilter</code> parameter.</p>
    # @!attribute attribute
    #   <p>The result attribute to which the filter values are applied. Valid values vary by API
    #         action.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to apply to the <code>Attribute</code> with each of the <code>Values</code>.
    #         Valid values vary by <code>Attribute</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values applied to the <code>Attribute</code> and <code>Operator</code>
    #         attributes. Number of values and valid values vary by <code>Attribute</code>.</p>
    #   @return [Array<String>]
    class SearchFilter < Struct.new(
      nil,
      :attribute,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk
    #       environment.</p>
    # @!attribute instance_id
    #   <p>The ID of the Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Returns the health status of the specified instance. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health
    #           Colors and Statuses</a>.</p>
    #   @return [String]
    # @!attribute color
    #   <p>Represents the color indicator that gives you information about the health of the EC2
    #         instance. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and
    #           Statuses</a>.</p>
    #   @return [String]
    # @!attribute causes
    #   <p>Represents the causes, which provide more information about the current health
    #         status.</p>
    #   @return [Array<String>]
    # @!attribute launched_at
    #   <p>The time at which the EC2 instance was launched.</p>
    #   @return [Time]
    # @!attribute application_metrics
    #   <p>Request metrics from your application.</p>
    #   @return [Types::ApplicationMetrics]
    # @!attribute system
    #   <p>Operating system metrics from the instance.</p>
    #   @return [Types::SystemStatus]
    # @!attribute deployment
    #   <p>Information about the most recent deployment to an instance.</p>
    #   @return [Types::Deployment]
    # @!attribute availability_zone
    #   <p>The availability zone in which the instance runs.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance's type.</p>
    #   @return [String]
    class SingleInstanceHealth < Struct.new(
      nil,
      :instance_id,
      :health_status,
      :color,
      :causes,
      :launched_at,
      :application_metrics,
      :system,
      :deployment,
      :availability_zone,
      :instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the solution stack.</p>
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack.</p>
    #   @return [String]
    # @!attribute permitted_file_types
    #   <p>The permitted file types allowed for a solution stack.</p>
    #   @return [Array<String>]
    class SolutionStackDescription < Struct.new(
      nil,
      :solution_stack_name,
      :permitted_file_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Location of the source code for an application version.</p>
    # @!attribute source_type
    #   <p>The type of repository.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Git</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Zip</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_repository
    #   <p>Location where the repository is stored.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CodeCommit</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_location
    #   <p>The location of the source code, as a formatted string, depending on the value of <code>SourceRepository</code>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>CodeCommit</code>,
    #   	the format is the repository name and commit ID, separated by a forward slash.
    #   	For example,
    #   	<code>my-git-repo/265cfa0cf6af46153527f55d6503ec030551f57a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>S3</code>,
    #   	the format is the S3 bucket name and object key, separated by a forward slash.
    #   	For example,
    #   	<code>my-s3-bucket/Folders/my-source-file</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SourceBuildInformation < Struct.new(
      nil,
      :source_type,
      :source_repository,
      :source_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to delete the Amazon S3 source bundle associated with the application version.
    #       The application version was deleted successfully.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class SourceBundleDeletionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specification for an environment configuration.</p>
    # @!attribute application_name
    #   <p>The name of the application associated with the configuration.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template.</p>
    #   @return [String]
    class SourceConfiguration < Struct.new(
      nil,
      :application_name,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the percentage of requests over the last 10 seconds that resulted in each
    #       type of status code response. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">Status Code
    #       Definitions</a>.</p>
    # @!attribute status2xx
    #   <p>The percentage of requests over the last 10 seconds that resulted in a 2xx (200, 201,
    #         etc.) status code.</p>
    #   @return [Integer]
    # @!attribute status3xx
    #   <p>The percentage of requests over the last 10 seconds that resulted in a 3xx (300, 301,
    #         etc.) status code.</p>
    #   @return [Integer]
    # @!attribute status4xx
    #   <p>The percentage of requests over the last 10 seconds that resulted in a 4xx (400, 401,
    #         etc.) status code.</p>
    #   @return [Integer]
    # @!attribute status5xx
    #   <p>The percentage of requests over the last 10 seconds that resulted in a 5xx (500, 501,
    #         etc.) status code.</p>
    #   @return [Integer]
    class StatusCodes < Struct.new(
      nil,
      :status2xx,
      :status3xx,
      :status4xx,
      :status5xx,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Swaps the CNAMEs of two environments.</p>
    # @!attribute source_environment_id
    #   <p>The ID of the source environment.</p>
    #            <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    #         <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    #         <code>SourceEnvironmentId</code>, you must specify the
    #         <code>DestinationEnvironmentId</code>. </p>
    #   @return [String]
    # @!attribute source_environment_name
    #   <p>The name of the source environment.</p>
    #            <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    #         <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    #         <code>SourceEnvironmentName</code>, you must specify the
    #         <code>DestinationEnvironmentName</code>. </p>
    #   @return [String]
    # @!attribute destination_environment_id
    #   <p>The ID of the destination environment.</p>
    #            <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    #         <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    #         <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>
    #   @return [String]
    # @!attribute destination_environment_name
    #   <p>The name of the destination environment.</p>
    #            <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    #         <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    #         <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>.
    #       </p>
    #   @return [String]
    class SwapEnvironmentCNAMEsMessage < Struct.new(
      nil,
      :source_environment_id,
      :source_environment_name,
      :destination_environment_id,
      :destination_environment_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>
    # @!attribute cpu_utilization
    #   <p>CPU utilization metrics for the instance.</p>
    #   @return [Types::CPUUtilization]
    # @!attribute load_average
    #   <p>Load average in the last 1-minute, 5-minute, and 15-minute periods. 
    #         For more information, see
    #           <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os">Operating System Metrics</a>.</p>
    #   @return [Array<Float>]
    class SystemStatus < Struct.new(
      nil,
      :cpu_utilization,
      :load_average,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag applied to a resource in an environment.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to terminate an environment.</p>
    # @!attribute environment_id
    #   <p>The ID of the environment to terminate.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to terminate.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute terminate_resources
    #   <p>Indicates whether the associated AWS resources should shut down when the environment is
    #         terminated:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: The specified environment as well as the associated AWS resources, such
    #             as Auto Scaling group and LoadBalancer, are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: AWS Elastic Beanstalk resource management is removed from the
    #             environment, but the AWS resources continue to operate.</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see the <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/ug/"> AWS Elastic Beanstalk User Guide. </a>
    #            </p>
    #            <p> Default: <code>true</code>
    #            </p>
    #            <p> Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute force_terminate
    #   <p>Terminates the target environment even if another environment in the same group is
    #         dependent on it.</p>
    #   @return [Boolean]
    class TerminateEnvironmentMessage < Struct.new(
      nil,
      :environment_id,
      :environment_name,
      :terminate_resources,
      :force_terminate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an environment.</p>
    # @!attribute environment_name
    #   <p>The name of this environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of this environment.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this environment.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The application version deployed in this environment.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p> The name of the <code>SolutionStack</code> deployed with this environment. </p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template used to originally launch this
    #         environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this environment.</p>
    #   @return [String]
    # @!attribute endpoint_url
    #   <p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For
    #         single-instance environments, the IP address of the instance.</p>
    #   @return [String]
    # @!attribute cname
    #   <p>The URL to the CNAME for this environment.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The creation date for this environment.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The last modified date for this environment.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current operational status of the environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launching</code>: Environment is in the process of initial deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Updating</code>: Environment is in the process of updating its configuration
    #             settings or application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Ready</code>: Environment is available to have an action performed on it, such as
    #             update or terminate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminating</code>: Environment is in the shut-down process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminated</code>: Environment is not running.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute abortable_operation_in_progress
    #   <p>Indicates if there is an in-progress environment configuration update or application
    #         version deployment that you can cancel.</p>
    #            <p>
    #               <code>true:</code> There is an update in progress. </p>
    #            <p>
    #               <code>false:</code> There are no updates currently in progress. </p>
    #   @return [Boolean]
    # @!attribute health
    #   <p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the
    #         failure levels for a running environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more
    #             consecutive failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive
    #             failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Green</code>: Indicates the environment is healthy and fully functional.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grey</code>: Default health for a new environment. The environment is not fully
    #             launched and health checks have not started or health checks are suspended during an
    #               <code>UpdateEnvironment</code> or <code>RestartEnvironment</code> request.</p>
    #               </li>
    #            </ul>
    #            <p> Default: <code>Grey</code>
    #            </p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Returns the health status of the application running in your environment. For more
    #         information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and
    #           Statuses</a>.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The description of the AWS resources used by this environment.</p>
    #   @return [Types::EnvironmentResourcesDescription]
    # @!attribute tier
    #   <p>Describes the current tier of this environment.</p>
    #   @return [Types::EnvironmentTier]
    # @!attribute environment_links
    #   <p>A list of links to other environments in the same group.</p>
    #   @return [Array<Types::EnvironmentLink>]
    # @!attribute environment_arn
    #   <p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>
    #   @return [String]
    # @!attribute operations_role
    #   <p>The Amazon Resource Name (ARN) of the environment's operations role. For more information,
    #         see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #   @return [String]
    class TerminateEnvironmentOutput < Struct.new(
      nil,
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
      :environment_arn,
      :operations_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account has reached its limit of application versions.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyApplicationVersionsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account has reached its limit of applications.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyApplicationsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account has reached its limit of Amazon S3 buckets.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyBucketsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account has reached its limit of configuration templates.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyConfigurationTemplatesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified account has reached its limit of environments.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyEnvironmentsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the maximum number of allowed platforms associated with the account.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyPlatformsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of tags in the resource would exceed the number of tags that each resource
    #       can have.</p>
    #          <p>To calculate this, the operation considers both the number of tags the resource already has
    #       and the tags this operation would add if it succeeded.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a trigger.</p>
    # @!attribute name
    #   <p>The name of the trigger.</p>
    #   @return [String]
    class Trigger < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update an application.</p>
    # @!attribute application_name
    #   <p>The name of the application to update. If no such application is found,
    #           <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the application.</p>
    #            <p>Default: If not specified, AWS Elastic Beanstalk does not update the
    #         description.</p>
    #   @return [String]
    class UpdateApplicationMessage < Struct.new(
      nil,
      :application_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message containing a single description of an application.</p>
    # @!attribute application
    #   <p> The <a>ApplicationDescription</a> of the application. </p>
    #   @return [Types::ApplicationDescription]
    class UpdateApplicationOutput < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute resource_lifecycle_config
    #   <p>The lifecycle configuration.</p>
    #   @return [Types::ApplicationResourceLifecycleConfig]
    class UpdateApplicationResourceLifecycleMessage < Struct.new(
      nil,
      :application_name,
      :resource_lifecycle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute application_name
    #   <p>The name of the application associated with this version.</p>
    #            <p> If no application is found with this name, <code>UpdateApplication</code> returns an
    #           <code>InvalidParameterValue</code> error.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The name of the version to update.</p>
    #            <p>If no application version is found with this label, <code>UpdateApplication</code>
    #         returns an <code>InvalidParameterValue</code> error. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for this version.</p>
    #   @return [String]
    class UpdateApplicationVersionMessage < Struct.new(
      nil,
      :application_name,
      :version_label,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result message wrapping a single description of an application version.</p>
    # @!attribute application_version
    #   <p> The <a>ApplicationVersionDescription</a> of the application version.
    #       </p>
    #   @return [Types::ApplicationVersionDescription]
    class UpdateApplicationVersionOutput < Struct.new(
      nil,
      :application_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result message containing the options for the specified solution stack.</p>
    # @!attribute application_name
    #   <p>The name of the application associated with the configuration template to
    #         update.</p>
    #            <p> If no application is found with this name, <code>UpdateConfigurationTemplate</code>
    #         returns an <code>InvalidParameterValue</code> error. </p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template to update.</p>
    #            <p> If no configuration template is found with this name,
    #           <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code>
    #         error. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the configuration.</p>
    #   @return [String]
    # @!attribute option_settings
    #   <p>A list of configuration option settings to update with the new specified option
    #         value.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    # @!attribute options_to_remove
    #   <p>A list of configuration options to remove from the configuration set.</p>
    #            <p> Constraint: You can remove only <code>UserDefined</code> configuration options.
    #       </p>
    #   @return [Array<Types::OptionSpecification>]
    class UpdateConfigurationTemplateMessage < Struct.new(
      nil,
      :application_name,
      :template_name,
      :description,
      :option_settings,
      :options_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings for a configuration set.</p>
    # @!attribute solution_stack_name
    #   <p>The name of the solution stack this configuration set uses.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this configuration set.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p> If not <code>null</code>, the name of the configuration template for this
    #         configuration set. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this configuration set.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p> If not <code>null</code>, the name of the environment for this configuration set.
    #       </p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p> If this configuration set is associated with an environment, the
    #           <code>DeploymentStatus</code> parameter indicates the deployment status of this
    #         configuration set: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>null</code>: This configuration is not associated with a running
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending</code>: This is a draft configuration that is not deployed to the associated
    #             environment but is in the process of deploying.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deployed</code>: This is the configuration that is currently deployed to the
    #             associated running environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>failed</code>: This is a draft configuration that failed to successfully
    #             deploy.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date (in UTC time) when this configuration set was created.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The date (in UTC time) when this configuration set was last modified.</p>
    #   @return [Time]
    # @!attribute option_settings
    #   <p>A list of the configuration options and their values in this configuration
    #         set.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    class UpdateConfigurationTemplateOutput < Struct.new(
      nil,
      :solution_stack_name,
      :platform_arn,
      :application_name,
      :template_name,
      :description,
      :environment_name,
      :deployment_status,
      :date_created,
      :date_updated,
      :option_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to update an environment.</p>
    # @!attribute application_name
    #   <p>The name of the application with which the environment is associated.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment to update.</p>
    #            <p>If no environment with this ID exists, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error.</p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to update. If no environment with this name exists, AWS
    #         Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group to which the target environment belongs. Specify a group name
    #         only if the environment's name is specified in an environment manifest and not with the
    #         environment name or environment ID parameters. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    #   @return [String]
    # @!attribute description
    #   <p>If this parameter is specified, AWS Elastic Beanstalk updates the description of this
    #         environment.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>This specifies the tier to use to update the environment.</p>
    #            <p>Condition: At this time, if you change the tier version, name, or type, AWS Elastic
    #         Beanstalk returns <code>InvalidParameterValue</code> error. </p>
    #   @return [Types::EnvironmentTier]
    # @!attribute version_label
    #   <p>If this parameter is specified, AWS Elastic Beanstalk deploys the named application
    #         version to the environment. If no such application version is found, returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #   @return [String]
    # @!attribute template_name
    #   <p>If this parameter is specified, AWS Elastic Beanstalk deploys this configuration
    #         template to the environment. If no such configuration template is found, AWS Elastic Beanstalk
    #         returns an <code>InvalidParameterValue</code> error. </p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p>This specifies the platform version that the environment will run after the environment
    #         is updated.</p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform, if used.</p>
    #   @return [String]
    # @!attribute option_settings
    #   <p>If specified, AWS Elastic Beanstalk updates the configuration set associated with the
    #         running environment and sets the specified configuration options to the requested
    #         value.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    # @!attribute options_to_remove
    #   <p>A list of custom user-defined configuration options to remove from the configuration
    #         set for this environment.</p>
    #   @return [Array<Types::OptionSpecification>]
    class UpdateEnvironmentMessage < Struct.new(
      nil,
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
      :options_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of an environment.</p>
    # @!attribute environment_name
    #   <p>The name of this environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of this environment.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application associated with this environment.</p>
    #   @return [String]
    # @!attribute version_label
    #   <p>The application version deployed in this environment.</p>
    #   @return [String]
    # @!attribute solution_stack_name
    #   <p> The name of the <code>SolutionStack</code> deployed with this environment. </p>
    #   @return [String]
    # @!attribute platform_arn
    #   <p>The ARN of the platform version.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template used to originally launch this
    #         environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes this environment.</p>
    #   @return [String]
    # @!attribute endpoint_url
    #   <p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For
    #         single-instance environments, the IP address of the instance.</p>
    #   @return [String]
    # @!attribute cname
    #   <p>The URL to the CNAME for this environment.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The creation date for this environment.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The last modified date for this environment.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current operational status of the environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Launching</code>: Environment is in the process of initial deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Updating</code>: Environment is in the process of updating its configuration
    #             settings or application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Ready</code>: Environment is available to have an action performed on it, such as
    #             update or terminate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminating</code>: Environment is in the shut-down process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Terminated</code>: Environment is not running.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute abortable_operation_in_progress
    #   <p>Indicates if there is an in-progress environment configuration update or application
    #         version deployment that you can cancel.</p>
    #            <p>
    #               <code>true:</code> There is an update in progress. </p>
    #            <p>
    #               <code>false:</code> There are no updates currently in progress. </p>
    #   @return [Boolean]
    # @!attribute health
    #   <p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the
    #         failure levels for a running environment:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more
    #             consecutive failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive
    #             failures occur for an environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Green</code>: Indicates the environment is healthy and fully functional.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grey</code>: Default health for a new environment. The environment is not fully
    #             launched and health checks have not started or health checks are suspended during an
    #               <code>UpdateEnvironment</code> or <code>RestartEnvironment</code> request.</p>
    #               </li>
    #            </ul>
    #            <p> Default: <code>Grey</code>
    #            </p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Returns the health status of the application running in your environment. For more
    #         information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and
    #           Statuses</a>.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The description of the AWS resources used by this environment.</p>
    #   @return [Types::EnvironmentResourcesDescription]
    # @!attribute tier
    #   <p>Describes the current tier of this environment.</p>
    #   @return [Types::EnvironmentTier]
    # @!attribute environment_links
    #   <p>A list of links to other environments in the same group.</p>
    #   @return [Array<Types::EnvironmentLink>]
    # @!attribute environment_arn
    #   <p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>
    #   @return [String]
    # @!attribute operations_role
    #   <p>The Amazon Resource Name (ARN) of the environment's operations role. For more information,
    #         see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #   @return [String]
    class UpdateEnvironmentOutput < Struct.new(
      nil,
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
      :environment_arn,
      :operations_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resouce to be updated.</p>
    #            <p>Must be the ARN of an Elastic Beanstalk resource.</p>
    #   @return [String]
    # @!attribute tags_to_add
    #   <p>A list of tags to add or update. If a key of an existing tag is added, the tag's value is
    #         updated.</p>
    #            <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
    #           <code>TagsToRemove</code>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute tags_to_remove
    #   <p>A list of tag keys to remove. If a tag key doesn't exist, it is silently ignored.</p>
    #            <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
    #         <code>TagsToRemove</code>.</p>
    #   @return [Array<String>]
    class UpdateTagsForResourceMessage < Struct.new(
      nil,
      :resource_arn,
      :tags_to_add,
      :tags_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of validation messages for a specified configuration template.</p>
    # @!attribute application_name
    #   <p>The name of the application that the configuration template or environment belongs
    #         to.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the configuration template to validate the settings against.</p>
    #            <p>Condition: You cannot specify both this and an environment name.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment to validate the settings against.</p>
    #            <p>Condition: You cannot specify both this and a configuration template name.</p>
    #   @return [String]
    # @!attribute option_settings
    #   <p>A list of the options and desired values to evaluate.</p>
    #   @return [Array<Types::ConfigurationOptionSetting>]
    class ValidateConfigurationSettingsMessage < Struct.new(
      nil,
      :application_name,
      :template_name,
      :environment_name,
      :option_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a list of validation messages.</p>
    # @!attribute messages
    #   <p> A list of <a>ValidationMessage</a>. </p>
    #   @return [Array<Types::ValidationMessage>]
    class ValidateConfigurationSettingsOutput < Struct.new(
      nil,
      :messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error or warning for a desired configuration option value.</p>
    # @!attribute message
    #   <p>A message describing the error or warning.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>An indication of the severity of this message:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>error</code>: This message indicates that this is not a valid setting for an
    #             option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>warning</code>: This message is providing information you should take into
    #             account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace to which the option belongs.</p>
    #   @return [String]
    # @!attribute option_name
    #   <p>The name of the option.</p>
    #   @return [String]
    class ValidationMessage < Struct.new(
      nil,
      :message,
      :severity,
      :namespace,
      :option_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
