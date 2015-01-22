class Product < ActiveRecord::Base
  belongs_to :category
  extend FriendlyId
  friendly_id :name, use: [:slugged,:history]
  mount_uploader :image, ImageUploader

  validates :name, :short, :description, :image, :category, presence: true

  def should_generate_new_friendly_id?
    name_changed?
  end

end
