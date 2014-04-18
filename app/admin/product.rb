ActiveAdmin.register Product do

permit_params :list, :of, :attributes, :on, :model, :name, :price, :avatar

form do |f|
  f.inputs "Project Details" do
    f.input :name
    f.input :price
    f.input :avatar, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end


end
