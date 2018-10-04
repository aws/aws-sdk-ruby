# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECS
  module Types

    # An object representing a container instance or task attachment.
    #
    # @!attribute [rw] id
    #   The unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attachment, such as `ElasticNetworkInterface`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the attachment. Valid values are `PRECREATED`,
    #   `CREATED`, `ATTACHING`, `ATTACHED`, `DETACHING`, `DETACHED`, and
    #   `DELETED`.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Details of the attachment. For elastic network interfaces, this
    #   includes the network interface ID, the MAC address, the subnet ID,
    #   and the private IPv4 address.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Attachment AWS API Documentation
    #
    class Attachment < Struct.new(
      :id,
      :type,
      :status,
      :details)
      include Aws::Structure
    end

    # An object representing a change in state for a task attachment.
    #
    # @note When making an API call, you may pass AttachmentStateChange
    #   data as a hash:
    #
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       }
    #
    # @!attribute [rw] attachment_arn
    #   The Amazon Resource Name (ARN) of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AttachmentStateChange AWS API Documentation
    #
    class AttachmentStateChange < Struct.new(
      :attachment_arn,
      :status)
      include Aws::Structure
    end

    # An attribute is a name-value pair associated with an Amazon ECS
    # object. Attributes enable you to extend the Amazon ECS data model by
    # adding custom metadata to your resources. For more information, see
    # [Attributes][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
    #
    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute. Up to 128 letters (uppercase and
    #   lowercase), numbers, hyphens, underscores, and periods are allowed.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute. Up to 128 letters (uppercase and
    #   lowercase), numbers, hyphens, underscores, periods, at signs (@),
    #   forward slashes, colons, and spaces are allowed.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target with which to attach the attribute. This
    #   parameter is required if you use the short form ID for a resource
    #   instead of the full ARN.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The ID of the target. You can specify the short form ID for a
    #   resource or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :name,
      :value,
      :target_type,
      :target_id)
      include Aws::Structure
    end

    # An object representing the networking details for a task or service.
    #
    # @note When making an API call, you may pass AwsVpcConfiguration
    #   data as a hash:
    #
    #       {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] subnets
    #   The subnets associated with the task or service. There is a limit of
    #   16 subnets able to be specified per `AwsVpcConfiguration`.
    #
    #   <note markdown="1"> All specified subnets must be from the same VPC.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the task or service. If you do
    #   not specify a security group, the default security group for the VPC
    #   is used. There is a limit of 5 security groups able to be specified
    #   per `AwsVpcConfiguration`.
    #
    #   <note markdown="1"> All specified security groups must be from the same VPC.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   Whether the task's elastic network interface receives a public IP
    #   address. The default value is `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip)
      include Aws::Structure
    end

    # A regional grouping of one or more container instances on which you
    # can run task requests. Each account receives a default cluster the
    # first time you use the Amazon ECS service, but you may also create
    # other clusters. Clusters may contain more than one instance type
    # simultaneously.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that identifies the cluster. The ARN
    #   contains the `arn:aws:ecs` namespace, followed by the Region of the
    #   cluster, the AWS account ID of the cluster owner, the `cluster`
    #   namespace, and then the cluster name. For example,
    #   `arn:aws:ecs:region:012345678910:cluster/test `..
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A user-generated string that you use to identify your cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster. The valid values are `ACTIVE` or
    #   `INACTIVE`. `ACTIVE` indicates that you can register container
    #   instances with the cluster and the associated instances can accept
    #   tasks.
    #   @return [String]
    #
    # @!attribute [rw] registered_container_instances_count
    #   The number of container instances registered into the cluster. This
    #   includes container instances in both `ACTIVE` and `DRAINING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks in the cluster that are in the `RUNNING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_tasks_count
    #   The number of tasks in the cluster that are in the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] active_services_count
    #   The number of services that are running on the cluster in an
    #   `ACTIVE` state. You can view these services with ListServices.
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   Additional information about your clusters that are separated by
    #   launch type, including:
    #
    #   * runningEC2TasksCount
    #
    #   * RunningFargateTasksCount
    #
    #   * pendingEC2TasksCount
    #
    #   * pendingFargateTasksCount
    #
    #   * activeEC2ServiceCount
    #
    #   * activeFargateServiceCount
    #
    #   * drainingEC2ServiceCount
    #
    #   * drainingFargateServiceCount
    #   @return [Array<Types::KeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :cluster_arn,
      :cluster_name,
      :status,
      :registered_container_instances_count,
      :running_tasks_count,
      :pending_tasks_count,
      :active_services_count,
      :statistics)
      include Aws::Structure
    end

    # A Docker container that is part of a task.
    #
    # @!attribute [rw] container_arn
    #   The Amazon Resource Name (ARN) of the container.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] last_status
    #   The last known status of the container.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code returned from the container.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details about a running or stopped container.
    #   @return [String]
    #
    # @!attribute [rw] network_bindings
    #   The network bindings associated with the container.
    #   @return [Array<Types::NetworkBinding>]
    #
    # @!attribute [rw] network_interfaces
    #   The network interfaces associated with the container.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] health_status
    #   The health status of the container. If health checks are not
    #   configured for this container in its task definition, then it
    #   reports health status as `UNKNOWN`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Container AWS API Documentation
    #
    class Container < Struct.new(
      :container_arn,
      :task_arn,
      :name,
      :last_status,
      :exit_code,
      :reason,
      :network_bindings,
      :network_interfaces,
      :health_status)
      include Aws::Structure
    end

    # Container definitions are used in task definitions to describe the
    # different containers that are launched as part of a task.
    #
    # @note When making an API call, you may pass ContainerDefinition
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         image: "String",
    #         repository_credentials: {
    #           credentials_parameter: "String", # required
    #         },
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         links: ["String"],
    #         port_mappings: [
    #           {
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #         essential: false,
    #         entry_point: ["String"],
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             source_volume: "String",
    #             container_path: "String",
    #             read_only: false,
    #           },
    #         ],
    #         volumes_from: [
    #           {
    #             source_container: "String",
    #             read_only: false,
    #           },
    #         ],
    #         linux_parameters: {
    #           capabilities: {
    #             add: ["String"],
    #             drop: ["String"],
    #           },
    #           devices: [
    #             {
    #               host_path: "String", # required
    #               container_path: "String",
    #               permissions: ["read"], # accepts read, write, mknod
    #             },
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: "String", # required
    #               size: 1, # required
    #               mount_options: ["String"],
    #             },
    #           ],
    #         },
    #         hostname: "String",
    #         user: "String",
    #         working_directory: "String",
    #         disable_networking: false,
    #         privileged: false,
    #         readonly_root_filesystem: false,
    #         dns_servers: ["String"],
    #         dns_search_domains: ["String"],
    #         extra_hosts: [
    #           {
    #             hostname: "String", # required
    #             ip_address: "String", # required
    #           },
    #         ],
    #         docker_security_options: ["String"],
    #         interactive: false,
    #         pseudo_terminal: false,
    #         docker_labels: {
    #           "String" => "String",
    #         },
    #         ulimits: [
    #           {
    #             name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #             soft_limit: 1, # required
    #             hard_limit: 1, # required
    #           },
    #         ],
    #         log_configuration: {
    #           log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #           options: {
    #             "String" => "String",
    #           },
    #         },
    #         health_check: {
    #           command: ["String"], # required
    #           interval: 1,
    #           timeout: 1,
    #           retries: 1,
    #           start_period: 1,
    #         },
    #         system_controls: [
    #           {
    #             namespace: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of a container. If you are linking multiple containers
    #   together in a task definition, the `name` of one container can be
    #   entered in the `links` of another container to connect the
    #   containers. Up to 255 letters (uppercase and lowercase), numbers,
    #   hyphens, and underscores are allowed. This parameter maps to `name`
    #   in the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--name` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used to start a container. This string is passed directly
    #   to the Docker daemon. Images in the Docker Hub registry are
    #   available by default. Other repositories are specified with either `
    #   repository-url/image:tag ` or ` repository-url/image@digest `. Up to
    #   255 letters (uppercase and lowercase), numbers, hyphens,
    #   underscores, colons, periods, forward slashes, and number signs are
    #   allowed. This parameter maps to `Image` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the `IMAGE`
    #   parameter of [docker run][3].
    #
    #   * When a new task starts, the Amazon ECS container agent pulls the
    #     latest version of the specified image and tag for the container to
    #     use. However, subsequent updates to a repository image are not
    #     propagated to already running tasks.
    #
    #   * Images in Amazon ECR repositories can be specified by either using
    #     the full `registry/repository:tag` or
    #     `registry/repository@digest`. For example,
    #     `012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>:latest`
    #     or
    #     `012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE`.
    #
    #   * Images in official repositories on Docker Hub use a single name
    #     (for example, `ubuntu` or `mongo`).
    #
    #   * Images in other repositories on Docker Hub are qualified with an
    #     organization name (for example, `amazon/amazon-ecs-agent`).
    #
    #   * Images in other online repositories are qualified further by a
    #     domain name (for example, `quay.io/assemblyline/ubuntu`).
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] repository_credentials
    #   The private repository authentication credentials to use.
    #   @return [Types::RepositoryCredentials]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units reserved for the container. This parameter
    #   maps to `CpuShares` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--cpu-shares` option to [docker
    #   run][3].
    #
    #   This field is optional for tasks using the Fargate launch type, and
    #   the only requirement is that the total amount of CPU reserved for
    #   all containers within a task be lower than the task-level `cpu`
    #   value.
    #
    #   <note markdown="1"> You can determine the number of CPU units that are available per EC2
    #   instance type by multiplying the vCPUs listed for that instance type
    #   on the [Amazon EC2 Instances][4] detail page by 1,024.
    #
    #    </note>
    #
    #   For example, if you run a single-container task on a single-core
    #   instance type with 512 CPU units specified for that container, and
    #   that is the only task running on the container instance, that
    #   container could use the full 1,024 CPU unit share at any given time.
    #   However, if you launched another copy of the same task on that
    #   container instance, each task would be guaranteed a minimum of 512
    #   CPU units when needed, and each container could float to higher CPU
    #   usage if the other container was not using it, but if both tasks
    #   were 100% active all of the time, they would be limited to 512 CPU
    #   units.
    #
    #   Linux containers share unallocated CPU units with other containers
    #   on the container instance with the same ratio as their allocated
    #   amount. For example, if you run a single-container task on a
    #   single-core instance type with 512 CPU units specified for that
    #   container, and that is the only task running on the container
    #   instance, that container could use the full 1,024 CPU unit share at
    #   any given time. However, if you launched another copy of the same
    #   task on that container instance, each task would be guaranteed a
    #   minimum of 512 CPU units when needed, and each container could float
    #   to higher CPU usage if the other container was not using it, but if
    #   both tasks were 100% active all of the time, they would be limited
    #   to 512 CPU units.
    #
    #   On Linux container instances, the Docker daemon on the container
    #   instance uses the CPU value to calculate the relative CPU share
    #   ratios for running containers. For more information, see [CPU share
    #   constraint][5] in the Docker documentation. The minimum valid CPU
    #   share value that the Linux kernel allows is 2; however, the CPU
    #   parameter is not required, and you can use CPU values below 2 in
    #   your container definitions. For CPU values below 2 (including null),
    #   the behavior varies based on your Amazon ECS container agent
    #   version:
    #
    #   * **Agent versions less than or equal to 1.1.0:** Null and zero CPU
    #     values are passed to Docker as 0, which Docker then converts to
    #     1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which
    #     the Linux kernel converts to 2 CPU shares.
    #
    #   * **Agent versions greater than or equal to 1.2.0:** Null, zero, and
    #     CPU values of 1 are passed to Docker as 2.
    #
    #   On Windows container instances, the CPU limit is enforced as an
    #   absolute limit, or a quota. Windows containers only have access to
    #   the specified amount of CPU that is described in the task
    #   definition.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: http://aws.amazon.com/ec2/instance-types/
    #   [5]: https://docs.docker.com/engine/reference/run/#cpu-share-constraint
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory to present to the container. If
    #   your container attempts to exceed the memory specified here, the
    #   container is killed. This parameter maps to `Memory` in the [Create
    #   a container][1] section of the [Docker Remote API][2] and the
    #   `--memory` option to [docker run][3].
    #
    #   If your containers are part of a task using the Fargate launch type,
    #   this field is optional and the only requirement is that the total
    #   amount of memory reserved for all containers within a task be lower
    #   than the task `memory` value.
    #
    #   For containers that are part of a task using the EC2 launch type,
    #   you must specify a non-zero integer for one or both of `memory` or
    #   `memoryReservation` in container definitions. If you specify both,
    #   `memory` must be greater than `memoryReservation`. If you specify
    #   `memoryReservation`, then that value is subtracted from the
    #   available memory resources for the container instance on which the
    #   container is placed; otherwise, the value of `memory` is used.
    #
    #   The Docker daemon reserves a minimum of 4 MiB of memory for a
    #   container, so you should not specify fewer than 4 MiB of memory for
    #   your containers.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container. When
    #   system memory is under heavy contention, Docker attempts to keep the
    #   container memory to this soft limit; however, your container can
    #   consume more memory when it needs to, up to either the hard limit
    #   specified with the `memory` parameter (if applicable), or all of the
    #   available memory on the container instance, whichever comes first.
    #   This parameter maps to `MemoryReservation` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--memory-reservation` option to [docker run][3].
    #
    #   You must specify a non-zero integer for one or both of `memory` or
    #   `memoryReservation` in container definitions. If you specify both,
    #   `memory` must be greater than `memoryReservation`. If you specify
    #   `memoryReservation`, then that value is subtracted from the
    #   available memory resources for the container instance on which the
    #   container is placed; otherwise, the value of `memory` is used.
    #
    #   For example, if your container normally uses 128 MiB of memory, but
    #   occasionally bursts to 256 MiB of memory for short periods of time,
    #   you can set a `memoryReservation` of 128 MiB, and a `memory` hard
    #   limit of 300 MiB. This configuration would allow the container to
    #   only reserve 128 MiB of memory from the remaining resources on the
    #   container instance, but also allow the container to consume more
    #   memory resources when needed.
    #
    #   The Docker daemon reserves a minimum of 4 MiB of memory for a
    #   container, so you should not specify fewer than 4 MiB of memory for
    #   your containers.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] links
    #   The `link` parameter allows containers to communicate with each
    #   other without the need for port mappings. Only supported if the
    #   network mode of a task definition is set to `bridge`. The
    #   `name:internalName` construct is analogous to `name:alias` in Docker
    #   links. Up to 255 letters (uppercase and lowercase), numbers,
    #   hyphens, and underscores are allowed. For more information about
    #   linking Docker containers, go to
    #   [https://docs.docker.com/engine/userguide/networking/default\_network/dockerlinks/][1].
    #   This parameter maps to `Links` in the [Create a container][2]
    #   section of the [Docker Remote API][3] and the `--link` option to [
    #   `docker run` ][4].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #   Containers that are collocated on a single container instance may be
    #   able to communicate with each other without requiring links or host
    #   port mappings. Network isolation is achieved on the container
    #   instance using security groups and VPC settings.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/
    #   [2]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [3]: https://docs.docker.com/engine/api/v1.35/
    #   [4]: https://docs.docker.com/engine/reference/commandline/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] port_mappings
    #   The list of port mappings for the container. Port mappings allow
    #   containers to access ports on the host container instance to send or
    #   receive traffic.
    #
    #   For task definitions that use the `awsvpc` network mode, you should
    #   only specify the `containerPort`. The `hostPort` can be left blank
    #   or it must be the same value as the `containerPort`.
    #
    #   Port mappings on Windows use the `NetNAT` gateway address rather
    #   than `localhost`. There is no loopback for port mappings on Windows,
    #   so you cannot access a container's mapped port from the host
    #   itself.
    #
    #   This parameter maps to `PortBindings` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--publish` option to
    #   [docker run][3]. If the network mode of a task definition is set to
    #   `none`, then you can't specify port mappings. If the network mode
    #   of a task definition is set to `host`, then host ports must either
    #   be undefined or they must match the container port in the port
    #   mapping.
    #
    #   <note markdown="1"> After a task reaches the `RUNNING` status, manual and automatic host
    #   and container port assignments are visible in the **Network
    #   Bindings** section of a container description for a selected task in
    #   the Amazon ECS console. The assignments are also visible in the
    #   `networkBindings` section DescribeTasks responses.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::PortMapping>]
    #
    # @!attribute [rw] essential
    #   If the `essential` parameter of a container is marked as `true`, and
    #   that container fails or stops for any reason, all other containers
    #   that are part of the task are stopped. If the `essential` parameter
    #   of a container is marked as `false`, then its failure does not
    #   affect the rest of the containers in a task. If this parameter is
    #   omitted, a container is assumed to be essential.
    #
    #   All tasks must have at least one essential container. If you have an
    #   application that is composed of multiple containers, you should
    #   group containers that are used for a common purpose into components,
    #   and separate the different components into multiple task
    #   definitions. For more information, see [Application Architecture][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html
    #   @return [Boolean]
    #
    # @!attribute [rw] entry_point
    #   Early versions of the Amazon ECS container agent do not properly
    #   handle `entryPoint` parameters. If you have problems using
    #   `entryPoint`, update your container agent or enter your commands and
    #   arguments as `command` array items instead.
    #
    #   The entry point that is passed to the container. This parameter maps
    #   to `Entrypoint` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--entrypoint` option to [docker
    #   run][3]. For more information, see
    #   [https://docs.docker.com/engine/reference/builder/#entrypoint][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/reference/builder/#entrypoint
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   The command that is passed to the container. This parameter maps to
    #   `Cmd` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `COMMAND` parameter to [docker run][3]. For more
    #   information, see
    #   [https://docs.docker.com/engine/reference/builder/#cmd][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/reference/builder/#cmd
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container. This parameter
    #   maps to `Env` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--env` option to [docker run][3].
    #
    #   We do not recommend using plaintext environment variables for
    #   sensitive information, such as credential data.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] mount_points
    #   The mount points for data volumes in your container.
    #
    #   This parameter maps to `Volumes` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--volume` option to
    #   [docker run][3].
    #
    #   Windows containers can mount whole directories on the same drive as
    #   `$env:ProgramData`. Windows containers cannot mount directories on a
    #   different drive, and mount point cannot be across drives.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::MountPoint>]
    #
    # @!attribute [rw] volumes_from
    #   Data volumes to mount from another container. This parameter maps to
    #   `VolumesFrom` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--volumes-from` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::VolumeFrom>]
    #
    # @!attribute [rw] linux_parameters
    #   Linux-specific modifications that are applied to the container, such
    #   as Linux KernelCapabilities.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #   @return [Types::LinuxParameters]
    #
    # @!attribute [rw] hostname
    #   The hostname to use for your container. This parameter maps to
    #   `Hostname` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--hostname` option to [docker run][3].
    #
    #   <note markdown="1"> The `hostname` parameter is not supported if using the `awsvpc`
    #   networkMode.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user name to use inside the container. This parameter maps to
    #   `User` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `--user` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] working_directory
    #   The working directory in which to run commands inside the container.
    #   This parameter maps to `WorkingDir` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--workdir` option to
    #   [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] disable_networking
    #   When this parameter is true, networking is disabled within the
    #   container. This parameter maps to `NetworkDisabled` in the [Create a
    #   container][1] section of the [Docker Remote API][2].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   @return [Boolean]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   privileges on the host container instance (similar to the `root`
    #   user). This parameter maps to `Privileged` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--privileged` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks
    #   using the Fargate launch type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] readonly_root_filesystem
    #   When this parameter is true, the container is given read-only access
    #   to its root file system. This parameter maps to `ReadonlyRootfs` in
    #   the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--read-only` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_servers
    #   A list of DNS servers that are presented to the container. This
    #   parameter maps to `Dns` in the [Create a container][1] section of
    #   the [Docker Remote API][2] and the `--dns` option to [docker
    #   run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_search_domains
    #   A list of DNS search domains that are presented to the container.
    #   This parameter maps to `DnsSearch` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--dns-search` option
    #   to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] extra_hosts
    #   A list of hostnames and IP address mappings to append to the
    #   `/etc/hosts` file on the container. If using the Fargate launch
    #   type, this may be used to list non-Fargate hosts to which the
    #   container can talk. This parameter maps to `ExtraHosts` in the
    #   [Create a container][1] section of the [Docker Remote API][2] and
    #   the `--add-host` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::HostEntry>]
    #
    # @!attribute [rw] docker_security_options
    #   A list of strings to provide custom labels for SELinux and AppArmor
    #   multi-level security systems. This field is not valid for containers
    #   in tasks using the Fargate launch type.
    #
    #   This parameter maps to `SecurityOpt` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--security-opt`
    #   option to [docker run][3].
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register with the `ECS_SELINUX_CAPABLE=true` or
    #   `ECS_APPARMOR_CAPABLE=true` environment variables before containers
    #   placed on that instance can use these security options. For more
    #   information, see [Amazon ECS Container Agent Configuration][4] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #    This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] interactive
    #   When this parameter is `true`, this allows you to deploy
    #   containerized applications that require `stdin` or a `tty` to be
    #   allocated. This parameter maps to `OpenStdin` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--interactive` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] pseudo_terminal
    #   When this parameter is `true`, a TTY is allocated. This parameter
    #   maps to `Tty` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--tty` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] docker_labels
    #   A key/value map of labels to add to the container. This parameter
    #   maps to `Labels` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--label` option to [docker run][3].
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version | grep
    #   "Server API version"`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimits` to set in the container. This parameter maps to
    #   `Ulimits` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--ulimit` option to [docker run][3]. Valid
    #   naming values are displayed in the Ulimit data type. This parameter
    #   requires version 1.18 of the Docker Remote API or greater on your
    #   container instance. To check the Docker Remote API version on your
    #   container instance, log in to your container instance and run the
    #   following command: `sudo docker version | grep "Server API version"`
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #
    #   If using the Fargate launch type, the only supported value is
    #   `awslogs`.
    #
    #   This parameter maps to `LogConfig` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--log-driver` option
    #   to [docker run][3]. By default, containers use the same logging
    #   driver that the Docker daemon uses; however the container may use a
    #   different logging driver than the Docker daemon by specifying a log
    #   driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance (or on a different log
    #   server for remote logging options). For more information on the
    #   options for different supported log drivers, see [Configure logging
    #   drivers][4] in the Docker documentation.
    #
    #   <note markdown="1"> Amazon ECS currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the LogConfiguration data
    #   type). Additional log drivers may be available in future releases of
    #   the Amazon ECS container agent.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version | grep
    #   "Server API version"`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS Container Agent
    #   Configuration][5] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/admin/logging/overview/
    #   [5]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] health_check
    #   The health check command and associated configuration parameters for
    #   the container. This parameter maps to `HealthCheck` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `HEALTHCHECK` parameter of [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Types::HealthCheck]
    #
    # @!attribute [rw] system_controls
    #   A list of namespaced kernel parameters to set in the container. This
    #   parameter maps to `Sysctls` in the [Create a container][1] section
    #   of the [Docker Remote API][2] and the `--sysctl` option to [docker
    #   run][3].
    #
    #   <note markdown="1"> It is not recommended that you specify network-related
    #   `systemControls` parameters for multiple containers in a single task
    #   that also uses either the `awsvpc` or `host` network modes. When you
    #   do, the container that is started last will determine which
    #   `systemControls` parameters take effect.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::SystemControl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerDefinition AWS API Documentation
    #
    class ContainerDefinition < Struct.new(
      :name,
      :image,
      :repository_credentials,
      :cpu,
      :memory,
      :memory_reservation,
      :links,
      :port_mappings,
      :essential,
      :entry_point,
      :command,
      :environment,
      :mount_points,
      :volumes_from,
      :linux_parameters,
      :hostname,
      :user,
      :working_directory,
      :disable_networking,
      :privileged,
      :readonly_root_filesystem,
      :dns_servers,
      :dns_search_domains,
      :extra_hosts,
      :docker_security_options,
      :interactive,
      :pseudo_terminal,
      :docker_labels,
      :ulimits,
      :log_configuration,
      :health_check,
      :system_controls)
      include Aws::Structure
    end

    # An EC2 instance that is running the Amazon ECS agent and has been
    # registered with a cluster.
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the container instance. The ARN
    #   contains the `arn:aws:ecs` namespace, followed by the Region of the
    #   container instance, the AWS account ID of the container instance
    #   owner, the `container-instance` namespace, and then the container
    #   instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The EC2 instance ID of the container instance.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the container instance. Every time a
    #   container instance experiences a change that triggers a CloudWatch
    #   event, the version counter is incremented. If you are replicating
    #   your Amazon ECS container instance state with CloudWatch Events, you
    #   can compare the version of a container instance reported by the
    #   Amazon ECS APIs with the version reported in CloudWatch Events for
    #   the container instance (inside the `detail` object) to verify that
    #   the version in your event stream is current.
    #   @return [Integer]
    #
    # @!attribute [rw] version_info
    #   The version information for the Amazon ECS container agent and
    #   Docker daemon running on the container instance.
    #   @return [Types::VersionInfo]
    #
    # @!attribute [rw] remaining_resources
    #   For CPU and memory resource types, this parameter describes the
    #   remaining CPU and memory that has not already been allocated to
    #   tasks and is therefore available for new tasks. For port resource
    #   types, this parameter describes the ports that were reserved by the
    #   Amazon ECS container agent (at instance registration time) and any
    #   task containers that have reserved port mappings on the host (with
    #   the `host` or `bridge` network mode). Any port that is not specified
    #   here is available for new tasks.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] registered_resources
    #   For CPU and memory resource types, this parameter describes the
    #   amount of each resource that was available on the container instance
    #   when the container agent registered it with Amazon ECS; this value
    #   represents the total amount of CPU and memory that can be allocated
    #   on this container instance to tasks. For port resource types, this
    #   parameter describes the ports that were reserved by the Amazon ECS
    #   container agent when it registered the container instance with
    #   Amazon ECS.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] status
    #   The status of the container instance. The valid values are `ACTIVE`,
    #   `INACTIVE`, or `DRAINING`. `ACTIVE` indicates that the container
    #   instance can accept tasks. `DRAINING` indicates that new tasks are
    #   not placed on the container instance and any service tasks running
    #   on the container instance are removed if possible. For more
    #   information, see [Container Instance Draining][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html
    #   @return [String]
    #
    # @!attribute [rw] agent_connected
    #   This parameter returns `true` if the agent is connected to Amazon
    #   ECS. Registered instances with an agent that may be unhealthy or
    #   stopped return `false`. Only instances connected to an agent can
    #   accept placement requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks on the container instance that are in the
    #   `RUNNING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_tasks_count
    #   The number of tasks on the container instance that are in the
    #   `PENDING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_update_status
    #   The status of the most recent agent update. If an update has never
    #   been requested, this value is `NULL`.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes set for the container instance, either by the Amazon
    #   ECS container agent at instance registration or manually with the
    #   PutAttributes operation.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] registered_at
    #   The Unix time stamp for when the container instance was registered.
    #   @return [Time]
    #
    # @!attribute [rw] attachments
    #   The elastic network interfaces associated with the container
    #   instance.
    #   @return [Array<Types::Attachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerInstance AWS API Documentation
    #
    class ContainerInstance < Struct.new(
      :container_instance_arn,
      :ec2_instance_id,
      :version,
      :version_info,
      :remaining_resources,
      :registered_resources,
      :status,
      :agent_connected,
      :running_tasks_count,
      :pending_tasks_count,
      :agent_update_status,
      :attributes,
      :registered_at,
      :attachments)
      include Aws::Structure
    end

    # The overrides that should be sent to a container.
    #
    # @note When making an API call, you may pass ContainerOverride
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the container that receives the override. This parameter
    #   is required if any override is specified.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the task definition. You must also
    #   specify a container name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch,
    #   or you can override the existing environment variables from the
    #   Docker image or the task definition. You must also specify a
    #   container name.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units reserved for the container, instead of the
    #   default value from the task definition. You must also specify a
    #   container name.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory to present to the container,
    #   instead of the default value from the task definition. If your
    #   container attempts to exceed the memory specified here, the
    #   container is killed. You must also specify a container name.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container,
    #   instead of the default value from the task definition. You must also
    #   specify a container name.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerOverride AWS API Documentation
    #
    class ContainerOverride < Struct.new(
      :name,
      :command,
      :environment,
      :cpu,
      :memory,
      :memory_reservation)
      include Aws::Structure
    end

    # An object representing a change in state for a container.
    #
    # @note When making an API call, you may pass ContainerStateChange
    #   data as a hash:
    #
    #       {
    #         container_name: "String",
    #         exit_code: 1,
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #         reason: "String",
    #         status: "String",
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code for the container, if the state change is a result of
    #   the container exiting.
    #   @return [Integer]
    #
    # @!attribute [rw] network_bindings
    #   Any network bindings associated with the container.
    #   @return [Array<Types::NetworkBinding>]
    #
    # @!attribute [rw] reason
    #   The reason for the state change.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerStateChange AWS API Documentation
    #
    class ContainerStateChange < Struct.new(
      :container_name,
      :exit_code,
      :network_bindings,
      :reason,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String",
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of your cluster. If you do not specify a name for your
    #   cluster, you create a cluster named `default`. Up to 255 letters
    #   (uppercase and lowercase), numbers, hyphens, and underscores are
    #   allowed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :cluster_name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your new cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         service_name: "String", # required
    #         task_definition: "String", # required
    #         load_balancers: [
    #           {
    #             target_group_arn: "String",
    #             load_balancer_name: "String",
    #             container_name: "String",
    #             container_port: 1,
    #           },
    #         ],
    #         service_registries: [
    #           {
    #             registry_arn: "String",
    #             port: 1,
    #             container_name: "String",
    #             container_port: 1,
    #           },
    #         ],
    #         desired_count: 1,
    #         client_token: "String",
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         platform_version: "String",
    #         role: "String",
    #         deployment_configuration: {
    #           maximum_percent: 1,
    #           minimum_healthy_percent: 1,
    #         },
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "String",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "String",
    #           },
    #         ],
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         health_check_grace_period_seconds: 1,
    #         scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to run your service. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of your service. Up to 255 letters (uppercase and
    #   lowercase), numbers, hyphens, and underscores are allowed. Service
    #   names must be unique within a cluster, but you can have similarly
    #   named services in multiple clusters within a Region or across
    #   multiple Regions.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used.
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   A load balancer object representing the load balancer to use with
    #   your service. Currently, you are limited to one load balancer or
    #   target group per service. After you create a service, the load
    #   balancer name or target group ARN, container name, and container
    #   port specified in the service definition are immutable.
    #
    #   For Classic Load Balancers, this object must contain the load
    #   balancer name, the container name (as it appears in a container
    #   definition), and the container port to access from the load
    #   balancer. When a task from this service is placed on a container
    #   instance, the container instance is registered with the load
    #   balancer specified here.
    #
    #   For Application Load Balancers and Network Load Balancers, this
    #   object must contain the load balancer target group ARN, the
    #   container name (as it appears in a container definition), and the
    #   container port to access from the load balancer. When a task from
    #   this service is placed on a container instance, the container
    #   instance and port combination is registered as a target in the
    #   target group specified here.
    #
    #   Services with tasks that use the `awsvpc` network mode (for example,
    #   those with the Fargate launch type) only support Application Load
    #   Balancers and Network Load Balancers; Classic Load Balancers are not
    #   supported. Also, when you create any target groups for these
    #   services, you must choose `ip` as the target type, not `instance`,
    #   because tasks that use the `awsvpc` network mode are associated with
    #   an elastic network interface, not an Amazon EC2 instance.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details of the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][1].
    #
    #   <note markdown="1"> Service discovery is supported for Fargate tasks if using platform
    #   version v1.1.0 or later. For more information, see [AWS Fargate
    #   Platform Versions][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   [2]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the specified task definition to
    #   place and keep running on your cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 32 ASCII characters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which to run your service.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which to run your service. If one is not
    #   specified, the latest version is used by default.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or full Amazon Resource Name (ARN) of the IAM role that
    #   allows Amazon ECS to make calls to your load balancer on your
    #   behalf. This parameter is only permitted if you are using a load
    #   balancer with your service and your task definition does not use the
    #   `awsvpc` network mode. If you specify the `role` parameter, you must
    #   also specify a load balancer object with the `loadBalancers`
    #   parameter.
    #
    #   If your account has already created the Amazon ECS service-linked
    #   role, that role is used by default for your service unless you
    #   specify a role here. The service-linked role is required if your
    #   task definition uses the `awsvpc` network mode, in which case you
    #   should not specify a role here. For more information, see [Using
    #   Service-Linked Roles for Amazon ECS][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If your specified role has a path other than `/`, then you must
    #   either specify the full role ARN (this is recommended) or prefix the
    #   role name with the path. For example, if a role with the name `bar`
    #   has a path of `/foo/` then you would specify `/foo/bar` as the role
    #   name. For more information, see [Friendly Names and Paths][2] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for tasks in your
    #   service. You can specify a maximum of 10 constraints per task (this
    #   limit includes constraints in the task definition and those
    #   specified at run time).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for tasks in your service. You
    #   can specify a maximum of five strategy rules per service.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the service. This parameter is
    #   required for task definitions that use the `awsvpc` network mode to
    #   receive their own Elastic Network Interface, and it is not supported
    #   for other network modes. For more information, see [Task
    #   Networking][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler should ignore unhealthy Elastic Load Balancing target
    #   health checks after a task has first started. This is only valid if
    #   your service is configured to use a load balancer. If your
    #   service's tasks take a while to start and respond to Elastic Load
    #   Balancing health checks, you can specify a health check grace period
    #   of up to 7,200 seconds during which the ECS service scheduler
    #   ignores health check status. This grace period can prevent the ECS
    #   service scheduler from marking tasks as unhealthy and stopping them
    #   before they have time to come up.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy to use for the service. For more
    #   information, see [Services][1].
    #
    #   There are two service scheduler strategies available:
    #
    #   * `REPLICA`-The replica scheduling strategy places and maintains the
    #     desired number of tasks across your cluster. By default, the
    #     service scheduler spreads tasks across Availability Zones. You can
    #     use task placement strategies and constraints to customize task
    #     placement decisions.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task
    #     on each active container instance that meets all of the task
    #     placement constraints that you specify in your cluster. When using
    #     this strategy, there is no need to specify a desired number of
    #     tasks, a task placement strategy, or use Service Auto Scaling
    #     policies.
    #
    #     <note markdown="1"> Fargate tasks do not support the `DAEMON` scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguideecs_services.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :cluster,
      :service_name,
      :task_definition,
      :load_balancers,
      :service_registries,
      :desired_count,
      :client_token,
      :launch_type,
      :platform_version,
      :role,
      :deployment_configuration,
      :placement_constraints,
      :placement_strategy,
      :network_configuration,
      :health_check_grace_period_seconds,
      :scheduling_strategy)
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of your service following the create call.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :service)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAttributesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance", # accepts container-instance
    #             target_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that contains the resource to delete attributes. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to delete from your resource. You can specify up to
    #   10 attributes per request. For custom attributes, specify the
    #   attribute name and target ID, but do not specify the value. If you
    #   specify the target ID using the short form, you must also specify
    #   the target type.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributesRequest AWS API Documentation
    #
    class DeleteAttributesRequest < Struct.new(
      :cluster,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   A list of attribute objects that were successfully deleted from your
    #   resource.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributesResponse AWS API Documentation
    #
    class DeleteAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of the deleted cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServiceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         service: "String", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service to delete. If you do not specify a cluster,
    #   the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The name of the service to delete.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If `true`, allows you to delete a service even if it has not been
    #   scaled down to zero tasks. It is only necessary to use this if the
    #   service is using the `REPLICA` scheduling strategy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :cluster,
      :service,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of the deleted service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Struct.new(
      :service)
      include Aws::Structure
    end

    # The details of an Amazon ECS service deployment.
    #
    # @!attribute [rw] id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment. Valid values are `PRIMARY` (for the
    #   most recent deployment), `ACTIVE` (for previous deployments that
    #   still have tasks running, but are being replaced with the `PRIMARY`
    #   deployment), and `INACTIVE` (for deployments that have been
    #   completely replaced).
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The most recent task definition that was specified for the service
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The most recent desired count of tasks that was specified for the
    #   service to deploy or maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_count
    #   The number of tasks in the deployment that are in the `PENDING`
    #   status.
    #   @return [Integer]
    #
    # @!attribute [rw] running_count
    #   The number of tasks in the deployment that are in the `RUNNING`
    #   status.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The Unix time stamp for when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix time stamp for when the service was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which your service is running.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which your service is running.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :id,
      :status,
      :task_definition,
      :desired_count,
      :pending_count,
      :running_count,
      :created_at,
      :updated_at,
      :launch_type,
      :platform_version,
      :network_configuration)
      include Aws::Structure
    end

    # Optional deployment parameters that control how many tasks run during
    # the deployment and the ordering of stopping and starting tasks.
    #
    # @note When making an API call, you may pass DeploymentConfiguration
    #   data as a hash:
    #
    #       {
    #         maximum_percent: 1,
    #         minimum_healthy_percent: 1,
    #       }
    #
    # @!attribute [rw] maximum_percent
    #   The upper limit (as a percentage of the service's `desiredCount`)
    #   of the number of tasks that are allowed in the `RUNNING` or
    #   `PENDING` state in a service during a deployment. The maximum number
    #   of tasks during a deployment is the `desiredCount` multiplied by
    #   `maximumPercent`/100, rounded down to the nearest integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_healthy_percent
    #   The lower limit (as a percentage of the service's `desiredCount`)
    #   of the number of running tasks that must remain in the `RUNNING`
    #   state in a service during a deployment. The minimum number of
    #   healthy tasks during a deployment is the `desiredCount` multiplied
    #   by `minimumHealthyPercent`/100, rounded up to the nearest integer
    #   value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentConfiguration AWS API Documentation
    #
    class DeploymentConfiguration < Struct.new(
      :maximum_percent,
      :minimum_healthy_percent)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterContainerInstanceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instance: "String", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instance to deregister. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance to
    #   deregister. The ARN contains the `arn:aws:ecs` namespace, followed
    #   by the Region of the container instance, the AWS account ID of the
    #   container instance owner, the `container-instance` namespace, and
    #   then the container instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Forces the deregistration of the container instance. If you have
    #   tasks running on the container instance when you deregister it with
    #   the `force` option, these tasks remain running until you terminate
    #   the instance or the tasks stop through some other means, but they
    #   are orphaned (no longer monitored or accounted for by Amazon ECS).
    #   If an orphaned task on your container instance is part of an Amazon
    #   ECS service, then the service scheduler starts another copy of that
    #   task, on a different container instance if possible.
    #
    #   Any containers in orphaned service tasks that are registered with a
    #   Classic Load Balancer or an Application Load Balancer target group
    #   are deregistered. They begin connection draining according to the
    #   settings on the load balancer or target group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstanceRequest AWS API Documentation
    #
    class DeregisterContainerInstanceRequest < Struct.new(
      :cluster,
      :container_instance,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance that was deregistered.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstanceResponse AWS API Documentation
    #
    class DeregisterContainerInstanceResponse < Struct.new(
      :container_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         task_definition: "String", # required
    #       }
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full Amazon
    #   Resource Name (ARN) of the task definition to deregister. You must
    #   specify a `revision`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinitionRequest AWS API Documentation
    #
    class DeregisterTaskDefinitionRequest < Struct.new(
      :task_definition)
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The full description of the deregistered task.
    #   @return [Types::TaskDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinitionResponse AWS API Documentation
    #
    class DeregisterTaskDefinitionResponse < Struct.new(
      :task_definition)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClustersRequest
    #   data as a hash:
    #
    #       {
    #         clusters: ["String"],
    #         include: ["STATISTICS"], # accepts STATISTICS
    #       }
    #
    # @!attribute [rw] clusters
    #   A list of up to 100 cluster names or full cluster Amazon Resource
    #   Name (ARN) entries. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Additional information about your clusters to be separated by launch
    #   type, including:
    #
    #   * runningEC2TasksCount
    #
    #   * runningFargateTasksCount
    #
    #   * pendingEC2TasksCount
    #
    #   * pendingFargateTasksCount
    #
    #   * activeEC2ServiceCount
    #
    #   * activeFargateServiceCount
    #
    #   * drainingEC2ServiceCount
    #
    #   * drainingFargateServiceCount
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClustersRequest AWS API Documentation
    #
    class DescribeClustersRequest < Struct.new(
      :clusters,
      :include)
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   The list of clusters.
    #   @return [Array<Types::Cluster>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClustersResponse AWS API Documentation
    #
    class DescribeClustersResponse < Struct.new(
      :clusters,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeContainerInstancesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instances: ["String"], # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instances to describe. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   A list of up to 100 container instance IDs or full Amazon Resource
    #   Name (ARN) entries.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstancesRequest AWS API Documentation
    #
    class DescribeContainerInstancesRequest < Struct.new(
      :cluster,
      :container_instances)
      include Aws::Structure
    end

    # @!attribute [rw] container_instances
    #   The list of container instances.
    #   @return [Array<Types::ContainerInstance>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstancesResponse AWS API Documentation
    #
    class DescribeContainerInstancesResponse < Struct.new(
      :container_instances,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeServicesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         services: ["String"], # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN)the cluster that
    #   hosts the service to describe. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   A list of services to describe. You may specify up to 10 services to
    #   describe in a single operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServicesRequest AWS API Documentation
    #
    class DescribeServicesRequest < Struct.new(
      :cluster,
      :services)
      include Aws::Structure
    end

    # @!attribute [rw] services
    #   The list of services described.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServicesResponse AWS API Documentation
    #
    class DescribeServicesResponse < Struct.new(
      :services,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         task_definition: "String", # required
    #       }
    #
    # @!attribute [rw] task_definition
    #   The `family` for the latest `ACTIVE` revision, `family` and
    #   `revision` (`family:revision`) for a specific revision in the
    #   family, or full Amazon Resource Name (ARN) of the task definition to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinitionRequest AWS API Documentation
    #
    class DescribeTaskDefinitionRequest < Struct.new(
      :task_definition)
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The full task definition description.
    #   @return [Types::TaskDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinitionResponse AWS API Documentation
    #
    class DescribeTaskDefinitionResponse < Struct.new(
      :task_definition)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTasksRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         tasks: ["String"], # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task to describe. If you do not specify a cluster,
    #   the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasksRequest AWS API Documentation
    #
    class DescribeTasksRequest < Struct.new(
      :cluster,
      :tasks)
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   The list of tasks.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasksResponse AWS API Documentation
    #
    class DescribeTasksResponse < Struct.new(
      :tasks,
      :failures)
      include Aws::Structure
    end

    # An object representing a container instance host device.
    #
    # @note When making an API call, you may pass Device
    #   data as a hash:
    #
    #       {
    #         host_path: "String", # required
    #         container_path: "String",
    #         permissions: ["read"], # accepts read, write, mknod
    #       }
    #
    # @!attribute [rw] host_path
    #   The path for the device on the host container instance.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path inside the container at which to expose the host device.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The explicit permissions to provide to the container for the device.
    #   By default, the container has permissions for `read`, `write`, and
    #   `mknod` for the device.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Device AWS API Documentation
    #
    class Device < Struct.new(
      :host_path,
      :container_path,
      :permissions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DiscoverPollEndpointRequest
    #   data as a hash:
    #
    #       {
    #         container_instance: "String",
    #         cluster: "String",
    #       }
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance. The
    #   ARN contains the `arn:aws:ecs` namespace, followed by the Region of
    #   the container instance, the AWS account ID of the container instance
    #   owner, the `container-instance` namespace, and then the container
    #   instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that the container instance belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpointRequest AWS API Documentation
    #
    class DiscoverPollEndpointRequest < Struct.new(
      :container_instance,
      :cluster)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint for the Amazon ECS agent to poll.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_endpoint
    #   The telemetry endpoint for the Amazon ECS agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpointResponse AWS API Documentation
    #
    class DiscoverPollEndpointResponse < Struct.new(
      :endpoint,
      :telemetry_endpoint)
      include Aws::Structure
    end

    # This parameter is specified when using Docker volumes. Docker volumes
    # are only supported when using the EC2 launch type. Windows containers
    # only support the use of the `local` driver. To use bind mounts,
    # specify a `host` instead.
    #
    # @note When making an API call, you may pass DockerVolumeConfiguration
    #   data as a hash:
    #
    #       {
    #         scope: "task", # accepts task, shared
    #         autoprovision: false,
    #         driver: "String",
    #         driver_opts: {
    #           "String" => "String",
    #         },
    #         labels: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] scope
    #   The scope for the Docker volume which determines it's lifecycle.
    #   Docker volumes that are scoped to a `task` are automatically
    #   provisioned when the task starts and destroyed when the task stops.
    #   Docker volumes that are scoped as `shared` persist after the task
    #   stops.
    #   @return [String]
    #
    # @!attribute [rw] autoprovision
    #   If this value is `true`, the Docker volume is created if it does not
    #   already exist.
    #
    #   <note markdown="1"> This field is only used if the `scope` is `shared`.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] driver
    #   The Docker volume driver to use. The driver value must match the
    #   driver name provided by Docker because it is used for task
    #   placement. If the driver was installed using the Docker plugin CLI,
    #   use `docker plugin ls` to retrieve the driver name from your
    #   container instance. If the driver was installed using another
    #   method, use Docker plugin discovery to retrieve the driver name. For
    #   more information, see [Docker plugin discovery][1]. This parameter
    #   maps to `Driver` in the [Create a volume][2] section of the [Docker
    #   Remote API][3] and the `xxdriver` option to [ `docker volume create`
    #   ][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery
    #   [2]: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate
    #   [3]: https://docs.docker.com/engine/api/v1.35/
    #   [4]: https://docs.docker.com/engine/reference/commandline/volume_create/
    #   @return [String]
    #
    # @!attribute [rw] driver_opts
    #   A map of Docker driver specific options passed through. This
    #   parameter maps to `DriverOpts` in the [Create a volume][1] section
    #   of the [Docker Remote API][2] and the `xxopt` option to [ `docker
    #   volume create` ][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/commandline/volume_create/
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] labels
    #   Custom metadata to add to your Docker volume. This parameter maps to
    #   `Labels` in the [Create a volume][1] section of the [Docker Remote
    #   API][2] and the `xxlabel` option to [ `docker volume create` ][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/commandline/volume_create/
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DockerVolumeConfiguration AWS API Documentation
    #
    class DockerVolumeConfiguration < Struct.new(
      :scope,
      :autoprovision,
      :driver,
      :driver_opts,
      :labels)
      include Aws::Structure
    end

    # A failed resource.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the failed resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Failure AWS API Documentation
    #
    class Failure < Struct.new(
      :arn,
      :reason)
      include Aws::Structure
    end

    # An object representing a container health check. Health check
    # parameters that are specified in a container definition override any
    # Docker health checks that exist in the container image (such as those
    # specified in a parent image or from the image's Dockerfile).
    #
    # The following are notes about container health check support:
    #
    # * Container health checks require version 1.17.0 or greater of the
    #   Amazon ECS container agent. For more information, see [Updating the
    #   Amazon ECS Container Agent][1].
    #
    # * Container health checks are supported for Fargate tasks if using
    #   platform version version 1.1.0 or greater. For more information, see
    #   [AWS Fargate Platform Versions][2].
    #
    # * Container health checks are not supported for tasks that are part of
    #   a service that is configured to use a Classic Load Balancer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #
    # @note When making an API call, you may pass HealthCheck
    #   data as a hash:
    #
    #       {
    #         command: ["String"], # required
    #         interval: 1,
    #         timeout: 1,
    #         retries: 1,
    #         start_period: 1,
    #       }
    #
    # @!attribute [rw] command
    #   A string array representing the command that the container runs to
    #   determine if it is healthy. The string array must start with `CMD`
    #   to execute the command arguments directly, or `CMD-SHELL` to run the
    #   command with the container's default shell. For example:
    #
    #   `[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]`
    #
    #   An exit code of 0 indicates success, and non-zero exit code
    #   indicates failure. For more information, see `HealthCheck` in the
    #   [Create a container][1] section of the [Docker Remote API][2].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   @return [Array<String>]
    #
    # @!attribute [rw] interval
    #   The time period in seconds between each health check execution. You
    #   may specify between 5 and 300 seconds. The default value is 30
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The time period in seconds to wait for a health check to succeed
    #   before it is considered a failure. You may specify between 2 and 60
    #   seconds. The default value is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] retries
    #   The number of times to retry a failed health check before the
    #   container is considered unhealthy. You may specify between 1 and 10
    #   retries. The default value is 3.
    #   @return [Integer]
    #
    # @!attribute [rw] start_period
    #   The optional grace period within which to provide containers time to
    #   bootstrap before failed health checks count towards the maximum
    #   number of retries. You may specify between 0 and 300 seconds. The
    #   `startPeriod` is disabled by default.
    #
    #   <note markdown="1"> If a health check succeeds within the `startPeriod`, then the
    #   container is considered healthy and any subsequent failures count
    #   toward the maximum number of retries.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/HealthCheck AWS API Documentation
    #
    class HealthCheck < Struct.new(
      :command,
      :interval,
      :timeout,
      :retries,
      :start_period)
      include Aws::Structure
    end

    # Hostnames and IP address entries that are added to the `/etc/hosts`
    # file of a container via the `extraHosts` parameter of its
    # ContainerDefinition.
    #
    # @note When making an API call, you may pass HostEntry
    #   data as a hash:
    #
    #       {
    #         hostname: "String", # required
    #         ip_address: "String", # required
    #       }
    #
    # @!attribute [rw] hostname
    #   The hostname to use in the `/etc/hosts` entry.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address to use in the `/etc/hosts` entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/HostEntry AWS API Documentation
    #
    class HostEntry < Struct.new(
      :hostname,
      :ip_address)
      include Aws::Structure
    end

    # Details on a container instance bind mount host volume.
    #
    # @note When making an API call, you may pass HostVolumeProperties
    #   data as a hash:
    #
    #       {
    #         source_path: "String",
    #       }
    #
    # @!attribute [rw] source_path
    #   When the `host` parameter is used, specify a `sourcePath` to declare
    #   the path on the host container instance that is presented to the
    #   container. If this parameter is empty, then the Docker daemon has
    #   assigned a host path for you. If the `host` parameter contains a
    #   `sourcePath` file location, then the data volume persists at the
    #   specified location on the host container instance until you delete
    #   it manually. If the `sourcePath` value does not exist on the host
    #   container instance, the Docker daemon creates it. If the location
    #   does exist, the contents of the source path folder are exported.
    #
    #   If you are using the Fargate launch type, the `sourcePath` parameter
    #   is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/HostVolumeProperties AWS API Documentation
    #
    class HostVolumeProperties < Struct.new(
      :source_path)
      include Aws::Structure
    end

    # The Linux capabilities for the container that are added to or dropped
    # from the default configuration provided by Docker. For more
    # information on the default capabilities and the non-default available
    # capabilities, see [Runtime privilege and Linux capabilities][1] in the
    # *Docker run reference*. For more detailed information on these Linux
    # capabilities, see the [capabilities(7)][2] Linux manual page.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities
    # [2]: http://man7.org/linux/man-pages/man7/capabilities.7.html
    #
    # @note When making an API call, you may pass KernelCapabilities
    #   data as a hash:
    #
    #       {
    #         add: ["String"],
    #         drop: ["String"],
    #       }
    #
    # @!attribute [rw] add
    #   The Linux capabilities for the container that have been added to the
    #   default configuration provided by Docker. This parameter maps to
    #   `CapAdd` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cap-add` option to [docker run][3].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the `add`
    #   parameter is not supported.
    #
    #    </note>
    #
    #   Valid values: `"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" |
    #   "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" |
    #   "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" |
    #   "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" |
    #   "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" |
    #   "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" |
    #   "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT"
    #   | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" |
    #   "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] drop
    #   The Linux capabilities for the container that have been removed from
    #   the default configuration provided by Docker. This parameter maps to
    #   `CapDrop` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cap-drop` option to [docker run][3].
    #
    #   Valid values: `"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" |
    #   "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" |
    #   "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" |
    #   "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" |
    #   "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" |
    #   "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" |
    #   "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT"
    #   | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" |
    #   "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/KernelCapabilities AWS API Documentation
    #
    class KernelCapabilities < Struct.new(
      :add,
      :drop)
      include Aws::Structure
    end

    # A key and value pair object.
    #
    # @note When making an API call, you may pass KeyValuePair
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the key value pair. For environment variables, this is
    #   the name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key value pair. For environment variables, this is
    #   the value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/KeyValuePair AWS API Documentation
    #
    class KeyValuePair < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # Linux-specific options that are applied to the container, such as
    # Linux KernelCapabilities.
    #
    # @note When making an API call, you may pass LinuxParameters
    #   data as a hash:
    #
    #       {
    #         capabilities: {
    #           add: ["String"],
    #           drop: ["String"],
    #         },
    #         devices: [
    #           {
    #             host_path: "String", # required
    #             container_path: "String",
    #             permissions: ["read"], # accepts read, write, mknod
    #           },
    #         ],
    #         init_process_enabled: false,
    #         shared_memory_size: 1,
    #         tmpfs: [
    #           {
    #             container_path: "String", # required
    #             size: 1, # required
    #             mount_options: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] capabilities
    #   The Linux capabilities for the container that are added to or
    #   dropped from the default configuration provided by Docker.
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type,
    #   `capabilities` is supported but the `add` parameter is not
    #   supported.
    #
    #    </note>
    #   @return [Types::KernelCapabilities]
    #
    # @!attribute [rw] devices
    #   Any host devices to expose to the container. This parameter maps to
    #   `Devices` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--device` option to [docker run][3].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `devices` parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] init_process_enabled
    #   Run an `init` process inside the container that forwards signals and
    #   reaps processes. This parameter maps to the `--init` option to
    #   [docker run][1]. This parameter requires version 1.25 of the Docker
    #   Remote API or greater on your container instance. To check the
    #   Docker Remote API version on your container instance, log in to your
    #   container instance and run the following command: `sudo docker
    #   version | grep "Server API version"`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] shared_memory_size
    #   The value for the size (in MiB) of the `/dev/shm` volume. This
    #   parameter maps to the `--shm-size` option to [docker run][1].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `sharedMemorySize` parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the tmpfs
    #   mount. This parameter maps to the `--tmpfs` option to [docker
    #   run][1].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the `tmpfs`
    #   parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Tmpfs>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LinuxParameters AWS API Documentation
    #
    class LinuxParameters < Struct.new(
      :capabilities,
      :devices,
      :init_process_enabled,
      :shared_memory_size,
      :tmpfs)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttributesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         target_type: "container-instance", # required, accepts container-instance
    #         attribute_name: "String",
    #         attribute_value: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   list attributes. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target with which to list attributes.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute with which to filter the results.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of the attribute with which to filter results. You must
    #   also specify an attribute name to use this parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListAttributes` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by `ListAttributes`
    #   in paginated output. When this parameter is used, `ListAttributes`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListAttributes` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListAttributes` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributesRequest AWS API Documentation
    #
    class ListAttributesRequest < Struct.new(
      :cluster,
      :target_type,
      :attribute_name,
      :attribute_value,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   A list of attribute objects that meet the criteria of the request.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListAttributes`
    #   request. When the results of a `ListAttributes` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributesResponse AWS API Documentation
    #
    class ListAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When this parameter is used, `ListClusters` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListClusters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arns
    #   The list of full Amazon Resource Name (ARN) entries for each cluster
    #   associated with your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListClusters` request.
    #   When the results of a `ListClusters` request exceed `maxResults`,
    #   this value can be used to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :cluster_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContainerInstancesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         filter: "String",
    #         next_token: "String",
    #         max_results: 1,
    #         status: "ACTIVE", # accepts ACTIVE, DRAINING
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instances to list. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   You can filter the results of a `ListContainerInstances` operation
    #   with cluster query language statements. For more information, see
    #   [Cluster Query Language][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListContainerInstances` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of container instance results returned by
    #   `ListContainerInstances` in paginated output. When this parameter is
    #   used, `ListContainerInstances` only returns `maxResults` results in
    #   a single page along with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `ListContainerInstances` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListContainerInstances` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Filters the container instances by status. For example, if you
    #   specify the `DRAINING` status, the results include only container
    #   instances that have been set to `DRAINING` using
    #   UpdateContainerInstancesState. If you do not specify this parameter,
    #   the default is to include container instances set to `ACTIVE` and
    #   `DRAINING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstancesRequest AWS API Documentation
    #
    class ListContainerInstancesRequest < Struct.new(
      :cluster,
      :filter,
      :next_token,
      :max_results,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] container_instance_arns
    #   The list of container instances with full ARN entries for each
    #   container instance associated with the specified cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListContainerInstances` request. When the results of a
    #   `ListContainerInstances` request exceed `maxResults`, this value can
    #   be used to retrieve the next page of results. This value is `null`
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstancesResponse AWS API Documentation
    #
    class ListContainerInstancesResponse < Struct.new(
      :container_instance_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServicesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         next_token: "String",
    #         max_results: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the services to list. If you do not specify a cluster,
    #   the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListServices` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of service results returned by `ListServices` in
    #   paginated output. When this parameter is used, `ListServices` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListServices` request with
    #   the returned `nextToken` value. This value can be between 1 and 10.
    #   If this parameter is not used, then `ListServices` returns up to 10
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   The launch type for the services to list.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy for services to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :cluster,
      :next_token,
      :max_results,
      :launch_type,
      :scheduling_strategy)
      include Aws::Structure
    end

    # @!attribute [rw] service_arns
    #   The list of full ARN entries for each service associated with the
    #   specified cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListServices` request.
    #   When the results of a `ListServices` request exceed `maxResults`,
    #   this value can be used to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :service_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTaskDefinitionFamiliesRequest
    #   data as a hash:
    #
    #       {
    #         family_prefix: "String",
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE, ALL
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] family_prefix
    #   The `familyPrefix` is a string that is used to filter the results of
    #   `ListTaskDefinitionFamilies`. If you specify a `familyPrefix`, only
    #   task definition family names that begin with the `familyPrefix`
    #   string are returned.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task definition family status with which to filter the
    #   `ListTaskDefinitionFamilies` results. By default, both `ACTIVE` and
    #   `INACTIVE` task definition families are listed. If this parameter is
    #   set to `ACTIVE`, only task definition families that have an `ACTIVE`
    #   task definition revision are returned. If this parameter is set to
    #   `INACTIVE`, only task definition families that do not have any
    #   `ACTIVE` task definition revisions are returned. If you paginate the
    #   resulting output, be sure to keep the `status` value constant in
    #   each subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListTaskDefinitionFamilies` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task definition family results returned by
    #   `ListTaskDefinitionFamilies` in paginated output. When this
    #   parameter is used, `ListTaskDefinitions` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListTaskDefinitionFamilies` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListTaskDefinitionFamilies` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamiliesRequest AWS API Documentation
    #
    class ListTaskDefinitionFamiliesRequest < Struct.new(
      :family_prefix,
      :status,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] families
    #   The list of task definition family names that match the
    #   `ListTaskDefinitionFamilies` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListTaskDefinitionFamilies` request. When the results of a
    #   `ListTaskDefinitionFamilies` request exceed `maxResults`, this value
    #   can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamiliesResponse AWS API Documentation
    #
    class ListTaskDefinitionFamiliesResponse < Struct.new(
      :families,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTaskDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         family_prefix: "String",
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         sort: "ASC", # accepts ASC, DESC
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] family_prefix
    #   The full family name with which to filter the `ListTaskDefinitions`
    #   results. Specifying a `familyPrefix` limits the listed task
    #   definitions to task definition revisions that belong to that family.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task definition status with which to filter the
    #   `ListTaskDefinitions` results. By default, only `ACTIVE` task
    #   definitions are listed. By setting this parameter to `INACTIVE`, you
    #   can view task definitions that are `INACTIVE` as long as an active
    #   task or service still references them. If you paginate the resulting
    #   output, be sure to keep the `status` value constant in each
    #   subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The order in which to sort the results. Valid values are `ASC` and
    #   `DESC`. By default (`ASC`), task definitions are listed
    #   lexicographically by family name and in ascending numerical order by
    #   revision so that the newest task definitions in a family are listed
    #   last. Setting this parameter to `DESC` reverses the sort order on
    #   family name and revision so that the newest task definitions in a
    #   family are listed first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListTaskDefinitions` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task definition results returned by
    #   `ListTaskDefinitions` in paginated output. When this parameter is
    #   used, `ListTaskDefinitions` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListTaskDefinitions` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListTaskDefinitions` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionsRequest AWS API Documentation
    #
    class ListTaskDefinitionsRequest < Struct.new(
      :family_prefix,
      :status,
      :sort,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] task_definition_arns
    #   The list of task definition Amazon Resource Name (ARN) entries for
    #   the `ListTaskDefinitions` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListTaskDefinitions`
    #   request. When the results of a `ListTaskDefinitions` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionsResponse AWS API Documentation
    #
    class ListTaskDefinitionsResponse < Struct.new(
      :task_definition_arns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTasksRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instance: "String",
    #         family: "String",
    #         next_token: "String",
    #         max_results: 1,
    #         started_by: "String",
    #         service_name: "String",
    #         desired_status: "RUNNING", # accepts RUNNING, PENDING, STOPPED
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the tasks to list. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance with
    #   which to filter the `ListTasks` results. Specifying a
    #   `containerInstance` limits the results to tasks that belong to that
    #   container instance.
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The name of the family with which to filter the `ListTasks` results.
    #   Specifying a `family` limits the results to tasks that belong to
    #   that family.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated `ListTasks`
    #   request where `maxResults` was used and the results exceeded the
    #   value of that parameter. Pagination continues from the end of the
    #   previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task results returned by `ListTasks` in
    #   paginated output. When this parameter is used, `ListTasks` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListTasks` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListTasks` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] started_by
    #   The `startedBy` value with which to filter the task results.
    #   Specifying a `startedBy` value limits the results to tasks that were
    #   started with that value.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service with which to filter the `ListTasks`
    #   results. Specifying a `serviceName` limits the results to tasks that
    #   belong to that service.
    #   @return [String]
    #
    # @!attribute [rw] desired_status
    #   The task desired status with which to filter the `ListTasks`
    #   results. Specifying a `desiredStatus` of `STOPPED` limits the
    #   results to tasks that Amazon ECS has set the desired status to
    #   `STOPPED`, which can be useful for debugging tasks that are not
    #   starting properly or have died or finished. The default status
    #   filter is `RUNNING`, which shows tasks that Amazon ECS has set the
    #   desired status to `RUNNING`.
    #
    #   <note markdown="1"> Although you can filter results based on a desired status of
    #   `PENDING`, this does not return any results because Amazon ECS never
    #   sets the desired status of a task to that value (only a task's
    #   `lastStatus` may have a value of `PENDING`).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type for services to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasksRequest AWS API Documentation
    #
    class ListTasksRequest < Struct.new(
      :cluster,
      :container_instance,
      :family,
      :next_token,
      :max_results,
      :started_by,
      :service_name,
      :desired_status,
      :launch_type)
      include Aws::Structure
    end

    # @!attribute [rw] task_arns
    #   The list of task ARN entries for the `ListTasks` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListTasks` request.
    #   When the results of a `ListTasks` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasksResponse AWS API Documentation
    #
    class ListTasksResponse < Struct.new(
      :task_arns,
      :next_token)
      include Aws::Structure
    end

    # Details on a load balancer that is used with a service.
    #
    # Services with tasks that use the `awsvpc` network mode (for example,
    # those with the Fargate launch type) only support Application Load
    # Balancers and Network Load Balancers; Classic Load Balancers are not
    # supported. Also, when you create any target groups for these services,
    # you must choose `ip` as the target type, not `instance`, because tasks
    # that use the `awsvpc` network mode are associated with an elastic
    # network interface, not an Amazon EC2 instance.
    #
    # @note When making an API call, you may pass LoadBalancer
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The full Amazon Resource Name (ARN) of the Elastic Load Balancing
    #   target group associated with a service.
    #
    #   If your service's task definition uses the `awsvpc` network mode
    #   (which is required for the Fargate launch type), you must choose
    #   `ip` as the target type, not `instance`, because tasks that use the
    #   `awsvpc` network mode are associated with an elastic network
    #   interface, not an Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_name
    #   The name of a load balancer.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container (as it appears in a container definition)
    #   to associate with the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port on the container to associate with the load balancer. This
    #   port must correspond to a `containerPort` in the service's task
    #   definition. Your container instances must allow ingress traffic on
    #   the `hostPort` of the port mapping.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LoadBalancer AWS API Documentation
    #
    class LoadBalancer < Struct.new(
      :target_group_arn,
      :load_balancer_name,
      :container_name,
      :container_port)
      include Aws::Structure
    end

    # Log configuration options to send to a custom log driver for the
    # container.
    #
    # @note When making an API call, you may pass LogConfiguration
    #   data as a hash:
    #
    #       {
    #         log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #         options: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container. The valid values listed for
    #   this parameter are log drivers that the Amazon ECS container agent
    #   can communicate with by default. If using the Fargate launch type,
    #   the only supported value is `awslogs`. For more information about
    #   using the `awslogs` driver, see [Using the awslogs Log Driver][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> If you have a custom driver that is not listed above that you would
    #   like to work with the Amazon ECS container agent, you can fork the
    #   Amazon ECS container agent project that is [available on GitHub][2]
    #   and customize it to work with that driver. We encourage you to
    #   submit pull requests for changes that you would like to have
    #   included. However, Amazon Web Services does not currently support
    #   running modified copies of this software.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version | grep
    #   "Server API version"`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html
    #   [2]: https://github.com/aws/amazon-ecs-agent
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The configuration options to send to the log driver. This parameter
    #   requires version 1.19 of the Docker Remote API or greater on your
    #   container instance. To check the Docker Remote API version on your
    #   container instance, log in to your container instance and run the
    #   following command: `sudo docker version | grep "Server API version"`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :log_driver,
      :options)
      include Aws::Structure
    end

    # Details on a volume mount point that is used in a container
    # definition.
    #
    # @note When making an API call, you may pass MountPoint
    #   data as a hash:
    #
    #       {
    #         source_volume: "String",
    #         container_path: "String",
    #         read_only: false,
    #       }
    #
    # @!attribute [rw] source_volume
    #   The name of the volume to mount. Must be a volume name referenced in
    #   the `name` parameter of task definition `volume`.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path on the container to mount the host volume at.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume. If this value is `false`, then the container can write to
    #   the volume. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/MountPoint AWS API Documentation
    #
    class MountPoint < Struct.new(
      :source_volume,
      :container_path,
      :read_only)
      include Aws::Structure
    end

    # Details on the network bindings between a container and its host
    # container instance. After a task reaches the `RUNNING` status, manual
    # and automatic host and container port assignments are visible in the
    # `networkBindings` section of DescribeTasks API responses.
    #
    # @note When making an API call, you may pass NetworkBinding
    #   data as a hash:
    #
    #       {
    #         bind_ip: "String",
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp", # accepts tcp, udp
    #       }
    #
    # @!attribute [rw] bind_ip
    #   The IP address that the container is bound to on the container
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port number on the container that is used with the network
    #   binding.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the host that is used with the network binding.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network binding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkBinding AWS API Documentation
    #
    class NetworkBinding < Struct.new(
      :bind_ip,
      :container_port,
      :host_port,
      :protocol)
      include Aws::Structure
    end

    # An object representing the network configuration for a task or
    # service.
    #
    # @note When making an API call, you may pass NetworkConfiguration
    #   data as a hash:
    #
    #       {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] awsvpc_configuration
    #   The VPC subnets and security groups associated with a task.
    #
    #   <note markdown="1"> All specified subnets and security groups must be from the same VPC.
    #
    #    </note>
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      include Aws::Structure
    end

    # An object representing the elastic network interface for tasks that
    # use the `awsvpc` network mode.
    #
    # @!attribute [rw] attachment_id
    #   The attachment ID for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ipv_4_address
    #   The private IPv4 address for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The private IPv6 address for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :attachment_id,
      :private_ipv_4_address,
      :ipv6_address)
      include Aws::Structure
    end

    # An object representing a constraint on task placement. For more
    # information, see [Task Placement Constraints][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @note When making an API call, you may pass PlacementConstraint
    #   data as a hash:
    #
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of constraint. Use `distinctInstance` to ensure that each
    #   task in a particular group is running on a different container
    #   instance. Use `memberOf` to restrict the selection to a group of
    #   valid candidates. The value `distinctInstance` is not supported in
    #   task definitions.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. You
    #   cannot specify an expression if the constraint type is
    #   `distinctInstance`. For more information, see [Cluster Query
    #   Language][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlacementConstraint AWS API Documentation
    #
    class PlacementConstraint < Struct.new(
      :type,
      :expression)
      include Aws::Structure
    end

    # The task placement strategy for a task or service. For more
    # information, see [Task Placement Strategies][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html
    #
    # @note When making an API call, you may pass PlacementStrategy
    #   data as a hash:
    #
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of placement strategy. The `random` placement strategy
    #   randomly places tasks on available candidates. The `spread`
    #   placement strategy spreads placement across available candidates
    #   evenly based on the `field` parameter. The `binpack` strategy places
    #   tasks on available candidates that have the least available amount
    #   of the resource that is specified with the `field` parameter. For
    #   example, if you binpack on memory, a task is placed on the instance
    #   with the least amount of remaining memory (but still enough to run
    #   the task).
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against. For the `spread`
    #   placement strategy, valid values are `instanceId` (or `host`, which
    #   has the same effect), or any platform or custom attribute that is
    #   applied to a container instance, such as
    #   `attribute:ecs.availability-zone`. For the `binpack` placement
    #   strategy, valid values are `cpu` and `memory`. For the `random`
    #   placement strategy, this field is not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlacementStrategy AWS API Documentation
    #
    class PlacementStrategy < Struct.new(
      :type,
      :field)
      include Aws::Structure
    end

    # Port mappings allow containers to access ports on the host container
    # instance to send or receive traffic. Port mappings are specified as
    # part of the container definition.
    #
    # If using containers in a task with the `awsvpc` or `host` network
    # mode, exposed ports should be specified using `containerPort`. The
    # `hostPort` can be left blank or it must be the same value as the
    # `containerPort`.
    #
    # After a task reaches the `RUNNING` status, manual and automatic host
    # and container port assignments are visible in the `networkBindings`
    # section of DescribeTasks API responses.
    #
    # @note When making an API call, you may pass PortMapping
    #   data as a hash:
    #
    #       {
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp", # accepts tcp, udp
    #       }
    #
    # @!attribute [rw] container_port
    #   The port number on the container that is bound to the user-specified
    #   or automatically assigned host port.
    #
    #   If using containers in a task with the `awsvpc` or `host` network
    #   mode, exposed ports should be specified using `containerPort`.
    #
    #   If using containers in a task with the `bridge` network mode and you
    #   specify a container port and not a host port, your container
    #   automatically receives a host port in the ephemeral port range (for
    #   more information, see `hostPort`). Port mappings that are
    #   automatically assigned in this way do not count toward the 100
    #   reserved ports limit of a container instance.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the container instance to reserve for your
    #   container.
    #
    #   If using containers in a task with the `awsvpc` or `host` network
    #   mode, the `hostPort` can either be left blank or set to the same
    #   value as the `containerPort`.
    #
    #   If using containers in a task with the `bridge` network mode, you
    #   can specify a non-reserved host port for your container port
    #   mapping, or you can omit the `hostPort` (or set it to `0`) while
    #   specifying a `containerPort` and your container automatically
    #   receives a port in the ephemeral port range for your container
    #   instance operating system and Docker version.
    #
    #   The default ephemeral port range for Docker version 1.6.0 and later
    #   is listed on the instance under
    #   `/proc/sys/net/ipv4/ip_local_port_range`; if this kernel parameter
    #   is unavailable, the default ephemeral port range from 49153 through
    #   65535 is used. You should not attempt to specify a host port in the
    #   ephemeral port range as these are reserved for automatic assignment.
    #   In general, ports below 32768 are outside of the ephemeral port
    #   range.
    #
    #   <note markdown="1"> The default ephemeral port range from 49153 through 65535 is always
    #   used for Docker versions before 1.6.0.
    #
    #    </note>
    #
    #   The default reserved ports are 22 for SSH, the Docker ports 2375 and
    #   2376, and the Amazon ECS container agent ports 51678 and 51679. Any
    #   host port that was previously specified in a running task is also
    #   reserved while the task is running (after a task stops, the host
    #   port is released). The current reserved ports are displayed in the
    #   `remainingResources` of DescribeContainerInstances output, and a
    #   container instance may have up to 100 reserved ports at a time,
    #   including the default reserved ports (automatically assigned ports
    #   do not count toward the 100 reserved ports limit).
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping. Valid values are `tcp` and
    #   `udp`. The default is `tcp`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :container_port,
      :host_port,
      :protocol)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAttributesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance", # accepts container-instance
    #             target_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that contains the resource to apply attributes. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to apply to your resource. You can specify up to 10
    #   custom attributes per resource. You can specify up to 10 attributes
    #   in a single call.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributesRequest AWS API Documentation
    #
    class PutAttributesRequest < Struct.new(
      :cluster,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes applied to your resource.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributesResponse AWS API Documentation
    #
    class PutAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterContainerInstanceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         instance_identity_document: "String",
    #         instance_identity_document_signature: "String",
    #         total_resources: [
    #           {
    #             name: "String",
    #             type: "String",
    #             double_value: 1.0,
    #             long_value: 1,
    #             integer_value: 1,
    #             string_set_value: ["String"],
    #           },
    #         ],
    #         version_info: {
    #           agent_version: "String",
    #           agent_hash: "String",
    #           docker_version: "String",
    #         },
    #         container_instance_arn: "String",
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance", # accepts container-instance
    #             target_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   with which to register your container instance. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] instance_identity_document
    #   The instance identity document for the EC2 instance to register.
    #   This document can be found by running the following command from the
    #   instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/document/`
    #   @return [String]
    #
    # @!attribute [rw] instance_identity_document_signature
    #   The instance identity document signature for the EC2 instance to
    #   register. This signature can be found by running the following
    #   command from the instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/signature/`
    #   @return [String]
    #
    # @!attribute [rw] total_resources
    #   The resources available on the instance.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] version_info
    #   The version information for the Amazon ECS container agent and
    #   Docker daemon running on the container instance.
    #   @return [Types::VersionInfo]
    #
    # @!attribute [rw] container_instance_arn
    #   The ARN of the container instance (if it was previously registered).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The container instance attributes that this container instance
    #   supports.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstanceRequest AWS API Documentation
    #
    class RegisterContainerInstanceRequest < Struct.new(
      :cluster,
      :instance_identity_document,
      :instance_identity_document_signature,
      :total_resources,
      :version_info,
      :container_instance_arn,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance that was registered.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstanceResponse AWS API Documentation
    #
    class RegisterContainerInstanceResponse < Struct.new(
      :container_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         family: "String", # required
    #         task_role_arn: "String",
    #         execution_role_arn: "String",
    #         network_mode: "bridge", # accepts bridge, host, awsvpc, none
    #         container_definitions: [ # required
    #           {
    #             name: "String",
    #             image: "String",
    #             repository_credentials: {
    #               credentials_parameter: "String", # required
    #             },
    #             cpu: 1,
    #             memory: 1,
    #             memory_reservation: 1,
    #             links: ["String"],
    #             port_mappings: [
    #               {
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp", # accepts tcp, udp
    #               },
    #             ],
    #             essential: false,
    #             entry_point: ["String"],
    #             command: ["String"],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #               },
    #             ],
    #             mount_points: [
    #               {
    #                 source_volume: "String",
    #                 container_path: "String",
    #                 read_only: false,
    #               },
    #             ],
    #             volumes_from: [
    #               {
    #                 source_container: "String",
    #                 read_only: false,
    #               },
    #             ],
    #             linux_parameters: {
    #               capabilities: {
    #                 add: ["String"],
    #                 drop: ["String"],
    #               },
    #               devices: [
    #                 {
    #                   host_path: "String", # required
    #                   container_path: "String",
    #                   permissions: ["read"], # accepts read, write, mknod
    #                 },
    #               ],
    #               init_process_enabled: false,
    #               shared_memory_size: 1,
    #               tmpfs: [
    #                 {
    #                   container_path: "String", # required
    #                   size: 1, # required
    #                   mount_options: ["String"],
    #                 },
    #               ],
    #             },
    #             hostname: "String",
    #             user: "String",
    #             working_directory: "String",
    #             disable_networking: false,
    #             privileged: false,
    #             readonly_root_filesystem: false,
    #             dns_servers: ["String"],
    #             dns_search_domains: ["String"],
    #             extra_hosts: [
    #               {
    #                 hostname: "String", # required
    #                 ip_address: "String", # required
    #               },
    #             ],
    #             docker_security_options: ["String"],
    #             interactive: false,
    #             pseudo_terminal: false,
    #             docker_labels: {
    #               "String" => "String",
    #             },
    #             ulimits: [
    #               {
    #                 name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #                 soft_limit: 1, # required
    #                 hard_limit: 1, # required
    #               },
    #             ],
    #             log_configuration: {
    #               log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #               options: {
    #                 "String" => "String",
    #               },
    #             },
    #             health_check: {
    #               command: ["String"], # required
    #               interval: 1,
    #               timeout: 1,
    #               retries: 1,
    #               start_period: 1,
    #             },
    #             system_controls: [
    #               {
    #                 namespace: "String",
    #                 value: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         volumes: [
    #           {
    #             name: "String",
    #             host: {
    #               source_path: "String",
    #             },
    #             docker_volume_configuration: {
    #               scope: "task", # accepts task, shared
    #               autoprovision: false,
    #               driver: "String",
    #               driver_opts: {
    #                 "String" => "String",
    #               },
    #               labels: {
    #                 "String" => "String",
    #               },
    #             },
    #           },
    #         ],
    #         placement_constraints: [
    #           {
    #             type: "memberOf", # accepts memberOf
    #             expression: "String",
    #           },
    #         ],
    #         requires_compatibilities: ["EC2"], # accepts EC2, FARGATE
    #         cpu: "String",
    #         memory: "String",
    #       }
    #
    # @!attribute [rw] family
    #   You must specify a `family` for a task definition, which allows you
    #   to track multiple versions of the same task definition. The `family`
    #   is used as a name for your task definition. Up to 255 letters
    #   (uppercase and lowercase), numbers, hyphens, and underscores are
    #   allowed.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The short name or full Amazon Resource Name (ARN) of the IAM role
    #   that containers in this task can assume. All containers in this task
    #   are granted the permissions that are specified in this role. For
    #   more information, see [IAM Roles for Tasks][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that the
    #   Amazon ECS container agent and the Docker daemon can assume.
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   The valid values are `none`, `bridge`, `awsvpc`, and `host`. The
    #   default Docker network mode is `bridge`. If using the Fargate launch
    #   type, the `awsvpc` network mode is required. If using the EC2 launch
    #   type, any network mode can be used. If the network mode is set to
    #   `none`, you can't specify port mappings in your container
    #   definitions, and the task's containers do not have external
    #   connectivity. The `host` and `awsvpc` network modes offer the
    #   highest networking performance for containers because they use the
    #   EC2 network stack instead of the virtualized network stack provided
    #   by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for
    #   the `awsvpc` network mode), so you cannot take advantage of dynamic
    #   host port mappings.
    #
    #   If the network mode is `awsvpc`, the task is allocated an Elastic
    #   Network Interface, and you must specify a NetworkConfiguration when
    #   you create a service or run a task with the task definition. For
    #   more information, see [Task Networking][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If the network mode is `host`, you can't run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
    #
    #   Docker for Windows uses different network modes than Docker for
    #   Linux. When you register a task definition with Windows containers,
    #   you must not specify a network mode.
    #
    #   For more information, see [Network settings][2] in the *Docker run
    #   reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   [2]: https://docs.docker.com/engine/reference/run/#network-settings
    #   @return [String]
    #
    # @!attribute [rw] container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task.
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] volumes
    #   A list of volume definitions in JSON format that containers in your
    #   task may use.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify a maximum of 10 constraints per task (this limit
    #   includes constraints in the task definition and those specified at
    #   run time).
    #   @return [Array<Types::TaskDefinitionPlacementConstraint>]
    #
    # @!attribute [rw] requires_compatibilities
    #   The launch type required by the task. If no value is specified, it
    #   defaults to `EC2`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task. It can be expressed as an
    #   integer using CPU units, for example `1024`, or as a string using
    #   vCPUs, for example `1 vCPU` or `1 vcpu`, in a task definition.
    #   String values are converted to an integer indicating the CPU units
    #   when the task definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If using the EC2 launch type, this field is optional. Supported
    #   values are between `128` CPU units (`0.125` vCPUs) and `10240` CPU
    #   units (`10` vCPUs).
    #
    #   If using the Fargate launch type, this field is required and you
    #   must use one of the following values, which determines your range of
    #   supported values for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2
    #     GB), 3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3
    #     GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8
    #     GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory (in MiB) used by the task. It can be expressed
    #   as an integer using MiB, for example `1024`, or as a string using
    #   GB, for example `1GB` or `1 GB`, in a task definition. String values
    #   are converted to an integer indicating the MiB when the task
    #   definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If using the EC2 launch type, this field is optional.
    #
    #   If using the Fargate launch type, this field is required and you
    #   must use one of the following values, which determines your range of
    #   supported values for the `cpu` parameter:
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values:
    #     256 (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
    #     `cpu` values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 4096 (4 vCPU)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinitionRequest AWS API Documentation
    #
    class RegisterTaskDefinitionRequest < Struct.new(
      :family,
      :task_role_arn,
      :execution_role_arn,
      :network_mode,
      :container_definitions,
      :volumes,
      :placement_constraints,
      :requires_compatibilities,
      :cpu,
      :memory)
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The full description of the registered task definition.
    #   @return [Types::TaskDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinitionResponse AWS API Documentation
    #
    class RegisterTaskDefinitionResponse < Struct.new(
      :task_definition)
      include Aws::Structure
    end

    # The repository credentials for private registry authentication.
    #
    # @note When making an API call, you may pass RepositoryCredentials
    #   data as a hash:
    #
    #       {
    #         credentials_parameter: "String", # required
    #       }
    #
    # @!attribute [rw] credentials_parameter
    #   The Amazon Resource Name (ARN) or name of the secret containing the
    #   private repository credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RepositoryCredentials AWS API Documentation
    #
    class RepositoryCredentials < Struct.new(
      :credentials_parameter)
      include Aws::Structure
    end

    # Describes the resources available for a container instance.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         type: "String",
    #         double_value: 1.0,
    #         long_value: 1,
    #         integer_value: 1,
    #         string_set_value: ["String"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the resource, such as `CPU`, `MEMORY`, `PORTS`,
    #   `PORTS_UDP`, or a user-defined resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource, such as `INTEGER`, `DOUBLE`, `LONG`, or
    #   `STRINGSET`.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   When the `doubleValue` type is set, the value of the resource must
    #   be a double precision floating-point type.
    #   @return [Float]
    #
    # @!attribute [rw] long_value
    #   When the `longValue` type is set, the value of the resource must be
    #   an extended precision floating-point type.
    #   @return [Integer]
    #
    # @!attribute [rw] integer_value
    #   When the `integerValue` type is set, the value of the resource must
    #   be an integer.
    #   @return [Integer]
    #
    # @!attribute [rw] string_set_value
    #   When the `stringSetValue` type is set, the value of the resource
    #   must be a string type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :name,
      :type,
      :double_value,
      :long_value,
      :integer_value,
      :string_set_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RunTaskRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task_definition: "String", # required
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #             },
    #           ],
    #           task_role_arn: "String",
    #           execution_role_arn: "String",
    #         },
    #         count: 1,
    #         started_by: "String",
    #         group: "String",
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "String",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "String",
    #           },
    #         ],
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         platform_version: "String",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to run your task. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run. If a `revision` is not specified, the latest
    #   `ACTIVE` revision is used.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A list of container overrides in JSON format that specify the name
    #   of a container in the specified task definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that is specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker
    #   image) on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   <note markdown="1"> A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    #    </note>
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] count
    #   The number of instantiations of the specified task to place on your
    #   cluster. You can specify up to 10 tasks per call.
    #   @return [Integer]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example if you
    #   automatically trigger a task to run a batch process job, you could
    #   apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #   @return [String]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify up to 10 constraints per task (including constraints in
    #   the task definition and those specified at run time).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for the task. You can specify
    #   a maximum of five strategy rules per task.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which to run your task.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which to run your task. If one is not
    #   specified, the latest version is used by default.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the task. This parameter is required
    #   for task definitions that use the `awsvpc` network mode to receive
    #   their own Elastic Network Interface, and it is not supported for
    #   other network modes. For more information, see [Task Networking][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [Types::NetworkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTaskRequest AWS API Documentation
    #
    class RunTaskRequest < Struct.new(
      :cluster,
      :task_definition,
      :overrides,
      :count,
      :started_by,
      :group,
      :placement_constraints,
      :placement_strategy,
      :launch_type,
      :platform_version,
      :network_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   A full description of the tasks that were run. The tasks that were
    #   successfully placed on your cluster are described here.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTaskResponse AWS API Documentation
    #
    class RunTaskResponse < Struct.new(
      :tasks,
      :failures)
      include Aws::Structure
    end

    # Details on a service within a cluster
    #
    # @!attribute [rw] service_arn
    #   The ARN that identifies the service. The ARN contains the
    #   `arn:aws:ecs` namespace, followed by the Region of the service, the
    #   AWS account ID of the service owner, the `service` namespace, and
    #   then the service name. For example,
    #   `arn:aws:ecs:region:012345678910:service/my-service `.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of your service. Up to 255 letters (uppercase and
    #   lowercase), numbers, hyphens, and underscores are allowed. Service
    #   names must be unique within a cluster, but you can have similarly
    #   named services in multiple clusters within a Region or across
    #   multiple Regions.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that hosts the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   A list of Elastic Load Balancing load balancer objects, containing
    #   the load balancer name, the container name (as it appears in a
    #   container definition), and the container port to access from the
    #   load balancer.
    #
    #   Services with tasks that use the `awsvpc` network mode (for example,
    #   those with the Fargate launch type) only support Application Load
    #   Balancers and Network Load Balancers; Classic Load Balancers are not
    #   supported. Also, when you create any target groups for these
    #   services, you must choose `ip` as the target type, not `instance`,
    #   because tasks that use the `awsvpc` network mode are associated with
    #   an elastic network interface, not an Amazon EC2 instance.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] status
    #   The status of the service. The valid values are `ACTIVE`,
    #   `DRAINING`, or `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The desired number of instantiations of the task definition to keep
    #   running on the service. This value is specified when the service is
    #   created with CreateService, and it can be modified with
    #   UpdateService.
    #   @return [Integer]
    #
    # @!attribute [rw] running_count
    #   The number of tasks in the cluster that are in the `RUNNING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_count
    #   The number of tasks in the cluster that are in the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which your service is running.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which your task is running. For more
    #   information, see [AWS Fargate Platform Versions][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition to use for tasks in the service. This value is
    #   specified when the service is created with CreateService, and it can
    #   be modified with UpdateService.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] deployments
    #   The current state of deployments for the service.
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role associated with the service that allows the
    #   Amazon ECS container agent to register container instances with an
    #   Elastic Load Balancing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The event stream for your service. A maximum of 100 of the latest
    #   events are displayed.
    #   @return [Array<Types::ServiceEvent>]
    #
    # @!attribute [rw] created_at
    #   The Unix time stamp for when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] placement_constraints
    #   The placement constraints for the tasks in the service.
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy that determines how tasks for the service are
    #   placed.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler ignores unhealthy Elastic Load Balancing target health
    #   checks after a task has first started.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy to use for the service. For more
    #   information, see [Services][1].
    #
    #   There are two service scheduler strategies available:
    #
    #   * `REPLICA`-The replica scheduling strategy places and maintains the
    #     desired number of tasks across your cluster. By default, the
    #     service scheduler spreads tasks across Availability Zones. You can
    #     use task placement strategies and constraints to customize task
    #     placement decisions.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task
    #     on each container instance in your cluster. When using this
    #     strategy, do not specify a desired number of tasks or any task
    #     placement strategies.
    #
    #     <note markdown="1"> Fargate tasks do not support the `DAEMON` scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguideecs_services.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Service AWS API Documentation
    #
    class Service < Struct.new(
      :service_arn,
      :service_name,
      :cluster_arn,
      :load_balancers,
      :service_registries,
      :status,
      :desired_count,
      :running_count,
      :pending_count,
      :launch_type,
      :platform_version,
      :task_definition,
      :deployment_configuration,
      :deployments,
      :role_arn,
      :events,
      :created_at,
      :placement_constraints,
      :placement_strategy,
      :network_configuration,
      :health_check_grace_period_seconds,
      :scheduling_strategy)
      include Aws::Structure
    end

    # Details on an event associated with a service.
    #
    # @!attribute [rw] id
    #   The ID string of the event.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix time stamp for when the event was triggered.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The event message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceEvent AWS API Documentation
    #
    class ServiceEvent < Struct.new(
      :id,
      :created_at,
      :message)
      include Aws::Structure
    end

    # Details of the service registry.
    #
    # @note When making an API call, you may pass ServiceRegistry
    #   data as a hash:
    #
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1,
    #       }
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the service registry. The
    #   currently supported service registry is Amazon Route 53 Auto Naming.
    #   For more information, see [Service][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value used if your service discovery service specified an
    #   SRV record. This field may be used if both the `awsvpc` network mode
    #   and SRV records are used.
    #   @return [Integer]
    #
    # @!attribute [rw] container_name
    #   The container name value, already specified in the task definition,
    #   to be used for your service discovery service. If the task
    #   definition that your service task specifies uses the `bridge` or
    #   `host` network mode, you must specify a `containerName` and
    #   `containerPort` combination from the task definition. If the task
    #   definition that your service task specifies uses the `awsvpc`
    #   network mode and a type SRV DNS record is used, you must specify
    #   either a `containerName` and `containerPort` combination or a `port`
    #   value, but not both.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port value, already specified in the task definition, to be used
    #   for your service discovery service. If the task definition your
    #   service task specifies uses the `bridge` or `host` network mode, you
    #   must specify a `containerName` and `containerPort` combination from
    #   the task definition. If the task definition your service task
    #   specifies uses the `awsvpc` network mode and a type SRV DNS record
    #   is used, you must specify either a `containerName` and
    #   `containerPort` combination or a `port` value, but not both.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceRegistry AWS API Documentation
    #
    class ServiceRegistry < Struct.new(
      :registry_arn,
      :port,
      :container_name,
      :container_port)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTaskRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task_definition: "String", # required
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #             },
    #           ],
    #           task_role_arn: "String",
    #           execution_role_arn: "String",
    #         },
    #         container_instances: ["String"], # required
    #         started_by: "String",
    #         group: "String",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to start your task. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to start. If a `revision` is not specified, the
    #   latest `ACTIVE` revision is used.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A list of container overrides in JSON format that specify the name
    #   of a container in the specified task definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that is specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker
    #   image) on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   <note markdown="1"> A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    #    </note>
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] container_instances
    #   The container instance IDs or full ARN entries for the container
    #   instances on which you would like to place your task. You can
    #   specify up to 10 container instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example if you
    #   automatically trigger a task to run a batch process job, you could
    #   apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTaskRequest AWS API Documentation
    #
    class StartTaskRequest < Struct.new(
      :cluster,
      :task_definition,
      :overrides,
      :container_instances,
      :started_by,
      :group,
      :network_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   A full description of the tasks that were started. Each task that
    #   was successfully placed on your container instances is described.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTaskResponse AWS API Documentation
    #
    class StartTaskResponse < Struct.new(
      :tasks,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopTaskRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task: "String", # required
    #         reason: "String",
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task to stop. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID or full ARN entry of the task to stop.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   An optional message specified when a task is stopped. For example,
    #   if you are using a custom scheduler, you can use this parameter to
    #   specify the reason for stopping the task here, and the message
    #   appears in subsequent DescribeTasks API operations on this task. Up
    #   to 255 characters are allowed in this message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTaskRequest AWS API Documentation
    #
    class StopTaskRequest < Struct.new(
      :cluster,
      :task,
      :reason)
      include Aws::Structure
    end

    # @!attribute [rw] task
    #   The task that was stopped.
    #   @return [Types::Task]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTaskResponse AWS API Documentation
    #
    class StopTaskResponse < Struct.new(
      :task)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SubmitContainerStateChangeRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task: "String",
    #         container_name: "String",
    #         status: "String",
    #         exit_code: 1,
    #         reason: "String",
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full ARN of the cluster that hosts the container.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID or full Amazon Resource Name (ARN) of the task that
    #   hosts the container.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the state change request.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code returned for the state change request.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   The reason for the state change request.
    #   @return [String]
    #
    # @!attribute [rw] network_bindings
    #   The network bindings of the container.
    #   @return [Array<Types::NetworkBinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChangeRequest AWS API Documentation
    #
    class SubmitContainerStateChangeRequest < Struct.new(
      :cluster,
      :task,
      :container_name,
      :status,
      :exit_code,
      :reason,
      :network_bindings)
      include Aws::Structure
    end

    # @!attribute [rw] acknowledgment
    #   Acknowledgement of the state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChangeResponse AWS API Documentation
    #
    class SubmitContainerStateChangeResponse < Struct.new(
      :acknowledgment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SubmitTaskStateChangeRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task: "String",
    #         status: "String",
    #         reason: "String",
    #         containers: [
    #           {
    #             container_name: "String",
    #             exit_code: 1,
    #             network_bindings: [
    #               {
    #                 bind_ip: "String",
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp", # accepts tcp, udp
    #               },
    #             ],
    #             reason: "String",
    #             status: "String",
    #           },
    #         ],
    #         attachments: [
    #           {
    #             attachment_arn: "String", # required
    #             status: "String", # required
    #           },
    #         ],
    #         pull_started_at: Time.now,
    #         pull_stopped_at: Time.now,
    #         execution_stopped_at: Time.now,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID or full ARN of the task in the state change request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the state change request.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state change request.
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   Any containers associated with the state change request.
    #   @return [Array<Types::ContainerStateChange>]
    #
    # @!attribute [rw] attachments
    #   Any attachments associated with the state change request.
    #   @return [Array<Types::AttachmentStateChange>]
    #
    # @!attribute [rw] pull_started_at
    #   The Unix time stamp for when the container image pull began.
    #   @return [Time]
    #
    # @!attribute [rw] pull_stopped_at
    #   The Unix time stamp for when the container image pull completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_stopped_at
    #   The Unix time stamp for when the task execution stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChangeRequest AWS API Documentation
    #
    class SubmitTaskStateChangeRequest < Struct.new(
      :cluster,
      :task,
      :status,
      :reason,
      :containers,
      :attachments,
      :pull_started_at,
      :pull_stopped_at,
      :execution_stopped_at)
      include Aws::Structure
    end

    # @!attribute [rw] acknowledgment
    #   Acknowledgement of the state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChangeResponse AWS API Documentation
    #
    class SubmitTaskStateChangeResponse < Struct.new(
      :acknowledgment)
      include Aws::Structure
    end

    # A list of namespaced kernel parameters to set in the container. This
    # parameter maps to `Sysctls` in the [Create a container][1] section of
    # the [Docker Remote API][2] and the `--sysctl` option to [docker
    # run][3].
    #
    # <note markdown="1"> It is not recommended that you specify network-related
    # `systemControls` parameters for multiple containers in a single task
    # that also uses either the `awsvpc` or `host` network modes. When you
    # do, the container that is started last will determine which
    # `systemControls` parameters take effect.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    # [2]: https://docs.docker.com/engine/api/v1.35/
    # [3]: https://docs.docker.com/engine/reference/run/
    #
    # @note When making an API call, you may pass SystemControl
    #   data as a hash:
    #
    #       {
    #         namespace: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespaced kernel parameter to set a `value` for.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the namespaced kernel parameter specifed in
    #   `namespace`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SystemControl AWS API Documentation
    #
    class SystemControl < Struct.new(
      :namespace,
      :value)
      include Aws::Structure
    end

    # Details on a task in a cluster.
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN of the cluster that hosts the task.
    #   @return [String]
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition that creates the task.
    #   @return [String]
    #
    # @!attribute [rw] container_instance_arn
    #   The ARN of the container instances that host the task.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   One or more container overrides.
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] last_status
    #   The last known status of the task. For more information, see [Task
    #   Lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_life_cycle.html
    #   @return [String]
    #
    # @!attribute [rw] desired_status
    #   The desired status of the task. For more information, see [Task
    #   Lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_life_cycle.html
    #   @return [String]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task. It can be expressed as an
    #   integer using CPU units, for example `1024`, or as a string using
    #   vCPUs, for example `1 vCPU` or `1 vcpu`, in a task definition.
    #   String values are converted to an integer indicating the CPU units
    #   when the task definition is registered.
    #
    #   If using the EC2 launch type, this field is optional. Supported
    #   values are between `128` CPU units (`0.125` vCPUs) and `10240` CPU
    #   units (`10` vCPUs).
    #
    #   If using the Fargate launch type, this field is required and you
    #   must use one of the following values, which determines your range of
    #   supported values for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2
    #     GB), 3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3
    #     GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8
    #     GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory (in MiB) used by the task. It can be expressed
    #   as an integer using MiB, for example `1024`, or as a string using
    #   GB, for example `1GB` or `1 GB`, in a task definition. String values
    #   are converted to an integer indicating the MiB when the task
    #   definition is registered.
    #
    #   If using the EC2 launch type, this field is optional.
    #
    #   If using the Fargate launch type, this field is required and you
    #   must use one of the following values, which determines your range of
    #   supported values for the `cpu` parameter:
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values:
    #     256 (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
    #     `cpu` values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 4096 (4 vCPU)
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   The containers associated with the task.
    #   @return [Array<Types::Container>]
    #
    # @!attribute [rw] started_by
    #   The tag specified when a task is started. If the task is started by
    #   an Amazon ECS service, then the `startedBy` parameter contains the
    #   deployment ID of the service that starts it.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the task. Every time a task experiences a
    #   change that triggers a CloudWatch event, the version counter is
    #   incremented. If you are replicating your Amazon ECS task state with
    #   CloudWatch Events, you can compare the version of a task reported by
    #   the Amazon ECS APIs with the version reported in CloudWatch Events
    #   for the task (inside the `detail` object) to verify that the version
    #   in your event stream is current.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_reason
    #   The reason the task was stopped.
    #   @return [String]
    #
    # @!attribute [rw] connectivity
    #   The connectivity status of a task.
    #   @return [String]
    #
    # @!attribute [rw] connectivity_at
    #   The Unix time stamp for when the task last went into `CONNECTED`
    #   status.
    #   @return [Time]
    #
    # @!attribute [rw] pull_started_at
    #   The Unix time stamp for when the container image pull began.
    #   @return [Time]
    #
    # @!attribute [rw] pull_stopped_at
    #   The Unix time stamp for when the container image pull completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_stopped_at
    #   The Unix time stamp for when the task execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The Unix time stamp for when the task was created (the task entered
    #   the `PENDING` state).
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The Unix time stamp for when the task started (the task transitioned
    #   from the `PENDING` state to the `RUNNING` state).
    #   @return [Time]
    #
    # @!attribute [rw] stopping_at
    #   The Unix time stamp for when the task stops (transitions from the
    #   `RUNNING` state to `STOPPED`).
    #   @return [Time]
    #
    # @!attribute [rw] stopped_at
    #   The Unix time stamp for when the task was stopped (the task
    #   transitioned from the `RUNNING` state to the `STOPPED` state).
    #   @return [Time]
    #
    # @!attribute [rw] group
    #   The name of the task group associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which your task is running.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which your task is running. For more
    #   information, see [AWS Fargate Platform Versions][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   The elastic network adapter associated with the task if the task
    #   uses the `awsvpc` network mode.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] health_status
    #   The health status for the task, which is determined by the health of
    #   the essential containers in the task. If all essential containers in
    #   the task are reporting as `HEALTHY`, then the task status also
    #   reports as `HEALTHY`. If any essential containers in the task are
    #   reporting as `UNHEALTHY` or `UNKNOWN`, then the task status also
    #   reports as `UNHEALTHY` or `UNKNOWN`, accordingly.
    #
    #   <note markdown="1"> The Amazon ECS container agent does not monitor or report on Docker
    #   health checks that are embedded in a container image (such as those
    #   specified in a parent image or from the image's Dockerfile) and not
    #   specified in the container definition. Health check parameters that
    #   are specified in a container definition override any Docker health
    #   checks that exist in the container image.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Task AWS API Documentation
    #
    class Task < Struct.new(
      :task_arn,
      :cluster_arn,
      :task_definition_arn,
      :container_instance_arn,
      :overrides,
      :last_status,
      :desired_status,
      :cpu,
      :memory,
      :containers,
      :started_by,
      :version,
      :stopped_reason,
      :connectivity,
      :connectivity_at,
      :pull_started_at,
      :pull_stopped_at,
      :execution_stopped_at,
      :created_at,
      :started_at,
      :stopping_at,
      :stopped_at,
      :group,
      :launch_type,
      :platform_version,
      :attachments,
      :health_status)
      include Aws::Structure
    end

    # Details of a task definition.
    #
    # @!attribute [rw] task_definition_arn
    #   The full Amazon Resource Name (ARN) of the task definition.
    #   @return [String]
    #
    # @!attribute [rw] container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task. For more information
    #   about container definition parameters and defaults, see [Amazon ECS
    #   Task Definitions][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] family
    #   The family of your task definition, used as the definition name.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The ARN of the IAM role that containers in this task can assume. All
    #   containers in this task are granted the permissions that are
    #   specified in this role.
    #
    #   IAM roles for tasks on Windows require that the `-EnableTaskIAMRole`
    #   option is set when you launch the Amazon ECS-optimized Windows AMI.
    #   Your containers must also run some configuration code in order to
    #   take advantage of the feature. For more information, see [Windows
    #   IAM Roles for Tasks][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that the
    #   Amazon ECS container agent and the Docker daemon can assume.
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   The valid values are `none`, `bridge`, `awsvpc`, and `host`. The
    #   default Docker network mode is `bridge`. If using the Fargate launch
    #   type, the `awsvpc` network mode is required. If using the EC2 launch
    #   type, any network mode can be used. If the network mode is set to
    #   `none`, you can't specify port mappings in your container
    #   definitions, and the task's containers do not have external
    #   connectivity. The `host` and `awsvpc` network modes offer the
    #   highest networking performance for containers because they use the
    #   EC2 network stack instead of the virtualized network stack provided
    #   by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for
    #   the `awsvpc` network mode), so you cannot take advantage of dynamic
    #   host port mappings.
    #
    #   If the network mode is `awsvpc`, the task is allocated an Elastic
    #   Network Interface, and you must specify a NetworkConfiguration when
    #   you create a service or run a task with the task definition. For
    #   more information, see [Task Networking][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   <note markdown="1"> Currently, only the Amazon ECS-optimized AMI, other Amazon Linux
    #   variants with the `ecs-init` package, or AWS Fargate infrastructure
    #   support the `awsvpc` network mode.
    #
    #    </note>
    #
    #   If the network mode is `host`, you can't run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
    #
    #   Docker for Windows uses different network modes than Docker for
    #   Linux. When you register a task definition with Windows containers,
    #   you must not specify a network mode. If you use the console to
    #   register a task definition with Windows containers, you must choose
    #   the `<default>` network mode object.
    #
    #   For more information, see [Network settings][2] in the *Docker run
    #   reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   [2]: https://docs.docker.com/engine/reference/run/#network-settings
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the task in a particular family. The revision is a
    #   version number of a task definition in a family. When you register a
    #   task definition for the first time, the revision is `1`; each time
    #   you register a new revision of a task definition in the same family,
    #   the revision value always increases by one (even if you have
    #   deregistered previous revisions in this family).
    #   @return [Integer]
    #
    # @!attribute [rw] volumes
    #   The list of volumes in a task.
    #
    #   If you are using the Fargate launch type, the `host` and
    #   `sourcePath` parameters are not supported.
    #
    #   For more information about volume definition parameters and
    #   defaults, see [Amazon ECS Task Definitions][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] status
    #   The status of the task definition.
    #   @return [String]
    #
    # @!attribute [rw] requires_attributes
    #   The container instance attributes required by your task. This field
    #   is not valid if using the Fargate launch type for your task.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for tasks. This
    #   field is not valid if using the Fargate launch type for your task.
    #   @return [Array<Types::TaskDefinitionPlacementConstraint>]
    #
    # @!attribute [rw] compatibilities
    #   The launch type to use with your task. For more information, see
    #   [Amazon ECS Launch Types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] requires_compatibilities
    #   The launch type the task is using.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units used by the task. If using the EC2 launch
    #   type, this field is optional and any value can be used. If using the
    #   Fargate launch type, this field is required and you must use one of
    #   the following values, which determines your range of valid values
    #   for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2
    #     GB), 3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3
    #     GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8
    #     GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory used by the task. If using the EC2
    #   launch type, this field is optional and any value can be used. If
    #   using the Fargate launch type, this field is required and you must
    #   use one of the following values, which determines your range of
    #   valid values for the `cpu` parameter:
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values:
    #     256 (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
    #     `cpu` values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 4096 (4 vCPU)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskDefinition AWS API Documentation
    #
    class TaskDefinition < Struct.new(
      :task_definition_arn,
      :container_definitions,
      :family,
      :task_role_arn,
      :execution_role_arn,
      :network_mode,
      :revision,
      :volumes,
      :status,
      :requires_attributes,
      :placement_constraints,
      :compatibilities,
      :requires_compatibilities,
      :cpu,
      :memory)
      include Aws::Structure
    end

    # An object representing a constraint on task placement in the task
    # definition.
    #
    # If you are using the Fargate launch type, task placement constraints
    # are not supported.
    #
    # For more information, see [Task Placement Constraints][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @note When making an API call, you may pass TaskDefinitionPlacementConstraint
    #   data as a hash:
    #
    #       {
    #         type: "memberOf", # accepts memberOf
    #         expression: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of constraint. The `DistinctInstance` constraint ensures
    #   that each task in a particular group is running on a different
    #   container instance. The `MemberOf` constraint restricts selection to
    #   be from a group of valid candidates.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. For
    #   more information, see [Cluster Query Language][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskDefinitionPlacementConstraint AWS API Documentation
    #
    class TaskDefinitionPlacementConstraint < Struct.new(
      :type,
      :expression)
      include Aws::Structure
    end

    # The overrides associated with a task.
    #
    # @note When making an API call, you may pass TaskOverride
    #   data as a hash:
    #
    #       {
    #         container_overrides: [
    #           {
    #             name: "String",
    #             command: ["String"],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #               },
    #             ],
    #             cpu: 1,
    #             memory: 1,
    #             memory_reservation: 1,
    #           },
    #         ],
    #         task_role_arn: "String",
    #         execution_role_arn: "String",
    #       }
    #
    # @!attribute [rw] container_overrides
    #   One or more container overrides sent to a task.
    #   @return [Array<Types::ContainerOverride>]
    #
    # @!attribute [rw] task_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that containers in
    #   this task can assume. All containers in this task are granted the
    #   permissions that are specified in this role.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that the
    #   Amazon ECS container agent and the Docker daemon can assume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskOverride AWS API Documentation
    #
    class TaskOverride < Struct.new(
      :container_overrides,
      :task_role_arn,
      :execution_role_arn)
      include Aws::Structure
    end

    # The container path, mount options, and size of the tmpfs mount.
    #
    # @note When making an API call, you may pass Tmpfs
    #   data as a hash:
    #
    #       {
    #         container_path: "String", # required
    #         size: 1, # required
    #         mount_options: ["String"],
    #       }
    #
    # @!attribute [rw] container_path
    #   The absolute file path where the tmpfs volume is to be mounted.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size (in MiB) of the tmpfs volume.
    #   @return [Integer]
    #
    # @!attribute [rw] mount_options
    #   The list of tmpfs volume mount options.
    #
    #   Valid values: `"defaults" | "ro" | "rw" | "suid" | "nosuid" | "dev"
    #   | "nodev" | "exec" | "noexec" | "sync" | "async" | "dirsync" |
    #   "remount" | "mand" | "nomand" | "atime" | "noatime" | "diratime" |
    #   "nodiratime" | "bind" | "rbind" | "unbindable" | "runbindable" |
    #   "private" | "rprivate" | "shared" | "rshared" | "slave" | "rslave" |
    #   "relatime" | "norelatime" | "strictatime" | "nostrictatime" | "mode"
    #   | "uid" | "gid" | "nr_inodes" | "nr_blocks" | "mpol"`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Tmpfs AWS API Documentation
    #
    class Tmpfs < Struct.new(
      :container_path,
      :size,
      :mount_options)
      include Aws::Structure
    end

    # The `ulimit` settings to pass to the container.
    #
    # @note When making an API call, you may pass Ulimit
    #   data as a hash:
    #
    #       {
    #         name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #         soft_limit: 1, # required
    #         hard_limit: 1, # required
    #       }
    #
    # @!attribute [rw] name
    #   The `type` of the `ulimit`.
    #   @return [String]
    #
    # @!attribute [rw] soft_limit
    #   The soft limit for the ulimit type.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_limit
    #   The hard limit for the ulimit type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Ulimit AWS API Documentation
    #
    class Ulimit < Struct.new(
      :name,
      :soft_limit,
      :hard_limit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContainerAgentRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instance: "String", # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that your container instance is running on. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN entries for the container
    #   instance on which you would like to update the Amazon ECS container
    #   agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgentRequest AWS API Documentation
    #
    class UpdateContainerAgentRequest < Struct.new(
      :cluster,
      :container_instance)
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance for which the container agent was updated.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgentResponse AWS API Documentation
    #
    class UpdateContainerAgentResponse < Struct.new(
      :container_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContainerInstancesStateRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instances: ["String"], # required
    #         status: "ACTIVE", # required, accepts ACTIVE, DRAINING
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instance to update. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   A list of container instance IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The container instance state with which to update the container
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesStateRequest AWS API Documentation
    #
    class UpdateContainerInstancesStateRequest < Struct.new(
      :cluster,
      :container_instances,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] container_instances
    #   The list of container instances.
    #   @return [Array<Types::ContainerInstance>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesStateResponse AWS API Documentation
    #
    class UpdateContainerInstancesStateResponse < Struct.new(
      :container_instances,
      :failures)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         service: "String", # required
    #         desired_count: 1,
    #         task_definition: "String",
    #         deployment_configuration: {
    #           maximum_percent: 1,
    #           minimum_healthy_percent: 1,
    #         },
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         platform_version: "String",
    #         force_new_deployment: false,
    #         health_check_grace_period_seconds: 1,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that your service is running on. If you do not specify a cluster,
    #   the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The name of the service to update.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the task to place and keep running
    #   in your service.
    #   @return [Integer]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used. If you modify the
    #   task definition with `UpdateService`, Amazon ECS spawns a task with
    #   the new version of the task definition and then stops an old task
    #   after the new version is running.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the service. This parameter is
    #   required for task definitions that use the `awsvpc` network mode to
    #   receive their own elastic network interface, and it is not supported
    #   for other network modes. For more information, see [Task
    #   Networking][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   <note markdown="1"> Updating a service to add a subnet to a list of existing subnets
    #   does not trigger a service deployment. For example, if your network
    #   configuration change is to keep the existing subnets and simply add
    #   another subnet to the network configuration, this does not trigger a
    #   new service deployment.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] platform_version
    #   The platform version that your service should run.
    #   @return [String]
    #
    # @!attribute [rw] force_new_deployment
    #   Whether to force a new deployment of the service. Deployments are
    #   not forced by default. You can use this option to trigger a new
    #   deployment with no service definition changes. For example, you can
    #   update a service's tasks to use a newer Docker image with the same
    #   image/tag combination (`my_image:latest`) or to roll Fargate tasks
    #   onto a newer platform version.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler should ignore unhealthy Elastic Load Balancing target
    #   health checks after a task has first started. This is only valid if
    #   your service is configured to use a load balancer. If your
    #   service's tasks take a while to start and respond to Elastic Load
    #   Balancing health checks, you can specify a health check grace period
    #   of up to 1,800 seconds during which the ECS service scheduler
    #   ignores the Elastic Load Balancing health check status. This grace
    #   period can prevent the ECS service scheduler from marking tasks as
    #   unhealthy and stopping them before they have time to come up.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServiceRequest AWS API Documentation
    #
    class UpdateServiceRequest < Struct.new(
      :cluster,
      :service,
      :desired_count,
      :task_definition,
      :deployment_configuration,
      :network_configuration,
      :platform_version,
      :force_new_deployment,
      :health_check_grace_period_seconds)
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of your service following the update call.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServiceResponse AWS API Documentation
    #
    class UpdateServiceResponse < Struct.new(
      :service)
      include Aws::Structure
    end

    # The Docker and Amazon ECS container agent version information about a
    # container instance.
    #
    # @note When making an API call, you may pass VersionInfo
    #   data as a hash:
    #
    #       {
    #         agent_version: "String",
    #         agent_hash: "String",
    #         docker_version: "String",
    #       }
    #
    # @!attribute [rw] agent_version
    #   The version number of the Amazon ECS container agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_hash
    #   The Git commit hash for the Amazon ECS container agent build on the
    #   [amazon-ecs-agent ][1] GitHub repository.
    #
    #
    #
    #   [1]: https://github.com/aws/amazon-ecs-agent/commits/master
    #   @return [String]
    #
    # @!attribute [rw] docker_version
    #   The Docker version running on the container instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/VersionInfo AWS API Documentation
    #
    class VersionInfo < Struct.new(
      :agent_version,
      :agent_hash,
      :docker_version)
      include Aws::Structure
    end

    # A data volume used in a task definition. For tasks that use a Docker
    # volume, specify a `DockerVolumeConfiguration`. For tasks that use a
    # bind mount host volume, specify a `host` and optional `sourcePath`.
    # For more information, see [Using Data Volumes in Tasks][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguideusing_data_volumes.html
    #
    # @note When making an API call, you may pass Volume
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         host: {
    #           source_path: "String",
    #         },
    #         docker_volume_configuration: {
    #           scope: "task", # accepts task, shared
    #           autoprovision: false,
    #           driver: "String",
    #           driver_opts: {
    #             "String" => "String",
    #           },
    #           labels: {
    #             "String" => "String",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the volume. Up to 255 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed. This name is
    #   referenced in the `sourceVolume` parameter of container definition
    #   `mountPoints`.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   This parameter is specified when using bind mount host volumes. Bind
    #   mount host volumes are supported when using either the EC2 or
    #   Fargate launch types. The contents of the `host` parameter determine
    #   whether your bind mount host volume persists on the host container
    #   instance and where it is stored. If the `host` parameter is empty,
    #   then the Docker daemon assigns a host path for your data volume, but
    #   the data is not guaranteed to persist after the containers
    #   associated with it stop running.
    #
    #   Windows containers can mount whole directories on the same drive as
    #   `$env:ProgramData`. Windows containers cannot mount directories on a
    #   different drive, and mount point cannot be across drives. For
    #   example, you can mount `C:\my\path:C:\my\path` and `D:\:D:`, but
    #   not `D:\my\path:C:\my\path` or `D:\:C:\my\path`.
    #   @return [Types::HostVolumeProperties]
    #
    # @!attribute [rw] docker_volume_configuration
    #   This parameter is specified when using Docker volumes. Docker
    #   volumes are only supported when using the EC2 launch type. Windows
    #   containers only support the use of the `local` driver. To use bind
    #   mounts, specify a `host` instead.
    #   @return [Types::DockerVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :name,
      :host,
      :docker_volume_configuration)
      include Aws::Structure
    end

    # Details on a data volume from another container in the same task
    # definition.
    #
    # @note When making an API call, you may pass VolumeFrom
    #   data as a hash:
    #
    #       {
    #         source_container: "String",
    #         read_only: false,
    #       }
    #
    # @!attribute [rw] source_container
    #   The name of another container within the same task definition to
    #   mount volumes from.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume. If this value is `false`, then the container can write to
    #   the volume. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/VolumeFrom AWS API Documentation
    #
    class VolumeFrom < Struct.new(
      :source_container,
      :read_only)
      include Aws::Structure
    end

  end
end
