# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridge
  # This class provides a resource oriented interface for EventBridge.
  # To create a resource object:
  #     resource = Aws::EventBridge::Resource.new(region: 'us-west-2')
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass :client, a default client will be constructed.
  #     client = Aws::EventBridge::Client.new(region: 'us-west-2')
  #     resource = Aws::EventBridge::Resource.new(client: client)
  #
class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

  end
end
