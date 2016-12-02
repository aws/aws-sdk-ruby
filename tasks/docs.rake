desc 'Delete the locally generated docs' if ENV['ALL']
task 'docs:clobber' do
  rm_rf '.yardoc'
  rm_rf 'api-docs'
  rm_rf 'api-docs.zip'
end

desc 'Generates api-docs.zip'
task 'docs:zip' => 'docs' do
  sh('zip -9 -r -q api-docs.zip api-docs/')
end

desc 'Generate the API documentation.'
task 'docs' => ['docs:clobber', 'docs:update_readme'] do
  env = {}
  env['DOCSTRINGS'] = '1'
  env['SITEMAP_BASEURL'] = 'http://docs.aws.amazon.com/sdkforruby/api/'
  sh(env, 'bundle exec yard')
end
