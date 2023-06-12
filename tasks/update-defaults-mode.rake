# frozen_string_literal: true

# updates the defaults mode configuration
task 'update-defaults-mode', [:defaults_file] do |t, args|

  defaults_file = args[:defaults_file]
  if defaults_file.nil? || defaults_file.empty?
    raise ArgumentError, 'Missing required defaults_file, please provide one as a rake argument.'
  end

  puts "Loading defaults from: #{defaults_file}"
  defaults = JSON.load(File.read(defaults_file))

  default_mode_docs = ["<p>The following <code>:default_mode</code> values are supported: </p>"]
  default_mode_docs << "<ul>"
  default_mode_docs += defaults['documentation']['modes'].map do |mode, docs|
    docs = "<li><code>'#{mode}'</code> - #{docs}</li>"
  end
  default_mode_docs << "</ul>"

  default_mode_docs << "<p>Based on the provided mode, the SDK will vend sensible default values tailored to the mode for the following settings:</p>"
  default_mode_docs << "<ul>"
  cfg_name_map = Aws::DefaultsModeConfigResolver::CFG_OPTIONS.map { |k, v| [v[:name], k]}.to_h
  default_mode_docs += defaults['documentation']['configuration'].map do |cfg_name, docs|
    ruby_name = cfg_name_map[cfg_name]
    if ruby_name
      "<li><code>:#{ruby_name}</code> - #{docs}</li>"
    end
  end.compact
  default_mode_docs << "</ul>"
  default_mode_docs << "All options above can be configured by users, and the overridden value will take precedence."
  default_mode_docs << "\n"

  docs = default_mode_docs.join("\n\n")
  docs = AwsSdkCodeGenerator::Docstring.html_to_markdown(docs)
  docs = AwsSdkCodeGenerator::Docstring.join_docstrings([docs])
  docs = "  " + AwsSdkCodeGenerator::Docstring.indent(docs)

  puts "Updating DefaultsModeConfiguration documentation"
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk-core/lib/aws-defaults/default_configuration.rb",
    start: /# #defaults START - documentation/,
    stop: /# #defaults END - documentation/,
    new_lines: [docs, "\n"]
  )

  defaults.delete("documentation")
  config_constant = ["    SDK_DEFAULT_CONFIGURATION = \n"]
  config_constant << JSON.pretty_generate(defaults)
                         .gsub(":", " =>")
                         .split("\n")
                         .map { |s| "    #{s}"}
                         .join("\n")
  config_constant << "\n"

  puts "Updating DefaultsModeConfiguration configuration constant"
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk-core/lib/aws-defaults/default_configuration.rb",
    start: /# #defaults START - configuration/,
    stop: /# #defaults END - configuration/,
    new_lines: config_constant
  )

end
