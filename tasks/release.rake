task 'release:require-version' do
  unless ENV['VERSION']
    warn("usage: VERSION=x.y.z rake release")
    exit
  end
end

# bumps the VERSION file and the `Aws::VERSION` constant
task 'release:bump-version' do
  sh("echo '#{$VERSION}' > VERSION")
  path = 'aws-sdk-core/lib/aws-sdk-core/version.rb'
  file = File.read(path)
  file = file.gsub(/VERSION = '.+?'/, "VERSION = '#{$VERSION}'")
  File.open(path, 'w') { |f| f.write(file) }
  sh("git add #{path}")
  sh("git add VERSION")
end

# ensures all of the required credentials are present
task 'release:check' => [
  'release:require-version',
  'github:require-access-token',
  'git:require-clean-workspace',
]

# builds release artificats
task 'release:build' => [
  'docs:update_readme',
  'changelog:version',
  'release:bump-version',
  'git:tag',
  'gems:build',
  'docs:zip',
]

# deploys release artificats
task 'release:publish' => [
  'release:require-version',
  'git:push',
  'gems:push',
  'github:release',
]

# post release tasks
task 'release:cleanup' => [
  'changelog:next_release',
]

desc "Public release, `VERSION=x.y.z rake release`"
task :release => [
  'release:check',
  'test',
  'release:build',
  'release:publish',
  'release:cleanup'
]
