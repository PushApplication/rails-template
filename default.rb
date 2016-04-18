dir_name = File.dirname(__FILE__)

###################
# setup generators
###################

environment do
<<-EOF
  config.generators.helper = false

  config.generators do |g|
      g.test_framework    :rspec, fixture: true, routing: true
      g.javascript_engine :js
  end
EOF
end

###################
# SMACSS
###################

run <<-EOF.gsub("\n", ' ').gsub(/\s{2,}/, ' ')
cp -r #{dir_name}/smacss/base
      #{dir_name}/smacss/fonts
      #{dir_name}/smacss/layout
      #{dir_name}/smacss/modules
      #{dir_name}/smacss/style.scss
      #{dir_name}/smacss/tools
      app/assets/stylesheets
EOF

########################
# Bootstrap & AngularJS
########################

run "cp #{dir_name}/config/application.html.erb app/views/layouts/"

###################
# Gemfile
###################

# Clean comments in Gemfile
gsub_file "Gemfile", /^[\s]*# .+/, ''.strip
gsub_file 'Gemfile', /\n{3,}/, "\n"

gem_group :development, :test do
  gem 'factory_girl_rails', '~> 4.6'
  gem 'faker', '~> 1.6', '>= 1.6.3'
end

gem_group :test do
  gem 'capybara', '~> 2.6', '>= 2.6.2'
  gem 'guard-rspec', '~> 4.6', '>= 4.6.4'
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'mechanize', '2.7.4'
end

run "bundle install"

############
# Rspec
############

generate "rspec:install"

run "mkdir spec/controllers spec/factories spec/helpers spec/models spec/routing spec/views"

run "cp #{dir_name}/config/spec/rails_helper.rb spec/"
run "cp #{dir_name}/config/spec/spec_helper.rb  spec/"
