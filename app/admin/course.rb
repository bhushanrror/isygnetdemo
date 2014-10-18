ActiveAdmin.register Course do
  permit_params :title, :description, :duration, :fees, :pic, :status, :batch
   
  
    form :partial => "form"

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

