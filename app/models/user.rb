class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
    
  protected
  def email_required?
    false
  end
  
  def self.find_for_twitter_oauth(access_token, signed_in_resource = nil)
    data = access_token.extra.raw_info
    if user = User.where(:username => data.screen_name).first
      user
    else
      User.create!(:username => data.screen_name, :password => Devise.friendly_token)
    end
  end
end
