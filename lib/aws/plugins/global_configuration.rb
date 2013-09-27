
module Aws
  module Plugins
    class GlobalConfiguration < Seahorse::Client::Plugin

      def pre_init(client_class, options)
        defaults(client_class).each do |opt_name, opt_value|
          options[opt_name] = opt_value unless options.key?(opt_name)
        end
      end

      private

      def defaults(client_class)
        aws_opts.merge(client_opts(client_class))
      end

      def aws_opts
        Aws.config.inject({}) do |defaults, (opt_name, default)|
          defaults[opt_name] = default unless Aws.service_classes.key?(opt_name)
          defaults
        end
      end

      def client_opts(client_class)
        identifier = client_class.name.split('::')[1].downcase.to_sym
        Aws.config[identifier] || {}
      end

    end
  end
end
