ActiveAdmin.register Course do
  permit_params :title, :description, :duration, :fees, :pic, :status, :batch
   
  
    form :partial => "form"
=begin

   form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :description
        f.input :duration
    
      f.actions
    end
  end
=end
end
=begin
  index do |f|
    f.input :title
    f.input :description
    f.input :duration
    f.input :fees
    f.input :feature_image
    f.input :status
    f.input :batch
  end
=end
  #form :title => "form"

    # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
 #permit_params do
   # permitted = [:permitted, :attributes]
   #permitted << :other if resource.something?
   # permitted

