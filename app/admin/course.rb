ActiveAdmin.register Course do
  permit_params :title, :description, :duration, :fees, :pic, :status, :batch
  
    before_filter do
    Course.class_eval do
      def to_param
        id.to_s
      end
    end
  end
  
    # form :partial => "form"
  form do |f|
      f.inputs "" do
        f.input :title
        f.input :description, as: :html_editor
        f.input :duration  
        f.input :fees
        f.input :pic
        f.input :status, :checked => true 
      end 
    f.actions
  end 

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

