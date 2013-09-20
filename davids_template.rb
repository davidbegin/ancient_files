remove_file "README.rdoc"
create_file "README.md"
create_file "config/initializers/random_methods.rb", <<-EOD
def random_date
	Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f))
end

def random_price
	 (rand.to_d * 100).round(2)
end
EOD

gsub_file('config/database.yml', /^\s*#.*\n/, '')
gsub_file('db/seeds.rb', /^\s*#.*\n/, '')
gsub_file('config/database.yml', /username:(.*)$/, '')
gsub_file('config/database.yml', /password:(.*)$/, '')
gsub_file('Gemfile', /^\s*#.*\n/, '')
gsub_file('config/application.rb', /^\s*#.*\n/, '')
gsub_file('config/routes.rb', /^\s*#.*\n/, '')

inject_into_file 'config/application.rb', :after => "class Application < Rails::Application" do
  <<-EOD
    \n
    config.generators do |g|
      g.helper false
      g.javascripts false 
      g.stylesheets false
      g.test_framework false 
    end
  EOD
end

inject_into_file 'config/environments/development.rb', :after => "config.action_mailer.raise_delivery_errors = false" do
  <<-EOD
		\n
  config.action_mailer.delivery_method = :letter_opener
  config.log_tags = [lambda {|req| Time.now.strftime("%l:%M:%S %p ")}]
  EOD
end


gem 'zurb-foundation'
gem 'font-awesome-rails'
gem 'figaro'
gem 'faker'

gem_group :development do
 	gem 'pry'
  gem 'hirb'
  gem 'letter_opener'
	gem 'quiet_assets'
end
 
gem_group :development, :test do
   gem 'better_errors'
   gem 'binding_of_caller'
   gem 'debugger'
   gem 'rspec-rails'  
   gem 'factory_girl_rails'
   gem 'capybara'
 end
  
gem_group :production do
   # gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
   # gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end
  
  
run "bi"
  
generate "rspec:install"
generate "foundation:install -f"
generate "figaro:install"
run 'rake db:create:all'
