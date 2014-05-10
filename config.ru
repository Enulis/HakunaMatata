# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
Koala.http_service.http_options = { :ssl => { :ca_file => Rails.root.join('lib/cacert.pem').to_s } }