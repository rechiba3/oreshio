Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ['TWITTER_KEY'], ['TWITTER_SECRET']
  provider :facebook, ['FACEBOOK_KEY'], ['FACEBOOK_SECRET'], :scope => 'publish_stream'
end