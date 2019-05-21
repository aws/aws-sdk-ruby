# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayManagementApi
  module Types

    # The data has exceeded the maximum size allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class PayloadTooLargeException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostToConnectionRequest
    #   data as a hash:
    #
    #       {
    #         data: "data", # required
    #         connection_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data
    #   The data to be sent to the client specified by its connection id.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   @return [String]
    #
    class PostToConnectionRequest < Struct.new(
      :data,
      :connection_id)
      include Aws::Structure
    end

  end
end
