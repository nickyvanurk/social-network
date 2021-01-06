class RegistrationsController < Devise::RegistrationsController
  def create
    super do |user|
      unless user.persisted?
        clean_up_passwords user
        set_minimum_password_length
        render 'static_pages/home' and return
        return
      end
    end
  end
end
