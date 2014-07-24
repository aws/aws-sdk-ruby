
namespace :apis do

  desc "Rebuilds the manifest of provided APIs."
  task :manifest do
    require 'json'
    manifest = Aws::Api::ManifestBuilder.new('apis').build
    File.open(File.join('apis', 'manifest.json'), 'w') do |file|
      file.write(JSON.pretty_generate(manifest, indent: '  '))
      file.write("\n")
    end
  end

  # For best results, execute this task prior to gem build
  desc "Removes whitespace and documentation from API models."
  task :minify do
    require 'aws/api/minifier'
    Dir.glob('apis/*.json') do |path|
      Aws::Api::Minifier.minify(path, path)
    end
  end

end
