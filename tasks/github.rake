task 'github:require-access-token' do
  unless github_access_token
    warn('missing github access token')
    exit
  end
end

# this task must be defined to deploy
task 'github:access-token'

task 'github:release' do
  require 'octokit'

  gh = Octokit::Client.new(access_token: github_access_token)

  repo = 'aws/aws-sdk-core-ruby'
  tag_ref_sha = `git show-ref v#{$VERSION}`.split(' ').first
  tag = gh.tag(repo, tag_ref_sha)

  release = gh.create_release(repo, "v#{$VERSION}", {
    name: 'Release v' + $VERSION + ' - ' + tag.tagger.date.strftime('%Y-%m-%d'),
    body: tag.message.lines[2..-1].join,
    prerelease: $VERSION.match('rc') ? true : false,
  })

  gh.upload_asset(release.url, 'api-docs.zip',
    :content_type => 'application/octet-stream')

  $GEM_NAMES.each do |gem_name|
    suffix = '.pre' unless gem_name == 'aws-sdk-core'
    gh.upload_asset(release.url, "#{gem_name}-#{$VERSION}#{suffix}.gem",
      :content_type => 'application/octet-stream')
  end

end

task 'github:access_token'
