# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.

module AWS
  class SimpleEmailService
    class Client < Core::Client
      
      # @private
      module Options

        include Core::ConfiguredOptionGrammars

        def self.api_config
          Core::ApiConfigTransform.rename_input_list_to_membered_list(super)
        end

        define_configured_grammars

      end
    end
  end
end
