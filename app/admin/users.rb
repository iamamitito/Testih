ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :email, :password
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :provider, :uid]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  controller do
    def update
      if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      end
      super
    end
  end

  form do |f|
    inputs 'Agregar un nuevo usuario' do
    input :name
    input :email
    input :password
    end
    actions
   end

  
end
