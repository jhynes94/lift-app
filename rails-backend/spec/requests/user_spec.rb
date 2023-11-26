# spec/requests/authentication_spec.rb
require 'rails_helper'

RSpec.describe "Authentication", type: :request do
  let(:user) { create(:user) }  # replace with your user factory or equivalent

  describe "POST /users" do
    it "creates a new user" do
      post user_registration_path, params: { user: { email: 'test@example.com', password: 'password', password_confirmation: 'password' } }
      # expect(response).to redirect_to(root_path)  # replace with your redirect path
      expect(User.last.email).to eq('test@example.com')
    end
  end

  describe "POST /users/sign_in" do
    it "signs in the user and sets a cookie" do
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      # expect(response).to redirect_to(root_path)  # replace with your redirect path
      expect(response.cookies['_session_id']).not_to be_nil  # replace 'name_of_your_cookie' with the name of your cookie
    end
  end

  describe "DELETE /users/sign_out" do
    it "signs out the user and deletes the cookie" do
      sign_in user
      delete destroy_user_session_path
      # expect(response).to redirect_to(root_path)  # replace with your redirect path
      expect(response.cookies['name_of_your_cookie']).to be_nil  # replace 'name_of_your_cookie' with the name of your cookie
    end
  end
end
