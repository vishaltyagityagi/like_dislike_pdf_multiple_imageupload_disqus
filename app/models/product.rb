class Product < ApplicationRecord

	belongs_to :user
	has_many :likes, as: :likeable
	mount_uploaders :image, AvatarUploader

	before_save :assign_full_name

	def assign_full_name
		name = (self.name.present? ? self.name : "")
		desc = (self.desc.present? ? self.desc : "")
		self.address = name + " " + desc
	end


def paypal_url(plan)
    values = {
      business: "buyer@gmail.com.com",
      cmd: "_xclick",
      upload: 1,
      return: "http://localhost:3000/paypal_callback",
      invoice: id,
      amount: plan.id.to_f,
      quantity: '1',
      custom: plan.id, # Plan ID or you can use item_number
      notify_url: "http://localhost:3000"
    }
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end
	
end
