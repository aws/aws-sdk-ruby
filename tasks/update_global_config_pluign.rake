task 'update-global-config-plugin' => ['git:require-clean-workspace'] do

  ids = BuildTools::Services.map { |svc| ":#{svc.identifier}" }.sort
  ids = BuildTools.wrap_list(items: ids, indent: '        ')

  filename = 'gems/aws-sdk-core/lib/aws-sdk-core/plugins/global_configuration.rb'

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

task 'update-partition-service-list' => ['git:require-clean-workspace'] do
  i = '          '
  service_ids = []
  service_ids << i + "{"
  BuildTools::Services.sort_by(&:name).each do |svc|
    service_ids << "#{i}  '#{svc.name}' => '#{svc.endpoints_key}',"
  end
  service_ids << i + "}\n"
  service_ids = service_ids.join("\n")

  filename = 'gems/aws-sdk-core/lib/aws-sdk-core/partitions.rb'
  changed = BuildTools.replace_lines(
    filename: filename,
    start: /# service ids/,
    stop: /# end service ids/,
    new_lines: service_ids
  )
  if changed
    sh("git add #{filename}")
    sh('git commit -m "Updated the list of partition services."')
  end
end
