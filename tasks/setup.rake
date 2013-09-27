desc "Performs initial setup work"
task :setup do
  seahorse_dir = 'vendor/seahorse'
  unless Dir.exists?(seahorse_dir)
    sh "mkdir -p #{seahorse_dir}"
    sh "git clone https://github.com/aws/seahorse.git vendor/seahorse"
    chdir(seahorse_dir) { sh "bundle install" }
    sh "bundle install"
  end
end
