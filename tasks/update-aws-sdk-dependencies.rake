# frozen_string_literal: true

desc 'Updates the aws-sdk gem dependencies and autoloads'
task 'update-aws-sdk-dependencies' do
  # update the aws-sdk.gemspec
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk/aws-sdk.gemspec",
    start: /# START_AWS_SDK_SERVICE_GEMS_DEPENDENCIES/,
    stop: /# END_AWS_SDK_SERVICE_GEMS_DEPENDENCIES/,
    new_lines: BuildTools::Services.map do |plan|
      next if plan.gem_name == 'aws-sdk-core'

      gem_version = plan.gem_version
      version =
        if gem_version.match(/^\d+\.\d+\.\d+$/)
          "~> #{gem_version.split('.')[0]}"
        else
          gem_version
        end
      "  spec.add_dependency('#{plan.gem_name}', '#{version}')\n"
    end.compact
  )

  # update the module autoloads in aws-sdk.rb
  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk/lib/aws-sdk.rb",
    start: /# START_AWS_SDK_SERVICE_GEMS_DEPENDENCIES/,
    stop: /# END_AWS_SDK_SERVICE_GEMS_DEPENDENCIES/,
    new_lines: BuildTools::Services.map do |plan|
      "  autoload :#{plan.service_name}, '#{plan.gem_name}'\n"
    end
  )
end
