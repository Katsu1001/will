class Column < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :part
  has_many :information

  belongs_to :user
  has_one_attached :image
  has_many :favorites

  with_options presence: true do
    validates :name
    validates :introduction
    validates :category_id
  end
end
