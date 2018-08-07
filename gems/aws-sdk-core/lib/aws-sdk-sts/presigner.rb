require 'aws-sigv4'

module Aws
  module STS
    # Allows you to create presigned URLs for `get_caller_identity`
    #
    # Example Use:
    #
    #   signer = Aws::STS::Presigner.new
    #   url = signer.get_caller_identity_presigned_url({
    #     headers: {"X-K8s-Aws-Id" => 'my-eks-cluster'}
    #   })

    class Presigner
      # @option options [Client] :client Optionally provide an existing
      #   STS client
      def initialize(options = {})
        @client = options[:client] || Aws::STS::Client.new
      end

      # Returns a presigned url for the get_caller_identity service.
      # The primary use is to generate a token which can be used to authenticate
      # with the EKS service.
      #
      # @option options [Hash] :headers
      #   Headers that should be signed and sent along with the request.
      #   All x-amz-* headers must be present during signing.
      #   Other headers are optional.
      #
      # @option options [Integer] :expires_in
      #   How long the presigned URL should be valid for. Defaults to 1 minute
      #
      # @return [String] Returns a presigned url string
      #
      # @example Example: To get a presigned URL which can be used to authenticate with eks
      #
      #   resp = pre.get_caller_identity_presigned_url({
      #     headers: {"X-K8s-Aws-Id" => 'my-eks-cluster'},
      #   })
      #
      #   resp outputs the following:
      #
      # https://sts.amazonaws.com/?Action=GetCallerIdentity&Version=2011-06-15&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIOSFODNN7EXAMPLE%2F20180806%2Fus-east-1%2Fsts%2Faws4_request&X-Amz-Date=20180806T130142Z&X-Amz-Expires=60&X-Amz-SignedHeaders=host%3Bx-k8s-aws-id&X-Amz-Signature=wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmx
      #
      # This can easily be converted to a token which can be used by the eks service:
      # https://ruby-doc.org/stdlib-2.3.1/libdoc/base64/rdoc/Base64.html#method-i-encode64
      # "k8s-aws-v1." + Base64.urlsafe_encode64(presignedURLString).chomp("==")
      #
      def get_caller_identity_presigned_url(options = {})
        req = @client.build_request(:get_session_token, {})

        param_list = Aws::Query::ParamList.new
        param_list.set('Action', 'GetCallerIdentity')
        param_list.set('Version', req.context.config.api.version)
        Aws::Query::EC2ParamBuilder.new(param_list).apply(req.context.operation.input, {})

        signer = Aws::Sigv4::Signer.new(
          service: 'sts',
          region: req.context.config.region,
          credentials_provider: req.context.config.credentials
        )
        url = Aws::Partitions::EndpointProvider.resolve(req.context.config.region, 'sts')
        url += "/?#{param_list}"

        signer.presign_url(
          http_method: 'GET',
          url: url,
          body: '',
          headers: options[:headers],
          expires_in: options[:expires_in] || 60
        ).to_s
      end
    end
  end
end
