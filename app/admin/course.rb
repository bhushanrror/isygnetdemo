ActiveAdmin.register Course do
  permit_params :title, :description, :duration, :fees, :pic, :status, :batch
  
    before_filter do
    Course.class_eval do
      def to_param
        id.to_s
      end
    end
  end  
  index do
    column :title
    column :description
    column :duration
    column :fees
    column :slug
    column :pic_file_name
    actions
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
end