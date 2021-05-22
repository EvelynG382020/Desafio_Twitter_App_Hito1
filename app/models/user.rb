class User < ApplicationRecord
<<<<<<< HEAD
  
=======
  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friends, dependent: :destroy
  paginates_per 50
>>>>>>> 16e11cf7e9e35eef6cdbc647c854ad091c1bb60b
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :friends, class_name: "Friend"
  
  paginates_per 50
end
