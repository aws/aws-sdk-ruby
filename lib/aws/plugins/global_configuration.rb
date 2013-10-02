module Aws
  module Plugins
    class GlobalConfiguration < Seahorse::Client::Plugin

      def pre_init(service_class, options)
        # apply service specific defaults before the global aws defaults
        apply_service_defaults(service_class, options)
        apply_aws_defaults(options)
      end

      private

      def apply_service_defaults(service_class, options)
        if defaults = Aws.config[identifier(service_class)]
          defaults.each do |option_name, default|
            options[option_name] = default unless options.key?(option_name)
          end
        end
      end

      def apply_aws_defaults(options)
        Aws.config.each do |option_name, default|
          next if svc_identifier?(option_name)
          next if option_name == :api_version
          next if options.key?(option_name)
          options[option_name] = default
        end
      end

      def identifier(service_class)
        service_class.name.split('::')[1].downcase.to_sym
      end

      def svc_identifier?(option_name)
        Aws.service_classes.key?(option_name)
      end

    end
  end
end
