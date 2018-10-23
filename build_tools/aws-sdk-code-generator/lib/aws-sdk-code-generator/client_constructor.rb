module AwsSdkCodeGenerator
  class ClientConstructor

    # @option options [required, PluginList] :plugins
    def initialize(options)
      plugin_options = documented_plugin_options(options.fetch(:plugins))
      @documentation = []
      plugin_options.each do |option|
        @documentation << YardOptionTag.new(
          name: option.name,
          required: option.required,
          ruby_type: option.doc_type,
          default_value: option.doc_default,
          docstring: option.docstring,
          indent: "  "
        ).to_s
      end
      @documentation = Docstring.join_docstrings(@documentation, block_comment: false)
    end

    # @return [String]
    attr_reader :documentation

    private

    def documented_plugin_options(plugins)
      plugins.map(&:options).flatten.select(&:documented?).sort_by do |opt|
        [opt.required ? 'a' : 'b', opt.name]
      end
    end

  end
end
