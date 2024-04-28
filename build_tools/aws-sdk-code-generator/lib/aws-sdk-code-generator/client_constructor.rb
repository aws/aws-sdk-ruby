# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ClientConstructor

    # @option options [required, PluginList] :plugins
    # @option options [required, Array<CodegeneratedPlugin>] :codegenerated_plugins

    def initialize(options)
      plugin_options = documented_plugin_options(options.fetch(:plugins)) +
        documented_plugin_options(options.fetch(:codegenerated_plugins)) +
        documented_plugin_options(options.fetch(:default_plugins, []))
      documentation = {}
      plugin_options.each do |option|
        documentation[option.name] = YardOptionTag.new(
          name: option.name,
          required: option.required,
          ruby_type: option.doc_type,
          default_value: option.doc_default(options),
          docstring: option.docstring,
          indent: "  "
        ).to_s
      end
      @documentation = Docstring.join_docstrings(documentation.values, block_comment: false)
    end

    # @return [String]
    attr_reader :documentation

    private

    def documented_plugin_options(plugins)
      i = 0
      plugins.map(&:options).flatten.select(&:documented?).sort_by do |opt|
        # Stable sort, first required options, then sort by name, then if
        # two plugins of the same name, use an incrementer.
        # options.fetch(:plugins) will be ordered.
        [opt.required ? 'a' : 'b', opt.name, i += 1] #, opt.override ? 'b' : 'a']
      end
    end

  end
end
