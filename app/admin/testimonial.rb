ActiveAdmin.register Testimonial do

 permit_params :title, :videourl, :pic, :status
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
  # ************ we have implementd the same form as above by using partials
  # to find the currenrt form in view go to admin users and then _form.html.erb
  form :partial => "form"
  puts @testimonial.to_s
  # *************

	
end
