class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true, length: { minimum: 3 }

  #why do we set allow_blank to true on the image_url attribute
  #when we validate its presence above???
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "must be a URL for a GIF, JPG, or PNG image"
  }


  def self.latest
  	Product.order(:updated_at).last
  end
end
