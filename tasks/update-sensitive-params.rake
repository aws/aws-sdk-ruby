# rebuilds the list of parameters that should be filtered when logging
task 'update-sensitive-params' do
  sensitive = Hash.new { |h, k| h[k] = [] }
  BuildTools::Services.each do |svc|
    svc.api['shapes'].each_pair do |shape_name, shape|
      if shape['type'] == 'structure' && shape['members']
        shape['members'].each_pair do |member_name, member_ref|
          if member_ref['sensitive'] || svc.api['shapes'][member_ref['shape']]['sensitive']
            name = AwsSdkCodeGenerator::Underscore.underscore(member_name).to_sym
            sensitive[svc.name] << name unless sensitive[svc.name].include?(name)
          end
        end
      end
    end
  end

  BuildTools.replace_lines(
    filename: "#{$GEMS_DIR}/aws-sdk-core/lib/aws-sdk-core/log/param_filter.rb",
    start: /# begin/,
    stop: /# end/,
    new_lines: "      SENSITIVE = #{sensitive}\n"
  )
end
