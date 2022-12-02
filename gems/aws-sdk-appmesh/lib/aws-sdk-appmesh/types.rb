# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppMesh
  module Types

    # An object that represents the access logging information for a virtual
    # node.
    #
    # @note AccessLog is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AccessLog is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AccessLog corresponding to the set member.
    #
    # @!attribute [rw] file
    #   The file object to send virtual node access logs to.
    #   @return [Types::FileAccessLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/AccessLog AWS API Documentation
    #
    class AccessLog < Struct.new(
      :file,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < AccessLog; end
      class Unknown < AccessLog; end
    end

    # An object that represents the Cloud Map attribute information for your
    # virtual node.
    #
    # <note markdown="1"> Cloud Map is not available in the eu-south-1 Region.
    #
    #  </note>
    #
    # @!attribute [rw] key
    #   The name of an Cloud Map service instance attribute key. Any Cloud
    #   Map service instance that contains the specified key and value is
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of an Cloud Map service instance attribute key. Any Cloud
    #   Map service instance that contains the specified key and value is
    #   returned.
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

    # An object that represents the Cloud Map service discovery information
    # for your virtual node.
    #
    # <note markdown="1"> Cloud Map is not available in the eu-south-1 Region.
    #
    #  </note>
    #
    # @!attribute [rw] attributes
    #   A string map that contains attributes with values that you can use
    #   to filter instances by any custom attribute that you specified when
    #   you registered the instance. Only instances that match all of the
    #   specified key/value pairs will be returned.
    #   @return [Array<Types::AwsCloudMapInstanceAttribute>]
    #
    # @!attribute [rw] ip_preference
    #   The preferred IP version that this virtual node uses. Setting the IP
    #   preference on the virtual node only overrides the IP preference set
    #   for the mesh on this specific node.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the Cloud Map namespace to use.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the Cloud Map service to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/AwsCloudMapServiceDiscovery AWS API Documentation
    #
    class AwsCloudMapServiceDiscovery < Struct.new(
      :attributes,
      :ip_preference,
      :namespace_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the backends that a virtual node is expected
    # to send outbound traffic to.
    #
    # @note Backend is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Backend is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Backend corresponding to the set member.
    #
    # @!attribute [rw] virtual_service
    #   Specifies a virtual service to use as a backend.
    #   @return [Types::VirtualServiceBackend]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/Backend AWS API Documentation
    #
    class Backend < Struct.new(
      :virtual_service,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VirtualService < Backend; end
      class Unknown < Backend; end
    end

    # An object that represents the default properties for a backend.
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

    # An object that represents a client policy.
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

    # A reference to an object that represents a Transport Layer Security
    # (TLS) client policy.
    #
    # @!attribute [rw] certificate
    #   A reference to an object that represents a client's TLS
    #   certificate.
    #   @return [Types::ClientTlsCertificate]
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
      :certificate,
      :enforce,
      :ports,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the client's certificate.
    #
    # @note ClientTlsCertificate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ClientTlsCertificate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ClientTlsCertificate corresponding to the set member.
    #
    # @!attribute [rw] file
    #   An object that represents a local file certificate. The certificate
    #   must meet specific requirements and you must have proxy
    #   authorization enabled. For more information, see [Transport Layer
    #   Security (TLS)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html
    #   @return [Types::ListenerTlsFileCertificate]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a client's TLS Secret
    #   Discovery Service certificate.
    #   @return [Types::ListenerTlsSdsCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ClientTlsCertificate AWS API Documentation
    #
    class ClientTlsCertificate < Struct.new(
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < ClientTlsCertificate; end
      class Sds < ClientTlsCertificate; end
      class Unknown < ClientTlsCertificate; end
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then the account that you specify
    #   must share the mesh with your account before you can create the
    #   resource in the service mesh. For more information about mesh
    #   sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then the account that you specify
    #   must share the mesh with your account before you can create the
    #   resource in the service mesh. For more information about mesh
    #   sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then the account that you specify
    #   must share the mesh with your account before you can create the
    #   resource in the service mesh. For more information about mesh
    #   sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then the account that you specify
    #   must share the mesh with your account before you can create the
    #   resource in the service mesh. For more information about mesh
    #   sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then the account that you specify
    #   must share the mesh with your account before you can create the
    #   resource in the service mesh. For more information about mesh
    #   sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then the account that you specify
    #   must share the mesh with your account before you can create the
    #   resource in the service mesh. For more information about mesh
    #   sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route to delete.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the gateway route from.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the route in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual gateway from.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # Deletes a virtual node input.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual node in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual router in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete the virtual service in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # @!attribute [rw] gateway_route_name
    #   The name of the gateway route to describe.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to describe.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #   @return [String]
    #
    # @!attribute [rw] mesh_owner
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # An object that represents the DNS service discovery information for
    # your virtual node.
    #
    # @!attribute [rw] hostname
    #   Specifies the DNS service discovery hostname for the virtual node.
    #   @return [String]
    #
    # @!attribute [rw] ip_preference
    #   The preferred IP version that this virtual node uses. Setting the IP
    #   preference on the virtual node only overrides the IP preference set
    #   for the mesh on this specific node.
    #   @return [String]
    #
    # @!attribute [rw] response_type
    #   Specifies the DNS response type for the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DnsServiceDiscovery AWS API Documentation
    #
    class DnsServiceDiscovery < Struct.new(
      :hostname,
      :ip_preference,
      :response_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a duration of time.
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

    # An object that represents the egress filter rules for a service mesh.
    #
    # @!attribute [rw] type
    #   The egress filter type. By default, the type is `DROP_ALL`, which
    #   allows egress only from virtual nodes to other defined resources in
    #   the service mesh (and any traffic to `*.amazonaws.com` for Amazon
    #   Web Services API calls). You can set the egress filter type to
    #   `ALLOW_ALL` to allow egress to any endpoint inside or outside of the
    #   service mesh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/EgressFilter AWS API Documentation
    #
    class EgressFilter < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an access log file.
    #
    # @!attribute [rw] format
    #   The specified format for the logs. The format is either
    #   `json_format` or `text_format`.
    #   @return [Types::LoggingFormat]
    #
    # @!attribute [rw] path
    #   The file path to write access logs to. You can use `/dev/stdout` to
    #   send access logs to standard out and configure your Envoy container
    #   to use a log driver, such as `awslogs`, to export the access logs to
    #   a log storage service such as Amazon CloudWatch Logs. You can also
    #   specify a path in the Envoy container's file system to write the
    #   files to disk.
    #
    #        <note> <p>The Envoy process must have write permissions to the path that you specify here. Otherwise, Envoy fails to bootstrap properly.</p> </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/FileAccessLog AWS API Documentation
    #
    class FileAccessLog < Struct.new(
      :format,
      :path)
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

    # An object representing the gateway route host name to match.
    #
    # @!attribute [rw] exact
    #   The exact host name to match on.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   The specified ending characters of the host name to match on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteHostnameMatch AWS API Documentation
    #
    class GatewayRouteHostnameMatch < Struct.new(
      :exact,
      :suffix)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the gateway route host name to rewrite.
    #
    # @!attribute [rw] default_target_hostname
    #   The default target host name to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteHostnameRewrite AWS API Documentation
    #
    class GatewayRouteHostnameRewrite < Struct.new(
      :default_target_hostname)
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents a gateway route specification. Specify one
    # gateway route type.
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
    # @!attribute [rw] priority
    #   The ordering of the gateway routes spec.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteSpec AWS API Documentation
    #
    class GatewayRouteSpec < Struct.new(
      :grpc_route,
      :http2_route,
      :http_route,
      :priority)
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

    # An object that represents a gateway route target.
    #
    # @!attribute [rw] port
    #   The port number of the gateway route target.
    #   @return [Integer]
    #
    # @!attribute [rw] virtual_service
    #   An object that represents a virtual service gateway route target.
    #   @return [Types::GatewayRouteVirtualService]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GatewayRouteTarget AWS API Documentation
    #
    class GatewayRouteTarget < Struct.new(
      :port,
      :virtual_service)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the virtual service that traffic is routed
    # to.
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

    # An object that represents a gRPC gateway route.
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

    # An object that represents the action to take if a match is determined.
    #
    # @!attribute [rw] rewrite
    #   The gateway route action to rewrite.
    #   @return [Types::GrpcGatewayRouteRewrite]
    #
    # @!attribute [rw] target
    #   An object that represents the target that traffic is routed to when
    #   a request matches the gateway route.
    #   @return [Types::GatewayRouteTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRouteAction AWS API Documentation
    #
    class GrpcGatewayRouteAction < Struct.new(
      :rewrite,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the criteria for determining a request
    # match.
    #
    # @!attribute [rw] hostname
    #   The gateway route host name to be matched on.
    #   @return [Types::GatewayRouteHostnameMatch]
    #
    # @!attribute [rw] metadata
    #   The gateway route metadata to be matched on.
    #   @return [Array<Types::GrpcGatewayRouteMetadata>]
    #
    # @!attribute [rw] port
    #   The port number to match from the request.
    #   @return [Integer]
    #
    # @!attribute [rw] service_name
    #   The fully qualified domain name for the service to match from the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRouteMatch AWS API Documentation
    #
    class GrpcGatewayRouteMatch < Struct.new(
      :hostname,
      :metadata,
      :port,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the metadata of the gateway route.
    #
    # @!attribute [rw] invert
    #   Specify `True` to match anything except the match criteria. The
    #   default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   The criteria for determining a metadata match.
    #   @return [Types::GrpcMetadataMatchMethod]
    #
    # @!attribute [rw] name
    #   A name for the gateway route metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRouteMetadata AWS API Documentation
    #
    class GrpcGatewayRouteMetadata < Struct.new(
      :invert,
      :match,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the gateway route to rewrite.
    #
    # @!attribute [rw] hostname
    #   The host name of the gateway route to rewrite.
    #   @return [Types::GatewayRouteHostnameRewrite]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcGatewayRouteRewrite AWS API Documentation
    #
    class GrpcGatewayRouteRewrite < Struct.new(
      :hostname)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the method header to be matched.
    #
    # @note GrpcMetadataMatchMethod is a union - when making an API calls you must set exactly one of the members.
    #
    # @note GrpcMetadataMatchMethod is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GrpcMetadataMatchMethod corresponding to the set member.
    #
    # @!attribute [rw] exact
    #   The exact method header to be matched on.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The specified beginning characters of the method header to be
    #   matched on.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   An object that represents the range of values to match on. The first
    #   character of the range is included in the range, though the last
    #   character is not. For example, if the range specified were 1-100,
    #   only values 1-99 would be matched.
    #   @return [Types::MatchRange]
    #
    # @!attribute [rw] regex
    #   The regex used to match the method header.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   The specified ending characters of the method header to match on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/GrpcMetadataMatchMethod AWS API Documentation
    #
    class GrpcMetadataMatchMethod < Struct.new(
      :exact,
      :prefix,
      :range,
      :regex,
      :suffix,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Exact < GrpcMetadataMatchMethod; end
      class Prefix < GrpcMetadataMatchMethod; end
      class Range < GrpcMetadataMatchMethod; end
      class Regex < GrpcMetadataMatchMethod; end
      class Suffix < GrpcMetadataMatchMethod; end
      class Unknown < GrpcMetadataMatchMethod; end
    end

    # An object that represents a retry policy. Specify at least one value
    # for at least one of the types of `RetryEvents`, a value for
    # `maxRetries`, and a value for `perRetryTimeout`. Both `server-error`
    # and `gateway-error` under `httpRetryEvents` include the Envoy `reset`
    # policy. For more information on the `reset` policy, see the [Envoy
    # documentation][1].
    #
    #
    #
    # [1]: https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/router_filter#x-envoy-retry-on
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
    #   The timeout for each retry attempt.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] tcp_retry_events
    #   Specify a valid value. The event occurs before any processing of a
    #   request has started and is encountered when the upstream is
    #   temporarily or permanently unavailable.
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

    # An object that represents a gRPC route type.
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

    # An object that represents the action to take if a match is determined.
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

    # An object that represents the criteria for determining a request
    # match.
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
    # @!attribute [rw] port
    #   The port number to match on.
    #   @return [Integer]
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
      :port,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the match metadata for the route.
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

    # An object that represents the match method. Specify one of the match
    # values.
    #
    # @note GrpcRouteMetadataMatchMethod is a union - when making an API calls you must set exactly one of the members.
    #
    # @note GrpcRouteMetadataMatchMethod is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GrpcRouteMetadataMatchMethod corresponding to the set member.
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
      :suffix,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Exact < GrpcRouteMetadataMatchMethod; end
      class Prefix < GrpcRouteMetadataMatchMethod; end
      class Range < GrpcRouteMetadataMatchMethod; end
      class Regex < GrpcRouteMetadataMatchMethod; end
      class Suffix < GrpcRouteMetadataMatchMethod; end
      class Unknown < GrpcRouteMetadataMatchMethod; end
    end

    # An object that represents types of timeouts.
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

    # An object that represents the method and value to match with the
    # header value sent in a request. Specify one match method.
    #
    # @note HeaderMatchMethod is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HeaderMatchMethod is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HeaderMatchMethod corresponding to the set member.
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
      :suffix,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Exact < HeaderMatchMethod; end
      class Prefix < HeaderMatchMethod; end
      class Range < HeaderMatchMethod; end
      class Regex < HeaderMatchMethod; end
      class Suffix < HeaderMatchMethod; end
      class Unknown < HeaderMatchMethod; end
    end

    # An object that represents the health check policy for a virtual
    # node's listener.
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

    # An object that represents an HTTP gateway route.
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

    # An object that represents the action to take if a match is determined.
    #
    # @!attribute [rw] rewrite
    #   The gateway route action to rewrite.
    #   @return [Types::HttpGatewayRouteRewrite]
    #
    # @!attribute [rw] target
    #   An object that represents the target that traffic is routed to when
    #   a request matches the gateway route.
    #   @return [Types::GatewayRouteTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRouteAction AWS API Documentation
    #
    class HttpGatewayRouteAction < Struct.new(
      :rewrite,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the HTTP header in the gateway route.
    #
    # @!attribute [rw] invert
    #   Specify `True` to match anything except the match criteria. The
    #   default value is `False`.
    #   @return [Boolean]
    #
    # @!attribute [rw] match
    #   An object that represents the method and value to match with the
    #   header value sent in a request. Specify one match method.
    #   @return [Types::HeaderMatchMethod]
    #
    # @!attribute [rw] name
    #   A name for the HTTP header in the gateway route that will be matched
    #   on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRouteHeader AWS API Documentation
    #
    class HttpGatewayRouteHeader < Struct.new(
      :invert,
      :match,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the criteria for determining a request
    # match.
    #
    # @!attribute [rw] headers
    #   The client request headers to match on.
    #   @return [Array<Types::HttpGatewayRouteHeader>]
    #
    # @!attribute [rw] hostname
    #   The host name to match on.
    #   @return [Types::GatewayRouteHostnameMatch]
    #
    # @!attribute [rw] method
    #   The method to match on.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to match on.
    #   @return [Types::HttpPathMatch]
    #
    # @!attribute [rw] port
    #   The port number to match on.
    #   @return [Integer]
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
    # @!attribute [rw] query_parameters
    #   The query parameter to match on.
    #   @return [Array<Types::HttpQueryParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRouteMatch AWS API Documentation
    #
    class HttpGatewayRouteMatch < Struct.new(
      :headers,
      :hostname,
      :method,
      :path,
      :port,
      :prefix,
      :query_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the path to rewrite.
    #
    # @!attribute [rw] exact
    #   The exact path to rewrite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRoutePathRewrite AWS API Documentation
    #
    class HttpGatewayRoutePathRewrite < Struct.new(
      :exact)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the beginning characters of the route to
    # rewrite.
    #
    # @!attribute [rw] default_prefix
    #   The default prefix used to replace the incoming route prefix when
    #   rewritten.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value used to replace the incoming route prefix when rewritten.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRoutePrefixRewrite AWS API Documentation
    #
    class HttpGatewayRoutePrefixRewrite < Struct.new(
      :default_prefix,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the gateway route to rewrite.
    #
    # @!attribute [rw] hostname
    #   The host name to rewrite.
    #   @return [Types::GatewayRouteHostnameRewrite]
    #
    # @!attribute [rw] path
    #   The path to rewrite.
    #   @return [Types::HttpGatewayRoutePathRewrite]
    #
    # @!attribute [rw] prefix
    #   The specified beginning characters to rewrite.
    #   @return [Types::HttpGatewayRoutePrefixRewrite]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpGatewayRouteRewrite AWS API Documentation
    #
    class HttpGatewayRouteRewrite < Struct.new(
      :hostname,
      :path,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the path to match in the request.
    #
    # @!attribute [rw] exact
    #   The exact path to match on.
    #   @return [String]
    #
    # @!attribute [rw] regex
    #   The regex used to match the path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpPathMatch AWS API Documentation
    #
    class HttpPathMatch < Struct.new(
      :exact,
      :regex)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the query parameter in the request.
    #
    # @!attribute [rw] match
    #   The query parameter to match on.
    #   @return [Types::QueryParameterMatch]
    #
    # @!attribute [rw] name
    #   A name for the query parameter that will be matched on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpQueryParameter AWS API Documentation
    #
    class HttpQueryParameter < Struct.new(
      :match,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a retry policy. Specify at least one value
    # for at least one of the types of `RetryEvents`, a value for
    # `maxRetries`, and a value for `perRetryTimeout`. Both `server-error`
    # and `gateway-error` under `httpRetryEvents` include the Envoy `reset`
    # policy. For more information on the `reset` policy, see the [Envoy
    # documentation][1].
    #
    #
    #
    # [1]: https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/router_filter#x-envoy-retry-on
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
    #   The timeout for each retry attempt.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] tcp_retry_events
    #   Specify a valid value. The event occurs before any processing of a
    #   request has started and is encountered when the upstream is
    #   temporarily or permanently unavailable.
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

    # An object that represents an HTTP or HTTP/2 route type.
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

    # An object that represents the action to take if a match is determined.
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

    # An object that represents the HTTP header in the request.
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

    # An object that represents the requirements for a route to match HTTP
    # requests for a virtual router.
    #
    # @!attribute [rw] headers
    #   The client request headers to match on.
    #   @return [Array<Types::HttpRouteHeader>]
    #
    # @!attribute [rw] method
    #   The client request method to match on. Specify only one.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The client request path to match on.
    #   @return [Types::HttpPathMatch]
    #
    # @!attribute [rw] port
    #   The port number to match on.
    #   @return [Integer]
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
    # @!attribute [rw] query_parameters
    #   The client request query parameters to match on.
    #   @return [Array<Types::HttpQueryParameter>]
    #
    # @!attribute [rw] scheme
    #   The client request scheme to match on. Specify only one. Applicable
    #   only for HTTP2 routes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpRouteMatch AWS API Documentation
    #
    class HttpRouteMatch < Struct.new(
      :headers,
      :method,
      :path,
      :port,
      :prefix,
      :query_parameters,
      :scheme)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents types of timeouts.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/HttpTimeout AWS API Documentation
    #
    class HttpTimeout < Struct.new(
      :idle,
      :per_request)
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

    # An object that represents the key value pairs for the JSON.
    #
    # @!attribute [rw] key
    #   The specified key for the JSON.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The specified value for the JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/JsonFormatRef AWS API Documentation
    #
    class JsonFormatRef < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded a service limit for your account. For more
    # information, see [Service Limits][1] in the *App Mesh User Guide*.
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # An object that represents a listener for a virtual node.
    #
    # @!attribute [rw] connection_pool
    #   The connection pool information for the listener.
    #   @return [Types::VirtualNodeConnectionPool]
    #
    # @!attribute [rw] health_check
    #   The health check information for the listener.
    #   @return [Types::HealthCheckPolicy]
    #
    # @!attribute [rw] outlier_detection
    #   The outlier detection information for the listener.
    #   @return [Types::OutlierDetection]
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
      :connection_pool,
      :health_check,
      :outlier_detection,
      :port_mapping,
      :timeout,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents timeouts for different protocols.
    #
    # @note ListenerTimeout is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ListenerTimeout is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ListenerTimeout corresponding to the set member.
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
      :tcp,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Grpc < ListenerTimeout; end
      class Http < ListenerTimeout; end
      class Http2 < ListenerTimeout; end
      class Tcp < ListenerTimeout; end
      class Unknown < ListenerTimeout; end
    end

    # An object that represents the Transport Layer Security (TLS)
    # properties for a listener.
    #
    # @!attribute [rw] certificate
    #   A reference to an object that represents a listener's Transport
    #   Layer Security (TLS) certificate.
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
    # @!attribute [rw] validation
    #   A reference to an object that represents a listener's Transport
    #   Layer Security (TLS) validation context.
    #   @return [Types::ListenerTlsValidationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTls AWS API Documentation
    #
    class ListenerTls < Struct.new(
      :certificate,
      :mode,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Certificate Manager certificate.
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

    # An object that represents a listener's Transport Layer Security (TLS)
    # certificate.
    #
    # @note ListenerTlsCertificate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ListenerTlsCertificate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ListenerTlsCertificate corresponding to the set member.
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents an Certificate Manager
    #   certificate.
    #   @return [Types::ListenerTlsAcmCertificate]
    #
    # @!attribute [rw] file
    #   A reference to an object that represents a local file certificate.
    #   @return [Types::ListenerTlsFileCertificate]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a listener's Secret
    #   Discovery Service certificate.
    #   @return [Types::ListenerTlsSdsCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsCertificate AWS API Documentation
    #
    class ListenerTlsCertificate < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Acm < ListenerTlsCertificate; end
      class File < ListenerTlsCertificate; end
      class Sds < ListenerTlsCertificate; end
      class Unknown < ListenerTlsCertificate; end
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

    # An object that represents the listener's Secret Discovery Service
    # certificate. The proxy must be configured with a local SDS provider
    # via a Unix Domain Socket. See App Mesh [TLS documentation][1] for more
    # info.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html
    #
    # @!attribute [rw] secret_name
    #   A reference to an object that represents the name of the secret
    #   requested from the Secret Discovery Service provider representing
    #   Transport Layer Security (TLS) materials like a certificate or
    #   certificate chain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsSdsCertificate AWS API Documentation
    #
    class ListenerTlsSdsCertificate < Struct.new(
      :secret_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener's Transport Layer Security (TLS)
    # validation context.
    #
    # @!attribute [rw] subject_alternative_names
    #   A reference to an object that represents the SANs for a listener's
    #   Transport Layer Security (TLS) validation context.
    #   @return [Types::SubjectAlternativeNames]
    #
    # @!attribute [rw] trust
    #   A reference to where to retrieve the trust chain when validating a
    #   peer’s Transport Layer Security (TLS) certificate.
    #   @return [Types::ListenerTlsValidationContextTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsValidationContext AWS API Documentation
    #
    class ListenerTlsValidationContext < Struct.new(
      :subject_alternative_names,
      :trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener's Transport Layer Security (TLS)
    # validation context trust.
    #
    # @note ListenerTlsValidationContextTrust is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ListenerTlsValidationContextTrust is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ListenerTlsValidationContextTrust corresponding to the set member.
    #
    # @!attribute [rw] file
    #   An object that represents a Transport Layer Security (TLS)
    #   validation context trust for a local file.
    #   @return [Types::TlsValidationContextFileTrust]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a listener's Transport
    #   Layer Security (TLS) Secret Discovery Service validation context
    #   trust.
    #   @return [Types::TlsValidationContextSdsTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListenerTlsValidationContextTrust AWS API Documentation
    #
    class ListenerTlsValidationContextTrust < Struct.new(
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < ListenerTlsValidationContextTrust; end
      class Sds < ListenerTlsValidationContextTrust; end
      class Unknown < ListenerTlsValidationContextTrust; end
    end

    # An object that represents the logging information for a virtual node.
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

    # An object that represents the format for the logs.
    #
    # @note LoggingFormat is a union - when making an API calls you must set exactly one of the members.
    #
    # @note LoggingFormat is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of LoggingFormat corresponding to the set member.
    #
    # @!attribute [rw] json
    #   @return [Array<Types::JsonFormatRef>]
    #
    # @!attribute [rw] text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/LoggingFormat AWS API Documentation
    #
    class LoggingFormat < Struct.new(
      :json,
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < LoggingFormat; end
      class Text < LoggingFormat; end
      class Unknown < LoggingFormat; end
    end

    # An object that represents the range of values to match on. The first
    # character of the range is included in the range, though the last
    # character is not. For example, if the range specified were 1-100, only
    # values 1-99 would be matched.
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents the service discovery information for a
    # service mesh.
    #
    # @!attribute [rw] ip_preference
    #   The IP version to use to control traffic within the mesh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MeshServiceDiscovery AWS API Documentation
    #
    class MeshServiceDiscovery < Struct.new(
      :ip_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the specification of a service mesh.
    #
    # @!attribute [rw] egress_filter
    #   The egress filter rules for the service mesh.
    #   @return [Types::EgressFilter]
    #
    # @!attribute [rw] service_discovery
    #   An object that represents the service discovery information for a
    #   service mesh.
    #   @return [Types::MeshServiceDiscovery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/MeshSpec AWS API Documentation
    #
    class MeshSpec < Struct.new(
      :egress_filter,
      :service_discovery)
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

    # An object that represents the outlier detection for a virtual node's
    # listener.
    #
    # @!attribute [rw] base_ejection_duration
    #   The base amount of time for which a host is ejected.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] interval
    #   The time interval between ejection sweep analysis.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] max_ejection_percent
    #   Maximum percentage of hosts in load balancing pool for upstream
    #   service that can be ejected. Will eject at least one host regardless
    #   of the value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_server_errors
    #   Number of consecutive `5xx` errors required for ejection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/OutlierDetection AWS API Documentation
    #
    class OutlierDetection < Struct.new(
      :base_ejection_duration,
      :interval,
      :max_ejection_percent,
      :max_server_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a port mapping.
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

    # An object representing the query parameter to match.
    #
    # @!attribute [rw] exact
    #   The exact query parameter to match on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/QueryParameterMatch AWS API Documentation
    #
    class QueryParameterMatch < Struct.new(
      :exact)
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents a route specification. Specify one route
    # type.
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

    # An object that represents the service discovery information for a
    # virtual node.
    #
    # @note ServiceDiscovery is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ServiceDiscovery is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ServiceDiscovery corresponding to the set member.
    #
    # @!attribute [rw] aws_cloud_map
    #   Specifies any Cloud Map information for the virtual node.
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
      :dns,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsCloudMap < ServiceDiscovery; end
      class Dns < ServiceDiscovery; end
      class Unknown < ServiceDiscovery; end
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

    # An object that represents the methods by which a subject alternative
    # name on a peer Transport Layer Security (TLS) certificate can be
    # matched.
    #
    # @!attribute [rw] exact
    #   The values sent must match the specified values exactly.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/SubjectAlternativeNameMatchers AWS API Documentation
    #
    class SubjectAlternativeNameMatchers < Struct.new(
      :exact)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the subject alternative names secured by the
    # certificate.
    #
    # @!attribute [rw] match
    #   An object that represents the criteria for determining a SANs match.
    #   @return [Types::SubjectAlternativeNameMatchers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/SubjectAlternativeNames AWS API Documentation
    #
    class SubjectAlternativeNames < Struct.new(
      :match)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional metadata that you apply to a resource to assist with
    # categorization and organization. Each tag consists of a key and an
    # optional value, both of which you define. Tag keys can have a maximum
    # character length of 128 characters, and tag values can have a maximum
    # length of 256 characters.
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # An object that represents a TCP route type.
    #
    # @!attribute [rw] action
    #   The action to take if a match is determined.
    #   @return [Types::TcpRouteAction]
    #
    # @!attribute [rw] match
    #   An object that represents the criteria for determining a request
    #   match.
    #   @return [Types::TcpRouteMatch]
    #
    # @!attribute [rw] timeout
    #   An object that represents types of timeouts.
    #   @return [Types::TcpTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TcpRoute AWS API Documentation
    #
    class TcpRoute < Struct.new(
      :action,
      :match,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the action to take if a match is determined.
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

    # An object representing the TCP route to match.
    #
    # @!attribute [rw] port
    #   The port number to match on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TcpRouteMatch AWS API Documentation
    #
    class TcpRouteMatch < Struct.new(
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents types of timeouts.
    #
    # @!attribute [rw] idle
    #   An object that represents an idle timeout. An idle timeout bounds
    #   the amount of time that a connection may be idle. The default value
    #   is none.
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TcpTimeout AWS API Documentation
    #
    class TcpTimeout < Struct.new(
      :idle)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents how the proxy will validate its peer during
    # Transport Layer Security (TLS) negotiation.
    #
    # @!attribute [rw] subject_alternative_names
    #   A reference to an object that represents the SANs for a Transport
    #   Layer Security (TLS) validation context. If you don't specify SANs
    #   on the *terminating* mesh endpoint, the Envoy proxy for that node
    #   doesn't verify the SAN on a peer client certificate. If you don't
    #   specify SANs on the *originating* mesh endpoint, the SAN on the
    #   certificate provided by the terminating endpoint must match the mesh
    #   endpoint service discovery configuration. Since SPIRE vended
    #   certificates have a SPIFFE ID as a name, you must set the SAN since
    #   the name doesn't match the service discovery name.
    #   @return [Types::SubjectAlternativeNames]
    #
    # @!attribute [rw] trust
    #   A reference to where to retrieve the trust chain when validating a
    #   peer’s Transport Layer Security (TLS) certificate.
    #   @return [Types::TlsValidationContextTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContext AWS API Documentation
    #
    class TlsValidationContext < Struct.new(
      :subject_alternative_names,
      :trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust for an Certificate Manager certificate.
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

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust for a local file.
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

    # An object that represents a Transport Layer Security (TLS) Secret
    # Discovery Service validation context trust. The proxy must be
    # configured with a local SDS provider via a Unix Domain Socket. See App
    # Mesh [TLS documentation][1] for more info.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html
    #
    # @!attribute [rw] secret_name
    #   A reference to an object that represents the name of the secret for
    #   a Transport Layer Security (TLS) Secret Discovery Service validation
    #   context trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContextSdsTrust AWS API Documentation
    #
    class TlsValidationContextSdsTrust < Struct.new(
      :secret_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust.
    #
    # @note TlsValidationContextTrust is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TlsValidationContextTrust is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TlsValidationContextTrust corresponding to the set member.
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) validation context trust for an Certificate Manager
    #   certificate.
    #   @return [Types::TlsValidationContextAcmTrust]
    #
    # @!attribute [rw] file
    #   An object that represents a Transport Layer Security (TLS)
    #   validation context trust for a local file.
    #   @return [Types::TlsValidationContextFileTrust]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) Secret Discovery Service validation context trust.
    #   @return [Types::TlsValidationContextSdsTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TlsValidationContextTrust AWS API Documentation
    #
    class TlsValidationContextTrust < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Acm < TlsValidationContextTrust; end
      class File < TlsValidationContextTrust; end
      class Sds < TlsValidationContextTrust; end
      class Unknown < TlsValidationContextTrust; end
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # <zonbook />
    #
    # <xhtml />
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
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

    # <zonbook />
    #
    # <xhtml />
    #
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

    # The access log configuration for a virtual gateway.
    #
    # @note VirtualGatewayAccessLog is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualGatewayAccessLog is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualGatewayAccessLog corresponding to the set member.
    #
    # @!attribute [rw] file
    #   The file object to send virtual gateway access logs to.
    #   @return [Types::VirtualGatewayFileAccessLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayAccessLog AWS API Documentation
    #
    class VirtualGatewayAccessLog < Struct.new(
      :file,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < VirtualGatewayAccessLog; end
      class Unknown < VirtualGatewayAccessLog; end
    end

    # An object that represents the default properties for a backend.
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

    # An object that represents a client policy.
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

    # An object that represents a Transport Layer Security (TLS) client
    # policy.
    #
    # @!attribute [rw] certificate
    #   A reference to an object that represents a virtual gateway's
    #   client's Transport Layer Security (TLS) certificate.
    #   @return [Types::VirtualGatewayClientTlsCertificate]
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
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) validation context.
    #   @return [Types::VirtualGatewayTlsValidationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayClientPolicyTls AWS API Documentation
    #
    class VirtualGatewayClientPolicyTls < Struct.new(
      :certificate,
      :enforce,
      :ports,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the virtual gateway's client's Transport
    # Layer Security (TLS) certificate.
    #
    # @note VirtualGatewayClientTlsCertificate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualGatewayClientTlsCertificate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualGatewayClientTlsCertificate corresponding to the set member.
    #
    # @!attribute [rw] file
    #   An object that represents a local file certificate. The certificate
    #   must meet specific requirements and you must have proxy
    #   authorization enabled. For more information, see [ Transport Layer
    #   Security (TLS) ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html
    #   @return [Types::VirtualGatewayListenerTlsFileCertificate]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a virtual gateway's
    #   client's Secret Discovery Service certificate.
    #   @return [Types::VirtualGatewayListenerTlsSdsCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayClientTlsCertificate AWS API Documentation
    #
    class VirtualGatewayClientTlsCertificate < Struct.new(
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < VirtualGatewayClientTlsCertificate; end
      class Sds < VirtualGatewayClientTlsCertificate; end
      class Unknown < VirtualGatewayClientTlsCertificate; end
    end

    # An object that represents the type of virtual gateway connection pool.
    #
    # Only one protocol is used at a time and should be the same protocol as
    # the one chosen under port mapping.
    #
    # If not present the default value for `maxPendingRequests` is
    # `2147483647`.
    #
    # @note VirtualGatewayConnectionPool is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualGatewayConnectionPool is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualGatewayConnectionPool corresponding to the set member.
    #
    # @!attribute [rw] grpc
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualGatewayGrpcConnectionPool]
    #
    # @!attribute [rw] http
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualGatewayHttpConnectionPool]
    #
    # @!attribute [rw] http2
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualGatewayHttp2ConnectionPool]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayConnectionPool AWS API Documentation
    #
    class VirtualGatewayConnectionPool < Struct.new(
      :grpc,
      :http,
      :http2,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Grpc < VirtualGatewayConnectionPool; end
      class Http < VirtualGatewayConnectionPool; end
      class Http2 < VirtualGatewayConnectionPool; end
      class Unknown < VirtualGatewayConnectionPool; end
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

    # An object that represents an access log file.
    #
    # @!attribute [rw] format
    #   The specified format for the virtual gateway access logs. It can be
    #   either `json_format` or `text_format`.
    #   @return [Types::LoggingFormat]
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
      :format,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_requests
    #   Maximum number of inflight requests Envoy can concurrently support
    #   across hosts in upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayGrpcConnectionPool AWS API Documentation
    #
    class VirtualGatewayGrpcConnectionPool < Struct.new(
      :max_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the health check policy for a virtual
    # gateway's listener.
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

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_requests
    #   Maximum number of inflight requests Envoy can concurrently support
    #   across hosts in upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayHttp2ConnectionPool AWS API Documentation
    #
    class VirtualGatewayHttp2ConnectionPool < Struct.new(
      :max_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_connections
    #   Maximum number of outbound TCP connections Envoy can establish
    #   concurrently with all hosts in upstream cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] max_pending_requests
    #   Number of overflowing requests after `max_connections` Envoy will
    #   queue to upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayHttpConnectionPool AWS API Documentation
    #
    class VirtualGatewayHttpConnectionPool < Struct.new(
      :max_connections,
      :max_pending_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a listener for a virtual gateway.
    #
    # @!attribute [rw] connection_pool
    #   The connection pool information for the virtual gateway listener.
    #   @return [Types::VirtualGatewayConnectionPool]
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
      :connection_pool,
      :health_check,
      :port_mapping,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the Transport Layer Security (TLS)
    # properties for a listener.
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
    # @!attribute [rw] validation
    #   A reference to an object that represents a virtual gateway's
    #   listener's Transport Layer Security (TLS) validation context.
    #   @return [Types::VirtualGatewayListenerTlsValidationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTls AWS API Documentation
    #
    class VirtualGatewayListenerTls < Struct.new(
      :certificate,
      :mode,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Certificate Manager certificate.
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

    # An object that represents a listener's Transport Layer Security (TLS)
    # certificate.
    #
    # @note VirtualGatewayListenerTlsCertificate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualGatewayListenerTlsCertificate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualGatewayListenerTlsCertificate corresponding to the set member.
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents an Certificate Manager
    #   certificate.
    #   @return [Types::VirtualGatewayListenerTlsAcmCertificate]
    #
    # @!attribute [rw] file
    #   A reference to an object that represents a local file certificate.
    #   @return [Types::VirtualGatewayListenerTlsFileCertificate]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a virtual gateway's
    #   listener's Secret Discovery Service certificate.
    #   @return [Types::VirtualGatewayListenerTlsSdsCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsCertificate AWS API Documentation
    #
    class VirtualGatewayListenerTlsCertificate < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Acm < VirtualGatewayListenerTlsCertificate; end
      class File < VirtualGatewayListenerTlsCertificate; end
      class Sds < VirtualGatewayListenerTlsCertificate; end
      class Unknown < VirtualGatewayListenerTlsCertificate; end
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

    # An object that represents the virtual gateway's listener's Secret
    # Discovery Service certificate.The proxy must be configured with a
    # local SDS provider via a Unix Domain Socket. See App Mesh[TLS
    # documentation][1] for more info.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html
    #
    # @!attribute [rw] secret_name
    #   A reference to an object that represents the name of the secret
    #   secret requested from the Secret Discovery Service provider
    #   representing Transport Layer Security (TLS) materials like a
    #   certificate or certificate chain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsSdsCertificate AWS API Documentation
    #
    class VirtualGatewayListenerTlsSdsCertificate < Struct.new(
      :secret_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual gateway's listener's Transport
    # Layer Security (TLS) validation context.
    #
    # @!attribute [rw] subject_alternative_names
    #   A reference to an object that represents the SANs for a virtual
    #   gateway listener's Transport Layer Security (TLS) validation
    #   context.
    #   @return [Types::SubjectAlternativeNames]
    #
    # @!attribute [rw] trust
    #   A reference to where to retrieve the trust chain when validating a
    #   peer’s Transport Layer Security (TLS) certificate.
    #   @return [Types::VirtualGatewayListenerTlsValidationContextTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsValidationContext AWS API Documentation
    #
    class VirtualGatewayListenerTlsValidationContext < Struct.new(
      :subject_alternative_names,
      :trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a virtual gateway's listener's Transport
    # Layer Security (TLS) validation context trust.
    #
    # @note VirtualGatewayListenerTlsValidationContextTrust is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualGatewayListenerTlsValidationContextTrust is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualGatewayListenerTlsValidationContextTrust corresponding to the set member.
    #
    # @!attribute [rw] file
    #   An object that represents a Transport Layer Security (TLS)
    #   validation context trust for a local file.
    #   @return [Types::VirtualGatewayTlsValidationContextFileTrust]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a virtual gateway's
    #   listener's Transport Layer Security (TLS) Secret Discovery Service
    #   validation context trust.
    #   @return [Types::VirtualGatewayTlsValidationContextSdsTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayListenerTlsValidationContextTrust AWS API Documentation
    #
    class VirtualGatewayListenerTlsValidationContextTrust < Struct.new(
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < VirtualGatewayListenerTlsValidationContextTrust; end
      class Sds < VirtualGatewayListenerTlsValidationContextTrust; end
      class Unknown < VirtualGatewayListenerTlsValidationContextTrust; end
    end

    # An object that represents logging information.
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

    # An object that represents a port mapping.
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents the specification of a service mesh
    # resource.
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

    # An object that represents a Transport Layer Security (TLS) validation
    # context.
    #
    # @!attribute [rw] subject_alternative_names
    #   A reference to an object that represents the SANs for a virtual
    #   gateway's listener's Transport Layer Security (TLS) validation
    #   context.
    #   @return [Types::SubjectAlternativeNames]
    #
    # @!attribute [rw] trust
    #   A reference to where to retrieve the trust chain when validating a
    #   peer’s Transport Layer Security (TLS) certificate.
    #   @return [Types::VirtualGatewayTlsValidationContextTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContext AWS API Documentation
    #
    class VirtualGatewayTlsValidationContext < Struct.new(
      :subject_alternative_names,
      :trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust for an Certificate Manager certificate.
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

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust for a local file.
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

    # An object that represents a virtual gateway's listener's Transport
    # Layer Security (TLS) Secret Discovery Service validation context
    # trust. The proxy must be configured with a local SDS provider via a
    # Unix Domain Socket. See App Mesh [TLS documentation][1] for more info.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html
    #
    # @!attribute [rw] secret_name
    #   A reference to an object that represents the name of the secret for
    #   a virtual gateway's Transport Layer Security (TLS) Secret Discovery
    #   Service validation context trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContextSdsTrust AWS API Documentation
    #
    class VirtualGatewayTlsValidationContextSdsTrust < Struct.new(
      :secret_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a Transport Layer Security (TLS) validation
    # context trust.
    #
    # @note VirtualGatewayTlsValidationContextTrust is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualGatewayTlsValidationContextTrust is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualGatewayTlsValidationContextTrust corresponding to the set member.
    #
    # @!attribute [rw] acm
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) validation context trust for an Certificate Manager
    #   certificate.
    #   @return [Types::VirtualGatewayTlsValidationContextAcmTrust]
    #
    # @!attribute [rw] file
    #   An object that represents a Transport Layer Security (TLS)
    #   validation context trust for a local file.
    #   @return [Types::VirtualGatewayTlsValidationContextFileTrust]
    #
    # @!attribute [rw] sds
    #   A reference to an object that represents a virtual gateway's
    #   Transport Layer Security (TLS) Secret Discovery Service validation
    #   context trust.
    #   @return [Types::VirtualGatewayTlsValidationContextSdsTrust]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualGatewayTlsValidationContextTrust AWS API Documentation
    #
    class VirtualGatewayTlsValidationContextTrust < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Acm < VirtualGatewayTlsValidationContextTrust; end
      class File < VirtualGatewayTlsValidationContextTrust; end
      class Sds < VirtualGatewayTlsValidationContextTrust; end
      class Unknown < VirtualGatewayTlsValidationContextTrust; end
    end

    # An object that represents the type of virtual node connection pool.
    #
    # Only one protocol is used at a time and should be the same protocol as
    # the one chosen under port mapping.
    #
    # If not present the default value for `maxPendingRequests` is
    # `2147483647`.
    #
    # @note VirtualNodeConnectionPool is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualNodeConnectionPool is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualNodeConnectionPool corresponding to the set member.
    #
    # @!attribute [rw] grpc
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualNodeGrpcConnectionPool]
    #
    # @!attribute [rw] http
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualNodeHttpConnectionPool]
    #
    # @!attribute [rw] http2
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualNodeHttp2ConnectionPool]
    #
    # @!attribute [rw] tcp
    #   An object that represents a type of connection pool.
    #   @return [Types::VirtualNodeTcpConnectionPool]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeConnectionPool AWS API Documentation
    #
    class VirtualNodeConnectionPool < Struct.new(
      :grpc,
      :http,
      :http2,
      :tcp,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Grpc < VirtualNodeConnectionPool; end
      class Http < VirtualNodeConnectionPool; end
      class Http2 < VirtualNodeConnectionPool; end
      class Tcp < VirtualNodeConnectionPool; end
      class Unknown < VirtualNodeConnectionPool; end
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

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_requests
    #   Maximum number of inflight requests Envoy can concurrently support
    #   across hosts in upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeGrpcConnectionPool AWS API Documentation
    #
    class VirtualNodeGrpcConnectionPool < Struct.new(
      :max_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_requests
    #   Maximum number of inflight requests Envoy can concurrently support
    #   across hosts in upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeHttp2ConnectionPool AWS API Documentation
    #
    class VirtualNodeHttp2ConnectionPool < Struct.new(
      :max_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_connections
    #   Maximum number of outbound TCP connections Envoy can establish
    #   concurrently with all hosts in upstream cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] max_pending_requests
    #   Number of overflowing requests after `max_connections` Envoy will
    #   queue to upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeHttpConnectionPool AWS API Documentation
    #
    class VirtualNodeHttpConnectionPool < Struct.new(
      :max_connections,
      :max_pending_requests)
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents a virtual node service provider.
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

    # An object that represents the specification of a virtual node.
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

    # An object that represents a type of connection pool.
    #
    # @!attribute [rw] max_connections
    #   Maximum number of outbound TCP connections Envoy can establish
    #   concurrently with all hosts in upstream cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/VirtualNodeTcpConnectionPool AWS API Documentation
    #
    class VirtualNodeTcpConnectionPool < Struct.new(
      :max_connections)
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

    # An object that represents a virtual router listener.
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents a virtual node service provider.
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

    # An object that represents the specification of a virtual router.
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

    # An object that represents a virtual service backend for a virtual
    # node.
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

    # An object that represents the provider for a virtual service.
    #
    # @note VirtualServiceProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VirtualServiceProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VirtualServiceProvider corresponding to the set member.
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
      :virtual_router,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VirtualNode < VirtualServiceProvider; end
      class VirtualRouter < VirtualServiceProvider; end
      class Unknown < VirtualServiceProvider; end
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
    #   The Amazon Web Services IAM account ID of the service mesh owner. If
    #   the account ID is not your own, then it's the ID of the account
    #   that shared the mesh with your account. For more information about
    #   mesh sharing, see [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   The Amazon Web Services IAM account ID of the resource owner. If the
    #   account ID is not your own, then it's the ID of the mesh owner or
    #   of another account that the mesh is shared with. For more
    #   information about mesh sharing, see [Working with shared meshes][1].
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

    # An object that represents the specification of a virtual service.
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

    # An object that represents a target and its relative weight. Traffic is
    # distributed across targets according to their relative weight. For
    # example, a weighted target with a relative weight of 50 receives five
    # times as much traffic as one with a relative weight of 10. The total
    # weight for all targets combined must be less than or equal to 100.
    #
    # @!attribute [rw] port
    #   The targeted port of the weighted object.
    #   @return [Integer]
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
      :port,
      :virtual_node,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
