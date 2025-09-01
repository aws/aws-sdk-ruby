# frozen_string_literal: true

# This is generated code!

module Aws::AppMesh
  # This module contains the types returned by client operations.
  module Types

    # <p>An object that represents the access logging information for a virtual node.</p>
    # @!attribute file
    #   <p>The file object to send virtual node access logs to.</p>
    #   @return [Types::FileAccessLog]
    class AccessLog < Struct.new(
      :file,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class File < AccessLog; end
      class Unknown < AccessLog; end
    end

    # <p>An object that represents the Cloud Map attribute information for your
    #          virtual node.</p>
    #          <note>
    #             <p>Cloud Map is not available in the eu-south-1 Region.</p>
    #          </note>
    # @!attribute key
    #   <p>The name of an Cloud Map service instance attribute key. Any Cloud Map service instance that contains the specified key and value is
    #            returned.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of an Cloud Map service instance attribute key. Any Cloud Map service instance that contains the specified key and value is
    #            returned.</p>
    #   @return [String]
    class AwsCloudMapInstanceAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the Cloud Map service discovery information for
    #          your virtual node.</p>
    #          <note>
    #             <p>Cloud Map is not available in the eu-south-1 Region.</p>
    #          </note>
    # @!attribute namespace_name
    #   <p>The name of the Cloud Map namespace to use.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the Cloud Map service to use.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A string map that contains attributes with values that you can use to filter instances
    #            by any custom attribute that you specified when you registered the instance. Only instances
    #            that match all of the specified key/value pairs will be returned.</p>
    #   @return [Array<Types::AwsCloudMapInstanceAttribute>]
    # @!attribute ip_preference
    #   <p>The preferred IP version that this virtual node uses. Setting the IP preference on the
    #            virtual node only overrides the IP preference set for the mesh on this specific
    #            node.</p>
    #   @return [String]
    class AwsCloudMapServiceDiscovery < Struct.new(
      :namespace_name,
      :service_name,
      :attributes,
      :ip_preference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the backends that a virtual node is expected to send outbound
    #          traffic to.</p>
    # @!attribute virtual_service
    #   <p>Specifies a virtual service to use as a backend.  </p>
    #   @return [Types::VirtualServiceBackend]
    class Backend < Struct.new(
      :virtual_service,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class VirtualService < Backend; end
      class Unknown < Backend; end
    end

    # <p>An object that represents the default properties for a backend.</p>
    # @!attribute client_policy
    #   <p>A reference to an object that represents a client policy.</p>
    #   @return [Types::ClientPolicy]
    class BackendDefaults < Struct.new(
      :client_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request syntax was malformed. Check your request syntax and try again.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a client policy.</p>
    # @!attribute tls
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>
    #   @return [Types::ClientPolicyTls]
    class ClientPolicy < Struct.new(
      :tls,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>
    # @!attribute enforce
    #   <p>Whether the policy is enforced. The default is <code>True</code>, if a value isn't specified.</p>
    #   @return [Boolean]
    # @!attribute ports
    #   <p>One or more ports that the policy is enforced for.</p>
    #   @return [Array<Integer>]
    # @!attribute certificate
    #   <p>A reference to an object that represents a client's TLS certificate.</p>
    #   @return [Types::ClientTlsCertificate]
    # @!attribute validation
    #   <p>A reference to an object that represents a TLS validation context.</p>
    #   @return [Types::TlsValidationContext]
    class ClientPolicyTls < Struct.new(
      :enforce,
      :ports,
      :certificate,
      :validation,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforce] =  unless options.key?(:enforce)
        super
      end
    end

    # <p>An object that represents the client's certificate.</p>
    # @!attribute file
    #   <p>An object that represents a local file certificate. The certificate must meet specific
    #            requirements and you must have proxy authorization enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">Transport Layer Security (TLS)</a>.</p>
    #   @return [Types::ListenerTlsFileCertificate]
    # @!attribute sds
    #   <p>A reference to an object that represents a client's TLS Secret Discovery Service
    #            certificate.</p>
    #   @return [Types::ListenerTlsSdsCertificate]
    class ClientTlsCertificate < Struct.new(
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class File < ClientTlsCertificate; end
      class Sds < ClientTlsCertificate; end
      class Unknown < ClientTlsCertificate; end
    end

    # <p>The request contains a client token that was used for a previous update resource call
    #          with different specifications. Try the request again with a new client token.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name to use for the gateway route.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the gateway route in.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to associate the gateway route with. If the virtual
    #            gateway is in a shared mesh, then you must be the owner of the virtual gateway
    #            resource.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The gateway route specification to apply.</p>
    #   @return [Types::GatewayRouteSpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the gateway route to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class CreateGatewayRouteOperationInput < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route
    #   <p>The full description of your gateway route following the create call.</p>
    #   @return [Types::GatewayRouteData]
    class CreateGatewayRouteOperationOutput < Struct.new(
      :gateway_route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name to use for the service mesh.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The service mesh specification to apply.</p>
    #   @return [Types::MeshSpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the service mesh to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    class CreateMeshOperationInput < Struct.new(
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh
    #   <p>The full description of your service mesh following the create call.</p>
    #   @return [Types::MeshData]
    class CreateMeshOperationOutput < Struct.new(
      :mesh,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route_name
    #   <p>The name to use for the route.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the route in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router in which to create the route. If the virtual router is in
    #            a shared mesh, then you must be the owner of the virtual router resource.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The route specification to apply.</p>
    #   @return [Types::RouteSpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the route to assist with categorization and
    #            organization. Each tag consists of a key and an optional value, both of which you define.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class CreateRouteOperationInput < Struct.new(
      :route_name,
      :mesh_name,
      :virtual_router_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route
    #   <p>The full description of your mesh following the create call.</p>
    #   @return [Types::RouteData]
    class CreateRouteOperationOutput < Struct.new(
      :route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name to use for the virtual gateway.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual gateway in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The virtual gateway specification to apply.</p>
    #   @return [Types::VirtualGatewaySpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual gateway to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class CreateVirtualGatewayOperationInput < Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway
    #   <p>The full description of your virtual gateway following the create call.</p>
    #   @return [Types::VirtualGatewayData]
    class CreateVirtualGatewayOperationOutput < Struct.new(
      :virtual_gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node_name
    #   <p>The name to use for the virtual node.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual node in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The virtual node specification to apply.</p>
    #   @return [Types::VirtualNodeSpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual node to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class CreateVirtualNodeOperationInput < Struct.new(
      :virtual_node_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node
    #   <p>The full description of your virtual node following the create call.</p>
    #   @return [Types::VirtualNodeData]
    class CreateVirtualNodeOperationOutput < Struct.new(
      :virtual_node,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router_name
    #   <p>The name to use for the virtual router.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual router in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The virtual router specification to apply.</p>
    #   @return [Types::VirtualRouterSpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual router to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class CreateVirtualRouterOperationInput < Struct.new(
      :virtual_router_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router
    #   <p>The full description of your virtual router following the create call.</p>
    #   @return [Types::VirtualRouterData]
    class CreateVirtualRouterOperationOutput < Struct.new(
      :virtual_router,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service_name
    #   <p>The name to use for the virtual service.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to create the virtual service in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The virtual service specification to apply.</p>
    #   @return [Types::VirtualServiceSpec]
    # @!attribute tags
    #   <p>Optional metadata that you can apply to the virtual service to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class CreateVirtualServiceOperationInput < Struct.new(
      :virtual_service_name,
      :mesh_name,
      :spec,
      :tags,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service
    #   <p>The full description of your virtual service following the create call.</p>
    #   @return [Types::VirtualServiceData]
    class CreateVirtualServiceOperationOutput < Struct.new(
      :virtual_service,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name of the gateway route to delete.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the gateway route from.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to delete the route from.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DeleteGatewayRouteOperationInput < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route
    #   <p>The gateway route that was deleted.</p>
    #   @return [Types::GatewayRouteData]
    class DeleteGatewayRouteOperationOutput < Struct.new(
      :gateway_route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete.</p>
    #   @return [String]
    class DeleteMeshOperationInput < Struct.new(
      :mesh_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh
    #   <p>The service mesh that was deleted.</p>
    #   @return [Types::MeshData]
    class DeleteMeshOperationOutput < Struct.new(
      :mesh,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route_name
    #   <p>The name of the route to delete.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the route in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to delete the route in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DeleteRouteOperationInput < Struct.new(
      :route_name,
      :mesh_name,
      :virtual_router_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route
    #   <p>The route that was deleted.</p>
    #   @return [Types::RouteData]
    class DeleteRouteOperationOutput < Struct.new(
      :route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to delete.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual gateway from.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DeleteVirtualGatewayOperationInput < Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway
    #   <p>The virtual gateway that was deleted.</p>
    #   @return [Types::VirtualGatewayData]
    class DeleteVirtualGatewayOperationOutput < Struct.new(
      :virtual_gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Deletes a virtual node input.</p>
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node to delete.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual node in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DeleteVirtualNodeOperationInput < Struct.new(
      :virtual_node_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node
    #   <p>The virtual node that was deleted.</p>
    #   @return [Types::VirtualNodeData]
    class DeleteVirtualNodeOperationOutput < Struct.new(
      :virtual_node,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to delete.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual router in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DeleteVirtualRouterOperationInput < Struct.new(
      :virtual_router_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router
    #   <p>The virtual router that was deleted.</p>
    #   @return [Types::VirtualRouterData]
    class DeleteVirtualRouterOperationOutput < Struct.new(
      :virtual_router,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service_name
    #   <p>The name of the virtual service to delete.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh to delete the virtual service in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DeleteVirtualServiceOperationInput < Struct.new(
      :virtual_service_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service
    #   <p>The virtual service that was deleted.</p>
    #   @return [Types::VirtualServiceData]
    class DeleteVirtualServiceOperationOutput < Struct.new(
      :virtual_service,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name of the gateway route to describe.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DescribeGatewayRouteOperationInput < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route
    #   <p>The full description of your gateway route.</p>
    #   @return [Types::GatewayRouteData]
    class DescribeGatewayRouteOperationOutput < Struct.new(
      :gateway_route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to describe.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DescribeMeshOperationInput < Struct.new(
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh
    #   <p>The full description of your service mesh.</p>
    #   @return [Types::MeshData]
    class DescribeMeshOperationOutput < Struct.new(
      :mesh,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route_name
    #   <p>The name of the route to describe.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    #   @return [String]
    class DescribeRouteOperationInput < Struct.new(
      :route_name,
      :mesh_name,
      :mesh_owner,
      :virtual_router_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route
    #   <p>The full description of your route.</p>
    #   @return [Types::RouteData]
    class DescribeRouteOperationOutput < Struct.new(
      :route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to describe.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DescribeVirtualGatewayOperationInput < Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway
    #   <p>The full description of your virtual gateway.</p>
    #   @return [Types::VirtualGatewayData]
    class DescribeVirtualGatewayOperationOutput < Struct.new(
      :virtual_gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node_name
    #   <p>The name of the virtual node to describe.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DescribeVirtualNodeOperationInput < Struct.new(
      :virtual_node_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node
    #   <p>The full description of your virtual node.</p>
    #   @return [Types::VirtualNodeData]
    class DescribeVirtualNodeOperationOutput < Struct.new(
      :virtual_node,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to describe.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DescribeVirtualRouterOperationInput < Struct.new(
      :virtual_router_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router
    #   <p>The full description of your virtual router.</p>
    #   @return [Types::VirtualRouterData]
    class DescribeVirtualRouterOperationOutput < Struct.new(
      :virtual_router,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service_name
    #   <p>The name of the virtual service to describe.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class DescribeVirtualServiceOperationInput < Struct.new(
      :virtual_service_name,
      :mesh_name,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service
    #   <p>The full description of your virtual service.</p>
    #   @return [Types::VirtualServiceData]
    class DescribeVirtualServiceOperationOutput < Struct.new(
      :virtual_service,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the DNS service discovery information for your virtual
    #          node.</p>
    # @!attribute hostname
    #   <p>Specifies the DNS service discovery hostname for the virtual node. </p>
    #   @return [String]
    # @!attribute response_type
    #   <p>Specifies the DNS response type for the virtual node.</p>
    #   @return [String]
    # @!attribute ip_preference
    #   <p>The preferred IP version that this virtual node uses. Setting the IP preference on the
    #            virtual node only overrides the IP preference set for the mesh on this specific
    #            node.</p>
    #   @return [String]
    class DnsServiceDiscovery < Struct.new(
      :hostname,
      :response_type,
      :ip_preference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a duration of time.</p>
    # @!attribute value
    #   <p>A number of time units.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>A unit of time.</p>
    #   @return [String]
    class Duration < Struct.new(
      :value,
      :unit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the egress filter rules for a service mesh.</p>
    # @!attribute type
    #   <p>The egress filter type. By default, the type is <code>DROP_ALL</code>, which allows
    #            egress only from virtual nodes to other defined resources in the service mesh (and any
    #            traffic to <code>*.amazonaws.com</code> for Amazon Web Services API calls). You can set the
    #            egress filter type to <code>ALLOW_ALL</code> to allow egress to any endpoint inside or
    #            outside of the service mesh.</p>
    #   @return [String]
    class EgressFilter < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an access log file.</p>
    # @!attribute path
    #   <p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
    #            access logs to standard out and configure your Envoy container to use a log driver, such as
    #               <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
    #            CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
    #            the files to disk.</p>
    #            <note>
    #               <p>The Envoy process must have write permissions to the path that you specify here.
    #               Otherwise, Envoy fails to bootstrap properly.</p>
    #            </note>
    #   @return [String]
    # @!attribute format
    #   <p>The specified format for the logs. The format is either <code>json_format</code> or
    #               <code>text_format</code>.</p>
    #   @return [Types::LoggingFormat]
    class FileAccessLog < Struct.new(
      :path,
      :format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You don't have permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a gateway route returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the resource resides in. </p>
    #   @return [String]
    # @!attribute gateway_route_name
    #   <p>The name of the gateway route.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The virtual gateway that the gateway route is associated with.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The specifications of the gateway route.</p>
    #   @return [Types::GatewayRouteSpec]
    # @!attribute metadata
    #   <p>An object that represents metadata for a resource.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The status of the gateway route.</p>
    #   @return [Types::GatewayRouteStatus]
    class GatewayRouteData < Struct.new(
      :mesh_name,
      :gateway_route_name,
      :virtual_gateway_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the gateway route host name to match.</p>
    # @!attribute exact
    #   <p>The exact host name to match on.</p>
    #   @return [String]
    # @!attribute suffix
    #   <p>The specified ending characters of the host name to match on.</p>
    #   @return [String]
    class GatewayRouteHostnameMatch < Struct.new(
      :exact,
      :suffix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the gateway route host name to rewrite.</p>
    # @!attribute default_target_hostname
    #   <p>The default target host name to write to.</p>
    #   @return [String]
    class GatewayRouteHostnameRewrite < Struct.new(
      :default_target_hostname,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a gateway route returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the resource resides in. </p>
    #   @return [String]
    # @!attribute gateway_route_name
    #   <p>The name of the gateway route.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The virtual gateway that the gateway route is associated with.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the gateway route.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class GatewayRouteRef < Struct.new(
      :mesh_name,
      :gateway_route_name,
      :virtual_gateway_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a gateway route specification. Specify one gateway route
    #          type.</p>
    # @!attribute priority
    #   <p>The ordering of the gateway routes spec.</p>
    #   @return [Integer]
    # @!attribute http_route
    #   <p>An object that represents the specification of an HTTP gateway route.</p>
    #   @return [Types::HttpGatewayRoute]
    # @!attribute http2_route
    #   <p>An object that represents the specification of an HTTP/2 gateway route.</p>
    #   @return [Types::HttpGatewayRoute]
    # @!attribute grpc_route
    #   <p>An object that represents the specification of a gRPC gateway route.</p>
    #   @return [Types::GrpcGatewayRoute]
    class GatewayRouteSpec < Struct.new(
      :priority,
      :http_route,
      :http2_route,
      :grpc_route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the current status of a gateway route.</p>
    # @!attribute status
    #   <p>The current status for the gateway route.</p>
    #   @return [String]
    class GatewayRouteStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a gateway route target.</p>
    # @!attribute virtual_service
    #   <p>An object that represents a virtual service gateway route target.</p>
    #   @return [Types::GatewayRouteVirtualService]
    # @!attribute port
    #   <p>The port number of the gateway route target.</p>
    #   @return [Integer]
    class GatewayRouteTarget < Struct.new(
      :virtual_service,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the virtual service that traffic is routed to.</p>
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service that traffic is routed to.</p>
    #   @return [String]
    class GatewayRouteVirtualService < Struct.new(
      :virtual_service_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a gRPC gateway route.</p>
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #   @return [Types::GrpcGatewayRouteMatch]
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #   @return [Types::GrpcGatewayRouteAction]
    class GrpcGatewayRoute < Struct.new(
      :match,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    # @!attribute target
    #   <p>An object that represents the target that traffic is routed to when a request matches the gateway route.</p>
    #   @return [Types::GatewayRouteTarget]
    # @!attribute rewrite
    #   <p>The gateway route action to rewrite.</p>
    #   @return [Types::GrpcGatewayRouteRewrite]
    class GrpcGatewayRouteAction < Struct.new(
      :target,
      :rewrite,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the criteria for determining a request match.</p>
    # @!attribute service_name
    #   <p>The fully qualified domain name for the service to match from the request.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The gateway route host name to be matched on.</p>
    #   @return [Types::GatewayRouteHostnameMatch]
    # @!attribute metadata
    #   <p>The gateway route metadata to be matched on.</p>
    #   @return [Array<Types::GrpcGatewayRouteMetadata>]
    # @!attribute port
    #   <p>The gateway route port to be matched on.</p>
    #   @return [Integer]
    class GrpcGatewayRouteMatch < Struct.new(
      :service_name,
      :hostname,
      :metadata,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the metadata of the gateway route.</p>
    # @!attribute name
    #   <p>A name for the gateway route metadata.</p>
    #   @return [String]
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value
    #            is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>The criteria for determining a metadata match.</p>
    #   @return [Types::GrpcMetadataMatchMethod]
    class GrpcGatewayRouteMetadata < Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the gateway route to rewrite.</p>
    # @!attribute hostname
    #   <p>The host name of the gateway route to rewrite.</p>
    #   @return [Types::GatewayRouteHostnameRewrite]
    class GrpcGatewayRouteRewrite < Struct.new(
      :hostname,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the method header to be matched.</p>
    # @!attribute exact
    #   <p>The exact method header to be matched on.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The regex used to match the method header.</p>
    #   @return [String]
    # @!attribute range
    #   <p>An object that represents the range of values to match on. The first character of the range is included in the range, though the last character is not. For example, if the range specified were 1-100, only values 1-99 would be matched.</p>
    #   @return [Types::MatchRange]
    # @!attribute prefix
    #   <p>The specified beginning characters of the method header to be matched on.</p>
    #   @return [String]
    # @!attribute suffix
    #   <p>The specified ending characters of the method header to match on.</p>
    #   @return [String]
    class GrpcMetadataMatchMethod < Struct.new(
      :exact,
      :regex,
      :range,
      :prefix,
      :suffix,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Exact < GrpcMetadataMatchMethod; end
      class Regex < GrpcMetadataMatchMethod; end
      class Range < GrpcMetadataMatchMethod; end
      class Prefix < GrpcMetadataMatchMethod; end
      class Suffix < GrpcMetadataMatchMethod; end
      class Unknown < GrpcMetadataMatchMethod; end
    end

    # <p>An object that represents a retry policy. Specify at least one value for at least one of the types of <code>RetryEvents</code>, a value for <code>maxRetries</code>, and a value for <code>perRetryTimeout</code>. 
    #                Both <code>server-error</code> and <code>gateway-error</code> under <code>httpRetryEvents</code> include the Envoy <code>reset</code> policy. For more information on the 
    #                <code>reset</code> policy, see the <a href="https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/router_filter#x-envoy-retry-on">Envoy documentation</a>.</p>
    # @!attribute per_retry_timeout
    #   <p>The timeout for each retry attempt.</p>
    #   @return [Types::Duration]
    # @!attribute max_retries
    #   <p>The maximum number of retry attempts.</p>
    #   @return [Integer]
    # @!attribute http_retry_events
    #   <p>Specify at least one of the following values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>server-error</b> – HTTP status codes 500, 501,
    #                     502, 503, 504, 505, 506, 507, 508, 510, and 511</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>gateway-error</b> – HTTP status codes 502,
    #                     503, and 504</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>client-error</b> – HTTP status code 409</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>stream-error</b> – Retry on refused
    #                     stream</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute tcp_retry_events
    #   <p>Specify a valid value. The event occurs before any processing of a request has started and is encountered when the upstream is temporarily or permanently unavailable.</p>
    #   @return [Array<String>]
    # @!attribute grpc_retry_events
    #   <p>Specify at least one of the valid values.</p>
    #   @return [Array<String>]
    class GrpcRetryPolicy < Struct.new(
      :per_retry_timeout,
      :max_retries,
      :http_retry_events,
      :tcp_retry_events,
      :grpc_retry_events,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a gRPC route type.</p>
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #   @return [Types::GrpcRouteAction]
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #   @return [Types::GrpcRouteMatch]
    # @!attribute retry_policy
    #   <p>An object that represents a retry policy.</p>
    #   @return [Types::GrpcRetryPolicy]
    # @!attribute timeout
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::GrpcTimeout]
    class GrpcRoute < Struct.new(
      :action,
      :match,
      :retry_policy,
      :timeout,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    # @!attribute weighted_targets
    #   <p>An object that represents the targets that traffic is routed to when a request matches the route.</p>
    #   @return [Array<Types::WeightedTarget>]
    class GrpcRouteAction < Struct.new(
      :weighted_targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the criteria for determining a request match.</p>
    # @!attribute service_name
    #   <p>The fully qualified domain name for the service to match from the request.</p>
    #   @return [String]
    # @!attribute method_name
    #   <p>The method name to match from the request. If you specify a name, you must also specify
    #            a <code>serviceName</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>An object that represents the data to match from the request.</p>
    #   @return [Array<Types::GrpcRouteMetadata>]
    # @!attribute port
    #   <p>The port number to match on.</p>
    #   @return [Integer]
    class GrpcRouteMatch < Struct.new(
      :service_name,
      :method_name,
      :metadata,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the match metadata for the route.</p>
    # @!attribute name
    #   <p>The name of the route.</p>
    #   @return [String]
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>An object that represents the data to match from the request.</p>
    #   @return [Types::GrpcRouteMetadataMatchMethod]
    class GrpcRouteMetadata < Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the match method. Specify one of the match values.</p>
    # @!attribute exact
    #   <p>The value sent by the client must match the specified value exactly.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The value sent by the client must include the specified characters.</p>
    #   @return [String]
    # @!attribute range
    #   <p>An object that represents the range of values to match on.</p>
    #   @return [Types::MatchRange]
    # @!attribute prefix
    #   <p>The value sent by the client must begin with the specified characters.</p>
    #   @return [String]
    # @!attribute suffix
    #   <p>The value sent by the client must end with the specified characters.</p>
    #   @return [String]
    class GrpcRouteMetadataMatchMethod < Struct.new(
      :exact,
      :regex,
      :range,
      :prefix,
      :suffix,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Exact < GrpcRouteMetadataMatchMethod; end
      class Regex < GrpcRouteMetadataMatchMethod; end
      class Range < GrpcRouteMetadataMatchMethod; end
      class Prefix < GrpcRouteMetadataMatchMethod; end
      class Suffix < GrpcRouteMetadataMatchMethod; end
      class Unknown < GrpcRouteMetadataMatchMethod; end
    end

    # <p>An object that represents types of timeouts. </p>
    # @!attribute per_request
    #   <p>An object that represents a per request timeout. The default value is 15 seconds. If you set a higher timeout, then make sure that the higher value is set for each App Mesh 
    #                                     resource in a conversation. For example, if a virtual node backend uses a virtual router provider to route to another virtual node, then the timeout should be greater than 15
    #                                     seconds for the source and destination virtual node and the route.</p>
    #   @return [Types::Duration]
    # @!attribute idle
    #   <p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>
    #   @return [Types::Duration]
    class GrpcTimeout < Struct.new(
      :per_request,
      :idle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the method and value to match with the header value sent in a
    #          request. Specify one match method.</p>
    # @!attribute exact
    #   <p>The value sent by the client must match the specified value exactly.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The value sent by the client must include the specified characters.</p>
    #   @return [String]
    # @!attribute range
    #   <p>An object that represents the range of values to match on.</p>
    #   @return [Types::MatchRange]
    # @!attribute prefix
    #   <p>The value sent by the client must begin with the specified characters.</p>
    #   @return [String]
    # @!attribute suffix
    #   <p>The value sent by the client must end with the specified characters.</p>
    #   @return [String]
    class HeaderMatchMethod < Struct.new(
      :exact,
      :regex,
      :range,
      :prefix,
      :suffix,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Exact < HeaderMatchMethod; end
      class Regex < HeaderMatchMethod; end
      class Range < HeaderMatchMethod; end
      class Prefix < HeaderMatchMethod; end
      class Suffix < HeaderMatchMethod; end
      class Unknown < HeaderMatchMethod; end
    end

    # <p>An object that represents the health check policy for a virtual node's listener.</p>
    # @!attribute timeout_millis
    #   <p>The amount of time to wait when receiving a response from the health check, in
    #            milliseconds.</p>
    #   @return [Integer]
    # @!attribute interval_millis
    #   <p>The time period in milliseconds between each health check execution.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol for the health check request. If you specify <code>grpc</code>, then your
    #            service must conform to the <a href="https://github.com/grpc/grpc/blob/master/doc/health-checking.md">GRPC Health
    #               Checking Protocol</a>.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The destination port for the health check request. This port must match the port defined
    #            in the <a>PortMapping</a> for the listener.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The destination path for the health check request. This value is only used if the
    #            specified protocol is HTTP or HTTP/2. For any other protocol, this value is ignored.</p>
    #   @return [String]
    # @!attribute healthy_threshold
    #   <p>The number of consecutive successful health checks that must occur before declaring
    #            listener healthy.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive failed health checks that must occur before declaring a
    #            virtual node unhealthy. </p>
    #   @return [Integer]
    class HealthCheckPolicy < Struct.new(
      :timeout_millis,
      :interval_millis,
      :protocol,
      :port,
      :path,
      :healthy_threshold,
      :unhealthy_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an HTTP gateway route.</p>
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #   @return [Types::HttpGatewayRouteMatch]
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #   @return [Types::HttpGatewayRouteAction]
    class HttpGatewayRoute < Struct.new(
      :match,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    # @!attribute target
    #   <p>An object that represents the target that traffic is routed to when a request matches the gateway route.</p>
    #   @return [Types::GatewayRouteTarget]
    # @!attribute rewrite
    #   <p>The gateway route action to rewrite.</p>
    #   @return [Types::HttpGatewayRouteRewrite]
    class HttpGatewayRouteAction < Struct.new(
      :target,
      :rewrite,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the HTTP header in the gateway route.</p>
    # @!attribute name
    #   <p>A name for the HTTP header in the gateway route that will be matched on.</p>
    #   @return [String]
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value
    #            is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>An object that represents the method and value to match with the header value sent in a
    #            request. Specify one match method.</p>
    #   @return [Types::HeaderMatchMethod]
    class HttpGatewayRouteHeader < Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the criteria for determining a request match.</p>
    # @!attribute prefix
    #   <p>Specifies the path to match requests with. This parameter must always start with
    #               <code>/</code>, which by itself matches all requests to the virtual service name. You
    #            can also match for path-based routing of requests. For example, if your virtual service
    #            name is <code>my-service.local</code> and you want the route to match requests to
    #               <code>my-service.local/metrics</code>, your prefix should be
    #            <code>/metrics</code>.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path to match on.</p>
    #   @return [Types::HttpPathMatch]
    # @!attribute query_parameters
    #   <p>The query parameter to match on.</p>
    #   @return [Array<Types::HttpQueryParameter>]
    # @!attribute method
    #   <p>The method to match on.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The host name to match on.</p>
    #   @return [Types::GatewayRouteHostnameMatch]
    # @!attribute headers
    #   <p>The client request headers to match on.</p>
    #   @return [Array<Types::HttpGatewayRouteHeader>]
    # @!attribute port
    #   <p>The port number to match on.</p>
    #   @return [Integer]
    class HttpGatewayRouteMatch < Struct.new(
      :prefix,
      :path,
      :query_parameters,
      :method,
      :hostname,
      :headers,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the path to rewrite.</p>
    # @!attribute exact
    #   <p>The exact path to rewrite.</p>
    #   @return [String]
    class HttpGatewayRoutePathRewrite < Struct.new(
      :exact,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the beginning characters of the route to rewrite.</p>
    # @!attribute default_prefix
    #   <p>The default prefix used to replace the incoming route prefix when rewritten.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value used to replace the incoming route prefix when rewritten.</p>
    #   @return [String]
    class HttpGatewayRoutePrefixRewrite < Struct.new(
      :default_prefix,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the gateway route to rewrite.</p>
    # @!attribute prefix
    #   <p>The specified beginning characters to rewrite.</p>
    #   @return [Types::HttpGatewayRoutePrefixRewrite]
    # @!attribute path
    #   <p>The path to rewrite.</p>
    #   @return [Types::HttpGatewayRoutePathRewrite]
    # @!attribute hostname
    #   <p>The host name to rewrite.</p>
    #   @return [Types::GatewayRouteHostnameRewrite]
    class HttpGatewayRouteRewrite < Struct.new(
      :prefix,
      :path,
      :hostname,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the path to match in the request.</p>
    # @!attribute exact
    #   <p>The exact path to match on.</p>
    #   @return [String]
    # @!attribute regex
    #   <p>The regex used to match the path.</p>
    #   @return [String]
    class HttpPathMatch < Struct.new(
      :exact,
      :regex,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the query parameter in the request.</p>
    # @!attribute name
    #   <p>A name for the query parameter that will be matched on.</p>
    #   @return [String]
    # @!attribute match
    #   <p>The query parameter to match on.</p>
    #   @return [Types::QueryParameterMatch]
    class HttpQueryParameter < Struct.new(
      :name,
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a retry policy. Specify at least one value for at least one of the types of <code>RetryEvents</code>, a value for <code>maxRetries</code>, and a value for <code>perRetryTimeout</code>. 
    #                Both <code>server-error</code> and <code>gateway-error</code> under <code>httpRetryEvents</code> include the Envoy <code>reset</code> policy. For more information on the 
    #                <code>reset</code> policy, see the <a href="https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/router_filter#x-envoy-retry-on">Envoy documentation</a>.</p>
    # @!attribute per_retry_timeout
    #   <p>The timeout for each retry attempt.</p>
    #   @return [Types::Duration]
    # @!attribute max_retries
    #   <p>The maximum number of retry attempts.</p>
    #   @return [Integer]
    # @!attribute http_retry_events
    #   <p>Specify at least one of the following values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>server-error</b> – HTTP status codes 500, 501,
    #                     502, 503, 504, 505, 506, 507, 508, 510, and 511</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>gateway-error</b> – HTTP status codes 502,
    #                     503, and 504</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>client-error</b> – HTTP status code 409</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>stream-error</b> – Retry on refused
    #                     stream</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute tcp_retry_events
    #   <p>Specify a valid value. The event occurs before any processing of a request has started and is encountered when the upstream is temporarily or permanently unavailable.</p>
    #   @return [Array<String>]
    class HttpRetryPolicy < Struct.new(
      :per_retry_timeout,
      :max_retries,
      :http_retry_events,
      :tcp_retry_events,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an HTTP or HTTP/2 route type.</p>
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #   @return [Types::HttpRouteMatch]
    # @!attribute action
    #   <p>An object that represents the action to take if a match is determined.</p>
    #   @return [Types::HttpRouteAction]
    # @!attribute retry_policy
    #   <p>An object that represents a retry policy.</p>
    #   @return [Types::HttpRetryPolicy]
    # @!attribute timeout
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::HttpTimeout]
    class HttpRoute < Struct.new(
      :match,
      :action,
      :retry_policy,
      :timeout,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    # @!attribute weighted_targets
    #   <p>An object that represents the targets that traffic is routed to when a request matches the route.</p>
    #   @return [Array<Types::WeightedTarget>]
    class HttpRouteAction < Struct.new(
      :weighted_targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the HTTP header in the request.</p>
    # @!attribute name
    #   <p>A name for the HTTP header in the client request that will be matched on.</p>
    #   @return [String]
    # @!attribute invert
    #   <p>Specify <code>True</code> to match anything except the match criteria. The default value is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute match
    #   <p>The <code>HeaderMatchMethod</code> object.</p>
    #   @return [Types::HeaderMatchMethod]
    class HttpRouteHeader < Struct.new(
      :name,
      :invert,
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the requirements for a route to match HTTP requests for a
    #          virtual router.</p>
    # @!attribute prefix
    #   <p>Specifies the path to match requests with. This parameter must always start with
    #               <code>/</code>, which by itself matches all requests to the virtual service name. You
    #            can also match for path-based routing of requests. For example, if your virtual service
    #            name is <code>my-service.local</code> and you want the route to match requests to
    #               <code>my-service.local/metrics</code>, your prefix should be
    #            <code>/metrics</code>.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The client request path to match on.</p>
    #   @return [Types::HttpPathMatch]
    # @!attribute query_parameters
    #   <p>The client request query parameters to match on.</p>
    #   @return [Array<Types::HttpQueryParameter>]
    # @!attribute method
    #   <p>The client request method to match on. Specify only one.</p>
    #   @return [String]
    # @!attribute scheme
    #   <p>The client request scheme to match on. Specify only one. Applicable only for HTTP2
    #            routes.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>The client request headers to match on.</p>
    #   @return [Array<Types::HttpRouteHeader>]
    # @!attribute port
    #   <p>The port number to match on.</p>
    #   @return [Integer]
    class HttpRouteMatch < Struct.new(
      :prefix,
      :path,
      :query_parameters,
      :method,
      :scheme,
      :headers,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents types of timeouts. </p>
    # @!attribute per_request
    #   <p>An object that represents a per request timeout. The default value is 15 seconds. If you set a higher timeout, then make sure that the higher value is set for each App Mesh 
    #                                     resource in a conversation. For example, if a virtual node backend uses a virtual router provider to route to another virtual node, then the timeout should be greater than 15
    #                                     seconds for the source and destination virtual node and the route.</p>
    #   @return [Types::Duration]
    # @!attribute idle
    #   <p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>
    #   @return [Types::Duration]
    class HttpTimeout < Struct.new(
      :per_request,
      :idle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or
    #          failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the key value pairs for the JSON.</p>
    # @!attribute key
    #   <p>The specified key for the JSON.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The specified value for the JSON.</p>
    #   @return [String]
    class JsonFormatRef < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have exceeded a service limit for your account. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/service-quotas.html">Service
    #             Limits</a> in the <i>App Mesh User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list gateway routes in.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to list gateway routes in.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListGatewayRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListGatewayRoutes</code> in paginated
    #            output. When you use this parameter, <code>ListGatewayRoutes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListGatewayRoutes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListGatewayRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ListGatewayRoutesOperationInput < Struct.new(
      :mesh_name,
      :virtual_gateway_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_routes
    #   <p>The list of existing gateway routes for the specified service mesh and virtual
    #            gateway.</p>
    #   @return [Array<Types::GatewayRouteRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListGatewayRoutes</code>
    #            request. When the results of a <code>ListGatewayRoutes</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListGatewayRoutesOperationOutput < Struct.new(
      :gateway_routes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListMeshes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListMeshes</code> in paginated output.
    #            When you use this parameter, <code>ListMeshes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListMeshes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListMeshes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    class ListMeshesOperationInput < Struct.new(
      :next_token,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute meshes
    #   <p>The list of existing service meshes.</p>
    #   @return [Array<Types::MeshRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListMeshes</code> request.
    #            When the results of a <code>ListMeshes</code> request exceed <code>limit</code>, you can
    #            use this value to retrieve the next page of results. This value is <code>null</code> when
    #            there are no more results to return.</p>
    #   @return [String]
    class ListMeshesOperationOutput < Struct.new(
      :meshes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list routes in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to list routes in.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListRoutes</code> in paginated output.
    #            When you use this parameter, <code>ListRoutes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListRoutes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ListRoutesOperationInput < Struct.new(
      :mesh_name,
      :virtual_router_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute routes
    #   <p>The list of existing routes for the specified service mesh and virtual router.</p>
    #   @return [Array<Types::RouteRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListRoutes</code> request.
    #            When the results of a <code>ListRoutes</code> request exceed <code>limit</code>, you can
    #            use this value to retrieve the next page of results. This value is <code>null</code> when
    #            there are no more results to return.</p>
    #   @return [String]
    class ListRoutesOperationOutput < Struct.new(
      :routes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListTagsForResource</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of tag results returned by <code>ListTagsForResource</code> in
    #            paginated output. When this parameter is used, <code>ListTagsForResource</code> returns
    #            only <code>limit</code> results in a single page along with a <code>nextToken</code>
    #            response element. You can see the remaining results of the initial request by sending
    #            another <code>ListTagsForResource</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If you don't use
    #            this parameter, <code>ListTagsForResource</code> returns up to 100
    #            results and a <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      :next_token,
      :limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::TagRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListTagsForResource</code>
    #            request. When the results of a <code>ListTagsForResource</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual gateways in.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualGateways</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualGateways</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualGateways</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualGateways</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualGateways</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ListVirtualGatewaysOperationInput < Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateways
    #   <p>The list of existing virtual gateways for the specified service mesh.</p>
    #   @return [Array<Types::VirtualGatewayRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualGateways</code>
    #            request. When the results of a <code>ListVirtualGateways</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListVirtualGatewaysOperationOutput < Struct.new(
      :virtual_gateways,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual nodes in.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualNodes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualNodes</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualNodes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualNodes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualNodes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ListVirtualNodesOperationInput < Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_nodes
    #   <p>The list of existing virtual nodes for the specified service mesh.</p>
    #   @return [Array<Types::VirtualNodeRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualNodes</code>
    #            request. When the results of a <code>ListVirtualNodes</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListVirtualNodesOperationOutput < Struct.new(
      :virtual_nodes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual routers in.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualRouters</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualRouters</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualRouters</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualRouters</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualRouters</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ListVirtualRoutersOperationInput < Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_routers
    #   <p>The list of existing virtual routers for the specified service mesh.</p>
    #   @return [Array<Types::VirtualRouterRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualRouters</code>
    #            request. When the results of a <code>ListVirtualRouters</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListVirtualRoutersOperationOutput < Struct.new(
      :virtual_routers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to list virtual services in.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualServices</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results returned by <code>ListVirtualServices</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualServices</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualServices</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualServices</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    #   @return [Integer]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ListVirtualServicesOperationInput < Struct.new(
      :mesh_name,
      :next_token,
      :limit,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_services
    #   <p>The list of existing virtual services for the specified service mesh.</p>
    #   @return [Array<Types::VirtualServiceRef>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListVirtualServices</code>
    #            request. When the results of a <code>ListVirtualServices</code> request exceed
    #               <code>limit</code>, you can use this value to retrieve the next page of results. This
    #            value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListVirtualServicesOperationOutput < Struct.new(
      :virtual_services,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a listener for a virtual node.</p>
    # @!attribute port_mapping
    #   <p>The port mapping information for the listener.</p>
    #   @return [Types::PortMapping]
    # @!attribute tls
    #   <p>A reference to an object that represents the Transport Layer Security (TLS) properties for a listener.</p>
    #   @return [Types::ListenerTls]
    # @!attribute health_check
    #   <p>The health check information for the listener.</p>
    #   @return [Types::HealthCheckPolicy]
    # @!attribute timeout
    #   <p>An object that represents timeouts for different protocols.</p>
    #   @return [Types::ListenerTimeout]
    # @!attribute outlier_detection
    #   <p>The outlier detection information for the listener.</p>
    #   @return [Types::OutlierDetection]
    # @!attribute connection_pool
    #   <p>The connection pool information for the listener.</p>
    #   @return [Types::VirtualNodeConnectionPool]
    class Listener < Struct.new(
      :port_mapping,
      :tls,
      :health_check,
      :timeout,
      :outlier_detection,
      :connection_pool,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents timeouts for different protocols.</p>
    # @!attribute tcp
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::TcpTimeout]
    # @!attribute http
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::HttpTimeout]
    # @!attribute http2
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::HttpTimeout]
    # @!attribute grpc
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::GrpcTimeout]
    class ListenerTimeout < Struct.new(
      :tcp,
      :http,
      :http2,
      :grpc,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Tcp < ListenerTimeout; end
      class Http < ListenerTimeout; end
      class Http2 < ListenerTimeout; end
      class Grpc < ListenerTimeout; end
      class Unknown < ListenerTimeout; end
    end

    # <p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>
    # @!attribute mode
    #   <p>Specify one of the following modes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b/>STRICT – Listener only accepts connections with TLS
    #                  enabled. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>PERMISSIVE – Listener accepts connections with or
    #                  without TLS enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>DISABLED – Listener only accepts connections without
    #                  TLS. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute certificate
    #   <p>A reference to an object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    #   @return [Types::ListenerTlsCertificate]
    # @!attribute validation
    #   <p>A reference to an object that represents a listener's Transport Layer Security (TLS) validation context.</p>
    #   @return [Types::ListenerTlsValidationContext]
    class ListenerTls < Struct.new(
      :mode,
      :certificate,
      :validation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an Certificate Manager certificate.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    #   @return [String]
    class ListenerTlsAcmCertificate < Struct.new(
      :certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    # @!attribute acm
    #   <p>A reference to an object that represents an Certificate Manager certificate.</p>
    #   @return [Types::ListenerTlsAcmCertificate]
    # @!attribute file
    #   <p>A reference to an object that represents a local file certificate.</p>
    #   @return [Types::ListenerTlsFileCertificate]
    # @!attribute sds
    #   <p>A reference to an object that represents a listener's Secret Discovery Service
    #            certificate.</p>
    #   @return [Types::ListenerTlsSdsCertificate]
    class ListenerTlsCertificate < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Acm < ListenerTlsCertificate; end
      class File < ListenerTlsCertificate; end
      class Sds < ListenerTlsCertificate; end
      class Unknown < ListenerTlsCertificate; end
    end

    # <p>An object that represents a local file certificate.
    #          The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    # @!attribute certificate_chain
    #   <p>The certificate chain for the certificate.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key for a certificate stored on the file system of the virtual node that the
    #            proxy is running on.</p>
    #   @return [String]
    class ListenerTlsFileCertificate < Struct.new(
      :certificate_chain,
      :private_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the listener's Secret Discovery Service certificate. The proxy
    #          must be configured with a local SDS provider via a Unix Domain Socket. See App Mesh
    #          <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info.</p>
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret requested from the
    #            Secret Discovery Service provider representing Transport Layer Security (TLS) materials like a certificate or
    #            certificate chain.</p>
    #   @return [String]
    class ListenerTlsSdsCertificate < Struct.new(
      :secret_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) validation context.</p>
    # @!attribute trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #   @return [Types::ListenerTlsValidationContextTrust]
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a listener's Transport Layer Security (TLS) validation
    #            context.</p>
    #   @return [Types::SubjectAlternativeNames]
    class ListenerTlsValidationContext < Struct.new(
      :trust,
      :subject_alternative_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) validation context trust.</p>
    # @!attribute file
    #   <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    #   @return [Types::TlsValidationContextFileTrust]
    # @!attribute sds
    #   <p>A reference to an object that represents a listener's Transport Layer Security (TLS) Secret Discovery Service
    #            validation context trust.</p>
    #   @return [Types::TlsValidationContextSdsTrust]
    class ListenerTlsValidationContextTrust < Struct.new(
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class File < ListenerTlsValidationContextTrust; end
      class Sds < ListenerTlsValidationContextTrust; end
      class Unknown < ListenerTlsValidationContextTrust; end
    end

    # <p>An object that represents the logging information for a virtual node.</p>
    # @!attribute access_log
    #   <p>The access log configuration for a virtual node.</p>
    #   @return [Types::AccessLog]
    class Logging < Struct.new(
      :access_log,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the format for the logs.</p>
    # @!attribute text
    #   <p/>
    #   @return [String]
    # @!attribute json
    #   <p/>
    #   @return [Array<Types::JsonFormatRef>]
    class LoggingFormat < Struct.new(
      :text,
      :json,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < LoggingFormat; end
      class Json < LoggingFormat; end
      class Unknown < LoggingFormat; end
    end

    # <p>An object that represents the range of values to match on. The first character of the range is included in the range, though the last character is not. For example, if the range specified were 1-100, only values 1-99 would be matched.</p>
    # @!attribute start
    #   <p>The start of the range.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The end of the range.</p>
    #   @return [Integer]
    class MatchRange < Struct.new(
      :start,
      :end,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a service mesh returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The associated specification for the service mesh.</p>
    #   @return [Types::MeshSpec]
    # @!attribute metadata
    #   <p>The associated metadata for the service mesh.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The status of the service mesh.</p>
    #   @return [Types::MeshStatus]
    class MeshData < Struct.new(
      :mesh_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a service mesh returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) of the service mesh.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class MeshRef < Struct.new(
      :mesh_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the service discovery information for a service mesh.</p>
    # @!attribute ip_preference
    #   <p>The IP version to use to control traffic within the mesh.</p>
    #   @return [String]
    class MeshServiceDiscovery < Struct.new(
      :ip_preference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the specification of a service mesh.</p>
    # @!attribute egress_filter
    #   <p>The egress filter rules for the service mesh.</p>
    #   @return [Types::EgressFilter]
    # @!attribute service_discovery
    #   <p>An object that represents the service discovery information for a service mesh.</p>
    #   @return [Types::MeshServiceDiscovery]
    class MeshSpec < Struct.new(
      :egress_filter,
      :service_discovery,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the status of a service mesh.</p>
    # @!attribute status
    #   <p>The current mesh status.</p>
    #   @return [String]
    class MeshStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist. Check your request syntax and try again.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the outlier detection for a virtual node's listener.</p>
    # @!attribute max_server_errors
    #   <p>Number of consecutive <code>5xx</code> errors required for ejection. </p>
    #   @return [Integer]
    # @!attribute interval
    #   <p>The time interval between ejection sweep analysis.</p>
    #   @return [Types::Duration]
    # @!attribute base_ejection_duration
    #   <p>The base amount of time for which a host is ejected.</p>
    #   @return [Types::Duration]
    # @!attribute max_ejection_percent
    #   <p>Maximum percentage of hosts in load balancing pool for upstream service that can be
    #            ejected. Will eject at least one host regardless of the value.</p>
    #   @return [Integer]
    class OutlierDetection < Struct.new(
      :max_server_errors,
      :interval,
      :base_ejection_duration,
      :max_ejection_percent,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a port mapping.</p>
    # @!attribute port
    #   <p>The port used for the port mapping.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol used for the port mapping. Specify one protocol.</p>
    #   @return [String]
    class PortMapping < Struct.new(
      :port,
      :protocol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the query parameter to match.</p>
    # @!attribute exact
    #   <p>The exact query parameter to match on.</p>
    #   @return [String]
    class QueryParameterMatch < Struct.new(
      :exact,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You can't delete the specified resource because it's in use or required by another
    #          resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents metadata for a resource.</p>
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute uid
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class ResourceMetadata < Struct.new(
      :arn,
      :version,
      :uid,
      :created_at,
      :last_updated_at,
      :mesh_owner,
      :resource_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a route returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The virtual router that the route is associated with.</p>
    #   @return [String]
    # @!attribute route_name
    #   <p>The name of the route.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The specifications of the route.</p>
    #   @return [Types::RouteSpec]
    # @!attribute metadata
    #   <p>The associated metadata for the route.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The status of the route.</p>
    #   @return [Types::RouteStatus]
    class RouteData < Struct.new(
      :mesh_name,
      :virtual_router_name,
      :route_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a route returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The virtual router that the route is associated with.</p>
    #   @return [String]
    # @!attribute route_name
    #   <p>The name of the route.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the route.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class RouteRef < Struct.new(
      :mesh_name,
      :virtual_router_name,
      :route_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a route specification. Specify one route type.</p>
    # @!attribute priority
    #   <p>The priority for the route. Routes are matched based on the specified value, where 0 is
    #            the highest priority.</p>
    #   @return [Integer]
    # @!attribute http_route
    #   <p>An object that represents the specification of an HTTP route.</p>
    #   @return [Types::HttpRoute]
    # @!attribute tcp_route
    #   <p>An object that represents the specification of a TCP route.</p>
    #   @return [Types::TcpRoute]
    # @!attribute http2_route
    #   <p>An object that represents the specification of an HTTP/2 route.</p>
    #   @return [Types::HttpRoute]
    # @!attribute grpc_route
    #   <p>An object that represents the specification of a gRPC route.</p>
    #   @return [Types::GrpcRoute]
    class RouteSpec < Struct.new(
      :priority,
      :http_route,
      :tcp_route,
      :http2_route,
      :grpc_route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the current status of a route.</p>
    # @!attribute status
    #   <p>The current status for the route.</p>
    #   @return [String]
    class RouteStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the service discovery information for a virtual node.</p>
    # @!attribute dns
    #   <p>Specifies the DNS information for the virtual node.</p>
    #   @return [Types::DnsServiceDiscovery]
    # @!attribute aws_cloud_map
    #   <p>Specifies any Cloud Map information for the virtual node.</p>
    #   @return [Types::AwsCloudMapServiceDiscovery]
    class ServiceDiscovery < Struct.new(
      :dns,
      :aws_cloud_map,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Dns < ServiceDiscovery; end
      class AwsCloudMap < ServiceDiscovery; end
      class Unknown < ServiceDiscovery; end
    end

    # <p>The request has failed due to a temporary failure of the service.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the methods by which a subject alternative name on a peer
    #          Transport Layer Security (TLS) certificate can be matched.</p>
    # @!attribute exact
    #   <p>The values sent must match the specified values exactly.</p>
    #   @return [Array<String>]
    class SubjectAlternativeNameMatchers < Struct.new(
      :exact,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the subject alternative names secured by the
    #          certificate.</p>
    # @!attribute match
    #   <p>An object that represents the criteria for determining a SANs match.</p>
    #   @return [Types::SubjectAlternativeNameMatchers]
    class SubjectAlternativeNames < Struct.new(
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Optional metadata that you apply to a resource to assist with categorization and
    #          organization. Each tag consists of a key and an optional value, both of which you define.
    #          Tag keys can have a maximum character length of 128 characters, and tag values can have
    #             a maximum length of 256 characters.</p>
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
    #            that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a
    #            descriptor within a tag category (key).</p>
    #   @return [String]
    class TagRef < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #   @return [Array<Types::TagRef>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a TCP route type.</p>
    # @!attribute action
    #   <p>The action to take if a match is determined.</p>
    #   @return [Types::TcpRouteAction]
    # @!attribute timeout
    #   <p>An object that represents types of timeouts. </p>
    #   @return [Types::TcpTimeout]
    # @!attribute match
    #   <p>An object that represents the criteria for determining a request match.</p>
    #   @return [Types::TcpRouteMatch]
    class TcpRoute < Struct.new(
      :action,
      :timeout,
      :match,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the action to take if a match is determined.</p>
    # @!attribute weighted_targets
    #   <p>An object that represents the targets that traffic is routed to when a request matches the route.</p>
    #   @return [Array<Types::WeightedTarget>]
    class TcpRouteAction < Struct.new(
      :weighted_targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object representing the TCP route to match.</p>
    # @!attribute port
    #   <p>The port number to match on.</p>
    #   @return [Integer]
    class TcpRouteMatch < Struct.new(
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents types of timeouts. </p>
    # @!attribute idle
    #   <p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>
    #   @return [Types::Duration]
    class TcpTimeout < Struct.new(
      :idle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents how the proxy will validate its peer during Transport Layer Security (TLS)
    #          negotiation.</p>
    # @!attribute trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #   @return [Types::TlsValidationContextTrust]
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a Transport Layer Security (TLS) validation context. If you
    #            don't specify SANs on the <i>terminating</i> mesh endpoint, the Envoy proxy
    #            for that node doesn't verify the SAN on a peer client certificate. If you don't specify
    #            SANs on the <i>originating</i> mesh endpoint, the SAN on the certificate
    #            provided by the terminating endpoint must match the mesh endpoint service discovery
    #            configuration. Since SPIRE vended certificates have a SPIFFE ID as a name, you must set the
    #            SAN since the name doesn't match the service discovery name.</p>
    #   @return [Types::SubjectAlternativeNames]
    class TlsValidationContext < Struct.new(
      :trust,
      :subject_alternative_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager
    #          certificate.</p>
    # @!attribute certificate_authority_arns
    #   <p>One or more ACM Amazon Resource Name (ARN)s.</p>
    #   @return [Array<String>]
    class TlsValidationContextAcmTrust < Struct.new(
      :certificate_authority_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    # @!attribute certificate_chain
    #   <p>The certificate trust chain for a certificate stored on the file system of the virtual
    #            node that the proxy is running on.</p>
    #   @return [String]
    class TlsValidationContextFileTrust < Struct.new(
      :certificate_chain,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) Secret Discovery Service validation context trust. The
    #          proxy must be configured with a local SDS provider via a Unix Domain Socket. See App Mesh
    #          <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info.</p>
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret for a Transport Layer Security (TLS) Secret
    #            Discovery Service validation context trust.</p>
    #   @return [String]
    class TlsValidationContextSdsTrust < Struct.new(
      :secret_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust.</p>
    # @!attribute acm
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager certificate.</p>
    #   @return [Types::TlsValidationContextAcmTrust]
    # @!attribute file
    #   <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    #   @return [Types::TlsValidationContextFileTrust]
    # @!attribute sds
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) Secret Discovery Service validation
    #            context trust.</p>
    #   @return [Types::TlsValidationContextSdsTrust]
    class TlsValidationContextTrust < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Acm < TlsValidationContextTrust; end
      class File < TlsValidationContextTrust; end
      class Sds < TlsValidationContextTrust; end
      class Unknown < TlsValidationContextTrust; end
    end

    # <p>The maximum request rate permitted by the App Mesh APIs has been exceeded for
    #          your account. For best results, use an increasing or variable sleep interval between
    #          requests.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request exceeds the maximum allowed number of tags allowed per resource. The current
    #          limit is 50 user tags per resource. You must reduce the number of tags in the request. None
    #          of the tags in this request were applied.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route_name
    #   <p>The name of the gateway route to update.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The new gateway route specification to apply. This overwrites the existing data.</p>
    #   @return [Types::GatewayRouteSpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class UpdateGatewayRouteOperationInput < Struct.new(
      :gateway_route_name,
      :mesh_name,
      :virtual_gateway_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_route
    #   <p>A full description of the gateway route that was updated.</p>
    #   @return [Types::GatewayRouteData]
    class UpdateGatewayRouteOperationOutput < Struct.new(
      :gateway_route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh_name
    #   <p>The name of the service mesh to update.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The service mesh specification to apply.</p>
    #   @return [Types::MeshSpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    class UpdateMeshOperationInput < Struct.new(
      :mesh_name,
      :spec,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mesh
    #   <p>An object that represents a service mesh returned by a describe operation.</p>
    #   @return [Types::MeshData]
    class UpdateMeshOperationOutput < Struct.new(
      :mesh,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route_name
    #   <p>The name of the route to update.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The new route specification to apply. This overwrites the existing data.</p>
    #   @return [Types::RouteSpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class UpdateRouteOperationInput < Struct.new(
      :route_name,
      :mesh_name,
      :virtual_router_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute route
    #   <p>A full description of the route that was updated.</p>
    #   @return [Types::RouteData]
    class UpdateRouteOperationOutput < Struct.new(
      :route,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway to update.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual gateway resides in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The new virtual gateway specification to apply. This overwrites the existing
    #            data.</p>
    #   @return [Types::VirtualGatewaySpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class UpdateVirtualGatewayOperationInput < Struct.new(
      :virtual_gateway_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_gateway
    #   <p>A full description of the virtual gateway that was updated.</p>
    #   @return [Types::VirtualGatewayData]
    class UpdateVirtualGatewayOperationOutput < Struct.new(
      :virtual_gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node_name
    #   <p>The name of the virtual node to update.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The new virtual node specification to apply. This overwrites the existing data.</p>
    #   @return [Types::VirtualNodeSpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class UpdateVirtualNodeOperationInput < Struct.new(
      :virtual_node_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_node
    #   <p>A full description of the virtual node that was updated.</p>
    #   @return [Types::VirtualNodeData]
    class UpdateVirtualNodeOperationOutput < Struct.new(
      :virtual_node,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router_name
    #   <p>The name of the virtual router to update.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The new virtual router specification to apply. This overwrites the existing data.</p>
    #   @return [Types::VirtualRouterSpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class UpdateVirtualRouterOperationInput < Struct.new(
      :virtual_router_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_router
    #   <p>A full description of the virtual router that was updated.</p>
    #   @return [Types::VirtualRouterData]
    class UpdateVirtualRouterOperationOutput < Struct.new(
      :virtual_router,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service_name
    #   <p>The name of the virtual service to update.</p>
    #   @return [String]
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The new virtual service specification to apply. This overwrites the existing
    #            data.</p>
    #   @return [Types::VirtualServiceSpec]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    class UpdateVirtualServiceOperationInput < Struct.new(
      :virtual_service_name,
      :mesh_name,
      :spec,
      :client_token,
      :mesh_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute virtual_service
    #   <p>A full description of the virtual service that was updated.</p>
    #   @return [Types::VirtualServiceData]
    class UpdateVirtualServiceOperationOutput < Struct.new(
      :virtual_service,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The access log configuration for a virtual gateway.</p>
    # @!attribute file
    #   <p>The file object to send virtual gateway access logs to.</p>
    #   @return [Types::VirtualGatewayFileAccessLog]
    class VirtualGatewayAccessLog < Struct.new(
      :file,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class File < VirtualGatewayAccessLog; end
      class Unknown < VirtualGatewayAccessLog; end
    end

    # <p>An object that represents the default properties for a backend.</p>
    # @!attribute client_policy
    #   <p>A reference to an object that represents a client policy.</p>
    #   @return [Types::VirtualGatewayClientPolicy]
    class VirtualGatewayBackendDefaults < Struct.new(
      :client_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a client policy.</p>
    # @!attribute tls
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>
    #   @return [Types::VirtualGatewayClientPolicyTls]
    class VirtualGatewayClientPolicy < Struct.new(
      :tls,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) client policy.</p>
    # @!attribute enforce
    #   <p>Whether the policy is enforced. The default is <code>True</code>, if a value isn't
    #            specified.</p>
    #   @return [Boolean]
    # @!attribute ports
    #   <p>One or more ports that the policy is enforced for.</p>
    #   @return [Array<Integer>]
    # @!attribute certificate
    #   <p>A reference to an object that represents a virtual gateway's client's Transport Layer Security (TLS)
    #            certificate.</p>
    #   @return [Types::VirtualGatewayClientTlsCertificate]
    # @!attribute validation
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) validation context.</p>
    #   @return [Types::VirtualGatewayTlsValidationContext]
    class VirtualGatewayClientPolicyTls < Struct.new(
      :enforce,
      :ports,
      :certificate,
      :validation,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforce] =  unless options.key?(:enforce)
        super
      end
    end

    # <p>An object that represents the virtual gateway's client's Transport Layer Security (TLS) certificate.</p>
    # @!attribute file
    #   <p>An object that represents a local file certificate. The certificate must meet specific
    #            requirements and you must have proxy authorization enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html"> Transport Layer Security (TLS)
    #            </a>.</p>
    #   @return [Types::VirtualGatewayListenerTlsFileCertificate]
    # @!attribute sds
    #   <p>A reference to an object that represents a virtual gateway's client's Secret Discovery
    #            Service certificate.</p>
    #   @return [Types::VirtualGatewayListenerTlsSdsCertificate]
    class VirtualGatewayClientTlsCertificate < Struct.new(
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class File < VirtualGatewayClientTlsCertificate; end
      class Sds < VirtualGatewayClientTlsCertificate; end
      class Unknown < VirtualGatewayClientTlsCertificate; end
    end

    # <p>An object that represents the type of virtual gateway connection pool.</p>
    #          <p>Only one protocol is used at a time and should be the same protocol as the one chosen
    #          under port mapping.</p>
    #          <p>If not present the default value for <code>maxPendingRequests</code> is
    #             <code>2147483647</code>.</p>
    # @!attribute http
    #   <p>An object that represents a type of connection pool.</p>
    #   @return [Types::VirtualGatewayHttpConnectionPool]
    # @!attribute http2
    #   <p>An object that represents a type of connection pool.</p>
    #   @return [Types::VirtualGatewayHttp2ConnectionPool]
    # @!attribute grpc
    #   <p>An object that represents a type of connection pool. </p>
    #   @return [Types::VirtualGatewayGrpcConnectionPool]
    class VirtualGatewayConnectionPool < Struct.new(
      :http,
      :http2,
      :grpc,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Http < VirtualGatewayConnectionPool; end
      class Http2 < VirtualGatewayConnectionPool; end
      class Grpc < VirtualGatewayConnectionPool; end
      class Unknown < VirtualGatewayConnectionPool; end
    end

    # <p>An object that represents a virtual gateway returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual gateway resides in.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the virtual gateway.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The specifications of the virtual gateway.</p>
    #   @return [Types::VirtualGatewaySpec]
    # @!attribute metadata
    #   <p>An object that represents metadata for a resource.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The current status of the virtual gateway.</p>
    #   @return [Types::VirtualGatewayStatus]
    class VirtualGatewayData < Struct.new(
      :mesh_name,
      :virtual_gateway_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an access log file.</p>
    # @!attribute path
    #   <p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
    #            access logs to standard out and configure your Envoy container to use a log driver, such as
    #               <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
    #            CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
    #            the files to disk.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The specified format for the virtual gateway access logs. It can be either
    #               <code>json_format</code> or <code>text_format</code>.</p>
    #   @return [Types::LoggingFormat]
    class VirtualGatewayFileAccessLog < Struct.new(
      :path,
      :format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #   @return [Integer]
    class VirtualGatewayGrpcConnectionPool < Struct.new(
      :max_requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the health check policy for a virtual gateway's
    #          listener.</p>
    # @!attribute timeout_millis
    #   <p>The amount of time to wait when receiving a response from the health check, in
    #            milliseconds.</p>
    #   @return [Integer]
    # @!attribute interval_millis
    #   <p>The time period in milliseconds between each health check execution.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol for the health check request. If you specify <code>grpc</code>, then your
    #            service must conform to the <a href="https://github.com/grpc/grpc/blob/master/doc/health-checking.md">GRPC Health
    #               Checking Protocol</a>.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The destination port for the health check request. This port must match the port defined
    #            in the <a>PortMapping</a> for the listener.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The destination path for the health check request. This value is only used if the
    #            specified protocol is HTTP or HTTP/2. For any other protocol, this value is ignored.</p>
    #   @return [String]
    # @!attribute healthy_threshold
    #   <p>The number of consecutive successful health checks that must occur before declaring the
    #            listener healthy.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive failed health checks that must occur before declaring a
    #            virtual gateway unhealthy.</p>
    #   @return [Integer]
    class VirtualGatewayHealthCheckPolicy < Struct.new(
      :timeout_millis,
      :interval_millis,
      :protocol,
      :port,
      :path,
      :healthy_threshold,
      :unhealthy_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #   @return [Integer]
    class VirtualGatewayHttp2ConnectionPool < Struct.new(
      :max_requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_connections
    #   <p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
    #            hosts in upstream cluster.</p>
    #   @return [Integer]
    # @!attribute max_pending_requests
    #   <p>Number of overflowing requests after <code>max_connections</code> Envoy will queue to
    #            upstream cluster.</p>
    #   @return [Integer]
    class VirtualGatewayHttpConnectionPool < Struct.new(
      :max_connections,
      :max_pending_requests,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_pending_requests] =  unless options.key?(:max_pending_requests)
        super
      end
    end

    # <p>An object that represents a listener for a virtual gateway.</p>
    # @!attribute health_check
    #   <p>The health check information for the listener.</p>
    #   @return [Types::VirtualGatewayHealthCheckPolicy]
    # @!attribute port_mapping
    #   <p>The port mapping information for the listener.</p>
    #   @return [Types::VirtualGatewayPortMapping]
    # @!attribute tls
    #   <p>A reference to an object that represents the Transport Layer Security (TLS) properties for the listener.</p>
    #   @return [Types::VirtualGatewayListenerTls]
    # @!attribute connection_pool
    #   <p>The connection pool information for the virtual gateway listener.</p>
    #   @return [Types::VirtualGatewayConnectionPool]
    class VirtualGatewayListener < Struct.new(
      :health_check,
      :port_mapping,
      :tls,
      :connection_pool,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>
    # @!attribute mode
    #   <p>Specify one of the following modes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b/>STRICT – Listener only accepts connections with TLS
    #                  enabled. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>PERMISSIVE – Listener accepts connections with or
    #                  without TLS enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b/>DISABLED – Listener only accepts connections without
    #                  TLS. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute validation
    #   <p>A reference to an object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation
    #            context.</p>
    #   @return [Types::VirtualGatewayListenerTlsValidationContext]
    # @!attribute certificate
    #   <p>An object that represents a Transport Layer Security (TLS) certificate.</p>
    #   @return [Types::VirtualGatewayListenerTlsCertificate]
    class VirtualGatewayListenerTls < Struct.new(
      :mode,
      :validation,
      :certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents an Certificate Manager certificate.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    #   @return [String]
    class VirtualGatewayListenerTlsAcmCertificate < Struct.new(
      :certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    # @!attribute acm
    #   <p>A reference to an object that represents an Certificate Manager certificate.</p>
    #   @return [Types::VirtualGatewayListenerTlsAcmCertificate]
    # @!attribute file
    #   <p>A reference to an object that represents a local file certificate.</p>
    #   @return [Types::VirtualGatewayListenerTlsFileCertificate]
    # @!attribute sds
    #   <p>A reference to an object that represents a virtual gateway's listener's Secret Discovery
    #            Service certificate.</p>
    #   @return [Types::VirtualGatewayListenerTlsSdsCertificate]
    class VirtualGatewayListenerTlsCertificate < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Acm < VirtualGatewayListenerTlsCertificate; end
      class File < VirtualGatewayListenerTlsCertificate; end
      class Sds < VirtualGatewayListenerTlsCertificate; end
      class Unknown < VirtualGatewayListenerTlsCertificate; end
    end

    # <p>An object that represents a local file certificate.
    #          The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites">Transport Layer Security (TLS)</a>.</p>
    # @!attribute certificate_chain
    #   <p>The certificate chain for the certificate.</p>
    #   @return [String]
    # @!attribute private_key
    #   <p>The private key for a certificate stored on the file system of the mesh endpoint that
    #            the proxy is running on.</p>
    #   @return [String]
    class VirtualGatewayListenerTlsFileCertificate < Struct.new(
      :certificate_chain,
      :private_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the virtual gateway's listener's Secret Discovery Service
    #          certificate.The proxy must be configured with a local SDS provider via a Unix Domain
    #          Socket. See App Mesh<a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info. </p>
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret secret requested from
    #            the Secret Discovery Service provider representing Transport Layer Security (TLS) materials like a certificate or
    #            certificate chain.</p>
    #   @return [String]
    class VirtualGatewayListenerTlsSdsCertificate < Struct.new(
      :secret_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation
    #          context.</p>
    # @!attribute trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #   @return [Types::VirtualGatewayListenerTlsValidationContextTrust]
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a virtual gateway listener's Transport Layer Security (TLS)
    #            validation context.</p>
    #   @return [Types::SubjectAlternativeNames]
    class VirtualGatewayListenerTlsValidationContext < Struct.new(
      :trust,
      :subject_alternative_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation context
    #          trust.</p>
    # @!attribute file
    #   <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    #   @return [Types::VirtualGatewayTlsValidationContextFileTrust]
    # @!attribute sds
    #   <p>A reference to an object that represents a virtual gateway's listener's Transport Layer Security (TLS) Secret
    #            Discovery Service validation context trust.</p>
    #   @return [Types::VirtualGatewayTlsValidationContextSdsTrust]
    class VirtualGatewayListenerTlsValidationContextTrust < Struct.new(
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class File < VirtualGatewayListenerTlsValidationContextTrust; end
      class Sds < VirtualGatewayListenerTlsValidationContextTrust; end
      class Unknown < VirtualGatewayListenerTlsValidationContextTrust; end
    end

    # <p>An object that represents logging information.</p>
    # @!attribute access_log
    #   <p>The access log configuration.</p>
    #   @return [Types::VirtualGatewayAccessLog]
    class VirtualGatewayLogging < Struct.new(
      :access_log,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a port mapping.</p>
    # @!attribute port
    #   <p>The port used for the port mapping. Specify one protocol.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol used for the port mapping.</p>
    #   @return [String]
    class VirtualGatewayPortMapping < Struct.new(
      :port,
      :protocol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual gateway returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the resource resides in.</p>
    #   @return [String]
    # @!attribute virtual_gateway_name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class VirtualGatewayRef < Struct.new(
      :mesh_name,
      :virtual_gateway_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the specification of a service mesh resource.</p>
    # @!attribute backend_defaults
    #   <p>A reference to an object that represents the defaults for backends.</p>
    #   @return [Types::VirtualGatewayBackendDefaults]
    # @!attribute listeners
    #   <p>The listeners that the mesh endpoint is expected to receive inbound traffic from. You
    #            can specify one listener.</p>
    #   @return [Array<Types::VirtualGatewayListener>]
    # @!attribute logging
    #   <p>An object that represents logging information.</p>
    #   @return [Types::VirtualGatewayLogging]
    class VirtualGatewaySpec < Struct.new(
      :backend_defaults,
      :listeners,
      :logging,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the status of the mesh resource.</p>
    # @!attribute status
    #   <p>The current status.</p>
    #   @return [String]
    class VirtualGatewayStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context.</p>
    # @!attribute trust
    #   <p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
    #            certificate.</p>
    #   @return [Types::VirtualGatewayTlsValidationContextTrust]
    # @!attribute subject_alternative_names
    #   <p>A reference to an object that represents the SANs for a virtual gateway's listener's
    #            Transport Layer Security (TLS) validation context.</p>
    #   @return [Types::SubjectAlternativeNames]
    class VirtualGatewayTlsValidationContext < Struct.new(
      :trust,
      :subject_alternative_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager
    #          certificate.</p>
    # @!attribute certificate_authority_arns
    #   <p>One or more ACM Amazon Resource Name (ARN)s.</p>
    #   @return [Array<String>]
    class VirtualGatewayTlsValidationContextAcmTrust < Struct.new(
      :certificate_authority_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    # @!attribute certificate_chain
    #   <p>The certificate trust chain for a certificate stored on the file system of the virtual
    #            node that the proxy is running on.</p>
    #   @return [String]
    class VirtualGatewayTlsValidationContextFileTrust < Struct.new(
      :certificate_chain,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) Secret Discovery Service
    #          validation context trust. The proxy must be configured with a local SDS provider via a Unix
    #          Domain Socket. See App Mesh
    #          <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html">TLS
    #             documentation</a> for more info.</p>
    # @!attribute secret_name
    #   <p>A reference to an object that represents the name of the secret for a virtual gateway's
    #            Transport Layer Security (TLS) Secret Discovery Service validation context trust.</p>
    #   @return [String]
    class VirtualGatewayTlsValidationContextSdsTrust < Struct.new(
      :secret_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a Transport Layer Security (TLS) validation context trust.</p>
    # @!attribute acm
    #   <p>A reference to an object that represents a Transport Layer Security (TLS) validation context trust for an Certificate Manager certificate.</p>
    #   @return [Types::VirtualGatewayTlsValidationContextAcmTrust]
    # @!attribute file
    #   <p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>
    #   @return [Types::VirtualGatewayTlsValidationContextFileTrust]
    # @!attribute sds
    #   <p>A reference to an object that represents a virtual gateway's Transport Layer Security (TLS) Secret Discovery
    #            Service validation context trust.</p>
    #   @return [Types::VirtualGatewayTlsValidationContextSdsTrust]
    class VirtualGatewayTlsValidationContextTrust < Struct.new(
      :acm,
      :file,
      :sds,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Acm < VirtualGatewayTlsValidationContextTrust; end
      class File < VirtualGatewayTlsValidationContextTrust; end
      class Sds < VirtualGatewayTlsValidationContextTrust; end
      class Unknown < VirtualGatewayTlsValidationContextTrust; end
    end

    # <p>An object that represents the type of virtual node connection pool.</p>
    #          <p>Only one protocol is used at a time and should be the same protocol as the one chosen
    #          under port mapping.</p>
    #          <p>If not present the default value for <code>maxPendingRequests</code> is
    #             <code>2147483647</code>.</p>
    #          <p/>
    # @!attribute tcp
    #   <p>An object that represents a type of connection pool.</p>
    #   @return [Types::VirtualNodeTcpConnectionPool]
    # @!attribute http
    #   <p>An object that represents a type of connection pool.</p>
    #   @return [Types::VirtualNodeHttpConnectionPool]
    # @!attribute http2
    #   <p>An object that represents a type of connection pool.</p>
    #   @return [Types::VirtualNodeHttp2ConnectionPool]
    # @!attribute grpc
    #   <p>An object that represents a type of connection pool.</p>
    #   @return [Types::VirtualNodeGrpcConnectionPool]
    class VirtualNodeConnectionPool < Struct.new(
      :tcp,
      :http,
      :http2,
      :grpc,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Tcp < VirtualNodeConnectionPool; end
      class Http < VirtualNodeConnectionPool; end
      class Http2 < VirtualNodeConnectionPool; end
      class Grpc < VirtualNodeConnectionPool; end
      class Unknown < VirtualNodeConnectionPool; end
    end

    # <p>An object that represents a virtual node returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #   @return [String]
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The specifications of the virtual node.</p>
    #   @return [Types::VirtualNodeSpec]
    # @!attribute metadata
    #   <p>The associated metadata for the virtual node.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The current status for the virtual node.</p>
    #   @return [Types::VirtualNodeStatus]
    class VirtualNodeData < Struct.new(
      :mesh_name,
      :virtual_node_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #   @return [Integer]
    class VirtualNodeGrpcConnectionPool < Struct.new(
      :max_requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_requests
    #   <p>Maximum number of inflight requests Envoy can concurrently support across hosts in
    #            upstream cluster.</p>
    #   @return [Integer]
    class VirtualNodeHttp2ConnectionPool < Struct.new(
      :max_requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_connections
    #   <p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
    #            hosts in upstream cluster.</p>
    #   @return [Integer]
    # @!attribute max_pending_requests
    #   <p>Number of overflowing requests after <code>max_connections</code> Envoy will queue to
    #            upstream cluster.</p>
    #   @return [Integer]
    class VirtualNodeHttpConnectionPool < Struct.new(
      :max_connections,
      :max_pending_requests,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_pending_requests] =  unless options.key?(:max_pending_requests)
        super
      end
    end

    # <p>An object that represents a virtual node returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    #   @return [String]
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the virtual node.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class VirtualNodeRef < Struct.new(
      :mesh_name,
      :virtual_node_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual node service provider.</p>
    # @!attribute virtual_node_name
    #   <p>The name of the virtual node that is acting as a service provider.</p>
    #   @return [String]
    class VirtualNodeServiceProvider < Struct.new(
      :virtual_node_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the specification of a virtual node.</p>
    # @!attribute service_discovery
    #   <p>The service discovery information for the virtual node. If your virtual node does not
    #            expect ingress traffic, you can omit this parameter. If you specify a
    #            <code>listener</code>, then you must specify service discovery information.</p>
    #   @return [Types::ServiceDiscovery]
    # @!attribute listeners
    #   <p>The listener that the virtual node is expected to receive inbound traffic from. You can
    #            specify one listener.</p>
    #   @return [Array<Types::Listener>]
    # @!attribute backends
    #   <p>The backends that the virtual node is expected to send outbound traffic to.</p>
    #   @return [Array<Types::Backend>]
    # @!attribute backend_defaults
    #   <p>A reference to an object that represents the defaults for backends.</p>
    #   @return [Types::BackendDefaults]
    # @!attribute logging
    #   <p>The inbound and outbound access logging information for the virtual node.</p>
    #   @return [Types::Logging]
    class VirtualNodeSpec < Struct.new(
      :service_discovery,
      :listeners,
      :backends,
      :backend_defaults,
      :logging,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the current status of the virtual node.</p>
    # @!attribute status
    #   <p>The current status of the virtual node.</p>
    #   @return [String]
    class VirtualNodeStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a type of connection pool.</p>
    # @!attribute max_connections
    #   <p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
    #            hosts in upstream cluster.</p>
    #   @return [Integer]
    class VirtualNodeTcpConnectionPool < Struct.new(
      :max_connections,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual router returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The specifications of the virtual router.</p>
    #   @return [Types::VirtualRouterSpec]
    # @!attribute metadata
    #   <p>The associated metadata for the virtual router.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The current status of the virtual router.</p>
    #   @return [Types::VirtualRouterStatus]
    class VirtualRouterData < Struct.new(
      :mesh_name,
      :virtual_router_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual router listener.</p>
    # @!attribute port_mapping
    #   <p>An object that represents a port mapping.</p>
    #   @return [Types::PortMapping]
    class VirtualRouterListener < Struct.new(
      :port_mapping,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual router returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    #   @return [String]
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the virtual router.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class VirtualRouterRef < Struct.new(
      :mesh_name,
      :virtual_router_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual node service provider.</p>
    # @!attribute virtual_router_name
    #   <p>The name of the virtual router that is acting as a service provider.</p>
    #   @return [String]
    class VirtualRouterServiceProvider < Struct.new(
      :virtual_router_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the specification of a virtual router.</p>
    # @!attribute listeners
    #   <p>The listeners that the virtual router is expected to receive inbound traffic from. You
    #            can specify one listener.</p>
    #   @return [Array<Types::VirtualRouterListener>]
    class VirtualRouterSpec < Struct.new(
      :listeners,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the status of a virtual router. </p>
    # @!attribute status
    #   <p>The current status of the virtual router.</p>
    #   @return [String]
    class VirtualRouterStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual service backend for a virtual node.</p>
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service that is acting as a virtual node backend.</p>
    #   @return [String]
    # @!attribute client_policy
    #   <p>A reference to an object that represents the client policy for a backend.</p>
    #   @return [Types::ClientPolicy]
    class VirtualServiceBackend < Struct.new(
      :virtual_service_name,
      :client_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a virtual service returned by a describe operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #   @return [String]
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The specifications of the virtual service.</p>
    #   @return [Types::VirtualServiceSpec]
    # @!attribute metadata
    #   <p>An object that represents metadata for a resource.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute status
    #   <p>The current status of the virtual service.</p>
    #   @return [Types::VirtualServiceStatus]
    class VirtualServiceData < Struct.new(
      :mesh_name,
      :virtual_service_name,
      :spec,
      :metadata,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the provider for a virtual service.</p>
    # @!attribute virtual_node
    #   <p>The virtual node associated with a virtual service.</p>
    #   @return [Types::VirtualNodeServiceProvider]
    # @!attribute virtual_router
    #   <p>The virtual router associated with a virtual service.</p>
    #   @return [Types::VirtualRouterServiceProvider]
    class VirtualServiceProvider < Struct.new(
      :virtual_node,
      :virtual_router,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class VirtualNode < VirtualServiceProvider; end
      class VirtualRouter < VirtualServiceProvider; end
      class Unknown < VirtualServiceProvider; end
    end

    # <p>An object that represents a virtual service returned by a list operation.</p>
    # @!attribute mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    #   @return [String]
    # @!attribute virtual_service_name
    #   <p>The name of the virtual service.</p>
    #   @return [String]
    # @!attribute mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>The Amazon Web Services IAM account ID of the resource owner. If the account ID is not your own, then it's
    #                  the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the virtual service.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>
    #   @return [Time]
    class VirtualServiceRef < Struct.new(
      :mesh_name,
      :virtual_service_name,
      :mesh_owner,
      :resource_owner,
      :arn,
      :version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the specification of a virtual service.</p>
    # @!attribute provider
    #   <p>The App Mesh object that is acting as the provider for a virtual service. You
    #            can specify a single virtual node or virtual router.</p>
    #   @return [Types::VirtualServiceProvider]
    class VirtualServiceSpec < Struct.new(
      :provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents the status of a virtual service.</p>
    # @!attribute status
    #   <p>The current status of the virtual service.</p>
    #   @return [String]
    class VirtualServiceStatus < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that represents a target and its relative weight. Traffic is distributed
    #          across targets according to their relative weight. For example, a weighted target with a
    #          relative weight of 50 receives five times as much traffic as one with a relative weight of
    #          10. The total weight for all targets combined must be less than or equal to 100.</p>
    # @!attribute virtual_node
    #   <p>The virtual node to associate with the weighted target.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The relative weight of the weighted target.</p>
    #   @return [Integer]
    # @!attribute port
    #   <p>The targeted port of the weighted object.</p>
    #   @return [Integer]
    class WeightedTarget < Struct.new(
      :virtual_node,
      :weight,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

  end
end
