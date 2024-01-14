module Users
  class SessionsController < Devise::SessionsController
    respond_to :json

    private


    # TODO: This sign in dows not block bad actors. It allows for signing when it should not.
    # With both a wrong password and username it sends the token. The else statement is never reached.
    def respond_with(resource, _opts = {})
      if resource.active_for_authentication?
        sign_in(resource_name, resource)
        token = JWT.encode({ user_id: resource.id }, 'your-secret-key-here')
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
