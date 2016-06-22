task 'update-global-config-plugin' => ['git:require-clean-workspace'] do

  ids = BuildTools::Services.map { |svc| ":#{svc.identifier}" }.sort
  ids = BuildTools.wrap_list(items: ids, indent: '        ')

  filename = 'aws-sdk-core/lib/aws-sdk-core/plugins/global_configuration.rb'

  changed = BuildTools.replace_lines(
    filename: filename,
    start: /# begin/,
    stop: /# end/,
    new_lines: "      IDENTIFIERS = Set.new([\n#{ids}\n      ])\n"
  )

  if changed
    sh("git add #{filename}")
    sh('git commit -m "Updated the list of filtered parameters."')
  end

end
