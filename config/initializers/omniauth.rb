OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1494807964065307', '8d3d7b57d925b45af85a394f1fba0b1a',  {
  strategy_class: OmniAuth::Strategies::Facebook,
  provider_ignores_state: true,
	:client_options => {:ssl => {:verify => false}}}
end