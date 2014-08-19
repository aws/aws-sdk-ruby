def version
  verison = ENV['VERSION'].to_s.sub(/^v/, '')
  if version.empty?
    warn("usage: VERSION=x.y.z rake release:tag")
    exit
  end
  version
end

task 'release:require_version' do
  version
end

task 'release:version' do
  # bumps the VERSION file and the `Aws::VERSION` constant
  sh("echo '#{version}' > VERSION")
  path = 'aws-sdk-core/lib/aws/version.rb'
  file = File.read(path)
  file = file.gsub(/VERSION = '.+?'/, "VERSION = '#{version}'")
  File.open(path, 'w') { |f| f.write(file) }
  sh("git add #{path}")
end

task 'release:stage' => [
  'release:require_version',
  'git:require_clean_workspace',
  'test:unit',
  'test:integration',
  'docs:update_readme',
  'changelog:version',
  'release:version',
  'git:tag',
  'gems:build',
  'docs:zip',
]

task 'release:push' => [
  'git:push',
  'gems:push',
  'github:release',
  # update CHANGELOG, adding a new section for the "Next Release (TBD)"
]

desc "Public release"
task :release => ['release:stage', 'release:publish']
