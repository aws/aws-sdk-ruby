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

  repo = 'aws/aws-sdk-core-ruby'

  gh = Octokit::Client.new(access_token: github_access_token)

  release = gh.releases(repo).find { |r| r.tag_name.match(version) }

  tag_ref_sha = `git show-ref v#{version}`.split(' ').first
  tag = gh.tag(repo, tag_ref_sha)

  gh.update_release(release.url, {
    name: 'Release v' + version + ' - ' + tag.tagger.date.strftime('%Y-%m-%d'),
    body: tag.message.lines[2..-1].join,
    prerelease: version.match('rc') ? true : false,
  })

  gh.upload_asset(release.url, 'api-docs.tgz')

  $GEM_NAMES.each do |gem_name|
    gh.upload_asset(release.url, "#{gem_name}-#{version}.gem")
  end

end

task 'github:access_token'
