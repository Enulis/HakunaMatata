OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1494807964065307'], ENV['8d3d7b57d925b45af85a394f1fba0b1a']
end