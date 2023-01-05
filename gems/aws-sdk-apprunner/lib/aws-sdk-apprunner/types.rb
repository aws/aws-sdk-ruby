# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppRunner
  module Types

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to associate a custom domain name with.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   A custom domain endpoint to associate. Specify a root domain (for
    #   example, `example.com`), a subdomain (for example,
    #   `login.example.com` or `admin.login.example.com`), or a wildcard
    #   (for example, `*.example.com`).
    #   @return [String]
    #
    # @!attribute [rw] enable_www_subdomain
    #   Set to `true` to associate the subdomain `www.DomainName ` with the
    #   App Runner service in addition to the base domain.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/AssociateCustomDomainRequest AWS API Documentation
    #
    class AssociateCustomDomainRequest < Struct.new(
      :service_arn,
      :domain_name,
      :enable_www_subdomain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_target
    #   The App Runner subdomain of the App Runner service. The custom
    #   domain name is mapped to this target name.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service with which
    #   a custom domain name is associated.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain
    #   A description of the domain name that's being associated.
    #   @return [Types::CustomDomain]
    #
    # @!attribute [rw] vpc_dns_targets
    #   DNS Target records for the custom domains of this Amazon VPC.
    #   @return [Array<Types::VpcDNSTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/AssociateCustomDomainResponse AWS API Documentation
    #
    class AssociateCustomDomainResponse < Struct.new(
      :dns_target,
      :service_arn,
      :custom_domain,
      :vpc_dns_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes resources needed to authenticate access to some source
    # repositories. The specific resource depends on the repository
    # provider.
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner connection that
    #   enables the App Runner service to connect to a source repository.
    #   It's required for GitHub code repositories.
    #   @return [String]
    #
    # @!attribute [rw] access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants the App
    #   Runner service access to a source repository. It's required for ECR
    #   image repositories (but not for ECR Public repositories).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/AuthenticationConfiguration AWS API Documentation
    #
    class AuthenticationConfiguration < Struct.new(
      :connection_arn,
      :access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an App Runner automatic scaling configuration resource.
    #
    # A higher `MinSize` increases the spread of your App Runner service
    # over more Availability Zones in the Amazon Web Services Region. The
    # tradeoff is a higher minimal cost.
    #
    # A lower `MaxSize` controls your cost. The tradeoff is lower
    # responsiveness during peak demand.
    #
    # Multiple revisions of a configuration might have the same
    # `AutoScalingConfigurationName` and different
    # `AutoScalingConfigurationRevision` values.
    #
    # @!attribute [rw] auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of this auto scaling configuration.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_configuration_name
    #   The customer-provided auto scaling configuration name. It can be
    #   used in multiple revisions of a configuration.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_configuration_revision
    #   The revision of this auto scaling configuration. It's unique among
    #   all the active configurations (`"Status": "ACTIVE"`) that share the
    #   same `AutoScalingConfigurationName`.
    #   @return [Integer]
    #
    # @!attribute [rw] latest
    #   It's set to `true` for the configuration with the highest
    #   `Revision` among all configurations that share the same
    #   `AutoScalingConfigurationName`. It's set to `false` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current state of the auto scaling configuration. If the status
    #   of a configuration revision is `INACTIVE`, it was deleted and can't
    #   be used. Inactive configuration revisions are permanently removed
    #   some time after they are deleted.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of concurrent requests that an instance
    #   processes. If the number of concurrent requests exceeds this limit,
    #   App Runner scales the service up.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances that App Runner provisions for a
    #   service. The service always has at least `MinSize` provisioned
    #   instances. Some of them actively serve traffic. The rest of them
    #   (provisioned and inactive instances) are a cost-effective compute
    #   capacity reserve and are ready to be quickly activated. You pay for
    #   memory usage of all the provisioned instances. You pay for CPU usage
    #   of only the active subset.
    #
    #   App Runner temporarily doubles the number of provisioned instances
    #   during deployments, to maintain the same capacity for both old and
    #   new code.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances that a service scales up to. At most
    #   `MaxSize` instances actively serve traffic for your service.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time when the auto scaling configuration was created. It's in
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The time when the auto scaling configuration was deleted. It's in
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/AutoScalingConfiguration AWS API Documentation
    #
    class AutoScalingConfiguration < Struct.new(
      :auto_scaling_configuration_arn,
      :auto_scaling_configuration_name,
      :auto_scaling_configuration_revision,
      :latest,
      :status,
      :max_concurrency,
      :min_size,
      :max_size,
      :created_at,
      :deleted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an App Runner automatic scaling
    # configuration resource.
    #
    # This type contains limited information about an auto scaling
    # configuration. It includes only identification information, without
    # configuration details. It's returned by the
    # ListAutoScalingConfigurations action. Complete configuration
    # information is returned by the CreateAutoScalingConfiguration,
    # DescribeAutoScalingConfiguration, and DeleteAutoScalingConfiguration
    # actions using the AutoScalingConfiguration type.
    #
    # @!attribute [rw] auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of this auto scaling configuration.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_configuration_name
    #   The customer-provided auto scaling configuration name. It can be
    #   used in multiple revisions of a configuration.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_configuration_revision
    #   The revision of this auto scaling configuration. It's unique among
    #   all the active configurations (`"Status": "ACTIVE"`) with the same
    #   `AutoScalingConfigurationName`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/AutoScalingConfigurationSummary AWS API Documentation
    #
    class AutoScalingConfigurationSummary < Struct.new(
      :auto_scaling_configuration_arn,
      :auto_scaling_configuration_name,
      :auto_scaling_configuration_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a certificate CNAME record to add to your DNS. For more
    # information, see [AssociateCustomDomain][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apprunner/latest/api/API_AssociateCustomDomain.html
    #
    # @!attribute [rw] name
    #   The certificate CNAME record name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The record type, always `CNAME`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The certificate CNAME record value.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the certificate CNAME record validation. It
    #   should change to `SUCCESS` after App Runner completes validation
    #   with your DNS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CertificateValidationRecord AWS API Documentation
    #
    class CertificateValidationRecord < Struct.new(
      :name,
      :type,
      :value,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration that App Runner uses to build and run an
    # App Runner service from a source code repository.
    #
    # @!attribute [rw] configuration_source
    #   The source of the App Runner configuration. Values are interpreted
    #   as follows:
    #
    #   * `REPOSITORY` – App Runner reads configuration values from the
    #     `apprunner.yaml` file in the source code repository and ignores
    #     `CodeConfigurationValues`.
    #
    #   * `API` – App Runner uses configuration values provided in
    #     `CodeConfigurationValues` and ignores the `apprunner.yaml` file in
    #     the source code repository.
    #   @return [String]
    #
    # @!attribute [rw] code_configuration_values
    #   The basic configuration for building and running the App Runner
    #   service. Use it to quickly launch an App Runner service without
    #   providing a `apprunner.yaml` file in the source code repository (or
    #   ignoring the file if it exists).
    #   @return [Types::CodeConfigurationValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CodeConfiguration AWS API Documentation
    #
    class CodeConfiguration < Struct.new(
      :configuration_source,
      :code_configuration_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the basic configuration needed for building and running an
    # App Runner service. This type doesn't support the full set of
    # possible configuration options. Fur full configuration capabilities,
    # use a `apprunner.yaml` file in the source code repository.
    #
    # @!attribute [rw] runtime
    #   A runtime environment type for building and running an App Runner
    #   service. It represents a programming language runtime.
    #   @return [String]
    #
    # @!attribute [rw] build_command
    #   The command App Runner runs to build your application.
    #   @return [String]
    #
    # @!attribute [rw] start_command
    #   The command App Runner runs to start your application.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that your application listens to in the container.
    #
    #   Default: `8080`
    #   @return [String]
    #
    # @!attribute [rw] runtime_environment_variables
    #   The environment variables that are available to your running App
    #   Runner service. An array of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] runtime_environment_secrets
    #   An array of key-value pairs representing the secrets and parameters
    #   that get referenced to your service as an environment variable. The
    #   supported values are either the full Amazon Resource Name (ARN) of
    #   the Secrets Manager secret or the full ARN of the parameter in the
    #   Amazon Web Services Systems Manager Parameter Store.
    #
    #   <note markdown="1"> * If the Amazon Web Services Systems Manager Parameter Store
    #     parameter exists in the same Amazon Web Services Region as the
    #     service that you're launching, you can use either the full ARN or
    #     name of the secret. If the parameter exists in a different Region,
    #     then the full ARN must be specified.
    #
    #   * Currently, cross account referencing of Amazon Web Services
    #     Systems Manager Parameter Store parameter is not supported.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CodeConfigurationValues AWS API Documentation
    #
    class CodeConfigurationValues < Struct.new(
      :runtime,
      :build_command,
      :start_command,
      :port,
      :runtime_environment_variables,
      :runtime_environment_secrets)
      SENSITIVE = [:build_command, :start_command]
      include Aws::Structure
    end

    # Describes a source code repository.
    #
    # @!attribute [rw] repository_url
    #   The location of the repository that contains the source code.
    #   @return [String]
    #
    # @!attribute [rw] source_code_version
    #   The version that should be used within the source code repository.
    #   @return [Types::SourceCodeVersion]
    #
    # @!attribute [rw] code_configuration
    #   Configuration for building and running the service from a source
    #   code repository.
    #
    #   <note markdown="1"> `CodeConfiguration` is required only for `CreateService` request.
    #
    #    </note>
    #   @return [Types::CodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CodeRepository AWS API Documentation
    #
    class CodeRepository < Struct.new(
      :repository_url,
      :source_code_version,
      :code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an App Runner connection resource.
    #
    # @!attribute [rw] connection_name
    #   The customer-provided connection name.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of this connection.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The source repository provider.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the App Runner connection. When the state is
    #   `AVAILABLE`, you can use the connection to create an App Runner
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The App Runner connection creation time, expressed as a Unix time
    #   stamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an App Runner connection resource.
    #
    # @!attribute [rw] connection_name
    #   The customer-provided connection name.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of this connection.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The source repository provider.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the App Runner connection. When the state is
    #   `AVAILABLE`, you can use the connection to create an App Runner
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The App Runner connection creation time, expressed as a Unix time
    #   stamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ConnectionSummary AWS API Documentation
    #
    class ConnectionSummary < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration_name
    #   A name for the auto scaling configuration. When you use it for the
    #   first time in an Amazon Web Services Region, App Runner creates
    #   revision number `1` of this name. When you use the same name in
    #   subsequent calls, App Runner creates incremental revisions of the
    #   configuration.
    #
    #   <note markdown="1"> The name `DefaultConfiguration` is reserved (it's the configuration
    #   that App Runner uses if you don't provide a custome one). You
    #   can't use it to create a new auto scaling configuration, and you
    #   can't create a revision of it.
    #
    #    When you want to use your own auto scaling configuration for your
    #   App Runner service, *create a configuration with a different name*,
    #   and then provide it when you create or update your service.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of concurrent requests that you want an instance
    #   to process. If the number of concurrent requests exceeds this limit,
    #   App Runner scales up your service.
    #
    #   Default: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances that App Runner provisions for your
    #   service. The service always has at least `MinSize` provisioned
    #   instances. Some of them actively serve traffic. The rest of them
    #   (provisioned and inactive instances) are a cost-effective compute
    #   capacity reserve and are ready to be quickly activated. You pay for
    #   memory usage of all the provisioned instances. You pay for CPU usage
    #   of only the active subset.
    #
    #   App Runner temporarily doubles the number of provisioned instances
    #   during deployments, to maintain the same capacity for both old and
    #   new code.
    #
    #   Default: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances that your service scales up to. At
    #   most `MaxSize` instances actively serve traffic for your service.
    #
    #   Default: `25`
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of metadata items that you can associate with your auto
    #   scaling configuration resource. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateAutoScalingConfigurationRequest AWS API Documentation
    #
    class CreateAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_name,
      :max_concurrency,
      :min_size,
      :max_size,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration
    #   A description of the App Runner auto scaling configuration that's
    #   created by this request.
    #   @return [Types::AutoScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateAutoScalingConfigurationResponse AWS API Documentation
    #
    class CreateAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_name
    #   A name for the new connection. It must be unique across all App
    #   Runner connections for the Amazon Web Services account in the Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The source repository provider.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of metadata items that you can associate with your connection
    #   resource. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :connection_name,
      :provider_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   A description of the App Runner connection that's created by this
    #   request.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration_name
    #   A name for the observability configuration. When you use it for the
    #   first time in an Amazon Web Services Region, App Runner creates
    #   revision number `1` of this name. When you use the same name in
    #   subsequent calls, App Runner creates incremental revisions of the
    #   configuration.
    #
    #   <note markdown="1"> The name `DefaultConfiguration` is reserved. You can't use it to
    #   create a new observability configuration, and you can't create a
    #   revision of it.
    #
    #    When you want to use your own observability configuration for your
    #   App Runner service, *create a configuration with a different name*,
    #   and then provide it when you create or update your service.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] trace_configuration
    #   The configuration of the tracing feature within this observability
    #   configuration. If you don't specify it, App Runner doesn't enable
    #   tracing.
    #   @return [Types::TraceConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of metadata items that you can associate with your
    #   observability configuration resource. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateObservabilityConfigurationRequest AWS API Documentation
    #
    class CreateObservabilityConfigurationRequest < Struct.new(
      :observability_configuration_name,
      :trace_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration
    #   A description of the App Runner observability configuration that's
    #   created by this request.
    #   @return [Types::ObservabilityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateObservabilityConfigurationResponse AWS API Documentation
    #
    class CreateObservabilityConfigurationResponse < Struct.new(
      :observability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   A name for the App Runner service. It must be unique across all the
    #   running App Runner services in your Amazon Web Services account in
    #   the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] source_configuration
    #   The source to deploy to the App Runner service. It can be a code or
    #   an image repository.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] instance_configuration
    #   The runtime configuration of instances (scaling units) of your
    #   service.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] tags
    #   An optional list of metadata items that you can associate with the
    #   App Runner service resource. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] encryption_configuration
    #   An optional custom encryption key that App Runner uses to encrypt
    #   the copy of your source repository that it maintains and your
    #   service logs. By default, App Runner uses an Amazon Web Services
    #   managed key.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] health_check_configuration
    #   The settings for the health check that App Runner performs to
    #   monitor the health of the App Runner service.
    #   @return [Types::HealthCheckConfiguration]
    #
    # @!attribute [rw] auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of an App Runner automatic scaling
    #   configuration resource that you want to associate with your service.
    #   If not provided, App Runner associates the latest revision of a
    #   default auto scaling configuration.
    #
    #   Specify an ARN with a name and a revision number to associate that
    #   revision. For example:
    #   `arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3`
    #
    #   Specify just the name to associate the latest revision. For example:
    #   `arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability`
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Configuration settings related to network traffic of the web
    #   application that the App Runner service runs.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] observability_configuration
    #   The observability configuration of your service.
    #   @return [Types::ServiceObservabilityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :service_name,
      :source_configuration,
      :instance_configuration,
      :tags,
      :encryption_configuration,
      :health_check_configuration,
      :auto_scaling_configuration_arn,
      :network_configuration,
      :observability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A description of the App Runner service that's created by this
    #   request.
    #   @return [Types::Service]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the asynchronous operation that this request
    #   started. You can use it combined with the [ListOperations][1] call
    #   to track the operation's progress.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :service,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connector_name
    #   A name for the VPC connector.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of IDs of subnets that App Runner should use when it
    #   associates your service with a custom Amazon VPC. Specify IDs of
    #   subnets of a single Amazon VPC. App Runner determines the Amazon VPC
    #   from the subnets you specify.
    #
    #   <note markdown="1"> App Runner currently only provides support for IPv4.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   A list of IDs of security groups that App Runner should use for
    #   access to Amazon Web Services resources under the specified subnets.
    #   If not specified, App Runner uses the default security group of the
    #   Amazon VPC. The default security group allows all outbound traffic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of metadata items that you can associate with your VPC
    #   connector resource. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateVpcConnectorRequest AWS API Documentation
    #
    class CreateVpcConnectorRequest < Struct.new(
      :vpc_connector_name,
      :subnets,
      :security_groups,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connector
    #   A description of the App Runner VPC connector that's created by
    #   this request.
    #   @return [Types::VpcConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateVpcConnectorResponse AWS API Documentation
    #
    class CreateVpcConnectorResponse < Struct.new(
      :vpc_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) for this App Runner service that is
    #   used to create the VPC Ingress Connection resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_ingress_connection_name
    #   A name for the VPC Ingress Connection resource. It must be unique
    #   across all the active VPC Ingress Connections in your Amazon Web
    #   Services account in the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] ingress_vpc_configuration
    #   Specifications for the customer’s Amazon VPC and the related Amazon
    #   Web Services PrivateLink VPC endpoint that are used to create the
    #   VPC Ingress Connection resource.
    #   @return [Types::IngressVpcConfiguration]
    #
    # @!attribute [rw] tags
    #   An optional list of metadata items that you can associate with the
    #   VPC Ingress Connection resource. A tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateVpcIngressConnectionRequest AWS API Documentation
    #
    class CreateVpcIngressConnectionRequest < Struct.new(
      :service_arn,
      :vpc_ingress_connection_name,
      :ingress_vpc_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection
    #   A description of the App Runner VPC Ingress Connection resource
    #   that's created by this request.
    #   @return [Types::VpcIngressConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CreateVpcIngressConnectionResponse AWS API Documentation
    #
    class CreateVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom domain that's associated with an App Runner
    # service.
    #
    # @!attribute [rw] domain_name
    #   An associated custom domain endpoint. It can be a root domain (for
    #   example, `example.com`), a subdomain (for example,
    #   `login.example.com` or `admin.login.example.com`), or a wildcard
    #   (for example, `*.example.com`).
    #   @return [String]
    #
    # @!attribute [rw] enable_www_subdomain
    #   When `true`, the subdomain `www.DomainName ` is associated with the
    #   App Runner service in addition to the base domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] certificate_validation_records
    #   A list of certificate CNAME records that's used for this domain
    #   name.
    #   @return [Array<Types::CertificateValidationRecord>]
    #
    # @!attribute [rw] status
    #   The current state of the domain name association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/CustomDomain AWS API Documentation
    #
    class CustomDomain < Struct.new(
      :domain_name,
      :enable_www_subdomain,
      :certificate_validation_records,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner auto scaling
    #   configuration that you want to delete.
    #
    #   The ARN can be a full auto scaling configuration ARN, or a partial
    #   ARN ending with either `.../name ` or `.../name/revision `. If a
    #   revision isn't specified, the latest active revision is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteAutoScalingConfigurationRequest AWS API Documentation
    #
    class DeleteAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration
    #   A description of the App Runner auto scaling configuration that this
    #   request just deleted.
    #   @return [Types::AutoScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteAutoScalingConfigurationResponse AWS API Documentation
    #
    class DeleteAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner connection that you
    #   want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   A description of the App Runner connection that this request just
    #   deleted.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner observability
    #   configuration that you want to delete.
    #
    #   The ARN can be a full observability configuration ARN, or a partial
    #   ARN ending with either `.../name ` or `.../name/revision `. If a
    #   revision isn't specified, the latest active revision is deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteObservabilityConfigurationRequest AWS API Documentation
    #
    class DeleteObservabilityConfigurationRequest < Struct.new(
      :observability_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration
    #   A description of the App Runner observability configuration that
    #   this request just deleted.
    #   @return [Types::ObservabilityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteObservabilityConfigurationResponse AWS API Documentation
    #
    class DeleteObservabilityConfigurationResponse < Struct.new(
      :observability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A description of the App Runner service that this request just
    #   deleted.
    #   @return [Types::Service]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the asynchronous operation that this request
    #   started. You can use it combined with the ListOperations call to
    #   track the operation's progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Struct.new(
      :service,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connector_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC connector that
    #   you want to delete.
    #
    #   The ARN must be a full VPC connector ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteVpcConnectorRequest AWS API Documentation
    #
    class DeleteVpcConnectorRequest < Struct.new(
      :vpc_connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connector
    #   A description of the App Runner VPC connector that this request just
    #   deleted.
    #   @return [Types::VpcConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteVpcConnectorResponse AWS API Documentation
    #
    class DeleteVpcConnectorResponse < Struct.new(
      :vpc_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC Ingress
    #   Connection that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteVpcIngressConnectionRequest AWS API Documentation
    #
    class DeleteVpcIngressConnectionRequest < Struct.new(
      :vpc_ingress_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection
    #   A description of the App Runner VPC Ingress Connection that this
    #   request just deleted.
    #   @return [Types::VpcIngressConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DeleteVpcIngressConnectionResponse AWS API Documentation
    #
    class DeleteVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner auto scaling
    #   configuration that you want a description for.
    #
    #   The ARN can be a full auto scaling configuration ARN, or a partial
    #   ARN ending with either `.../name ` or `.../name/revision `. If a
    #   revision isn't specified, the latest active revision is described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeAutoScalingConfigurationRequest AWS API Documentation
    #
    class DescribeAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration
    #   A full description of the App Runner auto scaling configuration that
    #   you specified in this request.
    #   @return [Types::AutoScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeAutoScalingConfigurationResponse AWS API Documentation
    #
    class DescribeAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want associated custom domain names to be described for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that each response (result page) can
    #   include. It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeCustomDomainsRequest AWS API Documentation
    #
    class DescribeCustomDomainsRequest < Struct.new(
      :service_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_target
    #   The App Runner subdomain of the App Runner service. The associated
    #   custom domain names are mapped to this target name.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service whose
    #   associated custom domain names you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] custom_domains
    #   A list of descriptions of custom domain names that are associated
    #   with the service. In a paginated request, the request returns up to
    #   `MaxResults` records per call.
    #   @return [Array<Types::CustomDomain>]
    #
    # @!attribute [rw] vpc_dns_targets
    #   DNS Target records for the custom domains of this Amazon VPC.
    #   @return [Array<Types::VpcDNSTarget>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeCustomDomainsResponse AWS API Documentation
    #
    class DescribeCustomDomainsResponse < Struct.new(
      :dns_target,
      :service_arn,
      :custom_domains,
      :vpc_dns_targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration_arn
    #   The Amazon Resource Name (ARN) of the App Runner observability
    #   configuration that you want a description for.
    #
    #   The ARN can be a full observability configuration ARN, or a partial
    #   ARN ending with either `.../name ` or `.../name/revision `. If a
    #   revision isn't specified, the latest active revision is described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeObservabilityConfigurationRequest AWS API Documentation
    #
    class DescribeObservabilityConfigurationRequest < Struct.new(
      :observability_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration
    #   A full description of the App Runner observability configuration
    #   that you specified in this request.
    #   @return [Types::ObservabilityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeObservabilityConfigurationResponse AWS API Documentation
    #
    class DescribeObservabilityConfigurationResponse < Struct.new(
      :observability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want a description for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeServiceRequest AWS API Documentation
    #
    class DescribeServiceRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A full description of the App Runner service that you specified in
    #   this request.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeServiceResponse AWS API Documentation
    #
    class DescribeServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connector_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC connector that
    #   you want a description for.
    #
    #   The ARN must be a full VPC connector ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeVpcConnectorRequest AWS API Documentation
    #
    class DescribeVpcConnectorRequest < Struct.new(
      :vpc_connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connector
    #   A description of the App Runner VPC connector that you specified in
    #   this request.
    #   @return [Types::VpcConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeVpcConnectorResponse AWS API Documentation
    #
    class DescribeVpcConnectorResponse < Struct.new(
      :vpc_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC Ingress
    #   Connection that you want a description for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeVpcIngressConnectionRequest AWS API Documentation
    #
    class DescribeVpcIngressConnectionRequest < Struct.new(
      :vpc_ingress_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection
    #   A description of the App Runner VPC Ingress Connection that you
    #   specified in this request.
    #   @return [Types::VpcIngressConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DescribeVpcIngressConnectionResponse AWS API Documentation
    #
    class DescribeVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to disassociate a custom domain name from.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name that you want to disassociate from the App Runner
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DisassociateCustomDomainRequest AWS API Documentation
    #
    class DisassociateCustomDomainRequest < Struct.new(
      :service_arn,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dns_target
    #   The App Runner subdomain of the App Runner service. The
    #   disassociated custom domain name was mapped to this target name.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that a
    #   custom domain name is disassociated from.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain
    #   A description of the domain name that's being disassociated.
    #   @return [Types::CustomDomain]
    #
    # @!attribute [rw] vpc_dns_targets
    #   DNS Target records for the custom domains of this Amazon VPC.
    #   @return [Array<Types::VpcDNSTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/DisassociateCustomDomainResponse AWS API Documentation
    #
    class DisassociateCustomDomainResponse < Struct.new(
      :dns_target,
      :service_arn,
      :custom_domain,
      :vpc_dns_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration settings related to outbound network traffic
    # of an App Runner service.
    #
    # @!attribute [rw] egress_type
    #   The type of egress configuration.
    #
    #   Set to `DEFAULT` for access to resources hosted on public networks.
    #
    #   Set to `VPC` to associate your service to a custom VPC specified by
    #   `VpcConnectorArn`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connector_arn
    #   The Amazon Resource Name (ARN) of the App Runner VPC connector that
    #   you want to associate with your App Runner service. Only valid when
    #   `EgressType = VPC`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/EgressConfiguration AWS API Documentation
    #
    class EgressConfiguration < Struct.new(
      :egress_type,
      :vpc_connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom encryption key that App Runner uses to encrypt
    # copies of the source repository and service logs.
    #
    # @!attribute [rw] kms_key
    #   The ARN of the KMS key that's used for encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the settings for the health check that App Runner performs
    # to monitor the health of a service.
    #
    # @!attribute [rw] protocol
    #   The IP protocol that App Runner uses to perform health checks for
    #   your service.
    #
    #   If you set `Protocol` to `HTTP`, App Runner sends health check
    #   requests to the HTTP path specified by `Path`.
    #
    #   Default: `TCP`
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The URL that health check requests are sent to.
    #
    #   `Path` is only applicable when you set `Protocol` to `HTTP`.
    #
    #   Default: `"/"`
    #   @return [String]
    #
    # @!attribute [rw] interval
    #   The time interval, in seconds, between health checks.
    #
    #   Default: `5`
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The time, in seconds, to wait for a health check response before
    #   deciding it failed.
    #
    #   Default: `2`
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive checks that must succeed before App Runner
    #   decides that the service is healthy.
    #
    #   Default: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive checks that must fail before App Runner
    #   decides that the service is unhealthy.
    #
    #   Default: `5`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/HealthCheckConfiguration AWS API Documentation
    #
    class HealthCheckConfiguration < Struct.new(
      :protocol,
      :path,
      :interval,
      :timeout,
      :healthy_threshold,
      :unhealthy_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration that App Runner uses to run an App Runner
    # service using an image pulled from a source image repository.
    #
    # @!attribute [rw] runtime_environment_variables
    #   Environment variables that are available to your running App Runner
    #   service. An array of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] start_command
    #   An optional command that App Runner runs to start the application in
    #   the source image. If specified, this command overrides the Docker
    #   image’s default start command.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that your application listens to in the container.
    #
    #   Default: `8080`
    #   @return [String]
    #
    # @!attribute [rw] runtime_environment_secrets
    #   An array of key-value pairs representing the secrets and parameters
    #   that get referenced to your service as an environment variable. The
    #   supported values are either the full Amazon Resource Name (ARN) of
    #   the Secrets Manager secret or the full ARN of the parameter in the
    #   Amazon Web Services Systems Manager Parameter Store.
    #
    #   <note markdown="1"> * If the Amazon Web Services Systems Manager Parameter Store
    #     parameter exists in the same Amazon Web Services Region as the
    #     service that you're launching, you can use either the full ARN or
    #     name of the secret. If the parameter exists in a different Region,
    #     then the full ARN must be specified.
    #
    #   * Currently, cross account referencing of Amazon Web Services
    #     Systems Manager Parameter Store parameter is not supported.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ImageConfiguration AWS API Documentation
    #
    class ImageConfiguration < Struct.new(
      :runtime_environment_variables,
      :start_command,
      :port,
      :runtime_environment_secrets)
      SENSITIVE = [:start_command]
      include Aws::Structure
    end

    # Describes a source image repository.
    #
    # @!attribute [rw] image_identifier
    #   The identifier of an image.
    #
    #   For an image in Amazon Elastic Container Registry (Amazon ECR), this
    #   is an image name. For the image name format, see [Pulling an
    #   image][1] in the *Amazon ECR User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html
    #   @return [String]
    #
    # @!attribute [rw] image_configuration
    #   Configuration for running the identified image.
    #   @return [Types::ImageConfiguration]
    #
    # @!attribute [rw] image_repository_type
    #   The type of the image repository. This reflects the repository
    #   provider and whether the repository is private or public.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ImageRepository AWS API Documentation
    #
    class ImageRepository < Struct.new(
      :image_identifier,
      :image_configuration,
      :image_repository_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network configuration settings for inbound network traffic.
    #
    # @!attribute [rw] is_publicly_accessible
    #   Specifies whether your App Runner service is publicly accessible. To
    #   make the service publicly accessible set it to `True`. To make the
    #   service privately accessible, from only within an Amazon VPC set it
    #   to `False`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/IngressConfiguration AWS API Documentation
    #
    class IngressConfiguration < Struct.new(
      :is_publicly_accessible)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of your VPC and the associated VPC endpoint. The VPC
    # endpoint is an Amazon Web Services PrivateLink resource that allows
    # access to your App Runner services from within an Amazon VPC.
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that is used for the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint that your App Runner service connects to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/IngressVpcConfiguration AWS API Documentation
    #
    class IngressVpcConfiguration < Struct.new(
      :vpc_id,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the runtime configuration of an App Runner service instance
    # (scaling unit).
    #
    # @!attribute [rw] cpu
    #   The number of CPU units reserved for each instance of your App
    #   Runner service.
    #
    #   Default: `1 vCPU`
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory, in MB or GB, reserved for each instance of
    #   your App Runner service.
    #
    #   Default: `2 GB`
    #   @return [String]
    #
    # @!attribute [rw] instance_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that provides
    #   permissions to your App Runner service. These are permissions that
    #   your code needs when it calls any Amazon Web Services APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/InstanceConfiguration AWS API Documentation
    #
    class InstanceConfiguration < Struct.new(
      :cpu,
      :memory,
      :instance_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected service exception occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more input parameters aren't valid. Refer to the API action's
    # document page, correct the input parameters, and try the action again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't perform this action when the resource is in its current
    # state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration_name
    #   The name of the App Runner auto scaling configuration that you want
    #   to list. If specified, App Runner lists revisions that share this
    #   name. If not specified, App Runner returns revisions of all active
    #   configurations.
    #   @return [String]
    #
    # @!attribute [rw] latest_only
    #   Set to `true` to list only the latest revision for each requested
    #   configuration name.
    #
    #   Set to `false` to list all revisions for each requested
    #   configuration name.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListAutoScalingConfigurationsRequest AWS API Documentation
    #
    class ListAutoScalingConfigurationsRequest < Struct.new(
      :auto_scaling_configuration_name,
      :latest_only,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_scaling_configuration_summary_list
    #   A list of summary information records for auto scaling
    #   configurations. In a paginated request, the request returns up to
    #   `MaxResults` records for each call.
    #   @return [Array<Types::AutoScalingConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListAutoScalingConfigurationsResponse AWS API Documentation
    #
    class ListAutoScalingConfigurationsResponse < Struct.new(
      :auto_scaling_configuration_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_name
    #   If specified, only this connection is returned. If not specified,
    #   the result isn't filtered by name.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). Used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. Used for a paginated request.
    #   The request retrieves the next result page. All other parameter
    #   values must be identical to the ones specified in the initial
    #   request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListConnectionsRequest AWS API Documentation
    #
    class ListConnectionsRequest < Struct.new(
      :connection_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_summary_list
    #   A list of summary information records for connections. In a
    #   paginated request, the request returns up to `MaxResults` records
    #   for each call.
    #   @return [Array<Types::ConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. Returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListConnectionsResponse AWS API Documentation
    #
    class ListConnectionsResponse < Struct.new(
      :connection_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration_name
    #   The name of the App Runner observability configuration that you want
    #   to list. If specified, App Runner lists revisions that share this
    #   name. If not specified, App Runner returns revisions of all active
    #   configurations.
    #   @return [String]
    #
    # @!attribute [rw] latest_only
    #   Set to `true` to list only the latest revision for each requested
    #   configuration name.
    #
    #   Set to `false` to list all revisions for each requested
    #   configuration name.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListObservabilityConfigurationsRequest AWS API Documentation
    #
    class ListObservabilityConfigurationsRequest < Struct.new(
      :observability_configuration_name,
      :latest_only,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] observability_configuration_summary_list
    #   A list of summary information records for observability
    #   configurations. In a paginated request, the request returns up to
    #   `MaxResults` records for each call.
    #   @return [Array<Types::ObservabilityConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListObservabilityConfigurationsResponse AWS API Documentation
    #
    class ListObservabilityConfigurationsResponse < Struct.new(
      :observability_configuration_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want a list of operations for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones specified in the
    #   initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListOperationsRequest AWS API Documentation
    #
    class ListOperationsRequest < Struct.new(
      :service_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_summary_list
    #   A list of operation summary information records. In a paginated
    #   request, the request returns up to `MaxResults` records for each
    #   call.
    #   @return [Array<Types::OperationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListOperationsResponse AWS API Documentation
    #
    class ListOperationsResponse < Struct.new(
      :operation_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token from a previous result page. Used for a paginated request.
    #   The request retrieves the next result page. All other parameter
    #   values must be identical to the ones specified in the initial
    #   request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_summary_list
    #   A list of service summary information records. In a paginated
    #   request, the request returns up to `MaxResults` records for each
    #   call.
    #   @return [Array<Types::ServiceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :service_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that a tag list is
    #   requested for.
    #
    #   It must be the ARN of an App Runner resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of the tag key-value pairs that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcConnectorsRequest AWS API Documentation
    #
    class ListVpcConnectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connectors
    #   A list of information records for VPC connectors. In a paginated
    #   request, the request returns up to `MaxResults` records for each
    #   call.
    #   @return [Array<Types::VpcConnector>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcConnectorsResponse AWS API Documentation
    #
    class ListVpcConnectorsResponse < Struct.new(
      :vpc_connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of VPC Ingress Connections based on the filter
    # provided. It can return either `ServiceArn` or `VpcEndpointId`, or
    # both.
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of a service to filter by.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of a VPC Endpoint to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcIngressConnectionsFilter AWS API Documentation
    #
    class ListVpcIngressConnectionsFilter < Struct.new(
      :service_arn,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The VPC Ingress Connections to be listed based on either the Service
    #   Arn or Vpc Endpoint Id, or both.
    #   @return [Types::ListVpcIngressConnectionsFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in each response (result
    #   page). It's used for a paginated request.
    #
    #   If you don't specify `MaxResults`, the request retrieves all
    #   available results in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token from a previous result page. It's used for a paginated
    #   request. The request retrieves the next result page. All other
    #   parameter values must be identical to the ones that are specified in
    #   the initial request.
    #
    #   If you don't specify `NextToken`, the request retrieves the first
    #   result page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcIngressConnectionsRequest AWS API Documentation
    #
    class ListVpcIngressConnectionsRequest < Struct.new(
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection_summary_list
    #   A list of summary information records for VPC Ingress Connections.
    #   In a paginated request, the request returns up to `MaxResults`
    #   records for each call.
    #   @return [Array<Types::VpcIngressConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can pass in a subsequent request to get the next
    #   result page. It's returned in a paginated request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ListVpcIngressConnectionsResponse AWS API Documentation
    #
    class ListVpcIngressConnectionsResponse < Struct.new(
      :vpc_ingress_connection_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration settings related to network traffic of an App
    # Runner service. Consists of embedded objects for each configurable
    # network feature.
    #
    # @!attribute [rw] egress_configuration
    #   Network configuration settings for outbound message traffic.
    #   @return [Types::EgressConfiguration]
    #
    # @!attribute [rw] ingress_configuration
    #   Network configuration settings for inbound message traffic.
    #   @return [Types::IngressConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :egress_configuration,
      :ingress_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an App Runner observability configuration resource. Multiple
    # revisions of a configuration have the same
    # `ObservabilityConfigurationName` and different
    # `ObservabilityConfigurationRevision` values.
    #
    # The resource is designed to configure multiple features (currently one
    # feature, tracing). This type contains optional members that describe
    # the configuration of these features (currently one member,
    # `TraceConfiguration`). If a feature member isn't specified, the
    # feature isn't enabled.
    #
    # @!attribute [rw] observability_configuration_arn
    #   The Amazon Resource Name (ARN) of this observability configuration.
    #   @return [String]
    #
    # @!attribute [rw] observability_configuration_name
    #   The customer-provided observability configuration name. It can be
    #   used in multiple revisions of a configuration.
    #   @return [String]
    #
    # @!attribute [rw] trace_configuration
    #   The configuration of the tracing feature within this observability
    #   configuration. If not specified, tracing isn't enabled.
    #   @return [Types::TraceConfiguration]
    #
    # @!attribute [rw] observability_configuration_revision
    #   The revision of this observability configuration. It's unique among
    #   all the active configurations (`"Status": "ACTIVE"`) that share the
    #   same `ObservabilityConfigurationName`.
    #   @return [Integer]
    #
    # @!attribute [rw] latest
    #   It's set to `true` for the configuration with the highest
    #   `Revision` among all configurations that share the same
    #   `ObservabilityConfigurationName`. It's set to `false` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current state of the observability configuration. If the status
    #   of a configuration revision is `INACTIVE`, it was deleted and can't
    #   be used. Inactive configuration revisions are permanently removed
    #   some time after they are deleted.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the observability configuration was created. It's in
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The time when the observability configuration was deleted. It's in
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ObservabilityConfiguration AWS API Documentation
    #
    class ObservabilityConfiguration < Struct.new(
      :observability_configuration_arn,
      :observability_configuration_name,
      :trace_configuration,
      :observability_configuration_revision,
      :latest,
      :status,
      :created_at,
      :deleted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an App Runner observability
    # configuration resource.
    #
    # This type contains limited information about an observability
    # configuration. It includes only identification information, without
    # configuration details. It's returned by the
    # ListObservabilityConfigurations action. Complete configuration
    # information is returned by the CreateObservabilityConfiguration,
    # DescribeObservabilityConfiguration, and
    # DeleteObservabilityConfiguration actions using the
    # ObservabilityConfiguration type.
    #
    # @!attribute [rw] observability_configuration_arn
    #   The Amazon Resource Name (ARN) of this observability configuration.
    #   @return [String]
    #
    # @!attribute [rw] observability_configuration_name
    #   The customer-provided observability configuration name. It can be
    #   used in multiple revisions of a configuration.
    #   @return [String]
    #
    # @!attribute [rw] observability_configuration_revision
    #   The revision of this observability configuration. It's unique among
    #   all the active configurations (`"Status": "ACTIVE"`) that share the
    #   same `ObservabilityConfigurationName`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ObservabilityConfigurationSummary AWS API Documentation
    #
    class ObservabilityConfigurationSummary < Struct.new(
      :observability_configuration_arn,
      :observability_configuration_name,
      :observability_configuration_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for an operation that occurred on an App
    # Runner service.
    #
    # @!attribute [rw] id
    #   A unique ID of this operation. It's unique in the scope of the App
    #   Runner service.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of operation. It indicates a specific action that occured.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the operation.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the resource that the operation
    #   acted on (for example, an App Runner service).
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time when the operation started. It's in the Unix time stamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time when the operation ended. It's in the Unix time stamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the operation was last updated. It's in the Unix time
    #   stamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/OperationSummary AWS API Documentation
    #
    class OperationSummary < Struct.new(
      :id,
      :type,
      :status,
      :target_arn,
      :started_at,
      :ended_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to pause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/PauseServiceRequest AWS API Documentation
    #
    class PauseServiceRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A description of the App Runner service that this request just
    #   paused.
    #   @return [Types::Service]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the asynchronous operation that this request
    #   started. You can use it combined with the ListOperations call to
    #   track the operation's progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/PauseServiceResponse AWS API Documentation
    #
    class PauseServiceResponse < Struct.new(
      :service,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource doesn't exist for the specified Amazon Resource Name (ARN)
    # in your Amazon Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to resume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ResumeServiceRequest AWS API Documentation
    #
    class ResumeServiceRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A description of the App Runner service that this request just
    #   resumed.
    #   @return [Types::Service]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the asynchronous operation that this request
    #   started. You can use it combined with the ListOperations call to
    #   track the operation's progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ResumeServiceResponse AWS API Documentation
    #
    class ResumeServiceResponse < Struct.new(
      :service,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an App Runner service. It can describe a service in any
    # state, including deleted services.
    #
    # This type contains the full information about a service, including
    # configuration details. It's returned by the [CreateService][1],
    # [DescribeService][2], and [DeleteService][3] actions. A subset of this
    # information is returned by the [ListServices][4] action using the
    # [ServiceSummary][5] type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html
    # [2]: https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html
    # [3]: https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html
    # [4]: https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html
    # [5]: https://docs.aws.amazon.com/apprunner/latest/api/API_ServiceSummary.html
    #
    # @!attribute [rw] service_name
    #   The customer-provided service name.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   An ID that App Runner generated for this service. It's unique
    #   within the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of this service.
    #   @return [String]
    #
    # @!attribute [rw] service_url
    #   A subdomain URL that App Runner generated for this service. You can
    #   use this URL to access your service web application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the App Runner service was created. It's in the Unix
    #   time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the App Runner service was last updated at. It's in
    #   the Unix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The time when the App Runner service was deleted. It's in the Unix
    #   time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current state of the App Runner service. These particular values
    #   mean the following.
    #
    #   * `CREATE_FAILED` – The service failed to create. To troubleshoot
    #     this failure, read the failure events and logs, change any
    #     parameters that need to be fixed, and retry the call to create the
    #     service.
    #
    #     The failed service isn't usable, and still counts towards your
    #     service quota. When you're done analyzing the failure, delete the
    #     service.
    #
    #   * `DELETE_FAILED` – The service failed to delete and can't be
    #     successfully recovered. Retry the service deletion call to ensure
    #     that all related resources are removed.
    #   @return [String]
    #
    # @!attribute [rw] source_configuration
    #   The source deployed to the App Runner service. It can be a code or
    #   an image repository.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] instance_configuration
    #   The runtime configuration of instances (scaling units) of this
    #   service.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption key that App Runner uses to encrypt the service logs
    #   and the copy of the source repository that App Runner maintains for
    #   the service. It can be either a customer-provided encryption key or
    #   an Amazon Web Services managed key.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] health_check_configuration
    #   The settings for the health check that App Runner performs to
    #   monitor the health of this service.
    #   @return [Types::HealthCheckConfiguration]
    #
    # @!attribute [rw] auto_scaling_configuration_summary
    #   Summary information for the App Runner automatic scaling
    #   configuration resource that's associated with this service.
    #   @return [Types::AutoScalingConfigurationSummary]
    #
    # @!attribute [rw] network_configuration
    #   Configuration settings related to network traffic of the web
    #   application that this service runs.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] observability_configuration
    #   The observability configuration of this service.
    #   @return [Types::ServiceObservabilityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/Service AWS API Documentation
    #
    class Service < Struct.new(
      :service_name,
      :service_id,
      :service_arn,
      :service_url,
      :created_at,
      :updated_at,
      :deleted_at,
      :status,
      :source_configuration,
      :instance_configuration,
      :encryption_configuration,
      :health_check_configuration,
      :auto_scaling_configuration_summary,
      :network_configuration,
      :observability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the observability configuration of an App Runner service.
    # These are additional observability features, like tracing, that you
    # choose to enable. They're configured in a separate resource that you
    # associate with your service.
    #
    # @!attribute [rw] observability_enabled
    #   When `true`, an observability configuration resource is associated
    #   with the service, and an `ObservabilityConfigurationArn` is
    #   specified.
    #   @return [Boolean]
    #
    # @!attribute [rw] observability_configuration_arn
    #   The Amazon Resource Name (ARN) of the observability configuration
    #   that is associated with the service. Specified only when
    #   `ObservabilityEnabled` is `true`.
    #
    #   Specify an ARN with a name and a revision number to associate that
    #   revision. For example:
    #   `arn:aws:apprunner:us-east-1:123456789012:observabilityconfiguration/xray-tracing/3`
    #
    #   Specify just the name to associate the latest revision. For example:
    #   `arn:aws:apprunner:us-east-1:123456789012:observabilityconfiguration/xray-tracing`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ServiceObservabilityConfiguration AWS API Documentation
    #
    class ServiceObservabilityConfiguration < Struct.new(
      :observability_enabled,
      :observability_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # App Runner can't create this resource. You've reached your account
    # quota for this resource type.
    #
    # For App Runner per-resource quotas, see [App Runner endpoints and
    # quotas][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/apprunner.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for an App Runner service.
    #
    # This type contains limited information about a service. It doesn't
    # include configuration details. It's returned by the [ListServices][1]
    # action. Complete service information is returned by the
    # [CreateService][2], [DescribeService][3], and [DeleteService][4]
    # actions using the [Service][5] type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html
    # [2]: https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html
    # [3]: https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html
    # [4]: https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html
    # [5]: https://docs.aws.amazon.com/apprunner/latest/api/API_Service.html
    #
    # @!attribute [rw] service_name
    #   The customer-provided service name.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   An ID that App Runner generated for this service. It's unique
    #   within the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of this service.
    #   @return [String]
    #
    # @!attribute [rw] service_url
    #   A subdomain URL that App Runner generated for this service. You can
    #   use this URL to access your service web application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the App Runner service was created. It's in the Unix
    #   time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time when the App Runner service was last updated. It's in
    #   theUnix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current state of the App Runner service. These particular values
    #   mean the following.
    #
    #   * `CREATE_FAILED` – The service failed to create. Read the failure
    #     events and logs, change any parameters that need to be fixed, and
    #     retry the call to create the service.
    #
    #     The failed service isn't usable, and still counts towards your
    #     service quota. When you're done analyzing the failure, delete the
    #     service.
    #
    #   * `DELETE_FAILED` – The service failed to delete and can't be
    #     successfully recovered. Retry the service deletion call to ensure
    #     that all related resources are removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :service_name,
      :service_id,
      :service_arn,
      :service_url,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a version of code that App Runner refers to within a source
    # code repository.
    #
    # @!attribute [rw] type
    #   The type of version identifier.
    #
    #   For a git-based repository, branches represent versions.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A source code version.
    #
    #   For a git-based repository, a branch name maps to a specific
    #   version. App Runner uses the most recent commit to the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/SourceCodeVersion AWS API Documentation
    #
    class SourceCodeVersion < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the source deployed to an App Runner service. It can be a
    # code or an image repository.
    #
    # @!attribute [rw] code_repository
    #   The description of a source code repository.
    #
    #   You must provide either this member or `ImageRepository` (but not
    #   both).
    #   @return [Types::CodeRepository]
    #
    # @!attribute [rw] image_repository
    #   The description of a source image repository.
    #
    #   You must provide either this member or `CodeRepository` (but not
    #   both).
    #   @return [Types::ImageRepository]
    #
    # @!attribute [rw] auto_deployments_enabled
    #   If `true`, continuous integration from the source repository is
    #   enabled for the App Runner service. Each repository change
    #   (including any source code commit or new image version) starts a
    #   deployment.
    #
    #   Default: App Runner sets to `false` for a source image that uses an
    #   ECR Public repository or an ECR repository that's in an Amazon Web
    #   Services account other than the one that the service is in. App
    #   Runner sets to `true` in all other cases (which currently include a
    #   source code repository or a source image using a same-account ECR
    #   repository).
    #   @return [Boolean]
    #
    # @!attribute [rw] authentication_configuration
    #   Describes the resources that are needed to authenticate access to
    #   some source repositories.
    #   @return [Types::AuthenticationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :code_repository,
      :image_repository,
      :auto_deployments_enabled,
      :authentication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to manually deploy to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/StartDeploymentRequest AWS API Documentation
    #
    class StartDeploymentRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique ID of the asynchronous operation that this request
    #   started. You can use it combined with the ListOperations call to
    #   track the operation's progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/StartDeploymentResponse AWS API Documentation
    #
    class StartDeploymentResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag that is applied to an App Runner resource. A tag is a
    # metadata item consisting of a key-value pair.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   update tags for.
    #
    #   It must be the ARN of an App Runner resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key-value pairs to add or update. If a key is new to
    #   the resource, the tag is added with the provided value. If a key is
    #   already associated with the resource, the value of the tag is
    #   updated.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Describes the configuration of the tracing feature within an App
    # Runner observability configuration.
    #
    # @!attribute [rw] vendor
    #   The implementation provider chosen for tracing App Runner services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/TraceConfiguration AWS API Documentation
    #
    class TraceConfiguration < Struct.new(
      :vendor)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from.
    #
    #   It must be the ARN of an App Runner resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the App Runner service that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] source_configuration
    #   The source configuration to apply to the App Runner service.
    #
    #   You can change the configuration of the code or image repository
    #   that the service uses. However, you can't switch from code to image
    #   or the other way around. This means that you must provide the same
    #   structure member of `SourceConfiguration` that you originally
    #   included when you created the service. Specifically, you can include
    #   either `CodeRepository` or `ImageRepository`. To update the source
    #   configuration, set the values to members of the structure that you
    #   include.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] instance_configuration
    #   The runtime configuration to apply to instances (scaling units) of
    #   your service.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] auto_scaling_configuration_arn
    #   The Amazon Resource Name (ARN) of an App Runner automatic scaling
    #   configuration resource that you want to associate with the App
    #   Runner service.
    #   @return [String]
    #
    # @!attribute [rw] health_check_configuration
    #   The settings for the health check that App Runner performs to
    #   monitor the health of the App Runner service.
    #   @return [Types::HealthCheckConfiguration]
    #
    # @!attribute [rw] network_configuration
    #   Configuration settings related to network traffic of the web
    #   application that the App Runner service runs.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] observability_configuration
    #   The observability configuration of your service.
    #   @return [Types::ServiceObservabilityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UpdateServiceRequest AWS API Documentation
    #
    class UpdateServiceRequest < Struct.new(
      :service_arn,
      :source_configuration,
      :instance_configuration,
      :auto_scaling_configuration_arn,
      :health_check_configuration,
      :network_configuration,
      :observability_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   A description of the App Runner service updated by this request. All
    #   configuration values in the returned `Service` structure reflect
    #   configuration changes that are being applied by this request.
    #   @return [Types::Service]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the asynchronous operation that this request
    #   started. You can use it combined with the ListOperations call to
    #   track the operation's progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UpdateServiceResponse AWS API Documentation
    #
    class UpdateServiceResponse < Struct.new(
      :service,
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection_arn
    #   The Amazon Resource Name (Arn) for the App Runner VPC Ingress
    #   Connection resource that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] ingress_vpc_configuration
    #   Specifications for the customer’s Amazon VPC and the related Amazon
    #   Web Services PrivateLink VPC endpoint that are used to update the
    #   VPC Ingress Connection resource.
    #   @return [Types::IngressVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UpdateVpcIngressConnectionRequest AWS API Documentation
    #
    class UpdateVpcIngressConnectionRequest < Struct.new(
      :vpc_ingress_connection_arn,
      :ingress_vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_ingress_connection
    #   A description of the App Runner VPC Ingress Connection resource
    #   that's updated by this request.
    #   @return [Types::VpcIngressConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/UpdateVpcIngressConnectionResponse AWS API Documentation
    #
    class UpdateVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an App Runner VPC connector resource. A VPC connector
    # describes the Amazon Virtual Private Cloud (Amazon VPC) that an App
    # Runner service is associated with, and the subnets and security group
    # that are used.
    #
    # Multiple revisions of a connector might have the same `Name` and
    # different `Revision` values.
    #
    # <note markdown="1"> At this time, App Runner supports only one revision per name.
    #
    #  </note>
    #
    # @!attribute [rw] vpc_connector_name
    #   The customer-provided VPC connector name.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connector_arn
    #   The Amazon Resource Name (ARN) of this VPC connector.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connector_revision
    #   The revision of this VPC connector. It's unique among all the
    #   active connectors (`"Status": "ACTIVE"`) that share the same `Name`.
    #
    #   <note markdown="1"> At this time, App Runner supports only one revision per name.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   A list of IDs of subnets that App Runner uses for your service. All
    #   IDs are of subnets of a single Amazon VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   A list of IDs of security groups that App Runner uses for access to
    #   Amazon Web Services resources under the specified subnets. If not
    #   specified, App Runner uses the default security group of the Amazon
    #   VPC. The default security group allows all outbound traffic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current state of the VPC connector. If the status of a connector
    #   revision is `INACTIVE`, it was deleted and can't be used. Inactive
    #   connector revisions are permanently removed some time after they are
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the VPC connector was created. It's in Unix time
    #   stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The time when the VPC connector was deleted. It's in Unix time
    #   stamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/VpcConnector AWS API Documentation
    #
    class VpcConnector < Struct.new(
      :vpc_connector_name,
      :vpc_connector_arn,
      :vpc_connector_revision,
      :subnets,
      :security_groups,
      :status,
      :created_at,
      :deleted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # DNS Target record for a custom domain of this Amazon VPC.
    #
    # @!attribute [rw] vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC Ingress Connection that is
    #   associated with your service.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon VPC that is associated with the custom domain
    #   name of the target DNS.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of your target DNS that is associated with the
    #   Amazon VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/VpcDNSTarget AWS API Documentation
    #
    class VpcDNSTarget < Struct.new(
      :vpc_ingress_connection_arn,
      :vpc_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The App Runner resource that specifies an App Runner endpoint for
    # incoming traffic. It establishes a connection between a VPC interface
    # endpoint and a App Runner service, to make your App Runner service
    # accessible from only within an Amazon VPC.
    #
    # @!attribute [rw] vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC Ingress Connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_ingress_connection_name
    #   The customer-provided VPC Ingress Connection name.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service associated with the
    #   VPC Ingress Connection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the VPC Ingress Connection. The VPC Ingress
    #   Connection displays one of the following statuses: `AVAILABLE`,
    #   `PENDING_CREATION`, `PENDING_UPDATE`,
    #   `PENDING_DELETION`,`FAILED_CREATION`, `FAILED_UPDATE`,
    #   `FAILED_DELETION`, and `DELETED`..
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Account Id you use to create the VPC Ingress Connection
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name associated with the VPC Ingress Connection resource.
    #   @return [String]
    #
    # @!attribute [rw] ingress_vpc_configuration
    #   Specifications for the customer’s VPC and related PrivateLink VPC
    #   endpoint that are used to associate with the VPC Ingress Connection
    #   resource.
    #   @return [Types::IngressVpcConfiguration]
    #
    # @!attribute [rw] created_at
    #   The time when the VPC Ingress Connection was created. It's in the
    #   Unix time stamp format.
    #
    #   * Type: Timestamp
    #
    #   * Required: Yes
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The time when the App Runner service was deleted. It's in the Unix
    #   time stamp format.
    #
    #   * Type: Timestamp
    #
    #   * Required: No
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/VpcIngressConnection AWS API Documentation
    #
    class VpcIngressConnection < Struct.new(
      :vpc_ingress_connection_arn,
      :vpc_ingress_connection_name,
      :service_arn,
      :status,
      :account_id,
      :domain_name,
      :ingress_vpc_configuration,
      :created_at,
      :deleted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an VPC Ingress Connection, which
    # includes its VPC Ingress Connection ARN and its associated Service
    # ARN.
    #
    # @!attribute [rw] vpc_ingress_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC Ingress Connection.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service associated with the
    #   VPC Ingress Connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apprunner-2020-05-15/VpcIngressConnectionSummary AWS API Documentation
    #
    class VpcIngressConnectionSummary < Struct.new(
      :vpc_ingress_connection_arn,
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
