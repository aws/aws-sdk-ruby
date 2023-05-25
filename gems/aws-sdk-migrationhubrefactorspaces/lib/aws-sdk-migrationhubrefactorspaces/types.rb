# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubRefactorSpaces
  module Types

    # The user does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper object holding the Amazon API Gateway proxy configuration.
    #
    # @!attribute [rw] api_gateway_id
    #   The resource ID of the API Gateway for the proxy.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of API Gateway endpoint created.
    #   @return [String]
    #
    # @!attribute [rw] nlb_arn
    #   The Amazon Resource Name (ARN) of the Network Load Balancer
    #   configured by the API Gateway proxy.
    #   @return [String]
    #
    # @!attribute [rw] nlb_name
    #   The name of the Network Load Balancer that is configured by the API
    #   Gateway proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_url
    #   The endpoint URL of the API Gateway proxy.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the API Gateway stage. The name defaults to `prod`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_id
    #   The `VpcLink` ID of the API Gateway proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ApiGatewayProxyConfig AWS API Documentation
    #
    class ApiGatewayProxyConfig < Struct.new(
      :api_gateway_id,
      :endpoint_type,
      :nlb_arn,
      :nlb_name,
      :proxy_url,
      :stage_name,
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper object holding the Amazon API Gateway endpoint input.
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint to use for the API Gateway proxy. If no value
    #   is specified in the request, the value is set to `REGIONAL` by
    #   default.
    #
    #   If the value is set to `PRIVATE` in the request, this creates a
    #   private API endpoint that is isolated from the public internet. The
    #   private endpoint can only be accessed by using Amazon Virtual
    #   Private Cloud (Amazon VPC) interface endpoints for the Amazon API
    #   Gateway that has been granted access. For more information about
    #   creating a private connection with Refactor Spaces and interface
    #   endpoint (Amazon Web Services PrivateLink) availability, see [Access
    #   Refactor Spaces using an interface endpoint (Amazon Web Services
    #   PrivateLink)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/vpc-interface-endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the API Gateway stage. The name defaults to `prod`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ApiGatewayProxyInput AWS API Documentation
    #
    class ApiGatewayProxyInput < Struct.new(
      :endpoint_type,
      :stage_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper object holding the Amazon API Gateway proxy summary.
    #
    # @!attribute [rw] api_gateway_id
    #   The resource ID of the API Gateway for the proxy.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of API Gateway endpoint created.
    #   @return [String]
    #
    # @!attribute [rw] nlb_arn
    #   The Amazon Resource Name (ARN) of the Network Load Balancer
    #   configured by the API Gateway proxy.
    #   @return [String]
    #
    # @!attribute [rw] nlb_name
    #   The name of the Network Load Balancer that is configured by the API
    #   Gateway proxy.
    #   @return [String]
    #
    # @!attribute [rw] proxy_url
    #   The endpoint URL of the API Gateway proxy.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the API Gateway stage. The name defaults to `prod`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_link_id
    #   The `VpcLink` ID of the API Gateway proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ApiGatewayProxySummary AWS API Documentation
    #
    class ApiGatewayProxySummary < Struct.new(
      :api_gateway_id,
      :endpoint_type,
      :nlb_arn,
      :nlb_name,
      :proxy_url,
      :stage_name,
      :vpc_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of `ApplicationSummary` objects.
    #
    # @!attribute [rw] api_gateway_proxy
    #   The endpoint URL of the Amazon API Gateway proxy.
    #   @return [Types::ApiGatewayProxySummary]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the application creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the application is created.
    #   @return [Time]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the application resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the application owner (which
    #   is always the same as the environment owner account ID).
    #   @return [String]
    #
    # @!attribute [rw] proxy_type
    #   The proxy type of the proxy created within the application.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :api_gateway_proxy,
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :environment_id,
      :error,
      :last_updated_time,
      :name,
      :owner_account_id,
      :proxy_type,
      :state,
      :tags,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_proxy
    #   A wrapper object holding the API Gateway endpoint type and stage
    #   name for the proxy.
    #   @return [Types::ApiGatewayProxyInput]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to use for the application.
    #   @return [String]
    #
    # @!attribute [rw] proxy_type
    #   The proxy type of the proxy created within the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the application. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :api_gateway_proxy,
      :client_token,
      :environment_identifier,
      :name,
      :proxy_type,
      :tags,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_proxy
    #   A wrapper object holding the API Gateway endpoint type and stage
    #   name for the proxy.
    #   @return [Types::ApiGatewayProxyInput]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application. The format for
    #   this ARN is
    #   `arn:aws:refactor-spaces:region:account-id:resource-type/resource-id
    #   `. For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of application creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the application is created.
    #   @return [Time]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment in which the application is created.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the application owner (which
    #   is always the same as the environment owner account ID).
    #   @return [String]
    #
    # @!attribute [rw] proxy_type
    #   The proxy type of the proxy created within the application.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the application. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :api_gateway_proxy,
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :environment_id,
      :last_updated_time,
      :name,
      :owner_account_id,
      :proxy_type,
      :state,
      :tags,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] network_fabric_type
    #   The network fabric type of the environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the environment. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateEnvironmentRequest AWS API Documentation
    #
    class CreateEnvironmentRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :network_fabric_type,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the environment is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the environment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] network_fabric_type
    #   The network fabric type of the environment.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of environment owner.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the created environment. A tag is a label that
    #   you assign to an Amazon Web Services resource. Each tag consists of
    #   a key-value pair..
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateEnvironmentResponse AWS API Documentation
    #
    class CreateEnvironmentResponse < Struct.new(
      :arn,
      :created_time,
      :description,
      :environment_id,
      :last_updated_time,
      :name,
      :network_fabric_type,
      :owner_account_id,
      :state,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application within which the route is being created.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] default_route
    #   Configuration for the default route type.
    #   @return [Types::DefaultRouteInput]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment in which the route is created.
    #   @return [String]
    #
    # @!attribute [rw] route_type
    #   The route type of the route. `DEFAULT` indicates that all traffic
    #   that does not match another route is forwarded to the default route.
    #   Applications must have a default route before any other routes can
    #   be created. `URI_PATH` indicates a route that is based on a URI
    #   path.
    #   @return [String]
    #
    # @!attribute [rw] service_identifier
    #   The ID of the service in which the route is created. Traffic that
    #   matches this route is forwarded to this service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the route. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key-value
    #   pair..
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] uri_path_route
    #   The configuration for the URI path route type.
    #   @return [Types::UriPathRouteInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateRouteRequest AWS API Documentation
    #
    class CreateRouteRequest < Struct.new(
      :application_identifier,
      :client_token,
      :default_route,
      :environment_identifier,
      :route_type,
      :service_identifier,
      :tags,
      :uri_path_route)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application in which the route is created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the route. The format for this ARN
    #   is
    #   `arn:aws:refactor-spaces:region:account-id:resource-type/resource-id
    #   `. For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the route creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the route is created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the route was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the route owner.
    #   @return [String]
    #
    # @!attribute [rw] route_id
    #   The unique identifier of the route.
    #   @return [String]
    #
    # @!attribute [rw] route_type
    #   The route type of the route.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of service in which the route is created. Traffic that
    #   matches this route is forwarded to this service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the route. Activation state only allows
    #   `ACTIVE` or `INACTIVE` as user inputs. `FAILED` is a route state
    #   that is system generated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the created route. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] uri_path_route
    #   Configuration for the URI path route type.
    #   @return [Types::UriPathRouteInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateRouteResponse AWS API Documentation
    #
    class CreateRouteResponse < Struct.new(
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :last_updated_time,
      :owner_account_id,
      :route_id,
      :route_type,
      :service_id,
      :state,
      :tags,
      :uri_path_route)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application which the service is created.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the service.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint to use for the service. The type can be a URL
    #   in a VPC or an Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment in which the service is created.
    #   @return [String]
    #
    # @!attribute [rw] lambda_endpoint
    #   The configuration for the Lambda endpoint type.
    #   @return [Types::LambdaEndpointInput]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the service. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key-value
    #   pair..
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] url_endpoint
    #   The configuration for the URL endpoint type. When creating a route
    #   to a service, Refactor Spaces automatically resolves the address in
    #   the `UrlEndpointInput` object URL when the Domain Name System (DNS)
    #   time-to-live (TTL) expires, or every 60 seconds for TTLs less than
    #   60 seconds.
    #   @return [Types::UrlEndpointInput]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :application_identifier,
      :client_token,
      :description,
      :endpoint_type,
      :environment_identifier,
      :lambda_endpoint,
      :name,
      :tags,
      :url_endpoint,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that the created service belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the service creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the service is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the created service.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The endpoint type of the service.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] lambda_endpoint
    #   The configuration for the Lambda endpoint type.
    #   @return [Types::LambdaEndpointInput]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the service was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the service owner.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the created service. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair..
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] url_endpoint
    #   The configuration for the URL endpoint type.
    #   @return [Types::UrlEndpointInput]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :description,
      :endpoint_type,
      :environment_id,
      :lambda_endpoint,
      :last_updated_time,
      :name,
      :owner_account_id,
      :service_id,
      :state,
      :tags,
      :url_endpoint,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # The configuration for the default route type.
    #
    # @!attribute [rw] activation_state
    #   If set to `ACTIVE`, traffic is forwarded to this route’s service
    #   after the route is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DefaultRouteInput AWS API Documentation
    #
    class DefaultRouteInput < Struct.new(
      :activation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_identifier,
      :environment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the application’s environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the environment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Struct.new(
      :application_id,
      :arn,
      :environment_id,
      :last_updated_time,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :environment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the environment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteEnvironmentResponse AWS API Documentation
    #
    class DeleteEnvironmentResponse < Struct.new(
      :arn,
      :environment_id,
      :last_updated_time,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Amazon Resource Name (ARN) of the resource associated with the
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_identifier
    #   The ID of the application to delete the route from.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment to delete the route from.
    #   @return [String]
    #
    # @!attribute [rw] route_identifier
    #   The ID of the route to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteRouteRequest AWS API Documentation
    #
    class DeleteRouteRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :route_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that the route belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the route.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the route was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] route_id
    #   The ID of the route to delete.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of the service that the route belongs to.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteRouteResponse AWS API Documentation
    #
    class DeleteRouteResponse < Struct.new(
      :application_id,
      :arn,
      :last_updated_time,
      :route_id,
      :service_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   Deletes a Refactor Spaces service.
    #
    #   <note markdown="1"> The `RefactorSpacesSecurityGroup` security group must be removed
    #   from all Amazon Web Services resources in the virtual private cloud
    #   (VPC) prior to deleting a service with a URL endpoint in a VPC.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment that the service is in.
    #   @return [String]
    #
    # @!attribute [rw] service_identifier
    #   The ID of the service to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :service_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that the service is in.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the service was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Struct.new(
      :application_id,
      :arn,
      :environment_id,
      :last_updated_time,
      :name,
      :service_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information for environments as a response to
    # `ListEnvironments`.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the environment is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the environment resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the environment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] network_fabric_type
    #   The network fabric type of the environment.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the environment owner.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transit_gateway_id
    #   The ID of the Transit Gateway set up by the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/EnvironmentSummary AWS API Documentation
    #
    class EnvironmentSummary < Struct.new(
      :arn,
      :created_time,
      :description,
      :environment_id,
      :error,
      :last_updated_time,
      :name,
      :network_fabric_type,
      :owner_account_id,
      :state,
      :tags,
      :transit_gateway_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Provides summary information for the `EnvironmentVpc` resource as a
    # response to `ListEnvironmentVpc`.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the virtual private cloud
    #   (VPC) owner.
    #   @return [String]
    #
    # @!attribute [rw] cidr_blocks
    #   The list of Amazon Virtual Private Cloud (Amazon VPC) CIDR blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the VPC is first added to the
    #   environment.
    #   @return [Time]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the VPC was last updated by the
    #   environment.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_name
    #   The name of the VPC at the time it is added to the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/EnvironmentVpc AWS API Documentation
    #
    class EnvironmentVpc < Struct.new(
      :account_id,
      :cidr_blocks,
      :created_time,
      :environment_id,
      :last_updated_time,
      :vpc_id,
      :vpc_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error associated with a resource returned for a Get or List resource
    # response.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the resource owner.
    #   @return [String]
    #
    # @!attribute [rw] additional_details
    #   Additional details about the error.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] code
    #   The error code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ErrorResponse AWS API Documentation
    #
    class ErrorResponse < Struct.new(
      :account_id,
      :additional_details,
      :code,
      :message,
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_identifier,
      :environment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_gateway_proxy
    #   The endpoint URL of the API Gateway proxy.
    #   @return [Types::ApiGatewayProxyConfig]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the application creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the application is created.
    #   @return [Time]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the application resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the application owner (which
    #   is always the same as the environment owner account ID).
    #   @return [String]
    #
    # @!attribute [rw] proxy_type
    #   The proxy type of the proxy created within the application.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the application. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :api_gateway_proxy,
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :environment_id,
      :error,
      :last_updated_time,
      :name,
      :owner_account_id,
      :proxy_type,
      :state,
      :tags,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :environment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the environment is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the environment resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the environment was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] network_fabric_type
    #   The network fabric type of the environment.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the environment owner.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the environment. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] transit_gateway_id
    #   The ID of the Transit Gateway set up by the environment, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :arn,
      :created_time,
      :description,
      :environment_id,
      :error,
      :last_updated_time,
      :name,
      :network_fabric_type,
      :owner_account_id,
      :state,
      :tags,
      :transit_gateway_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The Amazon Resource Name (ARN) of the resource associated with the
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] route_identifier
    #   The ID of the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetRouteRequest AWS API Documentation
    #
    class GetRouteRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :route_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] append_source_path
    #   If set to `true`, this option appends the source path to the service
    #   URL endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] application_id
    #   The ID of the application that the route belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the route.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the route creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp of when the route is created.
    #   @return [Time]
    #
    # @!attribute [rw] environment_id
    #   Unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the route resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] include_child_paths
    #   Indicates whether to match all subpaths of the given source path. If
    #   this value is `false`, requests must match the source path exactly
    #   before they are forwarded to this route's service.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the route was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] methods
    #   A list of HTTP methods to match. An empty list matches all values.
    #   If a method is present, only HTTP requests using that method are
    #   forwarded to this route’s service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the route owner.
    #   @return [String]
    #
    # @!attribute [rw] path_resource_to_id
    #   A mapping of Amazon API Gateway path resources to resource IDs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] route_id
    #   The unique identifier of the route.
    #
    #   **DEFAULT**: All traffic that does not match another route is
    #   forwarded to the default route. Applications must have a default
    #   route before any other routes can be created.
    #
    #   **URI\_PATH**: A route that is based on a URI path.
    #   @return [String]
    #
    # @!attribute [rw] route_type
    #   The type of route.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   This is the path that Refactor Spaces uses to match traffic. Paths
    #   must start with `/` and are relative to the base of the application.
    #   To use path parameters in the source path, add a variable in curly
    #   braces. For example, the resource path \\\{user\\} represents a path
    #   parameter called 'user'.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the route.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the route. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key-value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetRouteResponse AWS API Documentation
    #
    class GetRouteResponse < Struct.new(
      :append_source_path,
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :environment_id,
      :error,
      :include_child_paths,
      :last_updated_time,
      :methods,
      :owner_account_id,
      :path_resource_to_id,
      :route_id,
      :route_type,
      :service_id,
      :source_path,
      :state,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] service_identifier
    #   The ID of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetServiceRequest AWS API Documentation
    #
    class GetServiceRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :service_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the service creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp of when the service is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the service.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The endpoint type of the service.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the service resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] lambda_endpoint
    #   The configuration for the Lambda endpoint type.
    #
    #   The **Arn** is the Amazon Resource Name (ARN) of the Lambda function
    #   associated with this service.
    #   @return [Types::LambdaEndpointConfig]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the service was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the service owner.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the service. A tag is a label that you assign
    #   to an Amazon Web Services resource. Each tag consists of a key-value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] url_endpoint
    #   The configuration for the URL endpoint type.
    #
    #   The **Url** isthe URL of the endpoint type.
    #
    #   The **HealthUrl** is the health check URL of the endpoint type.
    #   @return [Types::UrlEndpointConfig]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetServiceResponse AWS API Documentation
    #
    class GetServiceResponse < Struct.new(
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :description,
      :endpoint_type,
      :environment_id,
      :error,
      :lambda_endpoint,
      :last_updated_time,
      :name,
      :owner_account_id,
      :service_id,
      :state,
      :tags,
      :url_endpoint,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # An unexpected error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource policy is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/InvalidResourcePolicyException AWS API Documentation
    #
    class InvalidResourcePolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the Lambda endpoint type.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lambda endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/LambdaEndpointConfig AWS API Documentation
    #
    class LambdaEndpointConfig < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the Lambda endpoint type.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lambda function or alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/LambdaEndpointInput AWS API Documentation
    #
    class LambdaEndpointInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary for the Lambda endpoint type.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lambda endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/LambdaEndpointSummary AWS API Documentation
    #
    class LambdaEndpointSummary < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :environment_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_summary_list
    #   The list of `ApplicationSummary` objects.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :application_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListEnvironmentVpcsRequest AWS API Documentation
    #
    class ListEnvironmentVpcsRequest < Struct.new(
      :environment_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_vpc_list
    #   The list of `EnvironmentVpc` objects.
    #   @return [Array<Types::EnvironmentVpc>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListEnvironmentVpcsResponse AWS API Documentation
    #
    class ListEnvironmentVpcsResponse < Struct.new(
      :environment_vpc_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_summary_list
    #   The list of `EnvironmentSummary` objects.
    #   @return [Array<Types::EnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :environment_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListRoutesRequest AWS API Documentation
    #
    class ListRoutesRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] route_summary_list
    #   The list of `RouteSummary` objects.
    #   @return [Array<Types::RouteSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListRoutesResponse AWS API Documentation
    #
    class ListRoutesResponse < Struct.new(
      :next_token,
      :route_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_identifier
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :application_identifier,
      :environment_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] service_summary_list
    #   The list of `ServiceSummary` objects.
    #   @return [Array<Types::ServiceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :next_token,
      :service_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the policy
    #   is being attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Aws::EmptyStructure; end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information for the routes as a response to `ListRoutes`.
    #
    # @!attribute [rw] append_source_path
    #   If set to `true`, this option appends the source path to the service
    #   URL endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the route.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the route creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the route is created.
    #   @return [Time]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the route resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] include_child_paths
    #   Indicates whether to match all subpaths of the given source path. If
    #   this value is `false`, requests must match the source path exactly
    #   before they are forwarded to this route's service.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the route was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] methods
    #   A list of HTTP methods to match. An empty list matches all values.
    #   If a method is present, only HTTP requests using that method are
    #   forwarded to this route’s service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the route owner.
    #   @return [String]
    #
    # @!attribute [rw] path_resource_to_id
    #   A mapping of Amazon API Gateway path resources to resource IDs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] route_id
    #   The unique identifier of the route.
    #   @return [String]
    #
    # @!attribute [rw] route_type
    #   The route type of the route.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   This is the path that Refactor Spaces uses to match traffic. Paths
    #   must start with `/` and are relative to the base of the application.
    #   To use path parameters in the source path, add a variable in curly
    #   braces. For example, the resource path \\\{user\\} represents a path
    #   parameter called 'user'.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the route.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the route.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/RouteSummary AWS API Documentation
    #
    class RouteSummary < Struct.new(
      :append_source_path,
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :environment_id,
      :error,
      :include_child_paths,
      :last_updated_time,
      :methods,
      :owner_account_id,
      :path_resource_to_id,
      :route_id,
      :route_type,
      :service_id,
      :source_path,
      :state,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service quota requirement to identify originating quota. Reached
    #   throttling quota exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service quota requirement to identify originating service. Reached
    #   throttling quota exception service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary for the service as a response to `ListServices`.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] created_by_account_id
    #   The Amazon Web Services account ID of the service creator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that indicates when the service is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the service.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The endpoint type of the service.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Any error associated with the service resource.
    #   @return [Types::ErrorResponse]
    #
    # @!attribute [rw] lambda_endpoint
    #   A summary of the configuration for the Lambda endpoint type.
    #   @return [Types::LambdaEndpointSummary]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the service was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The Amazon Web Services account ID of the service owner.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the service.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] url_endpoint
    #   The summary of the configuration for the URL endpoint type.
    #   @return [Types::UrlEndpointSummary]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :application_id,
      :arn,
      :created_by_account_id,
      :created_time,
      :description,
      :endpoint_type,
      :environment_id,
      :error,
      :lambda_endpoint,
      :last_updated_time,
      :name,
      :owner_account_id,
      :service_id,
      :state,
      :tags,
      :url_endpoint,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The new or modified tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Request was denied because the request was throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service quota requirement to identify originating quota. Reached
    #   throttling quota exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   Service quota requirement to identify originating service. Reached
    #   throttling quota exception service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of keys of the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] activation_state
    #   If set to `ACTIVE`, traffic is forwarded to this route’s service
    #   after the route is updated.
    #   @return [String]
    #
    # @!attribute [rw] application_identifier
    #   The ID of the application within which the route is being updated.
    #   @return [String]
    #
    # @!attribute [rw] environment_identifier
    #   The ID of the environment in which the route is being updated.
    #   @return [String]
    #
    # @!attribute [rw] route_identifier
    #   The unique identifier of the route to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UpdateRouteRequest AWS API Documentation
    #
    class UpdateRouteRequest < Struct.new(
      :activation_state,
      :application_identifier,
      :environment_identifier,
      :route_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application in which the route is being updated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the route. The format for this ARN
    #   is
    #   `arn:aws:refactor-spaces:region:account-id:resource-type/resource-id
    #   `. For more information about ARNs, see [ Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when the route was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] route_id
    #   The unique identifier of the route.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The ID of service in which the route was created. Traffic that
    #   matches this route is forwarded to this service.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UpdateRouteResponse AWS API Documentation
    #
    class UpdateRouteResponse < Struct.new(
      :application_id,
      :arn,
      :last_updated_time,
      :route_id,
      :service_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the URI path route type.
    #
    # @!attribute [rw] activation_state
    #   If set to `ACTIVE`, traffic is forwarded to this route’s service
    #   after the route is created.
    #   @return [String]
    #
    # @!attribute [rw] append_source_path
    #   If set to `true`, this option appends the source path to the service
    #   URL endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_child_paths
    #   Indicates whether to match all subpaths of the given source path. If
    #   this value is `false`, requests must match the source path exactly
    #   before they are forwarded to this route's service.
    #   @return [Boolean]
    #
    # @!attribute [rw] methods
    #   A list of HTTP methods to match. An empty list matches all values.
    #   If a method is present, only HTTP requests using that method are
    #   forwarded to this route’s service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_path
    #   This is the path that Refactor Spaces uses to match traffic. Paths
    #   must start with `/` and are relative to the base of the application.
    #   To use path parameters in the source path, add a variable in curly
    #   braces. For example, the resource path \\\{user\\} represents a path
    #   parameter called 'user'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UriPathRouteInput AWS API Documentation
    #
    class UriPathRouteInput < Struct.new(
      :activation_state,
      :append_source_path,
      :include_child_paths,
      :methods,
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the URL endpoint type.
    #
    # @!attribute [rw] health_url
    #   The health check URL of the URL endpoint type.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The HTTP URL endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UrlEndpointConfig AWS API Documentation
    #
    class UrlEndpointConfig < Struct.new(
      :health_url,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the URL endpoint type.
    #
    # @!attribute [rw] health_url
    #   The health check URL of the URL endpoint type. If the URL is a
    #   public endpoint, the `HealthUrl` must also be a public endpoint. If
    #   the URL is a private endpoint inside a virtual private cloud (VPC),
    #   the health URL must also be a private endpoint, and the host must be
    #   the same as the URL.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to route traffic to. The URL must be an [rfc3986-formatted
    #   URL][1]. If the host is a domain name, the name must be resolvable
    #   over the public internet. If the scheme is `https`, the top level
    #   domain of the host must be listed in the [IANA root zone
    #   database][2].
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc3986
    #   [2]: https://www.iana.org/domains/root/db
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UrlEndpointInput AWS API Documentation
    #
    class UrlEndpointInput < Struct.new(
      :health_url,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the configuration for the URL endpoint type.
    #
    # @!attribute [rw] health_url
    #   The health check URL of the URL endpoint type. If the URL is a
    #   public endpoint, the `HealthUrl` must also be a public endpoint. If
    #   the URL is a private endpoint inside a virtual private cloud (VPC),
    #   the health URL must also be a private endpoint, and the host must be
    #   the same as the URL.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to route traffic to. The URL must be an [rfc3986-formatted
    #   URL][1]. If the host is a domain name, the name must be resolvable
    #   over the public internet. If the scheme is `https`, the top level
    #   domain of the host must be listed in the [IANA root zone
    #   database][2].
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc3986
    #   [2]: https://www.iana.org/domains/root/db
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UrlEndpointSummary AWS API Documentation
    #
    class UrlEndpointSummary < Struct.new(
      :health_url,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by an Amazon Web
    # Service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
