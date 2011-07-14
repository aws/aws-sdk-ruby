# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.

require 'aws/configured_option_grammars'
require 'aws/api_config_transform'

module AWS
  class SNS
    class Client < BaseClient

      # @private
      module Options

        include ConfiguredOptionGrammars

        def self.api_config
          ApiConfigTransform.rename_input_list_to_membered_list(super)
        end

        define_configured_grammars

      end
    end
  end
end
