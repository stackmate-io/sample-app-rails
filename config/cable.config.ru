require ::File.expand_path('../config/application.rb',  __FILE__)

Rails.application.eager_load!

run ActionCable.server
