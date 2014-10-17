ActiveAdmin.register Setting do

permit_params :settingkey, :settingvalue
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
# ************ we have implementd the same form as above by using partials
  # to find the currenrt form in view go to admin users and then _form.html.erb
  form :partial => "form"
 
  # *************

end
