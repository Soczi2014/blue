class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence => true
	validates :price, :numericality => {:greater_than_or_equak_to => 0.01}
	validates :title, :uniqueness => true
	validates jdkfj 
end
