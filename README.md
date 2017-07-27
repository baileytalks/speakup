```
rspec --init

bundle init

# add the ruby version and gems (rspec and capybara) to the Gemfile

bundle

# add "require 'capybara/rspec'" to the spec_helper.rb

touch '.gitignore'

# add a feature test file under 'Spec' folder

# add formatting to .rspec:
# --color --format documentation

# add gem 'simplecov', gem 'simplecov-console' and gem 'rubocop' to Gemfile
# Format simplecov in the spec_helper file

mkdir app
touch 'app/app.rb'

# add gem 'sinatra' then start app.rb with require 'sinatra' and define a route

touch 'config.ru'

# add setup for rackup in config.ru - require the app file then specify 'run Sinatra::Application'

rackup config.ru

# should be able to see the app on local host

mkdir 'app/models'
touch 'app/models/speaker.rb'

# start a model in speaker.rb
```
