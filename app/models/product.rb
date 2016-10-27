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

	
end
