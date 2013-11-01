module Aws
  module Plugins
    class UserAgent < Seahorse::Client::Plugin

      option(:user_agent_prefix)

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          set_user_agent(context)
          @handler.call(context)
        end

        def set_user_agent(context)
          ua = "%s aws-sdk-ruby/#{VERSION} %s/%s %s Seahorse/%s" % [
            context.config.user_agent_prefix,
            (RUBY_ENGINE rescue nil or "ruby"),
            RUBY_VERSION,
            RUBY_PLATFORM,
            Seahorse::VERSION,
          ]
          context.http_request.headers['User-Agent'] = ua.strip
        end

      end

      handler(Handler)

    end
  end
end
