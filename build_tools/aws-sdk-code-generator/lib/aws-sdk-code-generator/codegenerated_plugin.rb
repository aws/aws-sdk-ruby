# frozen_string_literal: true

module AwsSdkCodeGenerator
  class CodegeneratedPlugin

    # @option options [required, String] :source
    # @option options [required, String] :class_name
    # @option options [required, String] :path
    def initialize(options = {})
      @source = options.fetch(:source)
      @class_name = options.fetch(:class_name)
      @path = options.fetch(:path)
    end

    attr_reader :source, :path, :class_name


    def plugin_class
      if @plugin_class.nil?
        Object.module_eval(@source)
        const_names = @class_name.split('::')
        @plugin_class = const_names.inject(Kernel) do |const, const_name|
          const.const_get(const_name)
        end
      end
      @plugin_class
    end

    def options
      plugin_class.public_send(:options)
    end

  end
end