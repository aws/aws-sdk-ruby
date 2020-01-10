# updates the table of supported services in the repo README
task 'update-readme' do

  # insert one row for each supported service
  table = []
  BuildTools::Services.each do |svc|
    table << [svc.full_name, "Aws::#{svc.name}", svc.gem_name, svc.api_version]
  end
  table = table.sort_by(&:first)

  # header row
  table.unshift(['Service Name', 'Service Module', 'gem_name', 'API Version'])

  lines = AwsSdkCodeGenerator::Docstring.markdown_table(table).lines
  lines.unshift("\n")
  lines.push("\n\n")

  BuildTools.replace_lines(
    filename: "#{$REPO_ROOT}/README.md",
    start: /## Supported Services/,
    stop: /## License/,
    new_lines: lines
  )
end
