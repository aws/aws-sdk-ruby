desc 'Generate the API documentation.'
task(:docs) do
  env = {}
  ENV['DOCSTRINGS'] = '1'
  ENV['SITEMAP_BASEURL'] = 'http://docs.aws.amazon.com/sdk-for-ruby/v3/api/'
  ENV['BASEURL'] = 'http://docs.aws.amazon.com/'
  sh(env, 'bundle exec yard')
end