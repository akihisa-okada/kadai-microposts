class Micropost < ApplicationRecord
  belongs_to :user
  
  #お気に入り機能、
  has_many :favorites, dependent: :destroy #MicropostモデルとFavoritesモデルの関連づけを定義.
  has_many :favorite_users, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end



