require 'build_tools'

desc "Rebuilds the source and gemspec for the aws-sdk umbrella gem."
task 'aws-sdk:update' do

  # update the gemspec
  BuildTools.replace_lines(
    filename: 'aws-sdk/aws-sdk.gemspec',
    start: /# service gems/,
    stop: /# end service gems/,
    new_lines: BuildTools::Services.group_by(&:gem_name).map { |gem_name, _|
      "  spec.add_dependency(#{gem_name.inspect}, \"~> 1.0\")\n"
    }
  )

  # update the module autoloads
  BuildTools.replace_lines(
    filename: 'aws-sdk/lib/aws-sdk.rb',
    start: /# service gems/,
    stop: /# end service gems/,
    new_lines: BuildTools::Services.map { |service|
      "  autoload :#{service.name}, #{service.gem_name.inspect}\n"
    }
  )

end
