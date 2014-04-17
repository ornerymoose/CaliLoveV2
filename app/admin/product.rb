# ActiveAdmin.register Product do

  
<<<<<<< HEAD
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :name, :price, :avatar
  form do |f|
    f.inputs "Project Details" do
      f.input :avatar, :required => false, :as => :file
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
=======
#   # See permitted parameters documentation:
#   # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#   #
#   permit_params :list, :of, :attributes, :on, :model, :name, :price, :avatar
#   #
#   # or
#   #
#   # permit_params do
#   #  permitted = [:permitted, :attributes]
#   #  permitted << :other if resource.something?
#   #  permitted
#   # end
>>>>>>> 3c79dfbe38749f0b9f91ef8cf0bb961c074d2926
  
# end

ActiveAdmin.register Product do

permit_params :list, :of, :attributes, :on, :model, :name, :price, :avatar

form do |f|
  f.inputs "Project Details" do
    f.input :avatar, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end


end
