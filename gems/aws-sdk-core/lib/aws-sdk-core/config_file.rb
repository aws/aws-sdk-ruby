# frozen_string_literal: true

module Aws
  module Core
    # @api private
    class ConfigFile
      def initialize(config_profiles:, credentials_profiles:, sso_sessions:)
        merge_files!(config_profiles, credentials_profiles)
        profiles_hash = config_profiles.transform_values(&:to_h)
        @profiles = Profiles.new(profiles_hash)
        @sso_sessions = sso_sessions.transform_values(&:to_h)
      end

      attr_reader :profiles, :sso_sessions

      private

      def merge_files!(config_file, credentials_file)
        credentials_file.each do |credentials_profile_name, credentials_profile|
          if config_file.key?(credentials_profile_name)
            Kernel.warn(
              "Warning: The profile '#{credentials_profile_name}' was found " \
              'in both the configuration and credentials configuration ' \
              'files. The properties will be merged, using the property in ' \
              'the credentials file if there are duplicates.'
            )

            config_file[credentials_profile_name]
              .update_properties(credentials_profile.properties)
          else
            config_file[credentials_profile_name] = credentials_profile
          end
        end
      end

      # @api private
      # Hash-like wrapper that returns the resolved default profile when given a nil profile key
      class Profiles
        def initialize(profiles)
          @profiles = profiles
        end

        def [](key)
          @profiles[resolve_key(key)]
        end

        def []=(key, value)
          @profiles[resolve_key(key)] = value
        end

        def fetch(key, *, &)
          if block_given?
            @profiles.fetch(resolve_key(key), &)
          else
            @profiles.fetch(resolve_key(key), *)
          end
        end

        def dig(key, *rest)
          @profiles.dig(resolve_key(key), *rest)
        end

        def key?(key)
          @profiles.key?(resolve_key(key))
        end

        def keys
          @profiles.keys
        end

        def each_key
          @profiles.each_key
        end

        private

        def resolve_key(key)
          key || ENV['AWS_PROFILE'] || 'default'
        end
      end
    end
  end
end
