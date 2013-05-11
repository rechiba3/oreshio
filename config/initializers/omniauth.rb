Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_COMSUMER_SECRET']
  provider :facebook, '139126549603654', '8fccd19bb9dcbe28a2d442fe535a12fe', :scope => 'publish_stream'
end