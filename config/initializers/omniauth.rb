# OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
# end

OmniAuth.config.logger = Rails.logger   
    
    Rails.application.config.middleware.use OmniAuth::Builder do
        provider :facebook, '1557543517792051', '9ce4594f5c078b6ff2227bfa1e5127f3'
	end  
	Rails.application.config.middleware.use OmniAuth::Builder do
        provider :twitter, 'JHtxH2PW6nHO0xHPp1Zrn5qra', '0dINKCFq4Z7K7V64x7QiunFd0zCugqvHZSGlaJGiHRhTlzkg1O'
	end  