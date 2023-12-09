class Users::RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          sign_up(resource_name, resource)
          token = JWT.encode({ user_id: resource.id }, 'your-secret-key')
          render json: { token: token }, status: :created
        else
          expire_data_after_sign_in!
          render json: { error: 'Account created but inactive.' }, status: :ok
        end
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      render json: { error: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
