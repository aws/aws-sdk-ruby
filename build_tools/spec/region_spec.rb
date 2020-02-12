# Note: these specs check all source code for hard-coded regions.
def gem_lib_paths
  gems_dir = File.expand_path('../../../gems/', __FILE__)
  Dir.glob("#{gems_dir}/aws-sdk-*/lib/aws-sdk-*/").sort
end

# We keep a white list for when we need to.
def whitelist
  {
    'core' => {
      'errors.rb' => 240,
      'signature_v4.rb' => 35,
      'stub_responses.rb' => 19
    },
    's3' => {
      'location_constraint.rb' => 12,
      's3_signer.rb' => 202,
      'bucket.rb' => 143,
      'presigned_post.rb' => 587,
      'iad_regional_endpoint.rb' => 'SKIP_FILE'
    },
    's3control' => {
      's3_signer.rb' => 72
    }
  }
end

describe 'ensure no hard-coded region' do
  gem_lib_paths.each do |dir|
    key = dir.split('/').last.split('-').last

    Dir.glob("#{dir}**/*").sort.each do |path|
      next if File.directory? path

      file = File.open(path, 'r', encoding: 'UTF-8', &:read)
      lines = file.lines.to_a

      it "#{path} has no hard-coded region" do
        lines.each_with_index do |val, idx|
          # skip comment code
          next if val.strip[0] == '#'

          # skip known whitelists
          next if whitelist[key] &&
                  (whitelist[key][File.basename(path)] == idx ||
                  whitelist[key][File.basename(path)] == 'SKIP_FILE')

          # If we use \w+ we will get false positives for uid fields
          expect(val).not_to match(/(us|eu|ap|sa|ca)-[a-zA-Z]+-\d+/)
        end
      end
    end
  end
end
