module Seahorse
  module Client
    module Plugins

      # Adds a logging handler to the client handler stack.
      #
      # ## Configuration Options
      #
      # This plugin adds three configuration options:
      #
      # * `:logger` (nil) The logging device.  This should be an instance
      #   of Ruby's `Logger` or any object that implements the same interface.
      #   When `:logger` is not configured, this plugin will not insert
      #   a hanlder into the stack.
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
      # ## Priority
      #
      # The log handler is inserted `:before_validate`.  This allows the handler
      # to record the total time spent making the request.
      #
      # @note This plugin is still a work-in-progress
      #
      # @seahorse_client_option [Logger] :logger (nil)
      #   The logging device to send log messages to.
      #
      # @seahorse_client_option [Symbol] :log_level (:info)
      #   The log level to send messages at.
      #
      # @seahorse_client_option [Logging::LogFormatter] :log_formatter
      #   The log formatter.  Defaults to {Logging::LogFormatter.default}.
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
