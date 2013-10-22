module Seahorse
  module Client
    module Plugins

      # Enables logging for all requests.  This plugin allows you to configure
      # your logging device, the log format and the level to log messages at.
      #
      # ## Configuration Options
      #
      # This plugin adds three configuration options:
      #
      #
      # * `:log_level` (`:info`) The level to write messages at.  This should
      #   be the symbolized method name of the log level (e.g., `:info`,
      #   `:warn`, `:debug`, etc).
      #
      # * `:log_formatter` - The default log formatter is
      #   `Seahorse::Client::Logging.Formatter.default`.  There are
      #   a number of canned loggers to choose from.  See
      #   {Client::Logging::Formatter} for a complete list and for information
      #   on creating a custom log formatter.
      #
      # @seahorse_client_option [Logger] :logger (nil) The Logger instance
      #   to send log messages to.  If this option is not set, logging
      #   will be disabled.
      #
      # @seahorse_client_option [Symbol] :log_level (:info) The log level
      #   to send messages to the logger at.
      #
      # @seahorse_client_option [Logging::LogFormatter] :log_formatter The log
      #   formatter.  Defaults to {Seahorse::Client::Logging::Formatter.default}.
      #
      class Logging < Plugin

        option(:logger, nil)

        option(:log_level, :info)

        option(:log_formatter, Client::Logging::Formatter.default)

        def add_handlers(handlers, config)
          if config.logger
            handlers.add(Client::Logging::Handler, step: :validate)
          end
        end

      end
    end
  end
end
