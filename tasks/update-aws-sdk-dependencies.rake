# updates list of service gems dependend on by the aws-sdk gem
task 'update-aws-sdk-dependencies' do

  # update the aws-sdk-resources.gemspec
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk-resources/aws-sdk-resources.gemspec",
    start: /# service gems/,
    stop: /# end service gems/,
    new_lines: BuildTools::Services.map { |svc|
      if svc.gem_name != 'aws-sdk-core'
        version = svc.gem_version.match(/^\d+\.\d+\.\d+$/) ?
          "~> #{svc.gem_version.split('.')[0]}" :
          svc.gem_version
        "  spec.add_dependency('#{svc.gem_name}', '#{version}')\n"
      end
    }.compact
  )

  # update the module autoloads
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk-resources/lib/aws-sdk-resources.rb",
    start: /# service gems/,
    stop: /# end service gems/,
    new_lines: BuildTools::Services.map { |service|
      "  autoload :#{service.name}, '#{service.gem_name}'\n"
    }
  )

  # update the aws-sdk.gemspec
  version_path = "#{$GEMS_DIR}/aws-sdk-resources/VERSION"
  version_file = File.read(version_path).strip
  version = version_file.match(/^\d+\.\d+\.\d+$/) ?
    "~> #{version_file.split('.')[0]}" :
    version_file
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk/aws-sdk.gemspec",
    start: /# gem dependency/,
    stop: /# end gem dependency/,
    new_lines: "  spec.add_dependency('aws-sdk-resources', '#{version}')\n"
  )
end
