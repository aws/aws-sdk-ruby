desc 'Delete the locally generated docs' if ENV['ALL']
task 'docs:clobber' do
  rm_rf '.yardoc'
  rm_rf 'api-docs'
  rm_rf 'api-docs.zip'
end

# Updates the list of supported services and versions in the README
desc 'Updated the list of supported services in the README' if ENV['ALL']
task 'docs:update_readme' do
  BuildTools.replace_lines(
    filename: 'README.md',
    start: /## Supported Services/,
    stop: /## License/,
    new_lines: supported_services_table
  )
  sh('git add README.md')
end

desc 'Generates api-docs.zip'
task 'docs:zip' => 'docs' do
  sh('zip -9 -r -q api-docs.zip api-docs/')
end

desc 'Generate the API documentation.'
task 'docs' => ['docs:clobber', 'docs:update_readme'] do
  env = {}
  env['DOCSTRINGS'] = '1'
  env['SITEMAP_BASEURL'] = 'http://docs.aws.amazon.com/sdkforruby/api/'
  sh(env, 'bundle exec yard')
end

# Generates an HTML table of supported services that is used by README.md
def supported_services_table

  # insert one row for each supported service
  table = []
  BuildTools::Services.each do |svc|
    table << [svc.gem_name, svc.full_name, "Aws::#{svc.name}", svc.api_version]
  end
  table = table.sort_by(&:first)

  # header row
  table.unshift(['Gem Name', 'Service Name', 'Service Module', 'API Version'])

  lines = AwsSdkCodeGenerator::Helper.markdown_table(table).lines
  lines.unshift("\n")
  lines.push("\n\n")
  lines
end
