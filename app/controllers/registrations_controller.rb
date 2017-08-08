class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :bio, :city, :img_url)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :bio, :city, :img_url, :password_confirmation, :current_password)
  end
end
