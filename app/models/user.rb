class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:google_oauth2] 
  has_many :requests
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_user :roles => [:artist, :admin]

  def set_admin
    self.roles_mask = (self.roles_mask | 2)
    self.save
  end

  def is_admin?
    return (self.roles_mask & 2) == 2
  end

  def unset_admin
    self.roles_mask = 0
    self.save
  end

  def set_artist
    self.roles_mask = (self.roles_mask | 1)
    self.save
  end

  def is_artist?
    return (self.roles_mask & 1) == 1
  end

  def unset_artist
    self.roles_mask = 0
    self.save
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
      unless user
        user = User.create( email: data['email'], password: Devise.friendly_token[0,20])
      end
    user
  end
end
