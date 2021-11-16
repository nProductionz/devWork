class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :requests
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_user :roles => [:artist]
  
  

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

end
