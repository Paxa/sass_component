clone_files(
  'app/**/**'
)

with_file 'Gemfile' do |file|
  file << "gem 'sass'"
  file << "gem 'haml'"
  file << "gem 'jsus'"
end

with_file "config/environment.rb" do |file|
  file << "\n"
  file << %{Sass::Plugin.options[:template_location] = 'app/stylesheets'}
end