namespace :docs do
  task :clobber do
    rm_rf ".yardoc"
    rm_rf "doc"
  end
end

desc "Generate the API documentation."
task :docs => 'docs:clobber' do
  sh "bundle exec yard"
end
