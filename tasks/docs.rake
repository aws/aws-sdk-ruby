desc 'Delete the locally generated docs' if ENV['ALL']
task 'docs:clobber' do
  rm_rf '.yardoc'
  rm_rf 'api-docs'
end

# Updates the list of supported services and versions in the README
desc 'Updated the list of supported services in the README' if ENV['ALL']
task 'docs:update_readme' do
  # Updates the table of supported services / api version in the README
  Aws.load_all_services
  lines = []
  skip = false
  File.read('README.md').lines.each do |line|
    if line == '## Supported Services\n'
      lines << line
      lines += supported_services_table
      skip = true
    elsif line == '## License\n'
      skip = false
    end
    lines << line unless skip
  end
  File.open('README.md', 'w') { |file| file.write(lines.join) }
  sh('git add README.md')
end

desc 'Generates api-docs.zip'
task 'docs:zip' => 'docs' do
  sh('zip -9 -r -q api-docs.zip api-docs/')
end

desc 'Generate the API documentation.'
task 'docs' => ['docs:clobber', 'docs:update_readme'] do
  sh({'SOURCE' => '1'}, 'bundle exec yard')
end

# Generates an HTML table of supported services that is used by README.md
def supported_services_table

  line = "| %-35s | %-25s | %-30s |\n"

  lines = []
  Aws::SERVICE_MODULE_NAMES.each do |svc_name|
    client_class = Aws.const_get(svc_name).const_get(:Client)
    full_name = client_class.api.metadata('serviceFullName')
    version = client_class.api.version
    lines << line % [full_name, svc_name, version]
  end

  [
    "\n",
    line % ['Service Name', 'Service Class', 'API Versions'],
    line % ['-' * 35, '-' * 25, '-' * 30],
    lines.sort_by(&:downcase),
    "\n",
  ]
end
