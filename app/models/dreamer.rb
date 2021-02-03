class Dreamer < ApplicationRecord
extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to :genre

default_scope -> { order(created_at: :desc) }

has_one_attached :image
belongs_to :user
has_many :comments


with_options presence: true do
  validates :dream_title
  validates :declaration
  validates :period
  validates :reward
  validates :genre_id
  
end

with_options numericality: { other_than: 1 } do
  validates :genre_id
end

end
