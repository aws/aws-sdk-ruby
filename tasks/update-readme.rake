# Updates the list of supported services and versions in the README
desc 'Updated the list of supported services in the README' if ENV['ALL']
task 'update-readme' do

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

  BuildTools.replace_lines(
    filename: "#{$REPO_ROOT}/README.md",
    start: /## Supported Services/,
    stop: /## License/,
    new_lines: lines
  )
end
