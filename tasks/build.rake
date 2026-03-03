# frozen_string_literal: true

task 'build' do
  BuildTools::Services.each do |service|
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
