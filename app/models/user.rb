class User < ApplicationRecord
  has_many :recipes,dependent: :destroy
  has_many :favorites # ユーザー/お気に入り → 1:多
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
