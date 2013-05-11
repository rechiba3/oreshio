Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_COMSUMER_SECRET']
  provider :facebook, '129745623888871', 'bc7470c3bb0a1dbdbe8d46e87fce3455', :scope => 'publish_stream'
end