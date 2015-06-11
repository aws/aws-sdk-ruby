require 'set'

module Aws
  # @api private
  class EagerLoader

    def initialize
      @loaded = Set.new
    end

    # @return [Set<Module>]
    attr_reader :loaded

    # @param [Module] klass_or_module
    # @return [self]
    def load(klass_or_module)
      @loaded << klass_or_module
      klass_or_module.constants.each do |const_name|
        path = klass_or_module.autoload?(const_name)
        require(path) if path
        const = klass_or_module.const_get(const_name)
        if const.is_a?(Module)
          unless @loaded.include?(const)
            load(const)
          end
        end
      end
      self
    end
  end
end
