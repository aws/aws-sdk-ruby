desc "Rebuilds the manifest of provided APIs."
task :manifest do
  require 'json'
  manifest = Aws::Api::ManifestBuilder.new('apis').build
  File.open(File.join('apis', 'manifest.json'), 'w') do |file|
    file.write(JSON.pretty_generate(manifest, indent: '  '))
    file.write("\n")
  end
end
