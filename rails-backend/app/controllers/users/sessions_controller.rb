module Users
  class SessionsController < Devise::SessionsController
    respond_to :json

    private

    def respond_with(resource, _opts = {})
      if resource.active_for_authentication?
        sign_in(resource_name, resource)
        token = JWT.encode({ user_id: resource.id }, 'your-secret-key')
        render json: { token: token }
      else
        render json: { error: 'Account inactive.' }, status: :unauthorized
      end
    end

    def respond_to_on_destroy
      head :no_content
    end
  end
end
