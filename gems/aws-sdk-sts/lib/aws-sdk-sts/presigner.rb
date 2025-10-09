# frozen_string_literal: true

module Aws
  module STS
    # Allows you to create presigned URLs for STS operations.
    #
    # @example
    #
    #   presigner = Aws::STS::Presigner.new
    #   url = presigner.get_caller_identity(
    #     headers: {"X-K8s-Aws-Id" => 'my-eks-cluster'}
    #   )
    class Presigner
      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Aws::STS::Client.new
      end

      # Returns a presigned url for get_caller_identity.
      #
      # @option options [Hash] :headers
      #   Headers that should be signed and sent along with the request.
      #   All x-amz-* headers must be present during signing.
      #   Other headers are optional.
      # @return [String] A presigned url string.
      #
      # @example
      #   headers = {"X-K8s-Aws-Id" => 'my-eks-cluster'}
      #   url = presigner.get_caller_identity(headers: headers)
      #
      # @example This url can also converted to a token used by the EKS service.
      #   "k8s-aws-v1." + Base64.urlsafe_encode64(url).chomp("==")
      def get_caller_identity(options = {})
        req = @client.build_request(:get_caller_identity, {})
        context = req.context

        param_list = Aws::Core::Query::ParamList.new
        param_list.set('Action', 'GetCallerIdentity')
        param_list.set('Version', context.config.service.version)
        Aws::Core::Query::ParamBuilder.new.build(context.operation.input, {}, param_list)

        endpoint_params = Aws::STS::EndpointParameters.create(context)
        endpoint = context.config.endpoint_provider.resolve(endpoint_params)
        auth = Smithy::Client::Auth.resolve(context, endpoint.properties)

        auth.signer.presign_url(
          http_method: 'GET',
          url: "#{endpoint.url}/?#{param_list}",
          body: '',
          headers: options.fetch(:headers, {})
        ).url
      end
    end
  end
end
