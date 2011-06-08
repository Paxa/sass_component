clone_files(
  'app/**/**'
)

mkdirs 'app/stylesheets/layouts/application/contents'

with_file 'Gemfile' do |file|
  file << "\ngem 'sass'"
  file << "\ngem 'haml'"
  file << "\ngem 'jsus'"
end

with_file "config/environment.rb" do |file|
  file << "\n"
  file << %{Sass::Plugin.options[:template_location] = 'app/stylesheets'}
end