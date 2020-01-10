# updates the services in the aws-partitions gem
task 'update-partition-service-list' do
  lines = []
  lines << "          {\n"
  BuildTools::Services.sort_by(&:name).each do |svc|
    next if svc.endpoints_key.nil?
    lines << "            '#{svc.name}' => '#{svc.endpoints_key}',\n"
  end
  lines << "          }\n"
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-partitions/lib/aws-partitions.rb",
    start: /# service ids/,
    stop: /# end service ids/,
    new_lines: lines
  )
end
