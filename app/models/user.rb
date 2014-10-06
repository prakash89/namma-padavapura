class User < ActiveRecord::Base
  rolify
	# attr_accessible :email, :password, :password_confirmation
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password, :unless => proc{|u| u.provider.present?}
  validates_presence_of :password, :on => :create, :unless => proc{|u| u.provider.present?}
  validates_presence_of :email ,:unless => proc{|u| u.provider.present?}
  validates_uniqueness_of :email, :unless => proc{|u| u.provider.present?}
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def self.create_with_omniauth(auth)
   create! do |user|
    user.provider = auth["provider"]
    user.uid = auth.uid
    user.name = auth.info.name
    user.save!
  end
end

def self.from_omniauth(auth)
 where(auth.slice(:provider, :uid)).first_or_initialize.tap do|user|
  user.provider = auth.provider
  user.uid = auth.uid
  user.name = auth.info.name
  user.oauth_token = auth.credentials.token
  user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  user.save!
end
end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def after_confirmation
    self.add_role :User unless self.roles.present?
  end
  
end
