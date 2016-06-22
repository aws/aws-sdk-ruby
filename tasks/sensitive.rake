task 'update-filtered-params' => ['git:require-clean-workspace'] do

  # compute the list of senstive params that should be filtered from logging
  sensitive = []
  BuildTools::Services.each do |svc|
    svc.api['shapes'].each_pair do |shape_name, shape|
      if shape['type'] == 'structure'
        shape['members'].each_pair do |member_name, member_ref|
          if 
            member_ref['sensitive'] || 
            svc.api['shapes'][member_ref['shape']]['sensitive']
          then
            name = AwsSdkCodeGenerator::Underscore.underscore(member_name).to_sym
            sensitive << name
          end
        end
      end
    end
  end
  sensitive = sensitive.uniq.map(&:inspect).sort.join(', ')

  filename = 'aws-sdk-core/lib/aws-sdk-core/log/param_filter.rb'

  changed = BuildTools.replace_lines(
    filename: filename,
    start: /# begin/,
    stop: /# end/,
    new_lines: "      SENSITIVE = [#{sensitive}]\n"
  )

  if changed
    sh("git add #{filename}")
    sh('git commit -m "Updated the list of filtered parameters."')
  end

end
