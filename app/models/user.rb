class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :dreamers
  has_many :comments
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do
    validates :nickname
    validates :profile
    validates :avatar
    validates :generation_id
  end

  with_options numericality: { other_than: 1 } do
    validates :generation_id
  end


end
  
