task 'github:require-access-token' do
  unless ENV['AWS_SDK_FOR_RUBY_GH_TOKEN']
    warn("export ENV['AWS_SDK_FOR_RUBY_GH_TOKEN']")
    exit
  end
end

# this task must be defined to deploy
task 'github:access-token'

task 'github:release' do
  require 'octokit'

  gh = Octokit::Client.new(access_token: ENV['AWS_SDK_FOR_RUBY_GH_TOKEN'])

  repo = 'aws/aws-sdk-ruby'
  tag_ref_sha = `git show-ref v#{$VERSION}`.split(' ').first
  tag = gh.tag(repo, tag_ref_sha)

  release = gh.create_release(repo, "v#{$VERSION}", {
    name: 'Release v' + $VERSION + ' - ' + tag.tagger.date.strftime('%Y-%m-%d'),
    body: tag.message + "\n" + `rake changelog:latest`,
    prerelease: $VERSION.match('rc') ? true : false,
  })

  gh.upload_asset(release.url, 'api-docs.zip',
    :content_type => 'application/octet-stream')

  $GEM_NAMES.each do |gem_name|
    gh.upload_asset(release.url, "#{gem_name}-#{$VERSION}.gem",
      :content_type => 'application/octet-stream')
  end

end

task 'github:access_token'
