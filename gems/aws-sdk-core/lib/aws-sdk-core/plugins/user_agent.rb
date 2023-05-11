# frozen_string_literal: true

module Aws
  module Plugins
    # @api private
    class UserAgent < Seahorse::Client::Plugin
      option(:user_agent_suffix)

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          context.http_request.headers['User-Agent'] = UserAgent.new(context)
          @handler.call(context)
        end

        class UserAgent
          def initialize(context)
            @context = context
          end

          def to_s
            ua = sdk_metadata
            ua += " #{api_metadata}" if api_metadata
            ua += " #{legacy_api_metadata}" if legacy_api_metadata
            ua += " #{os_metadata}"
            ua += " #{legacy_os_metadata}"
            ua += " #{language_metadata}"
            ua += " #{legacy_language_metadata}"
            ua += " #{env_metadata}" if env_metadata
            ua += " #{feature_metadata}" if feature_metadata
            ua += " #{config_metadata}" if config_metadata
            # framework metadata can be added here
            if @context.config.user_agent_suffix
              ua += " #{@context.config.user_agent_suffix}"
            end
            ua += " #{app_id}" if app_id
            ua.strip
          end

          private

          def sdk_metadata
            "aws-sdk-ruby3/#{CORE_GEM_VERSION}"
          end

          def api_metadata
            # TODO: transform serviceId to something?
            service_id = @context.metadata['serviceId']
            gem_version = @context[:gem_version]
            "api/#{service_id}##{gem_version}"
          end

          def legacy_api_metadata
            # gem name and gem version is legacy.
            "#{@context[:gem_name]}/#{@context[:gem_version]}"
          end

          def os_metadata
            local = Gem::Platform.local
            os =
              case local.os
              when /mac|darwin/
                'macos'
              when /linux|cygwin/
                'linux'
              when /mingw|mswin/
                'windows'
              else
                'other'
              end
            metadata = "os/#{os}"
            metadata += "##{local.version}" if local.version
            metadata += " md/#{local.cpu}" if local.cpu
            metadata
          end

          def legacy_os_metadata
            RUBY_PLATFORM
          end

          def language_metadata
            "lang/#{RUBY_ENGINE}##{RUBY_ENGINE_VERSION} md/#{RUBY_VERSION}"
          end

          def legacy_language_metadata
            "#{RUBY_ENGINE}/#{RUBY_VERSION}"
          rescue
            "RUBY_ENGINE_NA/#{RUBY_VERSION}"
          end

          def env_metadata
            return unless (execution_env = ENV['AWS_EXECUTION_ENV'])

            "exec-env/#{execution_env}"
          end

          # TODO: somehow set this for paginators, waiters, resources, s3 transfer, s3 encryption, etc
          def feature_metadata
            @context[:user_agent_feature_metadata]
          end

          def config_metadata
            "cfg/retry-mode##{@context.config.retry_mode}"
          end

          def app_id
            return unless (app_id = ENV['AWS_SDK_UA_APP_ID'])

            "app/#{app_id}"
          end
        end
      end

      handler(Handler, priority: 1)
    end
  end
end
