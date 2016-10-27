class User < ApplicationRecord
	devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
	has_many :products
	has_one :like

end
