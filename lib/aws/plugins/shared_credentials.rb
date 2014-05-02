module Aws
  module Plugins
    # Adds support for loading access credentials from a shared credentials
    # configuration file.
    class SharedCredentials < Seahorse::Client::Plugin

      option(:credentials) do |config|
        if path = credential_path
          credentials = Aws::SharedCredentials.new(path)
          credentials.set? ? credentials : nil
        else
          nil
        end
      end

      def after_initialize(client)
        if client.config.credentials.nil? or !client.config.credentials.set?
          raise Errors::MissingCredentialsError
        end
      end

      private
      def credential_path
        shared_cred_path = nil
        begin
          if Dir.home
            shared_cred_path = File.join(Dir.home, ".aws", "credentials")
          end
        rescue ArgumentError => e
          puts e # Catch and continue errors from Dir.home
        end
        shared_cred_path
      end

    end
  end
end
