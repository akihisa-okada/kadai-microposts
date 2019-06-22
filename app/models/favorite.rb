class Favorite < ApplicationRecord
  #userとmicropostとの中間テーブル
  belongs_to :user
  belongs_to :micropost
  
  #user_id,micropost_idが必須
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
