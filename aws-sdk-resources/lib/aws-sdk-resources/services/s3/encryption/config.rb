module Aws
  module S3
    module Encryption
      class Config < Struct.new(
        :client,
        :key_provider,
        :materials_description,
        :materials_location,
        :instruction_file_suffix)

        # @api private
        DEFAULTS = {
          client: lambda { S3::Client.new },
          key_provider: lambda {
            msg = "must specify an :encryption_key or :key_provider"
            raise ArgumentError, msg
          },
          materials_description: '{}',
          materials_location: :metadata,
          instruction_file_suffix: '.instruction',
        }

        def encryption_key= master_key
          self[:key_provider] = DefaultKeyProvider.new(master_key)
        end

        # @param [Symbol] location :metadata Must be one of
        #   the following values:
        #   * :metadata
        #   * :instruction_file
        def materials_location= location
          unless [:metadata, :instruction_file].include?(location)
            msg = ":materials_location must be :metadata or :instruction_file "
            msg << "got #{location.inspect}"
            raise ArgumentError, msg
          end
          super
        end

        class << self

          def build(options)
            config = Config.new
            options.each do |opt_name, opt_value|
              config.send("#{opt_name}=", opt_value)
            end
            apply_defaults(config)
            config
          end

          private

          def apply_defaults(config)
            DEFAULTS.each do |key, value|
              if config[key].nil?
                config[key] = value.is_a?(Proc) ? value.call : value
              end
            end
          end

        end
      end
    end
  end
end
