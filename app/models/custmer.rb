class Custmer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :image
  
  has_many :tasks, dependent: :destroy
  
  validates :name, { presence: true, length: { minimum: 2, maximum: 20 } }
  validates :introduction, { length: { maximum: 250 } }
  validates :password, presence: true
  validates :email, presence:true
end
