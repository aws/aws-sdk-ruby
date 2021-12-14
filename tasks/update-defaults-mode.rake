# frozen_string_literal: true

# updates the defaults mode configuration
task 'update-defaults-mode', [:defaults_file] do |t, args|

  defaults_file = args[:defaults_file]
  if defaults_file.nil? || defaults_file.empty?
    raise ArgumentError, 'Missing required defaults_file, please provide one as a rake argument.'
  end

  puts "Loading defaults from: #{defaults_file}"
  defaults = JSON.load(File.read(defaults_file))

  default_mode_docs = ["  # The following `:default_mode` values are supported: \n  #\n"]
  default_mode_docs += defaults['documentation']['modes'].map do |mode, docs|
    "  # * `'#{mode}'` - #{docs}\n  #\n"
  end

  default_mode_docs << "  #\n  #  Based on the provided mode, the SDK will vend sensible default values tailored to the mode for the following settings: \n  #\n"

  cfg_name_map = Aws::DefaultsModeConfigResolver::CFG_OPTIONS.map { |k, v| [v[:name], k]}.to_h
  default_mode_docs += defaults['documentation']['configuration'].map do |cfg_name, docs|
    ruby_name = cfg_name_map[cfg_name]
    "  # * `:#{ruby_name}` - #{docs}\n  #\n" if ruby_name
  end.compact
  default_mode_docs << "  #\n  # All options above can be configured by users, and the overridden value will take precedence. \n"

  puts "Updating DefaultsModeConfiguration documentation"
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk-core/lib/aws-defaults/default_configuration.rb",
    start: /# @code_generation START - documentation/,
    stop: /# @code_generation END - documentation/,
    new_lines: default_mode_docs
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
    start: /# @code_generation START - configuration/,
    stop: /# @code_generation END - configuration/,
    new_lines: config_constant
  )

end
