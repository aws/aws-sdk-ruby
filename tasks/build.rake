# frozen_string_literal: true

require 'set'

desc 'Generates the code for every service'
task 'build' do
  BuildTools::Services.each do |service|
    Rake::Task["build:aws-sdk-#{service.identifier}"].invoke
  end
end

desc 'Generates the code for one service, e.g. `rake build  build:aws-sdk-dynamodb`'
task 'build:aws-sdk-*'

rule /^build:aws-sdk-\w+$/ do |task|
  identifier = task.name.split('-').last
  service = BuildTools::Services[identifier]
  files = AwsSdkCodeGenerator::GemBuilder.new(
    aws_sdk_core_lib_path: $CORE_LIB,
    service: service,
    client_examples: BuildTools.load_client_examples(service.identifier)
  )
  writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/#{service.gem_name}")
  writer.write_files(files)
end

# Aws::STS is generated directly into the `aws-sdk-core` gem.
# It is need to provide session credentials and assume role support.
# Only building source, but not gemspecs, version file, etc.
task 'build:aws-sdk-sts' do
  sts = BuildTools::Services.service('sts')
  generator = AwsSdkCodeGenerator::CodeBuilder.new(
    aws_sdk_core_lib_path: $CORE_LIB,
    service: sts,
    client_examples: BuildTools.load_client_examples('sts'),
  )
  files = generator.source_files(prefix: 'aws-sdk-sts')
  writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/aws-sdk-core/lib")
  writer.write_files(files)

  unless sts.legacy_endpoints?
    spec_writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/aws-sdk-core/spec/aws/sts")
    spec_writer.write_files(generator.spec_files)
  end
end

# Aws::SSO is generated directly into the `aws-sdk-core` gem.
# It is need to provide SSO Credentials.
# Only building source, but not gemspecs, version file, etc.
task 'build:aws-sdk-sso' do
  sso = BuildTools::Services.service('sso')
  generator = AwsSdkCodeGenerator::CodeBuilder.new(
    aws_sdk_core_lib_path: $CORE_LIB,
    service: sso,
    client_examples: BuildTools.load_client_examples('sso'),
    )
  files = generator.source_files(prefix: 'aws-sdk-sso')
  writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/aws-sdk-core/lib")
  writer.write_files(files)
  unless sso.legacy_endpoints?
    spec_writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/aws-sdk-core/spec/aws/sso")
    spec_writer.write_files(generator.spec_files)
  end
end

# Aws::SSOOIDC is generated directly into the `aws-sdk-core` gem.
# Only building source, but not gemspecs, version file, etc.
task 'build:aws-sdk-ssooidc' do
  ssooidc = BuildTools::Services.service('ssooidc')
  generator = AwsSdkCodeGenerator::CodeBuilder.new(
    aws_sdk_core_lib_path: $CORE_LIB,
    service: ssooidc,
    client_examples: BuildTools.load_client_examples('ssooidc'),
    )
  files = generator.source_files(prefix: 'aws-sdk-ssooidc')
  writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/aws-sdk-core/lib")
  writer.write_files(files)
  unless ssooidc.legacy_endpoints?
    spec_writer = BuildTools::FileWriter.new(directory: "#{$GEMS_DIR}/aws-sdk-core/spec/aws/ssooidc")
    spec_writer.write_files(generator.spec_files)
  end
end
