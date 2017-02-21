class Product < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "public/images"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	


	def self.search(params)
		tire.search(load.true)  do
			query{string params[:query],default_operator:"AND"} if params[:query].present?
			filter :range,published_at:{lte: Time.zone.now}
	end
end
	
end
