module Aws
  module Plugins

    # Adds support for loading access credentials from a shared credentials
    # configuration file.
    class SharedCredentials < Seahorse::Client::Plugin

      option(:credentials) do |config|
        begin
          credentials = SharedCredentials.new
          credentials.set? ? credentials : nil
        rescue ArgumentError
          # Dir.home raises an ArgumentError when ENV['HOME'] is not set
        end
      end

    end
  end
end
