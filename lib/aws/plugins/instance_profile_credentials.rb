module Aws
  module Plugins
    # Adds support for loading access credentials from the EC2 instance
    # metada service.
    class InstanceProfileCredentials < Seahorse::Client::Plugin

      option(:credentials) do
        credentials = Aws::InstanceProfileCredentials.new
        credentials.set? ? credentials : nil
      end

    end
  end
end
