require 'swagger_helper'

describe 'Users API' do

  path '/users' do

    post 'Sign up' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string },
          password_confirmation: { type: :string }
        },
        required: [ 'email', 'password', 'password_confirmation' ]
      }

      response '201', 'user created' do
        let(:user) { { email: 'user@example.com', password: 'password', password_confirmation: 'password' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) { { email: 'user@example.com' } }
        run_test!
      end
    end
  end
end
