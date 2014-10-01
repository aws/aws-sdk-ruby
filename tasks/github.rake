def github_access_token
  access_token = `rake github:access-token`
  if access_token.empty?
    warn('missing github access token')
    exit
  else
    access_token
  end
end

task 'github:require-access-token' do
  github_access_token
end

# this task must be defined to deploy
task 'github:access-token'

task 'github:release' do
  require 'octokit'

  gh = Octokit::Client.new(access_token: github_access_token)

  repo = 'aws/aws-sdk-core-ruby'
  tag_ref_sha = `git show-ref v#{version}`.split(' ').first
  tag = gh.tag(repo, tag_ref_sha)

  release = gh.create_release(repo, "v#{version}", {
    name: 'Release v' + version + ' - ' + tag.tagger.date.strftime('%Y-%m-%d'),
    body: tag.message.lines[2..-1].join,
    prerelease: version.match('rc') ? true : false,
  })

  gh.upload_asset(release.url, 'api-docs.zip',
    :content_type => 'application/octet-stream')

  $GEM_NAMES.each do |gem_name|
    suffix = '.pre' unless gem_name == 'aws-sdk-core'
    gh.upload_asset(release.url, "#{gem_name}-#{version}#{suffix}.gem",
      :content_type => 'application/octet-stream')
  end

end

task 'github:access_token'
