class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def add_product(product_id)
		current_item = line_items.where(product_id: product_id).first_or_initialize
		if current_item
		  current_item.quantity += 1
		  current_item.save
		  current_item
		end
	end
end
