require 'pathname'

module Aws
  # @api private
  module ClientPaging

    # @api private
    def self.included(subclass)

      subclass.add_plugin('Aws::Plugins::ResponsePaging')

      class << subclass

        def set_paginators(paginators)
          @paginators = case paginators
            when Paging::Provider then paginators
            when Hash then Paging::Provider.new(paginators)
            when String, Pathname then Paging::Provider.new(Aws.load_json(paginators))
            when nil then Paging::NullProvider.new
            else raise ArgumentError, 'invalid paginators'
          end
        end

        def paginators
          @paginators
        end

      end
    end
  end
end
