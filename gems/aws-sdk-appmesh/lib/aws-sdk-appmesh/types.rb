# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppMesh
  module Types

    # An object that represents a virtual router listener.
    #
    # @note When making an API call, you may pass VirtualRouterListener
    #   data as a hash:
    #
    #       {
    #         port_mapping: { # required
    #           port: 1, # required
    #           protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #         },
    #       }
    #
    # @!attribute [rw] port_mapping
    #   An object that represents a port mapping.
    #   @return [Types::PortMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualRouterListener AWS API Documentation
    #
    class VirtualRouterListener < Struct.new(
      :port_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a retry policy. Specify at least one value
    # for at least one of the types of `RetryEvents`, a value for
    # `maxRetries`, and a value for `perRetryTimeout`.
    #
    # @note When making an API call, you may pass GrpcRetryPolicy
    #   data as a hash:
    #
    #       {
    #         grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #         http_retry_events: ["HttpRetryPolicyEvent"],
    #         max_retries: 1, # required
    #         per_retry_timeout: { # required
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #         tcp_retry_events: ["connection-error"], # accepts connection-error
    #       }
    #
    # @!attribute [rw] grpc_retry_events
    #   Specify at least one of the valid values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] http_retry_events
    #   Specify at least one of the following values.
    #
    #   * **server-error** – HTTP status codes 500, 501, 502, 503, 504, 505,
    #     506, 507, 508, 510, and 511
    #
    #   * **gateway-error** – HTTP status codes 502, 503, and 504
    #
    #   * **client-error** – HTTP status code 409
    #
    #   * **stream-error** – Retry on refused stream
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of retry attempts.
    #   @return [Integer]
    #
    # @!attribute [rw] per_retry_timeout
    #   An object that represents a duration of time.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] tcp_retry_events
    #   Specify a valid value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcRetryPolicy AWS API Documentation
    #
    class GrpcRetryPolicy < Struct.new(
      :grpc_retry_events,
      :http_retry_events,
      :max_retries,
      :per_retry_timeout,
      :tcp_retry_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   The full description of your virtual node following the create call.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualNodeOutput AWS API Documentation
    #
    class CreateVirtualNodeOutput < Struct.new(
      :virtual_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the logging information for a virtual node.
    #
    # @note When making an API call, you may pass Logging
    #   data as a hash:
    #
    #       {
    #         access_log: {
    #           file: {
    #             path: "FilePath", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] access_log
    #   The access log configuration for a virtual node.
    #   @return [Types::AccessLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :access_log)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   A full description of the virtual router that was updated.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualRouterOutput AWS API Documentation
    #
    class UpdateVirtualRouterOutput < Struct.new(
      :virtual_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListVirtualRouters`
    #   request. When the results of a `ListVirtualRouters` request exceed
    #   `limit`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] virtual_routers
    #   The list of existing virtual routers for the specified service mesh.
    #   @return [Array<Types::VirtualRouterRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualRoutersOutput AWS API Documentation
    #
    class ListVirtualRoutersOutput < Struct.new(
      :next_token,
      :virtual_routers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualGatewayInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           backend_defaults: {
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 validation: { # required
    #                   trust: { # required
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #           listeners: [ # required
    #             {
    #               health_check: {
    #                 healthy_threshold: 1, # required
    #                 interval_millis: 1, # required
    #                 path: "String",
    #                 port: 1,
    #                 protocol: "grpc", # required, accepts grpc, http, http2
    #                 timeout_millis: 1, # required
    #                 unhealthy_threshold: 1, # required
    #               },
    #               port_mapping: { # required
    #                 port: 1, # required
    #                 protocol: "grpc", # required, accepts grpc, http, http2
    #               },
    #               tls: {
    #                 certificate: { # required
    #                   acm: {
    #                     certificate_arn: "Arn", # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                 },
    #                 mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #               },
    #             },
    #           ],
    #           logging: {
    #             access_log: {
    #               file: {
    #                 path: "FilePath", # required
    #               },
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to create the virtual gateway in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then the account that you specify must share the
    #   mesh with your account before you can create the resource in the
    #   service mesh. For more information about mesh sharing, see [Working
    #   with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The virtual gateway specification to apply.
    #   @return [Types::VirtualGatewaySpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the virtual gateway to
    #   assist with categorization and organization. Each tag consists of a
    #   key and an optional value, both of which you define. Tag keys can
    #   have a maximum character length of 128 characters, and tag values
    #   can have a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name to use for the virtual gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualGatewayInput AWS API Documentation
    #
    class CreateVirtualGatewayInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :tags,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVirtualGatewayInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           backend_defaults: {
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 validation: { # required
    #                   trust: { # required
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #           listeners: [ # required
    #             {
    #               health_check: {
    #                 healthy_threshold: 1, # required
    #                 interval_millis: 1, # required
    #                 path: "String",
    #                 port: 1,
    #                 protocol: "grpc", # required, accepts grpc, http, http2
    #                 timeout_millis: 1, # required
    #                 unhealthy_threshold: 1, # required
    #               },
    #               port_mapping: { # required
    #                 port: 1, # required
    #                 protocol: "grpc", # required, accepts grpc, http, http2
    #               },
    #               tls: {
    #                 certificate: { # required
    #                   acm: {
    #                     certificate_arn: "Arn", # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                 },
    #                 mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #               },
    #             },
    #           ],
    #           logging: {
    #             access_log: {
    #               file: {
    #                 path: "FilePath", # required
    #               },
    #             },
    #           },
    #         },
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual gateway resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new virtual gateway specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::VirtualGatewaySpec]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualGatewayInput AWS API Documentation
    #
    class UpdateVirtualGatewayInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents metadata for a resource.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ResourceMetadata AWS API Documentation
    #
    class ResourceMetadata < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_owner,
      :resource_owner,
      :uid,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't delete the specified resource because it's in use or
    # required by another resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   A full description of the virtual node that was updated.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualNodeOutput AWS API Documentation
    #
    class UpdateVirtualNodeOutput < Struct.new(
      :virtual_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListRoutes` request.
    #   When the results of a `ListRoutes` request exceed `limit`, you can
    #   use this value to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] routes
    #   The list of existing routes for the specified service mesh and
    #   virtual router.
    #   @return [Array<Types::RouteRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListRoutesOutput AWS API Documentation
    #
    class ListRoutesOutput < Struct.new(
      :next_token,
      :routes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual service backend for a virtual
    # node.
    #
    # @note When making an API call, you may pass VirtualServiceBackend
    #   data as a hash:
    #
    #       {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         virtual_service_name: "ServiceName", # required
    #       }
    #
    # @!attribute [rw] client_policy
    #   A reference to an object that represents the client policy for a
    #   backend.
    #   @return [Types::ClientPolicy]
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service that is acting as a virtual node
    #   backend.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualServiceBackend AWS API Documentation
    #
    class VirtualServiceBackend < Struct.new(
      :client_policy,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request syntax was malformed. Check your request syntax and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the criteria for determining a request
    # match.
    #
    # @note When making an API call, you may pass HttpGatewayRouteMatch
    #   data as a hash:
    #
    #       {
    #         prefix: "String", # required
    #       }
    #
    # @!attribute [rw] prefix
    #   Specifies the path to match requests with. This parameter must
    #   always start with `/`, which by itself matches all requests to the
    #   virtual service name. You can also match for path-based routing of
    #   requests. For example, if your virtual service name is
    #   `my-service.local` and you want the route to match requests to
    #   `my-service.local/metrics`, your prefix should be `/metrics`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRouteMatch AWS API Documentation
    #
    class HttpGatewayRouteMatch < Struct.new(
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the health check policy for a virtual
    # node's listener.
    #
    # @note When making an API call, you may pass HealthCheckPolicy
    #   data as a hash:
    #
    #       {
    #         healthy_threshold: 1, # required
    #         interval_millis: 1, # required
    #         path: "String",
    #         port: 1,
    #         protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #         timeout_millis: 1, # required
    #         unhealthy_threshold: 1, # required
    #       }
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive successful health checks that must occur
    #   before declaring listener healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_millis
    #   The time period in milliseconds between each health check execution.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The destination path for the health check request. This value is
    #   only used if the specified protocol is HTTP or HTTP/2. For any other
    #   protocol, this value is ignored.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The destination port for the health check request. This port must
    #   match the port defined in the PortMapping for the listener.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol for the health check request. If you specify `grpc`,
    #   then your service must conform to the [GRPC Health Checking
    #   Protocol][1].
    #
    #
    #
    #   [1]: https://github.com/grpc/grpc/blob/master/doc/health-checking.md
    #   @return [String]
    #
    # @!attribute [rw] timeout_millis
    #   The amount of time to wait when receiving a response from the health
    #   check, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive failed health checks that must occur
    #   before declaring a virtual node unhealthy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HealthCheckPolicy AWS API Documentation
    #
    class HealthCheckPolicy < Struct.new(
      :healthy_threshold,
      :interval_millis,
      :path,
      :port,
      :protocol,
      :timeout_millis,
      :unhealthy_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the egress filter rules for a service mesh.
    #
    # @note When making an API call, you may pass EgressFilter
    #   data as a hash:
    #
    #       {
    #         type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DROP_ALL
    #       }
    #
    # @!attribute [rw] type
    #   The egress filter type. By default, the type is `DROP_ALL`, which
    #   allows egress only from virtual nodes to other defined resources in
    #   the service mesh (and any traffic to `*.amazonaws.com` for AWS API
    #   calls). You can set the egress filter type to `ALLOW_ALL` to allow
    #   egress to any endpoint inside or outside of the service mesh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/EgressFilter AWS API Documentation
    #
    class EgressFilter < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a client policy.
    #
    # @note When making an API call, you may pass ClientPolicy
    #   data as a hash:
    #
    #       {
    #         tls: {
    #           enforce: false,
    #           ports: [1],
    #           validation: { # required
    #             trust: { # required
    #               acm: {
    #                 certificate_authority_arns: ["Arn"], # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] tls
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) client policy.
    #   @return [Types::ClientPolicyTls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ClientPolicy AWS API Documentation
    #
    class ClientPolicy < Struct.new(
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the specification of a service mesh
    # resource.
    #
    # @note When making an API call, you may pass VirtualGatewaySpec
    #   data as a hash:
    #
    #       {
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               validation: { # required
    #                 trust: { # required
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         listeners: [ # required
    #           {
    #             health_check: {
    #               healthy_threshold: 1, # required
    #               interval_millis: 1, # required
    #               path: "String",
    #               port: 1,
    #               protocol: "grpc", # required, accepts grpc, http, http2
    #               timeout_millis: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "grpc", # required, accepts grpc, http, http2
    #             },
    #             tls: {
    #               certificate: { # required
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #               },
    #               mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #             },
    #           },
    #         ],
    #         logging: {
    #           access_log: {
    #             file: {
    #               path: "FilePath", # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] backend_defaults
    #   A reference to an object that represents the defaults for backends.
    #   @return [Types::VirtualGatewayBackendDefaults]
    #
    # @!attribute [rw] listeners
    #   The listeners that the mesh endpoint is expected to receive inbound
    #   traffic from. You can specify one listener.
    #   @return [Array<Types::VirtualGatewayListener>]
    #
    # @!attribute [rw] logging
    #   An object that represents logging information.
    #   @return [Types::VirtualGatewayLogging]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewaySpec AWS API Documentation
    #
    class VirtualGatewaySpec < Struct.new(
      :backend_defaults,
      :listeners,
      :logging)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an access log file.
    #
    # @note When making an API call, you may pass VirtualGatewayFileAccessLog
    #   data as a hash:
    #
    #       {
    #         path: "FilePath", # required
    #       }
    #
    # @!attribute [rw] path
    #   The file path to write access logs to. You can use `/dev/stdout` to
    #   send access logs to standard out and configure your Envoy container
    #   to use a log driver, such as `awslogs`, to export the access logs to
    #   a log storage service such as Amazon CloudWatch Logs. You can also
    #   specify a path in the Envoy container's file system to write the
    #   files to disk.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayFileAccessLog AWS API Documentation
    #
    class VirtualGatewayFileAccessLog < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_service
    #   The full description of your virtual service.
    #   @return [Types::VirtualServiceData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualServiceOutput AWS API Documentation
    #
    class DescribeVirtualServiceOutput < Struct.new(
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGatewayRouteInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         gateway_route_name: "ResourceName", # required
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           grpc_route: {
    #             action: { # required
    #               target: { # required
    #                 virtual_service: { # required
    #                   virtual_service_name: "ResourceName", # required
    #                 },
    #               },
    #             },
    #             match: { # required
    #               service_name: "ServiceName",
    #             },
    #           },
    #           http2_route: {
    #             action: { # required
    #               target: { # required
    #                 virtual_service: { # required
    #                   virtual_service_name: "ResourceName", # required
    #                 },
    #               },
    #             },
    #             match: { # required
    #               prefix: "String", # required
    #             },
    #           },
    #           http_route: {
    #             action: { # required
    #               target: { # required
    #                 virtual_service: { # required
    #                   virtual_service_name: "ResourceName", # required
    #                 },
    #               },
    #             },
    #             match: { # required
    #               prefix: "String", # required
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_route_name
    #   The name to use for the gateway route.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to create the gateway route in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then the account that you specify must share the
    #   mesh with your account before you can create the resource in the
    #   service mesh. For more information about mesh sharing, see [Working
    #   with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The gateway route specification to apply.
    #   @return [Types::GatewayRouteSpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the gateway route to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway to associate the gateway route with.
    #   If the virtual gateway is in a shared mesh, then you must be the
    #   owner of the virtual gateway resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateGatewayRouteInput AWS API Documentation
    #
    class CreateGatewayRouteInput < Struct.new(
      :client_token,
      :gateway_route_name,
      :mesh_name,
      :mesh_owner,
      :spec,
      :tags,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   The full description of your virtual node.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualNodeOutput AWS API Documentation
    #
    class DescribeVirtualNodeOutput < Struct.new(
      :virtual_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual gateway returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual gateway resides in.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   An object that represents metadata for a resource.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the virtual gateway.
    #   @return [Types::VirtualGatewaySpec]
    #
    # @!attribute [rw] status
    #   The current status of the virtual gateway.
    #   @return [Types::VirtualGatewayStatus]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayData AWS API Documentation
    #
    class VirtualGatewayData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   The full description of your mesh following the create call.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateRouteOutput AWS API Documentation
    #
    class CreateRouteOutput < Struct.new(
      :route)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener for a virtual gateway.
    #
    # @note When making an API call, you may pass VirtualGatewayListener
    #   data as a hash:
    #
    #       {
    #         health_check: {
    #           healthy_threshold: 1, # required
    #           interval_millis: 1, # required
    #           path: "String",
    #           port: 1,
    #           protocol: "grpc", # required, accepts grpc, http, http2
    #           timeout_millis: 1, # required
    #           unhealthy_threshold: 1, # required
    #         },
    #         port_mapping: { # required
    #           port: 1, # required
    #           protocol: "grpc", # required, accepts grpc, http, http2
    #         },
    #         tls: {
    #           certificate: { # required
    #             acm: {
    #               certificate_arn: "Arn", # required
    #             },
    #             file: {
    #               certificate_chain: "FilePath", # required
    #               private_key: "FilePath", # required
    #             },
    #           },
    #           mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #         },
    #       }
    #
    # @!attribute [rw] health_check
    #   The health check information for the listener.
    #   @return [Types::VirtualGatewayHealthCheckPolicy]
    #
    # @!attribute [rw] port_mapping
    #   The port mapping information for the listener.
    #   @return [Types::VirtualGatewayPortMapping]
    #
    # @!attribute [rw] tls
    #   A reference to an object that represents the Transport Layer
    #   Security (TLS) properties for the listener.
    #   @return [Types::VirtualGatewayListenerTls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListener AWS API Documentation
    #
    class VirtualGatewayListener < Struct.new(
      :health_check,
      :port_mapping,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the DNS service discovery information for
    # your virtual node.
    #
    # @note When making an API call, you may pass DnsServiceDiscovery
    #   data as a hash:
    #
    #       {
    #         hostname: "Hostname", # required
    #       }
    #
    # @!attribute [rw] hostname
    #   Specifies the DNS service discovery hostname for the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DnsServiceDiscovery AWS API Documentation
    #
    class DnsServiceDiscovery < Struct.new(
      :hostname)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a port mapping.
    #
    # @note When making an API call, you may pass VirtualGatewayPortMapping
    #   data as a hash:
    #
    #       {
    #         port: 1, # required
    #         protocol: "grpc", # required, accepts grpc, http, http2
    #       }
    #
    # @!attribute [rw] port
    #   The port used for the port mapping. Specify one protocol.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayPortMapping AWS API Documentation
    #
    class VirtualGatewayPortMapping < Struct.new(
      :port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_gateway
    #   The virtual gateway that was deleted.
    #   @return [Types::VirtualGatewayData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualGatewayOutput AWS API Documentation
    #
    class DeleteVirtualGatewayOutput < Struct.new(
      :virtual_gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRouteInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         route_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the route in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route to delete.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to delete the route in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteRouteInput AWS API Documentation
    #
    class DeleteRouteInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :route_name,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual node returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the virtual node.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the virtual node.
    #   @return [Types::VirtualNodeSpec]
    #
    # @!attribute [rw] status
    #   The current status for the virtual node.
    #   @return [Types::VirtualNodeStatus]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeData AWS API Documentation
    #
    class VirtualNodeData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # An object that represents the Transport Layer Security (TLS)
    # properties for a listener.
    #
    # @note When making an API call, you may pass VirtualGatewayListenerTls
    #   data as a hash:
    #
    #       {
    #         certificate: { # required
    #           acm: {
    #             certificate_arn: "Arn", # required
    #           },
    #           file: {
    #             certificate_chain: "FilePath", # required
    #             private_key: "FilePath", # required
    #           },
    #         },
    #         mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #       }
    #
    # @!attribute [rw] certificate
    #   An object that represents a Transport Layer Security (TLS)
    #   certificate.
    #   @return [Types::VirtualGatewayListenerTlsCertificate]
    #
    # @!attribute [rw] mode
    #   Specify one of the following modes.
    #
    #   * ****STRICT – Listener only accepts connections with TLS enabled.
    #
    #   * ****PERMISSIVE – Listener accepts connections with or without TLS
    #     enabled.
    #
    #   * ****DISABLED – Listener only accepts connections without TLS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTls AWS API Documentation
    #
    class VirtualGatewayListenerTls < Struct.new(
      :certificate,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the backends that a virtual node is expected
    # to send outbound traffic to.
    #
    # @note When making an API call, you may pass Backend
    #   data as a hash:
    #
    #       {
    #         virtual_service: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               validation: { # required
    #                 trust: { # required
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #           virtual_service_name: "ServiceName", # required
    #         },
    #       }
    #
    # @!attribute [rw] virtual_service
    #   Specifies a virtual service to use as a backend for a virtual node.
    #   @return [Types::VirtualServiceBackend]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/Backend AWS API Documentation
    #
    class Backend < Struct.new(
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMeshesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListMeshes` in paginated
    #   output. When you use this parameter, `ListMeshes` returns only
    #   `limit` results in a single page along with a `nextToken` response
    #   element. You can see the remaining results of the initial request by
    #   sending another `ListMeshes` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, `ListMeshes` returns up to 100 results and a `nextToken`
    #   value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListMeshes` request where `limit` was used and the results exceeded
    #   the value of that parameter. Pagination continues from the end of
    #   the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListMeshesInput AWS API Documentation
    #
    class ListMeshesInput < Struct.new(
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a local file certificate. The certificate
    # must meet specific requirements and you must have proxy authorization
    # enabled. For more information, see [Transport Layer Security
    # (TLS)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites
    #
    # @note When making an API call, you may pass VirtualGatewayListenerTlsFileCertificate
    #   data as a hash:
    #
    #       {
    #         certificate_chain: "FilePath", # required
    #         private_key: "FilePath", # required
    #       }
    #
    # @!attribute [rw] certificate_chain
    #   The certificate chain for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key for a certificate stored on the file system of the
    #   mesh endpoint that the proxy is running on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsFileCertificate AWS API Documentation
    #
    class VirtualGatewayListenerTlsFileCertificate < Struct.new(
      :certificate_chain,
      :private_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGatewayRoutesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         next_token: "String",
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListGatewayRoutes` in
    #   paginated output. When you use this parameter, `ListGatewayRoutes`
    #   returns only `limit` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListGatewayRoutes` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If you don't use this parameter, `ListGatewayRoutes` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to list gateway routes in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListGatewayRoutes` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway to list gateway routes in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListGatewayRoutesInput AWS API Documentation
    #
    class ListGatewayRoutesInput < Struct.new(
      :limit,
      :mesh_name,
      :mesh_owner,
      :next_token,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual router returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the virtual router.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the virtual router.
    #   @return [Types::VirtualRouterSpec]
    #
    # @!attribute [rw] status
    #   The current status of the virtual router.
    #   @return [Types::VirtualRouterStatus]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualRouterData AWS API Documentation
    #
    class VirtualRouterData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMeshInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         spec: {
    #           egress_filter: {
    #             type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DROP_ALL
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to update.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The service mesh specification to apply.
    #   @return [Types::MeshSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateMeshInput AWS API Documentation
    #
    class UpdateMeshInput < Struct.new(
      :client_token,
      :mesh_name,
      :spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the health check policy for a virtual
    # gateway's listener.
    #
    # @note When making an API call, you may pass VirtualGatewayHealthCheckPolicy
    #   data as a hash:
    #
    #       {
    #         healthy_threshold: 1, # required
    #         interval_millis: 1, # required
    #         path: "String",
    #         port: 1,
    #         protocol: "grpc", # required, accepts grpc, http, http2
    #         timeout_millis: 1, # required
    #         unhealthy_threshold: 1, # required
    #       }
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive successful health checks that must occur
    #   before declaring the listener healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_millis
    #   The time period in milliseconds between each health check execution.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The destination path for the health check request. This value is
    #   only used if the specified protocol is HTTP or HTTP/2. For any other
    #   protocol, this value is ignored.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The destination port for the health check request. This port must
    #   match the port defined in the PortMapping for the listener.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol for the health check request. If you specify `grpc`,
    #   then your service must conform to the [GRPC Health Checking
    #   Protocol][1].
    #
    #
    #
    #   [1]: https://github.com/grpc/grpc/blob/master/doc/health-checking.md
    #   @return [String]
    #
    # @!attribute [rw] timeout_millis
    #   The amount of time to wait when receiving a response from the health
    #   check, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive failed health checks that must occur
    #   before declaring a virtual gateway unhealthy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayHealthCheckPolicy AWS API Documentation
    #
    class VirtualGatewayHealthCheckPolicy < Struct.new(
      :healthy_threshold,
      :interval_millis,
      :path,
      :port,
      :protocol,
      :timeout_millis,
      :unhealthy_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           listeners: [
    #             {
    #               port_mapping: { # required
    #                 port: 1, # required
    #                 protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #               },
    #             },
    #           ],
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to create the virtual router in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then the account that you specify must share the
    #   mesh with your account before you can create the resource in the
    #   service mesh. For more information about mesh sharing, see [Working
    #   with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The virtual router specification to apply.
    #   @return [Types::VirtualRouterSpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the virtual router to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @!attribute [rw] virtual_router_name
    #   The name to use for the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualRouterInput AWS API Documentation
    #
    class CreateVirtualRouterInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :tags,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   The full description of your virtual router.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualRouterOutput AWS API Documentation
    #
    class DescribeVirtualRouterOutput < Struct.new(
      :virtual_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mesh
    #   The full description of your service mesh following the create call.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateMeshOutput AWS API Documentation
    #
    class CreateMeshOutput < Struct.new(
      :mesh)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   The full description of your virtual router following the create
    #   call.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualRouterOutput AWS API Documentation
    #
    class CreateVirtualRouterOutput < Struct.new(
      :virtual_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the status of a virtual service.
    #
    # @!attribute [rw] status
    #   The current status of the virtual service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualServiceStatus AWS API Documentation
    #
    class VirtualServiceStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener's Transport Layer Security (TLS)
    # certificate.
    #
    # @note When making an API call, you may pass VirtualGatewayListenerTlsCertificate
    #   data as a hash:
    #
    #       {
    #         acm: {
    #           certificate_arn: "Arn", # required
    #         },
    #         file: {
    #           certificate_chain: "FilePath", # required
    #           private_key: "FilePath", # required
    #         },
    #       }
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents an AWS Certicate Manager
    #   (ACM) certificate.
    #   @return [Types::VirtualGatewayListenerTlsAcmCertificate]
    #
    # @!attribute [rw] file
    #   A reference to an object that represents a local file certificate.
    #   @return [Types::VirtualGatewayListenerTlsFileCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsCertificate AWS API Documentation
    #
    class VirtualGatewayListenerTlsCertificate < Struct.new(
      :acm,
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener's Transport Layer Security (TLS)
    # certificate.
    #
    # @note When making an API call, you may pass ListenerTlsCertificate
    #   data as a hash:
    #
    #       {
    #         acm: {
    #           certificate_arn: "Arn", # required
    #         },
    #         file: {
    #           certificate_chain: "FilePath", # required
    #           private_key: "FilePath", # required
    #         },
    #       }
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents an AWS Certicate Manager
    #   (ACM) certificate.
    #   @return [Types::ListenerTlsAcmCertificate]
    #
    # @!attribute [rw] file
    #   A reference to an object that represents a local file certificate.
    #   @return [Types::ListenerTlsFileCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsCertificate AWS API Documentation
    #
    class ListenerTlsCertificate < Struct.new(
      :acm,
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the specification of a virtual router.
    #
    # @note When making an API call, you may pass VirtualRouterSpec
    #   data as a hash:
    #
    #       {
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] listeners
    #   The listeners that the virtual router is expected to receive inbound
    #   traffic from. You can specify one listener.
    #   @return [Array<Types::VirtualRouterListener>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualRouterSpec AWS API Documentation
    #
    class VirtualRouterSpec < Struct.new(
      :listeners)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the virtual service that traffic is routed
    # to.
    #
    # @note When making an API call, you may pass GatewayRouteVirtualService
    #   data as a hash:
    #
    #       {
    #         virtual_service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service that traffic is routed to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteVirtualService AWS API Documentation
    #
    class GatewayRouteVirtualService < Struct.new(
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the specification of a virtual node.
    #
    # @note When making an API call, you may pass VirtualNodeSpec
    #   data as a hash:
    #
    #       {
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               validation: { # required
    #                 trust: { # required
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #         },
    #         backends: [
    #           {
    #             virtual_service: {
    #               client_policy: {
    #                 tls: {
    #                   enforce: false,
    #                   ports: [1],
    #                   validation: { # required
    #                     trust: { # required
    #                       acm: {
    #                         certificate_authority_arns: ["Arn"], # required
    #                       },
    #                       file: {
    #                         certificate_chain: "FilePath", # required
    #                       },
    #                     },
    #                   },
    #                 },
    #               },
    #               virtual_service_name: "ServiceName", # required
    #             },
    #           },
    #         ],
    #         listeners: [
    #           {
    #             health_check: {
    #               healthy_threshold: 1, # required
    #               interval_millis: 1, # required
    #               path: "String",
    #               port: 1,
    #               protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #               timeout_millis: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #             },
    #             timeout: {
    #               grpc: {
    #                 idle: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #                 per_request: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #               },
    #               http: {
    #                 idle: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #                 per_request: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #               },
    #               http2: {
    #                 idle: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #                 per_request: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #               },
    #               tcp: {
    #                 idle: {
    #                   unit: "ms", # accepts ms, s
    #                   value: 1,
    #                 },
    #               },
    #             },
    #             tls: {
    #               certificate: { # required
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #               },
    #               mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #             },
    #           },
    #         ],
    #         logging: {
    #           access_log: {
    #             file: {
    #               path: "FilePath", # required
    #             },
    #           },
    #         },
    #         service_discovery: {
    #           aws_cloud_map: {
    #             attributes: [
    #               {
    #                 key: "AwsCloudMapInstanceAttributeKey", # required
    #                 value: "AwsCloudMapInstanceAttributeValue", # required
    #               },
    #             ],
    #             namespace_name: "AwsCloudMapName", # required
    #             service_name: "AwsCloudMapName", # required
    #           },
    #           dns: {
    #             hostname: "Hostname", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] backend_defaults
    #   A reference to an object that represents the defaults for backends.
    #   @return [Types::BackendDefaults]
    #
    # @!attribute [rw] backends
    #   The backends that the virtual node is expected to send outbound
    #   traffic to.
    #   @return [Array<Types::Backend>]
    #
    # @!attribute [rw] listeners
    #   The listener that the virtual node is expected to receive inbound
    #   traffic from. You can specify one listener.
    #   @return [Array<Types::Listener>]
    #
    # @!attribute [rw] logging
    #   The inbound and outbound access logging information for the virtual
    #   node.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] service_discovery
    #   The service discovery information for the virtual node. If your
    #   virtual node does not expect ingress traffic, you can omit this
    #   parameter. If you specify a `listener`, then you must specify
    #   service discovery information.
    #   @return [Types::ServiceDiscovery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeSpec AWS API Documentation
    #
    class VirtualNodeSpec < Struct.new(
      :backend_defaults,
      :backends,
      :listeners,
      :logging,
      :service_discovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meshes
    #   The list of existing service meshes.
    #   @return [Array<Types::MeshRef>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListMeshes` request.
    #   When the results of a `ListMeshes` request exceed `limit`, you can
    #   use this value to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListMeshesOutput AWS API Documentation
    #
    class ListMeshesOutput < Struct.new(
      :meshes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a gateway route specification. Specify one
    # gateway route type.
    #
    # @note When making an API call, you may pass GatewayRouteSpec
    #   data as a hash:
    #
    #       {
    #         grpc_route: {
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #             },
    #           },
    #           match: { # required
    #             service_name: "ServiceName",
    #           },
    #         },
    #         http2_route: {
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #             },
    #           },
    #           match: { # required
    #             prefix: "String", # required
    #           },
    #         },
    #         http_route: {
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #             },
    #           },
    #           match: { # required
    #             prefix: "String", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] grpc_route
    #   An object that represents the specification of a gRPC gateway route.
    #   @return [Types::GrpcGatewayRoute]
    #
    # @!attribute [rw] http2_route
    #   An object that represents the specification of an HTTP/2 gateway
    #   route.
    #   @return [Types::HttpGatewayRoute]
    #
    # @!attribute [rw] http_route
    #   An object that represents the specification of an HTTP gateway
    #   route.
    #   @return [Types::HttpGatewayRoute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteSpec AWS API Documentation
    #
    class GatewayRouteSpec < Struct.new(
      :grpc_route,
      :http2_route,
      :http_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains a client token that was used for a previous
    # update resource call with different specifications. Try the request
    # again with a new client token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the default properties for a backend.
    #
    # @note When making an API call, you may pass VirtualGatewayBackendDefaults
    #   data as a hash:
    #
    #       {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_policy
    #   A reference to an object that represents a client policy.
    #   @return [Types::VirtualGatewayClientPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayBackendDefaults AWS API Documentation
    #
    class VirtualGatewayBackendDefaults < Struct.new(
      :client_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents timeouts for different protocols.
    #
    # @note When making an API call, you may pass ListenerTimeout
    #   data as a hash:
    #
    #       {
    #         grpc: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #         http: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #         http2: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #         tcp: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] grpc
    #   An object that represents types of timeouts.
    #   @return [Types::GrpcTimeout]
    #
    # @!attribute [rw] http
    #   An object that represents types of timeouts.
    #   @return [Types::HttpTimeout]
    #
    # @!attribute [rw] http2
    #   An object that represents types of timeouts.
    #   @return [Types::HttpTimeout]
    #
    # @!attribute [rw] tcp
    #   An object that represents types of timeouts.
    #   @return [Types::TcpTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTimeout AWS API Documentation
    #
    class ListenerTimeout < Struct.new(
      :grpc,
      :http,
      :http2,
      :tcp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGatewayRouteInput
    #   data as a hash:
    #
    #       {
    #         gateway_route_name: "ResourceName", # required
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route to describe.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway that the gateway route is associated
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeGatewayRouteInput AWS API Documentation
    #
    class DescribeGatewayRouteInput < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :mesh_owner,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust.
    #
    # @note When making an API call, you may pass TlsValidationContextTrust
    #   data as a hash:
    #
    #       {
    #         acm: {
    #           certificate_authority_arns: ["Arn"], # required
    #         },
    #         file: {
    #           certificate_chain: "FilePath", # required
    #         },
    #       }
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents a TLS validation context
    #   trust for an AWS Certicate Manager (ACM) certificate.
    #   @return [Types::TlsValidationContextAcmTrust]
    #
    # @!attribute [rw] file
    #   An object that represents a TLS validation context trust for a local
    #   file.
    #   @return [Types::TlsValidationContextFileTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContextTrust AWS API Documentation
    #
    class TlsValidationContextTrust < Struct.new(
      :acm,
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a port mapping.
    #
    # @note When making an API call, you may pass PortMapping
    #   data as a hash:
    #
    #       {
    #         port: 1, # required
    #         protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #       }
    #
    # @!attribute [rw] port
    #   The port used for the port mapping.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping. Specify one protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListVirtualServices`
    #   request. When the results of a `ListVirtualServices` request exceed
    #   `limit`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] virtual_services
    #   The list of existing virtual services for the specified service
    #   mesh.
    #   @return [Array<Types::VirtualServiceRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualServicesOutput AWS API Documentation
    #
    class ListVirtualServicesOutput < Struct.new(
      :next_token,
      :virtual_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a target and its relative weight. Traffic is
    # distributed across targets according to their relative weight. For
    # example, a weighted target with a relative weight of 50 receives five
    # times as much traffic as one with a relative weight of 10. The total
    # weight for all targets combined must be less than or equal to 100.
    #
    # @note When making an API call, you may pass WeightedTarget
    #   data as a hash:
    #
    #       {
    #         virtual_node: "ResourceName", # required
    #         weight: 1, # required
    #       }
    #
    # @!attribute [rw] virtual_node
    #   The virtual node to associate with the weighted target.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The relative weight of the weighted target.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/WeightedTarget AWS API Documentation
    #
    class WeightedTarget < Struct.new(
      :virtual_node,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a gRPC gateway route.
    #
    # @note When making an API call, you may pass GrpcGatewayRoute
    #   data as a hash:
    #
    #       {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           service_name: "ServiceName",
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   An object that represents the action to take if a match is
    #   determined.
    #   @return [Types::GrpcGatewayRouteAction]
    #
    # @!attribute [rw] match
    #   An object that represents the criteria for determining a request
    #   match.
    #   @return [Types::GrpcGatewayRouteMatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRoute AWS API Documentation
    #
    class GrpcGatewayRoute < Struct.new(
      :action,
      :match)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a gateway route returned by a describe
    # operation.
    #
    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the resource resides in.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   An object that represents metadata for a resource.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the gateway route.
    #   @return [Types::GatewayRouteSpec]
    #
    # @!attribute [rw] status
    #   The status of the gateway route.
    #   @return [Types::GatewayRouteStatus]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The virtual gateway that the gateway route is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteData AWS API Documentation
    #
    class GatewayRouteData < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a route returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the route.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_router_name
    #   The virtual router that the route is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/RouteRef AWS API Documentation
    #
    class RouteRef < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :route_name,
      :version,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual node in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualNodeInput AWS API Documentation
    #
    class DeleteVirtualNodeInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a route returned by a describe operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the route resides in.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the route.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] route_name
    #   The name of the route.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The specifications of the route.
    #   @return [Types::RouteSpec]
    #
    # @!attribute [rw] status
    #   The status of the route.
    #   @return [Types::RouteStatus]
    #
    # @!attribute [rw] virtual_router_name
    #   The virtual router that the route is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/RouteData AWS API Documentation
    #
    class RouteData < Struct.new(
      :mesh_name,
      :metadata,
      :route_name,
      :spec,
      :status,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a TLS validation context trust for an AWS
    # Certicate Manager (ACM) certificate.
    #
    # @note When making an API call, you may pass TlsValidationContextAcmTrust
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arns
    #   One or more ACM Amazon Resource Name (ARN)s.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContextAcmTrust AWS API Documentation
    #
    class TlsValidationContextAcmTrust < Struct.new(
      :certificate_authority_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the method and value to match with the
    # header value sent in a request. Specify one match method.
    #
    # @note When making an API call, you may pass HeaderMatchMethod
    #   data as a hash:
    #
    #       {
    #         exact: "HeaderMatch",
    #         prefix: "HeaderMatch",
    #         range: {
    #           end: 1, # required
    #           start: 1, # required
    #         },
    #         regex: "HeaderMatch",
    #         suffix: "HeaderMatch",
    #       }
    #
    # @!attribute [rw] exact
    #   The value sent by the client must match the specified value exactly.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The value sent by the client must begin with the specified
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   An object that represents the range of values to match on.
    #   @return [Types::MatchRange]
    #
    # @!attribute [rw] regex
    #   The value sent by the client must include the specified characters.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   The value sent by the client must end with the specified characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HeaderMatchMethod AWS API Documentation
    #
    class HeaderMatchMethod < Struct.new(
      :exact,
      :prefix,
      :range,
      :regex,
      :suffix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mesh
    #   The service mesh that was deleted.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteMeshOutput AWS API Documentation
    #
    class DeleteMeshOutput < Struct.new(
      :mesh)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) client
    # policy.
    #
    # @note When making an API call, you may pass VirtualGatewayClientPolicyTls
    #   data as a hash:
    #
    #       {
    #         enforce: false,
    #         ports: [1],
    #         validation: { # required
    #           trust: { # required
    #             acm: {
    #               certificate_authority_arns: ["Arn"], # required
    #             },
    #             file: {
    #               certificate_chain: "FilePath", # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] enforce
    #   Whether the policy is enforced. The default is `True`, if a value
    #   isn't specified.
    #   @return [Boolean]
    #
    # @!attribute [rw] ports
    #   One or more ports that the policy is enforced for.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] validation
    #   A reference to an object that represents a TLS validation context.
    #   @return [Types::VirtualGatewayTlsValidationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayClientPolicyTls AWS API Documentation
    #
    class VirtualGatewayClientPolicyTls < Struct.new(
      :enforce,
      :ports,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the status of the mesh resource.
    #
    # @!attribute [rw] status
    #   The current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayStatus AWS API Documentation
    #
    class VirtualGatewayStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the current status of a gateway route.
    #
    # @!attribute [rw] status
    #   The current status for the gateway route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteStatus AWS API Documentation
    #
    class GatewayRouteStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs. Tag keys can have a maximum character length of 128
    #   characters, and tag values can have a maximum length of 256
    #   characters.
    #   @return [Array<Types::TagRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_gateway
    #   The full description of your virtual gateway following the create
    #   call.
    #   @return [Types::VirtualGatewayData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualGatewayOutput AWS API Documentation
    #
    class CreateVirtualGatewayOutput < Struct.new(
      :virtual_gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListVirtualGateways`
    #   request. When the results of a `ListVirtualGateways` request exceed
    #   `limit`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateways
    #   The list of existing virtual gateways for the specified service
    #   mesh.
    #   @return [Array<Types::VirtualGatewayRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualGatewaysOutput AWS API Documentation
    #
    class ListVirtualGatewaysOutput < Struct.new(
      :next_token,
      :virtual_gateways)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context.
    #
    # @note When making an API call, you may pass VirtualGatewayTlsValidationContext
    #   data as a hash:
    #
    #       {
    #         trust: { # required
    #           acm: {
    #             certificate_authority_arns: ["Arn"], # required
    #           },
    #           file: {
    #             certificate_chain: "FilePath", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] trust
    #   A reference to an object that represents a TLS validation context
    #   trust.
    #   @return [Types::VirtualGatewayTlsValidationContextTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContext AWS API Documentation
    #
    class VirtualGatewayTlsValidationContext < Struct.new(
      :trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the provider for a virtual service.
    #
    # @note When making an API call, you may pass VirtualServiceProvider
    #   data as a hash:
    #
    #       {
    #         virtual_node: {
    #           virtual_node_name: "ResourceName", # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: "ResourceName", # required
    #         },
    #       }
    #
    # @!attribute [rw] virtual_node
    #   The virtual node associated with a virtual service.
    #   @return [Types::VirtualNodeServiceProvider]
    #
    # @!attribute [rw] virtual_router
    #   The virtual router associated with a virtual service.
    #   @return [Types::VirtualRouterServiceProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualServiceProvider AWS API Documentation
    #
    class VirtualServiceProvider < Struct.new(
      :virtual_node,
      :virtual_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the criteria for determining a request
    # match.
    #
    # @note When making an API call, you may pass GrpcRouteMatch
    #   data as a hash:
    #
    #       {
    #         metadata: [
    #           {
    #             invert: false,
    #             match: {
    #               exact: "HeaderMatch",
    #               prefix: "HeaderMatch",
    #               range: {
    #                 end: 1, # required
    #                 start: 1, # required
    #               },
    #               regex: "HeaderMatch",
    #               suffix: "HeaderMatch",
    #             },
    #             name: "HeaderName", # required
    #           },
    #         ],
    #         method_name: "MethodName",
    #         service_name: "ServiceName",
    #       }
    #
    # @!attribute [rw] metadata
    #   An object that represents the data to match from the request.
    #   @return [Array<Types::GrpcRouteMetadata>]
    #
    # @!attribute [rw] method_name
    #   The method name to match from the request. If you specify a name,
    #   you must also specify a `serviceName`.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The fully qualified domain name for the service to match from the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcRouteMatch AWS API Documentation
    #
    class GrpcRouteMatch < Struct.new(
      :metadata,
      :method_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the AWS Cloud Map service discovery
    # information for your virtual node.
    #
    # @note When making an API call, you may pass AwsCloudMapServiceDiscovery
    #   data as a hash:
    #
    #       {
    #         attributes: [
    #           {
    #             key: "AwsCloudMapInstanceAttributeKey", # required
    #             value: "AwsCloudMapInstanceAttributeValue", # required
    #           },
    #         ],
    #         namespace_name: "AwsCloudMapName", # required
    #         service_name: "AwsCloudMapName", # required
    #       }
    #
    # @!attribute [rw] attributes
    #   A string map that contains attributes with values that you can use
    #   to filter instances by any custom attribute that you specified when
    #   you registered the instance. Only instances that match all of the
    #   specified key/value pairs will be returned.
    #   @return [Array<Types::AwsCloudMapInstanceAttribute>]
    #
    # @!attribute [rw] namespace_name
    #   The name of the AWS Cloud Map namespace to use.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS Cloud Map service to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/AwsCloudMapServiceDiscovery AWS API Documentation
    #
    class AwsCloudMapServiceDiscovery < Struct.new(
      :attributes,
      :namespace_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_service
    #   A full description of the virtual service that was updated.
    #   @return [Types::VirtualServiceData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualServiceOutput AWS API Documentation
    #
    class UpdateVirtualServiceOutput < Struct.new(
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the status of a service mesh.
    #
    # @!attribute [rw] status
    #   The current mesh status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MeshStatus AWS API Documentation
    #
    class MeshStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           backend_defaults: {
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 validation: { # required
    #                   trust: { # required
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #           backends: [
    #             {
    #               virtual_service: {
    #                 client_policy: {
    #                   tls: {
    #                     enforce: false,
    #                     ports: [1],
    #                     validation: { # required
    #                       trust: { # required
    #                         acm: {
    #                           certificate_authority_arns: ["Arn"], # required
    #                         },
    #                         file: {
    #                           certificate_chain: "FilePath", # required
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #                 virtual_service_name: "ServiceName", # required
    #               },
    #             },
    #           ],
    #           listeners: [
    #             {
    #               health_check: {
    #                 healthy_threshold: 1, # required
    #                 interval_millis: 1, # required
    #                 path: "String",
    #                 port: 1,
    #                 protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #                 timeout_millis: 1, # required
    #                 unhealthy_threshold: 1, # required
    #               },
    #               port_mapping: { # required
    #                 port: 1, # required
    #                 protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #               },
    #               timeout: {
    #                 grpc: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                   per_request: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #                 http: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                   per_request: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #                 http2: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                   per_request: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #                 tcp: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #               },
    #               tls: {
    #                 certificate: { # required
    #                   acm: {
    #                     certificate_arn: "Arn", # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                 },
    #                 mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #               },
    #             },
    #           ],
    #           logging: {
    #             access_log: {
    #               file: {
    #                 path: "FilePath", # required
    #               },
    #             },
    #           },
    #           service_discovery: {
    #             aws_cloud_map: {
    #               attributes: [
    #                 {
    #                   key: "AwsCloudMapInstanceAttributeKey", # required
    #                   value: "AwsCloudMapInstanceAttributeValue", # required
    #                 },
    #               ],
    #               namespace_name: "AwsCloudMapName", # required
    #               service_name: "AwsCloudMapName", # required
    #             },
    #             dns: {
    #               hostname: "Hostname", # required
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to create the virtual node in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then the account that you specify must share the
    #   mesh with your account before you can create the resource in the
    #   service mesh. For more information about mesh sharing, see [Working
    #   with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The virtual node specification to apply.
    #   @return [Types::VirtualNodeSpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the virtual node to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @!attribute [rw] virtual_node_name
    #   The name to use for the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualNodeInput AWS API Documentation
    #
    class CreateVirtualNodeInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :tags,
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist. Check your request syntax and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a route specification. Specify one route
    # type.
    #
    # @note When making an API call, you may pass RouteSpec
    #   data as a hash:
    #
    #       {
    #         grpc_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #               },
    #             ],
    #           },
    #           match: { # required
    #             metadata: [
    #               {
    #                 invert: false,
    #                 match: {
    #                   exact: "HeaderMatch",
    #                   prefix: "HeaderMatch",
    #                   range: {
    #                     end: 1, # required
    #                     start: 1, # required
    #                   },
    #                   regex: "HeaderMatch",
    #                   suffix: "HeaderMatch",
    #                 },
    #                 name: "HeaderName", # required
    #               },
    #             ],
    #             method_name: "MethodName",
    #             service_name: "ServiceName",
    #           },
    #           retry_policy: {
    #             grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             max_retries: 1, # required
    #             per_retry_timeout: { # required
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             tcp_retry_events: ["connection-error"], # accepts connection-error
    #           },
    #           timeout: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             per_request: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #         },
    #         http2_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #               },
    #             ],
    #           },
    #           match: { # required
    #             headers: [
    #               {
    #                 invert: false,
    #                 match: {
    #                   exact: "HeaderMatch",
    #                   prefix: "HeaderMatch",
    #                   range: {
    #                     end: 1, # required
    #                     start: 1, # required
    #                   },
    #                   regex: "HeaderMatch",
    #                   suffix: "HeaderMatch",
    #                 },
    #                 name: "HeaderName", # required
    #               },
    #             ],
    #             method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #             prefix: "String", # required
    #             scheme: "http", # accepts http, https
    #           },
    #           retry_policy: {
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             max_retries: 1, # required
    #             per_retry_timeout: { # required
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             tcp_retry_events: ["connection-error"], # accepts connection-error
    #           },
    #           timeout: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             per_request: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #         },
    #         http_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #               },
    #             ],
    #           },
    #           match: { # required
    #             headers: [
    #               {
    #                 invert: false,
    #                 match: {
    #                   exact: "HeaderMatch",
    #                   prefix: "HeaderMatch",
    #                   range: {
    #                     end: 1, # required
    #                     start: 1, # required
    #                   },
    #                   regex: "HeaderMatch",
    #                   suffix: "HeaderMatch",
    #                 },
    #                 name: "HeaderName", # required
    #               },
    #             ],
    #             method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #             prefix: "String", # required
    #             scheme: "http", # accepts http, https
    #           },
    #           retry_policy: {
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             max_retries: 1, # required
    #             per_retry_timeout: { # required
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             tcp_retry_events: ["connection-error"], # accepts connection-error
    #           },
    #           timeout: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             per_request: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #         },
    #         priority: 1,
    #         tcp_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #               },
    #             ],
    #           },
    #           timeout: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] grpc_route
    #   An object that represents the specification of a gRPC route.
    #   @return [Types::GrpcRoute]
    #
    # @!attribute [rw] http2_route
    #   An object that represents the specification of an HTTP/2 route.
    #   @return [Types::HttpRoute]
    #
    # @!attribute [rw] http_route
    #   An object that represents the specification of an HTTP route.
    #   @return [Types::HttpRoute]
    #
    # @!attribute [rw] priority
    #   The priority for the route. Routes are matched based on the
    #   specified value, where 0 is the highest priority.
    #   @return [Integer]
    #
    # @!attribute [rw] tcp_route
    #   An object that represents the specification of a TCP route.
    #   @return [Types::TcpRoute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/RouteSpec AWS API Documentation
    #
    class RouteSpec < Struct.new(
      :grpc_route,
      :http2_route,
      :http_route,
      :priority,
      :tcp_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a gateway route returned by a list
    # operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the gateway route.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the resource resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The virtual gateway that the gateway route is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteRef AWS API Documentation
    #
    class GatewayRouteRef < Struct.new(
      :arn,
      :created_at,
      :gateway_route_name,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :version,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an AWS Certicate Manager (ACM) certificate.
    #
    # @note When making an API call, you may pass VirtualGatewayListenerTlsAcmCertificate
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate. The certificate
    #   must meet specific requirements and you must have proxy
    #   authorization enabled. For more information, see [Transport Layer
    #   Security (TLS)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsAcmCertificate AWS API Documentation
    #
    class VirtualGatewayListenerTlsAcmCertificate < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_routes
    #   The list of existing gateway routes for the specified service mesh
    #   and virtual gateway.
    #   @return [Array<Types::GatewayRouteRef>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListGatewayRoutes`
    #   request. When the results of a `ListGatewayRoutes` request exceed
    #   `limit`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListGatewayRoutesOutput AWS API Documentation
    #
    class ListGatewayRoutesOutput < Struct.new(
      :gateway_routes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_service
    #   The full description of your virtual service following the create
    #   call.
    #   @return [Types::VirtualServiceData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualServiceOutput AWS API Documentation
    #
    class CreateVirtualServiceOutput < Struct.new(
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an access log file.
    #
    # @note When making an API call, you may pass FileAccessLog
    #   data as a hash:
    #
    #       {
    #         path: "FilePath", # required
    #       }
    #
    # @!attribute [rw] path
    #   The file path to write access logs to. You can use `/dev/stdout` to
    #   send access logs to standard out and configure your Envoy container
    #   to use a log driver, such as `awslogs`, to export the access logs to
    #   a log storage service such as Amazon CloudWatch Logs. You can also
    #   specify a path in the Envoy container's file system to write the
    #   files to disk.
    #
    #   <note markdown="1"> The Envoy process must have write permissions to the path that you
    #   specify here. Otherwise, Envoy fails to bootstrap properly.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/FileAccessLog AWS API Documentation
    #
    class FileAccessLog < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual node service provider.
    #
    # @note When making an API call, you may pass VirtualRouterServiceProvider
    #   data as a hash:
    #
    #       {
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router that is acting as a service provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualRouterServiceProvider AWS API Documentation
    #
    class VirtualRouterServiceProvider < Struct.new(
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents types of timeouts.
    #
    # @note When making an API call, you may pass HttpTimeout
    #   data as a hash:
    #
    #       {
    #         idle: {
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #         per_request: {
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #       }
    #
    # @!attribute [rw] idle
    #   An object that represents a duration of time.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] per_request
    #   An object that represents a duration of time.
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpTimeout AWS API Documentation
    #
    class HttpTimeout < Struct.new(
      :idle,
      :per_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualServiceInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_service_name: "ServiceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual service in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualServiceInput AWS API Documentation
    #
    class DeleteVirtualServiceInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context.
    #
    # @note When making an API call, you may pass TlsValidationContext
    #   data as a hash:
    #
    #       {
    #         trust: { # required
    #           acm: {
    #             certificate_authority_arns: ["Arn"], # required
    #           },
    #           file: {
    #             certificate_chain: "FilePath", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] trust
    #   A reference to an object that represents a TLS validation context
    #   trust.
    #   @return [Types::TlsValidationContextTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContext AWS API Documentation
    #
    class TlsValidationContext < Struct.new(
      :trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   The virtual router that was deleted.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualRouterOutput AWS API Documentation
    #
    class DeleteVirtualRouterOutput < Struct.new(
      :virtual_router)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVirtualGatewayInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualGatewayInput AWS API Documentation
    #
    class DescribeVirtualGatewayInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the action to take if a match is determined.
    #
    # @note When making an API call, you may pass GrpcGatewayRouteAction
    #   data as a hash:
    #
    #       {
    #         target: { # required
    #           virtual_service: { # required
    #             virtual_service_name: "ResourceName", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] target
    #   An object that represents the target that traffic is routed to when
    #   a request matches the gateway route.
    #   @return [Types::GatewayRouteTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRouteAction AWS API Documentation
    #
    class GrpcGatewayRouteAction < Struct.new(
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   The virtual node that was deleted.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualNodeOutput AWS API Documentation
    #
    class DeleteVirtualNodeOutput < Struct.new(
      :virtual_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           backend_defaults: {
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 validation: { # required
    #                   trust: { # required
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           },
    #           backends: [
    #             {
    #               virtual_service: {
    #                 client_policy: {
    #                   tls: {
    #                     enforce: false,
    #                     ports: [1],
    #                     validation: { # required
    #                       trust: { # required
    #                         acm: {
    #                           certificate_authority_arns: ["Arn"], # required
    #                         },
    #                         file: {
    #                           certificate_chain: "FilePath", # required
    #                         },
    #                       },
    #                     },
    #                   },
    #                 },
    #                 virtual_service_name: "ServiceName", # required
    #               },
    #             },
    #           ],
    #           listeners: [
    #             {
    #               health_check: {
    #                 healthy_threshold: 1, # required
    #                 interval_millis: 1, # required
    #                 path: "String",
    #                 port: 1,
    #                 protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #                 timeout_millis: 1, # required
    #                 unhealthy_threshold: 1, # required
    #               },
    #               port_mapping: { # required
    #                 port: 1, # required
    #                 protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #               },
    #               timeout: {
    #                 grpc: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                   per_request: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #                 http: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                   per_request: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #                 http2: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                   per_request: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #                 tcp: {
    #                   idle: {
    #                     unit: "ms", # accepts ms, s
    #                     value: 1,
    #                   },
    #                 },
    #               },
    #               tls: {
    #                 certificate: { # required
    #                   acm: {
    #                     certificate_arn: "Arn", # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                 },
    #                 mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #               },
    #             },
    #           ],
    #           logging: {
    #             access_log: {
    #               file: {
    #                 path: "FilePath", # required
    #               },
    #             },
    #           },
    #           service_discovery: {
    #             aws_cloud_map: {
    #               attributes: [
    #                 {
    #                   key: "AwsCloudMapInstanceAttributeKey", # required
    #                   value: "AwsCloudMapInstanceAttributeValue", # required
    #                 },
    #               ],
    #               namespace_name: "AwsCloudMapName", # required
    #               service_name: "AwsCloudMapName", # required
    #             },
    #             dns: {
    #               hostname: "Hostname", # required
    #             },
    #           },
    #         },
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new virtual node specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::VirtualNodeSpec]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualNodeInput AWS API Documentation
    #
    class UpdateVirtualNodeInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the Transport Layer Security (TLS)
    # properties for a listener.
    #
    # @note When making an API call, you may pass ListenerTls
    #   data as a hash:
    #
    #       {
    #         certificate: { # required
    #           acm: {
    #             certificate_arn: "Arn", # required
    #           },
    #           file: {
    #             certificate_chain: "FilePath", # required
    #             private_key: "FilePath", # required
    #           },
    #         },
    #         mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #       }
    #
    # @!attribute [rw] certificate
    #   A reference to an object that represents a listener's TLS
    #   certificate.
    #   @return [Types::ListenerTlsCertificate]
    #
    # @!attribute [rw] mode
    #   Specify one of the following modes.
    #
    #   * ****STRICT – Listener only accepts connections with TLS enabled.
    #
    #   * ****PERMISSIVE – Listener accepts connections with or without TLS
    #     enabled.
    #
    #   * ****DISABLED – Listener only accepts connections without TLS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTls AWS API Documentation
    #
    class ListenerTls < Struct.new(
      :certificate,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMeshInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteMeshInput AWS API Documentation
    #
    class DeleteMeshInput < Struct.new(
      :mesh_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualServiceInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           provider: {
    #             virtual_node: {
    #               virtual_node_name: "ResourceName", # required
    #             },
    #             virtual_router: {
    #               virtual_router_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         virtual_service_name: "ServiceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to create the virtual service in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then the account that you specify must share the
    #   mesh with your account before you can create the resource in the
    #   service mesh. For more information about mesh sharing, see [Working
    #   with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The virtual service specification to apply.
    #   @return [Types::VirtualServiceSpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the virtual service to
    #   assist with categorization and organization. Each tag consists of a
    #   key and an optional value, both of which you define. Tag keys can
    #   have a maximum character length of 128 characters, and tag values
    #   can have a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @!attribute [rw] virtual_service_name
    #   The name to use for the virtual service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualServiceInput AWS API Documentation
    #
    class CreateVirtualServiceInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :tags,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           listeners: [
    #             {
    #               port_mapping: { # required
    #                 port: 1, # required
    #                 protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #               },
    #             },
    #           ],
    #         },
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new virtual router specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::VirtualRouterSpec]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualRouterInput AWS API Documentation
    #
    class UpdateVirtualRouterInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the action to take if a match is determined.
    #
    # @note When making an API call, you may pass HttpGatewayRouteAction
    #   data as a hash:
    #
    #       {
    #         target: { # required
    #           virtual_service: { # required
    #             virtual_service_name: "ResourceName", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] target
    #   An object that represents the target that traffic is routed to when
    #   a request matches the gateway route.
    #   @return [Types::GatewayRouteTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRouteAction AWS API Documentation
    #
    class HttpGatewayRouteAction < Struct.new(
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the criteria for determining a request
    # match.
    #
    # @note When making an API call, you may pass GrpcGatewayRouteMatch
    #   data as a hash:
    #
    #       {
    #         service_name: "ServiceName",
    #       }
    #
    # @!attribute [rw] service_name
    #   The fully qualified domain name for the service to match from the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRouteMatch AWS API Documentation
    #
    class GrpcGatewayRouteMatch < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "String",
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of tag results returned by `ListTagsForResource`
    #   in paginated output. When this parameter is used,
    #   `ListTagsForResource` returns only `limit` results in a single page
    #   along with a `nextToken` response element. You can see the remaining
    #   results of the initial request by sending another
    #   `ListTagsForResource` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If you don't use this
    #   parameter, `ListTagsForResource` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListTagsForResource` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :limit,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to a temporary failure of the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mesh
    #   The full description of your service mesh.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeMeshOutput AWS API Documentation
    #
    class DescribeMeshOutput < Struct.new(
      :mesh)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual router in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualRouterInput AWS API Documentation
    #
    class DeleteVirtualRouterInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_route
    #   A full description of the gateway route that was updated.
    #   @return [Types::GatewayRouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateGatewayRouteOutput AWS API Documentation
    #
    class UpdateGatewayRouteOutput < Struct.new(
      :gateway_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRouteInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         route_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route to describe.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router that the route is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeRouteInput AWS API Documentation
    #
    class DescribeRouteInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :route_name,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   The route that was deleted.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteRouteOutput AWS API Documentation
    #
    class DeleteRouteOutput < Struct.new(
      :route)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_route
    #   The gateway route that was deleted.
    #   @return [Types::GatewayRouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteGatewayRouteOutput AWS API Documentation
    #
    class DeleteGatewayRouteOutput < Struct.new(
      :gateway_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVirtualServiceInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           provider: {
    #             virtual_node: {
    #               virtual_node_name: "ResourceName", # required
    #             },
    #             virtual_router: {
    #               virtual_router_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         virtual_service_name: "ServiceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new virtual service specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::VirtualServiceSpec]
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualServiceInput AWS API Documentation
    #
    class UpdateVirtualServiceInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :spec,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   A full description of the route that was updated.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateRouteOutput AWS API Documentation
    #
    class UpdateRouteOutput < Struct.new(
      :route)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the action to take if a match is determined.
    #
    # @note When making an API call, you may pass HttpRouteAction
    #   data as a hash:
    #
    #       {
    #         weighted_targets: [ # required
    #           {
    #             virtual_node: "ResourceName", # required
    #             weight: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] weighted_targets
    #   An object that represents the targets that traffic is routed to when
    #   a request matches the route.
    #   @return [Array<Types::WeightedTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpRouteAction AWS API Documentation
    #
    class HttpRouteAction < Struct.new(
      :weighted_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoutesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         next_token: "String",
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListRoutes` in paginated
    #   output. When you use this parameter, `ListRoutes` returns only
    #   `limit` results in a single page along with a `nextToken` response
    #   element. You can see the remaining results of the initial request by
    #   sending another `ListRoutes` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If you don't use this
    #   parameter, `ListRoutes` returns up to 100 results and a `nextToken`
    #   value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to list routes in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRoutes` request where `limit` was used and the results exceeded
    #   the value of that parameter. Pagination continues from the end of
    #   the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to list routes in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListRoutesInput AWS API Documentation
    #
    class ListRoutesInput < Struct.new(
      :limit,
      :mesh_name,
      :mesh_owner,
      :next_token,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual service returned by a list
    # operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the virtual service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualServiceRef AWS API Documentation
    #
    class VirtualServiceRef < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :version,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents types of timeouts.
    #
    # @note When making an API call, you may pass GrpcTimeout
    #   data as a hash:
    #
    #       {
    #         idle: {
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #         per_request: {
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #       }
    #
    # @!attribute [rw] idle
    #   An object that represents an idle timeout. An idle timeout bounds
    #   the amount of time that a connection may be idle. The default value
    #   is none.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] per_request
    #   An object that represents a per request timeout. The default value
    #   is 15 seconds. If you set a higher timeout, then make sure that the
    #   higher value is set for each App Mesh resource in a conversation.
    #   For example, if a virtual node backend uses a virtual router
    #   provider to route to another virtual node, then the timeout should
    #   be greater than 15 seconds for the source and destination virtual
    #   node and the route.
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcTimeout AWS API Documentation
    #
    class GrpcTimeout < Struct.new(
      :idle,
      :per_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the current status of the virtual node.
    #
    # @!attribute [rw] status
    #   The current status of the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeStatus AWS API Documentation
    #
    class VirtualNodeStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual router returned by a list
    # operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the virtual router.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualRouterRef AWS API Documentation
    #
    class VirtualRouterRef < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :version,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual service returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   An object that represents metadata for a resource.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the virtual service.
    #   @return [Types::VirtualServiceSpec]
    #
    # @!attribute [rw] status
    #   The current status of the virtual service.
    #   @return [Types::VirtualServiceStatus]
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualServiceData AWS API Documentation
    #
    class VirtualServiceData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the HTTP header in the request.
    #
    # @note When making an API call, you may pass HttpRouteHeader
    #   data as a hash:
    #
    #       {
    #         invert: false,
    #         match: {
    #           exact: "HeaderMatch",
    #           prefix: "HeaderMatch",
    #           range: {
    #             end: 1, # required
    #             start: 1, # required
    #           },
    #           regex: "HeaderMatch",
    #           suffix: "HeaderMatch",
    #         },
    #         name: "HeaderName", # required
    #       }
    #
    # @!attribute [rw] invert
    #   Specify `True` to match anything except the match criteria. The
    #   default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   The `HeaderMatchMethod` object.
    #   @return [Types::HeaderMatchMethod]
    #
    # @!attribute [rw] name
    #   A name for the HTTP header in the client request that will be
    #   matched on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpRouteHeader AWS API Documentation
    #
    class HttpRouteHeader < Struct.new(
      :invert,
      :match,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual node returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the virtual node.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeRef AWS API Documentation
    #
    class VirtualNodeRef < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :version,
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMeshInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         spec: {
    #           egress_filter: {
    #             type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DROP_ALL
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name to use for the service mesh.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The service mesh specification to apply.
    #   @return [Types::MeshSpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the service mesh to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateMeshInput AWS API Documentation
    #
    class CreateMeshInput < Struct.new(
      :client_token,
      :mesh_name,
      :spec,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the action to take if a match is determined.
    #
    # @note When making an API call, you may pass GrpcRouteAction
    #   data as a hash:
    #
    #       {
    #         weighted_targets: [ # required
    #           {
    #             virtual_node: "ResourceName", # required
    #             weight: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] weighted_targets
    #   An object that represents the targets that traffic is routed to when
    #   a request matches the route.
    #   @return [Array<Types::WeightedTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcRouteAction AWS API Documentation
    #
    class GrpcRouteAction < Struct.new(
      :weighted_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust for a local file.
    #
    # @note When making an API call, you may pass VirtualGatewayTlsValidationContextFileTrust
    #   data as a hash:
    #
    #       {
    #         certificate_chain: "FilePath", # required
    #       }
    #
    # @!attribute [rw] certificate_chain
    #   The certificate trust chain for a certificate stored on the file
    #   system of the virtual node that the proxy is running on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContextFileTrust AWS API Documentation
    #
    class VirtualGatewayTlsValidationContextFileTrust < Struct.new(
      :certificate_chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded a service limit for your account. For more
    # information, see [Service Limits][1] in the *AWS App Mesh User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/service-quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mesh
    #   An object that represents a service mesh returned by a describe
    #   operation.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateMeshOutput AWS API Documentation
    #
    class UpdateMeshOutput < Struct.new(
      :mesh)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the match method. Specify one of the match
    # values.
    #
    # @note When making an API call, you may pass GrpcRouteMetadataMatchMethod
    #   data as a hash:
    #
    #       {
    #         exact: "HeaderMatch",
    #         prefix: "HeaderMatch",
    #         range: {
    #           end: 1, # required
    #           start: 1, # required
    #         },
    #         regex: "HeaderMatch",
    #         suffix: "HeaderMatch",
    #       }
    #
    # @!attribute [rw] exact
    #   The value sent by the client must match the specified value exactly.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The value sent by the client must begin with the specified
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   An object that represents the range of values to match on.
    #   @return [Types::MatchRange]
    #
    # @!attribute [rw] regex
    #   The value sent by the client must include the specified characters.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   The value sent by the client must end with the specified characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcRouteMetadataMatchMethod AWS API Documentation
    #
    class GrpcRouteMetadataMatchMethod < Struct.new(
      :exact,
      :prefix,
      :range,
      :regex,
      :suffix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVirtualServiceInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_service_name: "ServiceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_service_name
    #   The name of the virtual service to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualServiceInput AWS API Documentation
    #
    class DescribeVirtualServiceInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the AWS Cloud Map attribute information for
    # your virtual node.
    #
    # @note When making an API call, you may pass AwsCloudMapInstanceAttribute
    #   data as a hash:
    #
    #       {
    #         key: "AwsCloudMapInstanceAttributeKey", # required
    #         value: "AwsCloudMapInstanceAttributeValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of an AWS Cloud Map service instance attribute key. Any AWS
    #   Cloud Map service instance that contains the specified key and value
    #   is returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of an AWS Cloud Map service instance attribute key. Any
    #   AWS Cloud Map service instance that contains the specified key and
    #   value is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/AwsCloudMapInstanceAttribute AWS API Documentation
    #
    class AwsCloudMapInstanceAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the specification of a virtual service.
    #
    # @note When making an API call, you may pass VirtualServiceSpec
    #   data as a hash:
    #
    #       {
    #         provider: {
    #           virtual_node: {
    #             virtual_node_name: "ResourceName", # required
    #           },
    #           virtual_router: {
    #             virtual_router_name: "ResourceName", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] provider
    #   The App Mesh object that is acting as the provider for a virtual
    #   service. You can specify a single virtual node or virtual router.
    #   @return [Types::VirtualServiceProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualServiceSpec AWS API Documentation
    #
    class VirtualServiceSpec < Struct.new(
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a TLS validation context trust for an AWS
    # Certicate Manager (ACM) certificate.
    #
    # @note When making an API call, you may pass VirtualGatewayTlsValidationContextAcmTrust
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arns: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] certificate_authority_arns
    #   One or more ACM Amazon Resource Name (ARN)s.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContextAcmTrust AWS API Documentation
    #
    class VirtualGatewayTlsValidationContextAcmTrust < Struct.new(
      :certificate_authority_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The access log configuration for a virtual gateway.
    #
    # @note When making an API call, you may pass VirtualGatewayAccessLog
    #   data as a hash:
    #
    #       {
    #         file: {
    #           path: "FilePath", # required
    #         },
    #       }
    #
    # @!attribute [rw] file
    #   The file object to send virtual gateway access logs to.
    #   @return [Types::VirtualGatewayFileAccessLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayAccessLog AWS API Documentation
    #
    class VirtualGatewayAccessLog < Struct.new(
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the range of values to match on. The first
    # character of the range is included in the range, though the last
    # character is not. For example, if the range specified were 1-100, only
    # values 1-99 would be matched.
    #
    # @note When making an API call, you may pass MatchRange
    #   data as a hash:
    #
    #       {
    #         end: 1, # required
    #         start: 1, # required
    #       }
    #
    # @!attribute [rw] end
    #   The end of the range.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   The start of the range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MatchRange AWS API Documentation
    #
    class MatchRange < Struct.new(
      :end,
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a TCP route type.
    #
    # @note When making an API call, you may pass TcpRoute
    #   data as a hash:
    #
    #       {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   The action to take if a match is determined.
    #   @return [Types::TcpRouteAction]
    #
    # @!attribute [rw] timeout
    #   An object that represents types of timeouts.
    #   @return [Types::TcpTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TcpRoute AWS API Documentation
    #
    class TcpRoute < Struct.new(
      :action,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_gateway
    #   A full description of the virtual gateway that was updated.
    #   @return [Types::VirtualGatewayData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualGatewayOutput AWS API Documentation
    #
    class UpdateVirtualGatewayOutput < Struct.new(
      :virtual_gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualRoutersInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListVirtualRouters` in
    #   paginated output. When you use this parameter, `ListVirtualRouters`
    #   returns only `limit` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListVirtualRouters` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If you don't use this parameter, `ListVirtualRouters` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to list virtual routers in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualRouters` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualRoutersInput AWS API Documentation
    #
    class ListVirtualRoutersInput < Struct.new(
      :limit,
      :mesh_name,
      :mesh_owner,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualServicesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListVirtualServices` in
    #   paginated output. When you use this parameter, `ListVirtualServices`
    #   returns only `limit` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListVirtualServices` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If you don't use this parameter, `ListVirtualServices` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to list virtual services in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualServices` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualServicesInput AWS API Documentation
    #
    class ListVirtualServicesInput < Struct.new(
      :limit,
      :mesh_name,
      :mesh_owner,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the access logging information for a virtual
    # node.
    #
    # @note When making an API call, you may pass AccessLog
    #   data as a hash:
    #
    #       {
    #         file: {
    #           path: "FilePath", # required
    #         },
    #       }
    #
    # @!attribute [rw] file
    #   The file object to send virtual node access logs to.
    #   @return [Types::FileAccessLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/AccessLog AWS API Documentation
    #
    class AccessLog < Struct.new(
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualNodesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListVirtualNodes` in
    #   paginated output. When you use this parameter, `ListVirtualNodes`
    #   returns only `limit` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListVirtualNodes` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If you don't use this parameter, `ListVirtualNodes` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to list virtual nodes in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualNodes` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualNodesInput AWS API Documentation
    #
    class ListVirtualNodesInput < Struct.new(
      :limit,
      :mesh_name,
      :mesh_owner,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a client policy.
    #
    # @note When making an API call, you may pass VirtualGatewayClientPolicy
    #   data as a hash:
    #
    #       {
    #         tls: {
    #           enforce: false,
    #           ports: [1],
    #           validation: { # required
    #             trust: { # required
    #               acm: {
    #                 certificate_authority_arns: ["Arn"], # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] tls
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) client policy.
    #   @return [Types::VirtualGatewayClientPolicyTls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayClientPolicy AWS API Documentation
    #
    class VirtualGatewayClientPolicy < Struct.new(
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum request rate permitted by the App Mesh APIs has been
    # exceeded for your account. For best results, use an increasing or
    # variable sleep interval between requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents logging information.
    #
    # @note When making an API call, you may pass VirtualGatewayLogging
    #   data as a hash:
    #
    #       {
    #         access_log: {
    #           file: {
    #             path: "FilePath", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] access_log
    #   The access log configuration.
    #   @return [Types::VirtualGatewayAccessLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayLogging AWS API Documentation
    #
    class VirtualGatewayLogging < Struct.new(
      :access_log)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a gateway route target.
    #
    # @note When making an API call, you may pass GatewayRouteTarget
    #   data as a hash:
    #
    #       {
    #         virtual_service: { # required
    #           virtual_service_name: "ResourceName", # required
    #         },
    #       }
    #
    # @!attribute [rw] virtual_service
    #   An object that represents a virtual service gateway route target.
    #   @return [Types::GatewayRouteVirtualService]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteTarget AWS API Documentation
    #
    class GatewayRouteTarget < Struct.new(
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a duration of time.
    #
    # @note When making an API call, you may pass Duration
    #   data as a hash:
    #
    #       {
    #         unit: "ms", # accepts ms, s
    #         value: 1,
    #       }
    #
    # @!attribute [rw] unit
    #   A unit of time.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A number of time units.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/Duration AWS API Documentation
    #
    class Duration < Struct.new(
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   The full description of your route.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeRouteOutput AWS API Documentation
    #
    class DescribeRouteOutput < Struct.new(
      :route)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the requirements for a route to match HTTP
    # requests for a virtual router.
    #
    # @note When making an API call, you may pass HttpRouteMatch
    #   data as a hash:
    #
    #       {
    #         headers: [
    #           {
    #             invert: false,
    #             match: {
    #               exact: "HeaderMatch",
    #               prefix: "HeaderMatch",
    #               range: {
    #                 end: 1, # required
    #                 start: 1, # required
    #               },
    #               regex: "HeaderMatch",
    #               suffix: "HeaderMatch",
    #             },
    #             name: "HeaderName", # required
    #           },
    #         ],
    #         method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #         prefix: "String", # required
    #         scheme: "http", # accepts http, https
    #       }
    #
    # @!attribute [rw] headers
    #   An object that represents the client request headers to match on.
    #   @return [Array<Types::HttpRouteHeader>]
    #
    # @!attribute [rw] method
    #   The client request method to match on. Specify only one.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Specifies the path to match requests with. This parameter must
    #   always start with `/`, which by itself matches all requests to the
    #   virtual service name. You can also match for path-based routing of
    #   requests. For example, if your virtual service name is
    #   `my-service.local` and you want the route to match requests to
    #   `my-service.local/metrics`, your prefix should be `/metrics`.
    #   @return [String]
    #
    # @!attribute [rw] scheme
    #   The client request scheme to match on. Specify only one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpRouteMatch AWS API Documentation
    #
    class HttpRouteMatch < Struct.new(
      :headers,
      :method,
      :prefix,
      :scheme)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional metadata that you apply to a resource to assist with
    # categorization and organization. Each tag consists of a key and an
    # optional value, both of which you define. Tag keys can have a maximum
    # character length of 128 characters, and tag values can have a maximum
    # length of 256 characters.
    #
    # @note When making an API call, you may pass TagRef
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A `key` is a
    #   general label that acts like a category for more specific tag
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that make up a tag. A `value`
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TagRef AWS API Documentation
    #
    class TagRef < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a service mesh returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) of the service mesh.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MeshRef AWS API Documentation
    #
    class MeshRef < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a service mesh returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the service mesh.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The associated specification for the service mesh.
    #   @return [Types::MeshSpec]
    #
    # @!attribute [rw] status
    #   The status of the service mesh.
    #   @return [Types::MeshStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MeshData AWS API Documentation
    #
    class MeshData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_route
    #   The full description of your gateway route following the create
    #   call.
    #   @return [Types::GatewayRouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateGatewayRouteOutput AWS API Documentation
    #
    class CreateGatewayRouteOutput < Struct.new(
      :gateway_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the status of a virtual router.
    #
    # @!attribute [rw] status
    #   The current status of the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualRouterStatus AWS API Documentation
    #
    class VirtualRouterStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the action to take if a match is determined.
    #
    # @note When making an API call, you may pass TcpRouteAction
    #   data as a hash:
    #
    #       {
    #         weighted_targets: [ # required
    #           {
    #             virtual_node: "ResourceName", # required
    #             weight: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] weighted_targets
    #   An object that represents the targets that traffic is routed to when
    #   a request matches the route.
    #   @return [Array<Types::WeightedTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TcpRouteAction AWS API Documentation
    #
    class TcpRouteAction < Struct.new(
      :weighted_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualGatewayInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual gateway from.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualGatewayInput AWS API Documentation
    #
    class DeleteVirtualGatewayInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualNodeInput AWS API Documentation
    #
    class DescribeVirtualNodeInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the current status of a route.
    #
    # @!attribute [rw] status
    #   The current status for the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/RouteStatus AWS API Documentation
    #
    class RouteStatus < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener for a virtual node.
    #
    # @note When making an API call, you may pass Listener
    #   data as a hash:
    #
    #       {
    #         health_check: {
    #           healthy_threshold: 1, # required
    #           interval_millis: 1, # required
    #           path: "String",
    #           port: 1,
    #           protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #           timeout_millis: 1, # required
    #           unhealthy_threshold: 1, # required
    #         },
    #         port_mapping: { # required
    #           port: 1, # required
    #           protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #         },
    #         timeout: {
    #           grpc: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             per_request: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #           http: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             per_request: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #           http2: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #             per_request: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #           tcp: {
    #             idle: {
    #               unit: "ms", # accepts ms, s
    #               value: 1,
    #             },
    #           },
    #         },
    #         tls: {
    #           certificate: { # required
    #             acm: {
    #               certificate_arn: "Arn", # required
    #             },
    #             file: {
    #               certificate_chain: "FilePath", # required
    #               private_key: "FilePath", # required
    #             },
    #           },
    #           mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
    #         },
    #       }
    #
    # @!attribute [rw] health_check
    #   The health check information for the listener.
    #   @return [Types::HealthCheckPolicy]
    #
    # @!attribute [rw] port_mapping
    #   The port mapping information for the listener.
    #   @return [Types::PortMapping]
    #
    # @!attribute [rw] timeout
    #   An object that represents timeouts for different protocols.
    #   @return [Types::ListenerTimeout]
    #
    # @!attribute [rw] tls
    #   A reference to an object that represents the Transport Layer
    #   Security (TLS) properties for a listener.
    #   @return [Types::ListenerTls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/Listener AWS API Documentation
    #
    class Listener < Struct.new(
      :health_check,
      :port_mapping,
      :timeout,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a gRPC route type.
    #
    # @note When making an API call, you may pass GrpcRoute
    #   data as a hash:
    #
    #       {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           metadata: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method_name: "MethodName",
    #           service_name: "ServiceName",
    #         },
    #         retry_policy: {
    #           grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   An object that represents the action to take if a match is
    #   determined.
    #   @return [Types::GrpcRouteAction]
    #
    # @!attribute [rw] match
    #   An object that represents the criteria for determining a request
    #   match.
    #   @return [Types::GrpcRouteMatch]
    #
    # @!attribute [rw] retry_policy
    #   An object that represents a retry policy.
    #   @return [Types::GrpcRetryPolicy]
    #
    # @!attribute [rw] timeout
    #   An object that represents types of timeouts.
    #   @return [Types::GrpcTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcRoute AWS API Documentation
    #
    class GrpcRoute < Struct.new(
      :action,
      :match,
      :retry_policy,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) client
    # policy.
    #
    # @note When making an API call, you may pass ClientPolicyTls
    #   data as a hash:
    #
    #       {
    #         enforce: false,
    #         ports: [1],
    #         validation: { # required
    #           trust: { # required
    #             acm: {
    #               certificate_authority_arns: ["Arn"], # required
    #             },
    #             file: {
    #               certificate_chain: "FilePath", # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] enforce
    #   Whether the policy is enforced. The default is `True`, if a value
    #   isn't specified.
    #   @return [Boolean]
    #
    # @!attribute [rw] ports
    #   One or more ports that the policy is enforced for.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] validation
    #   A reference to an object that represents a TLS validation context.
    #   @return [Types::TlsValidationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ClientPolicyTls AWS API Documentation
    #
    class ClientPolicyTls < Struct.new(
      :enforce,
      :ports,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust.
    #
    # @note When making an API call, you may pass VirtualGatewayTlsValidationContextTrust
    #   data as a hash:
    #
    #       {
    #         acm: {
    #           certificate_authority_arns: ["Arn"], # required
    #         },
    #         file: {
    #           certificate_chain: "FilePath", # required
    #         },
    #       }
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents a TLS validation context
    #   trust for an AWS Certicate Manager (ACM) certificate.
    #   @return [Types::VirtualGatewayTlsValidationContextAcmTrust]
    #
    # @!attribute [rw] file
    #   An object that represents a TLS validation context trust for a local
    #   file.
    #   @return [Types::VirtualGatewayTlsValidationContextFileTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContextTrust AWS API Documentation
    #
    class VirtualGatewayTlsValidationContextTrust < Struct.new(
      :acm,
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_service
    #   The virtual service that was deleted.
    #   @return [Types::VirtualServiceData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualServiceOutput AWS API Documentation
    #
    class DeleteVirtualServiceOutput < Struct.new(
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual node service provider.
    #
    # @note When making an API call, you may pass VirtualNodeServiceProvider
    #   data as a hash:
    #
    #       {
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node that is acting as a service provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeServiceProvider AWS API Documentation
    #
    class VirtualNodeServiceProvider < Struct.new(
      :virtual_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an HTTP gateway route.
    #
    # @note When making an API call, you may pass HttpGatewayRoute
    #   data as a hash:
    #
    #       {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   An object that represents the action to take if a match is
    #   determined.
    #   @return [Types::HttpGatewayRouteAction]
    #
    # @!attribute [rw] match
    #   An object that represents the criteria for determining a request
    #   match.
    #   @return [Types::HttpGatewayRouteMatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRoute AWS API Documentation
    #
    class HttpGatewayRoute < Struct.new(
      :action,
      :match)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the default properties for a backend.
    #
    # @note When making an API call, you may pass BackendDefaults
    #   data as a hash:
    #
    #       {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_policy
    #   A reference to an object that represents a client policy.
    #   @return [Types::ClientPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/BackendDefaults AWS API Documentation
    #
    class BackendDefaults < Struct.new(
      :client_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a local file certificate. The certificate
    # must meet specific requirements and you must have proxy authorization
    # enabled. For more information, see [Transport Layer Security
    # (TLS)][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites
    #
    # @note When making an API call, you may pass ListenerTlsFileCertificate
    #   data as a hash:
    #
    #       {
    #         certificate_chain: "FilePath", # required
    #         private_key: "FilePath", # required
    #       }
    #
    # @!attribute [rw] certificate_chain
    #   The certificate chain for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The private key for a certificate stored on the file system of the
    #   virtual node that the proxy is running on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsFileCertificate AWS API Documentation
    #
    class ListenerTlsFileCertificate < Struct.new(
      :certificate_chain,
      :private_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a retry policy. Specify at least one value
    # for at least one of the types of `RetryEvents`, a value for
    # `maxRetries`, and a value for `perRetryTimeout`.
    #
    # @note When making an API call, you may pass HttpRetryPolicy
    #   data as a hash:
    #
    #       {
    #         http_retry_events: ["HttpRetryPolicyEvent"],
    #         max_retries: 1, # required
    #         per_retry_timeout: { # required
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #         tcp_retry_events: ["connection-error"], # accepts connection-error
    #       }
    #
    # @!attribute [rw] http_retry_events
    #   Specify at least one of the following values.
    #
    #   * **server-error** – HTTP status codes 500, 501, 502, 503, 504, 505,
    #     506, 507, 508, 510, and 511
    #
    #   * **gateway-error** – HTTP status codes 502, 503, and 504
    #
    #   * **client-error** – HTTP status code 409
    #
    #   * **stream-error** – Retry on refused stream
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of retry attempts.
    #   @return [Integer]
    #
    # @!attribute [rw] per_retry_timeout
    #   An object that represents a duration of time.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] tcp_retry_events
    #   Specify a valid value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpRetryPolicy AWS API Documentation
    #
    class HttpRetryPolicy < Struct.new(
      :http_retry_events,
      :max_retries,
      :per_retry_timeout,
      :tcp_retry_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualRouterInput AWS API Documentation
    #
    class DescribeVirtualRouterInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request exceeds the maximum allowed number of tags allowed per
    # resource. The current limit is 50 user tags per resource. You must
    # reduce the number of tags in the request. None of the tags in this
    # request were applied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGatewayRouteInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         gateway_route_name: "ResourceName", # required
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         spec: { # required
    #           grpc_route: {
    #             action: { # required
    #               target: { # required
    #                 virtual_service: { # required
    #                   virtual_service_name: "ResourceName", # required
    #                 },
    #               },
    #             },
    #             match: { # required
    #               service_name: "ServiceName",
    #             },
    #           },
    #           http2_route: {
    #             action: { # required
    #               target: { # required
    #                 virtual_service: { # required
    #                   virtual_service_name: "ResourceName", # required
    #                 },
    #               },
    #             },
    #             match: { # required
    #               prefix: "String", # required
    #             },
    #           },
    #           http_route: {
    #             action: { # required
    #               target: { # required
    #                 virtual_service: { # required
    #                   virtual_service_name: "ResourceName", # required
    #                 },
    #               },
    #             },
    #             match: { # required
    #               prefix: "String", # required
    #             },
    #           },
    #         },
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route to update.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new gateway route specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::GatewayRouteSpec]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway that the gateway route is associated
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateGatewayRouteInput AWS API Documentation
    #
    class UpdateGatewayRouteInput < Struct.new(
      :client_token,
      :gateway_route_name,
      :mesh_name,
      :mesh_owner,
      :spec,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualGatewaysInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of results returned by `ListVirtualGateways` in
    #   paginated output. When you use this parameter, `ListVirtualGateways`
    #   returns only `limit` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListVirtualGateways` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If you don't use this parameter, `ListVirtualGateways` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to list virtual gateways in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualGateways` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualGatewaysInput AWS API Documentation
    #
    class ListVirtualGatewaysInput < Struct.new(
      :limit,
      :mesh_name,
      :mesh_owner,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust for a local file.
    #
    # @note When making an API call, you may pass TlsValidationContextFileTrust
    #   data as a hash:
    #
    #       {
    #         certificate_chain: "FilePath", # required
    #       }
    #
    # @!attribute [rw] certificate_chain
    #   The certificate trust chain for a certificate stored on the file
    #   system of the virtual node that the proxy is running on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContextFileTrust AWS API Documentation
    #
    class TlsValidationContextFileTrust < Struct.new(
      :certificate_chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the match metadata for the route.
    #
    # @note When making an API call, you may pass GrpcRouteMetadata
    #   data as a hash:
    #
    #       {
    #         invert: false,
    #         match: {
    #           exact: "HeaderMatch",
    #           prefix: "HeaderMatch",
    #           range: {
    #             end: 1, # required
    #             start: 1, # required
    #           },
    #           regex: "HeaderMatch",
    #           suffix: "HeaderMatch",
    #         },
    #         name: "HeaderName", # required
    #       }
    #
    # @!attribute [rw] invert
    #   Specify `True` to match anything except the match criteria. The
    #   default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   An object that represents the data to match from the request.
    #   @return [Types::GrpcRouteMetadataMatchMethod]
    #
    # @!attribute [rw] name
    #   The name of the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcRouteMetadata AWS API Documentation
    #
    class GrpcRouteMetadata < Struct.new(
      :invert,
      :match,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRouteInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         route_name: "ResourceName", # required
    #         spec: { # required
    #           grpc_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             match: { # required
    #               metadata: [
    #                 {
    #                   invert: false,
    #                   match: {
    #                     exact: "HeaderMatch",
    #                     prefix: "HeaderMatch",
    #                     range: {
    #                       end: 1, # required
    #                       start: 1, # required
    #                     },
    #                     regex: "HeaderMatch",
    #                     suffix: "HeaderMatch",
    #                   },
    #                   name: "HeaderName", # required
    #                 },
    #               ],
    #               method_name: "MethodName",
    #               service_name: "ServiceName",
    #             },
    #             retry_policy: {
    #               grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #               http_retry_events: ["HttpRetryPolicyEvent"],
    #               max_retries: 1, # required
    #               per_retry_timeout: { # required
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               tcp_retry_events: ["connection-error"], # accepts connection-error
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           http2_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             match: { # required
    #               headers: [
    #                 {
    #                   invert: false,
    #                   match: {
    #                     exact: "HeaderMatch",
    #                     prefix: "HeaderMatch",
    #                     range: {
    #                       end: 1, # required
    #                       start: 1, # required
    #                     },
    #                     regex: "HeaderMatch",
    #                     suffix: "HeaderMatch",
    #                   },
    #                   name: "HeaderName", # required
    #                 },
    #               ],
    #               method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #               prefix: "String", # required
    #               scheme: "http", # accepts http, https
    #             },
    #             retry_policy: {
    #               http_retry_events: ["HttpRetryPolicyEvent"],
    #               max_retries: 1, # required
    #               per_retry_timeout: { # required
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               tcp_retry_events: ["connection-error"], # accepts connection-error
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           http_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             match: { # required
    #               headers: [
    #                 {
    #                   invert: false,
    #                   match: {
    #                     exact: "HeaderMatch",
    #                     prefix: "HeaderMatch",
    #                     range: {
    #                       end: 1, # required
    #                       start: 1, # required
    #                     },
    #                     regex: "HeaderMatch",
    #                     suffix: "HeaderMatch",
    #                   },
    #                   name: "HeaderName", # required
    #                 },
    #               ],
    #               method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #               prefix: "String", # required
    #               scheme: "http", # accepts http, https
    #             },
    #             retry_policy: {
    #               http_retry_events: ["HttpRetryPolicyEvent"],
    #               max_retries: 1, # required
    #               per_retry_timeout: { # required
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               tcp_retry_events: ["connection-error"], # accepts connection-error
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           priority: 1,
    #           tcp_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to create the route in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then the account that you specify must share the
    #   mesh with your account before you can create the resource in the
    #   service mesh. For more information about mesh sharing, see [Working
    #   with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name to use for the route.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The route specification to apply.
    #   @return [Types::RouteSpec]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you can apply to the route to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have
    #   a maximum length of 256 characters.
    #   @return [Array<Types::TagRef>]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router in which to create the route. If the
    #   virtual router is in a shared mesh, then you must be the owner of
    #   the virtual router resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateRouteInput AWS API Documentation
    #
    class CreateRouteInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :route_name,
      :spec,
      :tags,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents types of timeouts.
    #
    # @note When making an API call, you may pass TcpTimeout
    #   data as a hash:
    #
    #       {
    #         idle: {
    #           unit: "ms", # accepts ms, s
    #           value: 1,
    #         },
    #       }
    #
    # @!attribute [rw] idle
    #   An object that represents a duration of time.
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TcpTimeout AWS API Documentation
    #
    class TcpTimeout < Struct.new(
      :idle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGatewayRouteInput
    #   data as a hash:
    #
    #       {
    #         gateway_route_name: "ResourceName", # required
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         virtual_gateway_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route to delete.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the gateway route from.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the virtual gateway to delete the route from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteGatewayRouteInput AWS API Documentation
    #
    class DeleteGatewayRouteInput < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :mesh_owner,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRouteInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #         route_name: "ResourceName", # required
    #         spec: { # required
    #           grpc_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             match: { # required
    #               metadata: [
    #                 {
    #                   invert: false,
    #                   match: {
    #                     exact: "HeaderMatch",
    #                     prefix: "HeaderMatch",
    #                     range: {
    #                       end: 1, # required
    #                       start: 1, # required
    #                     },
    #                     regex: "HeaderMatch",
    #                     suffix: "HeaderMatch",
    #                   },
    #                   name: "HeaderName", # required
    #                 },
    #               ],
    #               method_name: "MethodName",
    #               service_name: "ServiceName",
    #             },
    #             retry_policy: {
    #               grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #               http_retry_events: ["HttpRetryPolicyEvent"],
    #               max_retries: 1, # required
    #               per_retry_timeout: { # required
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               tcp_retry_events: ["connection-error"], # accepts connection-error
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           http2_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             match: { # required
    #               headers: [
    #                 {
    #                   invert: false,
    #                   match: {
    #                     exact: "HeaderMatch",
    #                     prefix: "HeaderMatch",
    #                     range: {
    #                       end: 1, # required
    #                       start: 1, # required
    #                     },
    #                     regex: "HeaderMatch",
    #                     suffix: "HeaderMatch",
    #                   },
    #                   name: "HeaderName", # required
    #                 },
    #               ],
    #               method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #               prefix: "String", # required
    #               scheme: "http", # accepts http, https
    #             },
    #             retry_policy: {
    #               http_retry_events: ["HttpRetryPolicyEvent"],
    #               max_retries: 1, # required
    #               per_retry_timeout: { # required
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               tcp_retry_events: ["connection-error"], # accepts connection-error
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           http_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             match: { # required
    #               headers: [
    #                 {
    #                   invert: false,
    #                   match: {
    #                     exact: "HeaderMatch",
    #                     prefix: "HeaderMatch",
    #                     range: {
    #                       end: 1, # required
    #                       start: 1, # required
    #                     },
    #                     regex: "HeaderMatch",
    #                     suffix: "HeaderMatch",
    #                   },
    #                   name: "HeaderName", # required
    #                 },
    #               ],
    #               method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #               prefix: "String", # required
    #               scheme: "http", # accepts http, https
    #             },
    #             retry_policy: {
    #               http_retry_events: ["HttpRetryPolicyEvent"],
    #               max_retries: 1, # required
    #               per_retry_timeout: { # required
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               tcp_retry_events: ["connection-error"], # accepts connection-error
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           priority: 1,
    #           tcp_route: {
    #             action: { # required
    #               weighted_targets: [ # required
    #                 {
    #                   virtual_node: "ResourceName", # required
    #                   weight: 1, # required
    #                 },
    #               ],
    #             },
    #             timeout: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #         },
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route to update.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new route specification to apply. This overwrites the existing
    #   data.
    #   @return [Types::RouteSpec]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router that the route is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateRouteInput AWS API Documentation
    #
    class UpdateRouteInput < Struct.new(
      :client_token,
      :mesh_name,
      :mesh_owner,
      :route_name,
      :spec,
      :virtual_router_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an HTTP or HTTP/2 route type.
    #
    # @note When making an API call, you may pass HttpRoute
    #   data as a hash:
    #
    #       {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           headers: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #           prefix: "String", # required
    #           scheme: "http", # accepts http, https
    #         },
    #         retry_policy: {
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   An object that represents the action to take if a match is
    #   determined.
    #   @return [Types::HttpRouteAction]
    #
    # @!attribute [rw] match
    #   An object that represents the criteria for determining a request
    #   match.
    #   @return [Types::HttpRouteMatch]
    #
    # @!attribute [rw] retry_policy
    #   An object that represents a retry policy.
    #   @return [Types::HttpRetryPolicy]
    #
    # @!attribute [rw] timeout
    #   An object that represents types of timeouts.
    #   @return [Types::HttpTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpRoute AWS API Documentation
    #
    class HttpRoute < Struct.new(
      :action,
      :match,
      :retry_policy,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMeshInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId",
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to describe.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeMeshInput AWS API Documentation
    #
    class DescribeMeshInput < Struct.new(
      :mesh_name,
      :mesh_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual gateway returned by a list
    # operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the resource was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the resource was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the resource resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID
    #   is not your own, then it's the ID of the account that shared the
    #   mesh with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The AWS IAM account ID of the resource owner. If the account ID is
    #   not your own, then it's the ID of the mesh owner or of another
    #   account that the mesh is shared with. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time that they're updated.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_gateway_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayRef AWS API Documentation
    #
    class VirtualGatewayRef < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :version,
      :virtual_gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the specification of a service mesh.
    #
    # @note When making an API call, you may pass MeshSpec
    #   data as a hash:
    #
    #       {
    #         egress_filter: {
    #           type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DROP_ALL
    #         },
    #       }
    #
    # @!attribute [rw] egress_filter
    #   The egress filter rules for the service mesh.
    #   @return [Types::EgressFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MeshSpec AWS API Documentation
    #
    class MeshSpec < Struct.new(
      :egress_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_gateway
    #   The full description of your virtual gateway.
    #   @return [Types::VirtualGatewayData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualGatewayOutput AWS API Documentation
    #
    class DescribeVirtualGatewayOutput < Struct.new(
      :virtual_gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_route
    #   The full description of your gateway route.
    #   @return [Types::GatewayRouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeGatewayRouteOutput AWS API Documentation
    #
    class DescribeGatewayRouteOutput < Struct.new(
      :gateway_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListTagsForResource`
    #   request. When the results of a `ListTagsForResource` request exceed
    #   `limit`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::TagRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the service discovery information for a
    # virtual node.
    #
    # @note When making an API call, you may pass ServiceDiscovery
    #   data as a hash:
    #
    #       {
    #         aws_cloud_map: {
    #           attributes: [
    #             {
    #               key: "AwsCloudMapInstanceAttributeKey", # required
    #               value: "AwsCloudMapInstanceAttributeValue", # required
    #             },
    #           ],
    #           namespace_name: "AwsCloudMapName", # required
    #           service_name: "AwsCloudMapName", # required
    #         },
    #         dns: {
    #           hostname: "Hostname", # required
    #         },
    #       }
    #
    # @!attribute [rw] aws_cloud_map
    #   Specifies any AWS Cloud Map information for the virtual node.
    #   @return [Types::AwsCloudMapServiceDiscovery]
    #
    # @!attribute [rw] dns
    #   Specifies the DNS information for the virtual node.
    #   @return [Types::DnsServiceDiscovery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ServiceDiscovery AWS API Documentation
    #
    class ServiceDiscovery < Struct.new(
      :aws_cloud_map,
      :dns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListVirtualNodes`
    #   request. When the results of a `ListVirtualNodes` request exceed
    #   `limit`, you can use this value to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] virtual_nodes
    #   The list of existing virtual nodes for the specified service mesh.
    #   @return [Array<Types::VirtualNodeRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualNodesOutput AWS API Documentation
    #
    class ListVirtualNodesOutput < Struct.new(
      :next_token,
      :virtual_nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an AWS Certicate Manager (ACM) certificate.
    #
    # @note When making an API call, you may pass ListenerTlsAcmCertificate
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate. The certificate
    #   must meet specific requirements and you must have proxy
    #   authorization enabled. For more information, see [Transport Layer
    #   Security (TLS)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsAcmCertificate AWS API Documentation
    #
    class ListenerTlsAcmCertificate < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
