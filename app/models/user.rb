class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :advertisments
  has_many :products

  validates :email, uniqueness: true
  validates  :password, presence: true
  #validates :username, presence: true zakomentowane na potrzeby zad3

end
