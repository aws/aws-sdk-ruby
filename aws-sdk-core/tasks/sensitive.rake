task 'update-filtered-params' => ['git:require-clean-workspace'] do

  # compute the list of senstive params that should be filtered from logging
  sensitive = []
  Aws::SERVICE_MODULE_NAMES.each do |svc|
    api = Aws.const_get(svc)::Client.api
    api.metadata['shapes'].each_structure do |shape|
      shape.members.each do |member_name, member_ref|
        sensitive << member_name if member_ref[:sensitive]
      end
    end
  end
  sensitive = sensitive.uniq.map(&:inspect).sort.join(', ')

  # prepare a change for 
  filename = 'aws-sdk-core/lib/aws-sdk-core/log/param_filter.rb'
  changed = File.read(filename).lines.map do |line|
    if matches = line.match(/(\s+)SENSITIVE =/)
      "#{matches[1]}SENSITIVE = [#{sensitive}]\n"
    else
      line
    end
  end.join

  # apply changes
  if changed != File.read(filename)
    File.open(filename, 'w') { |file| file.write(changed) }
    sh("git add #{filename}")
    sh('git commit -m "Updated the list of filtered parameters."')
  end

end
