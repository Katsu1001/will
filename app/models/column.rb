class Column < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :part

  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :name
    validates :introduction
    validates :category_id
  end
end
