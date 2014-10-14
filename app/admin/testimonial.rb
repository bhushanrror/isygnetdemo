ActiveAdmin.register Testimonial do

 # permit_params :title, :body, :feature_image, :type, :status
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
 # form :html => { :enctype => "multipart/form-data" } do |f|
  #	f.input :title
  #	f.input :body
  #	f.input :type  
   # f.input :feature_image, :as => :file, :hint => f.template.image_tag(f.object.feature_image.url) 
    #f.actions
  #end

	controller do
		def permitted_params
			params.permit testimonial: [:title, :body, :feature_image, :type, :status]
		end
	end

	
	form :html => { :enctype => "multipart/form-data" } do |f|  
  		f.inputs do
    		f.input :feature_image, :as => :file
  		end
		f.actions
	end
end
