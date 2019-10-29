ActiveAdmin.register Centre do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :address, :latitude, :longitude, :kind
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :latitude, :longitude, :kind]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    inputs 'Agregar un nuevo centro' do
    input :name
    input :address
    input :kind
    end
    actions
   end
  
end
