configure :development do
  activate :livereload
end

set :port, 3000

set :css_dir,     'stylesheets'
set :js_dir,      'javascripts'
set :images_dir,  'images'

configure :build do
  activate :minify_css
  activate :minify_javascript

  activate :asset_hash
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host   = 'iamdeuterium.ru'
  deploy.user   = 'deploy'
  deploy.path   = "/home/#{deploy.user}/projects/iamdeuterium.ru"
  deploy.clean  = true
end