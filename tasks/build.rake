# frozen_string_literal: true

task 'build' do
  # TODO: These result in various errors:
  #   aws-sdk-s3control => ArgumentError: Endpoint built-in not available for AWS::S3Control::UseArnRegion
  #   aws-sdk-s3 => ArgumentError: Endpoint built-in not available for AWS::S3::ForcePathStyle
  skip = %w[
    aws-sdk-s3control
    aws-sdk-s3
  ]

  BuildTools::Services.each do |service|
    next if skip.include? service.gem_name

    Rake::Task["build:#{service.gem_name}"].invoke
  end
end

desc 'Generates the code for one service, e.g. `rake build:aws-sdk-dynamodb`'
task 'build:aws-sdk-*'
rule(/^build:aws-sdk-\w+$/) do |task|
  identifier = task.name.split('-').last
  plan = BuildTools::Services[identifier]
  Smithy.generate(plan)
end
