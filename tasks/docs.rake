desc 'Delete the locally generated docs' if ENV['ALL']
task 'docs:clobber' do
  rm_rf '.yardoc'
  rm_rf 'api-docs'
  rm_rf 'api-docs.zip'
end

# Updates the list of supported services and versions in the README
desc 'Updated the list of supported services in the README' if ENV['ALL']
task 'docs:update_readme' do
  # Updates the table of supported services / api version in the README
  Aws.eager_autoload!
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
  env['BASEURL'] = 'http://docs.aws.amazon.com/'
  env['SITEMAP_BASEURL'] = 'http://docs.aws.amazon.com/sdk-for-ruby/v2/api/'
  sh(env, 'bundle exec yard')
end

# Generates an HTML table of supported services that is used by README.md
def supported_services_table

  # insert one row for each supported service
  table = []
  Aws::SERVICE_MODULE_NAMES.each do |svc_name|
    client_class = Aws.const_get(svc_name).const_get(:Client)
    full_name = client_class.api.metadata['serviceFullName']
    version = client_class.api.version
    table << [full_name, svc_name, version]
  end

  table = table.sort_by(&:first)

  # header row
  table.unshift(['Service Name', 'Service Class', 'API Version'])

  # compute the width of each column by scanning for longest values
  column_width = lambda do |col|
    table.map { |row| row[col].size }.max
  end
  widths = [
    column_width.call(0),
    column_width.call(1),
    column_width.call(2),
  ]

  # insert a dashed line after the header row
  table = [
    table[0],
    ['-' * widths[0], '-' * widths[1], '-' * widths[2]]
  ] + table[1..-1]

  # build the final table
  line = "| #{widths.map{|n| "%-#{n}s" }.join(' | ')} |\n"
  ["\n"] + table.map { |row| line % row } + ["\n"]
end
