namespace :doc do

  task :clobber do
    rm_rf ".yardoc"
    rm_rf "doc"
  end

  # Updates the list of supported services and versions in the README
  task :readme do
    lines = []
    skip = false
    File.read('README.md').lines.each do |line|
      if line == "## Supported Services\n"
        lines << line
        lines += supported_services_table
        skip = true
      elsif line == "## License\n"
        skip = false
      end
      lines << line unless skip
    end
    File.open('README.md', 'w') { |file| file.write(lines.join) }
  end

end

desc "Generate the API documentation."
task :doc => ['doc:clobber', 'doc:readme'] do
  sh "bundle exec yard"
end

# Generates an HTML table of supported services that is used by README.md
def supported_services_table

  line = "| %-35s | %-25s | %-30s |\n"

  lines = []
  require 'aws-sdk-core'
  Aws.service_classes.keys.sort_by(&:downcase).each do |svc|
    svc = Aws.service_classes[svc]
    client = svc.default_client_class
    full_name = client.api.metadata['service_full_name']
    versions = svc.api_versions
    if versions.size > 1
      versions = "#{versions.first} &mdash; #{versions.last}"
    else
      versions = versions.first
    end
    lines << line % [full_name, svc.name, versions]
  end

  [
    "\n",
    line % ['Service Name', 'Service Class', 'API Versions'],
    line % ['-' * 35, '-' * 25, '-' * 30],
    lines.sort_by(&:downcase),
    "\n",
  ]
end
