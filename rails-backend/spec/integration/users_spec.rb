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

  path '/users/sign_in' do

    post 'Log in' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: [ 'email', 'password' ]
      }

      response '200', 'user logged in' do
        let(:user) { { email: 'user@example.com', password: 'password' } }
        run_test!
      end

      response '401', 'invalid credentials' do
        let(:user) { { email: 'user@example.com', password: 'wrong_password' } }
        run_test!
      end
    end
  end

  path '/users/sign_out' do

    delete 'Log out' do
      tags 'Users'
      consumes 'application/json'

      response '204', 'user logged out' do
        # Assuming you have a way to authenticate the request, e.g., a token in the headers.
        run_test!
      end

      response '401', 'user not logged in' do
        run_test!
      end
    end
  end

  path '/users/{id}' do

    get 'Get User Profile' do
      tags 'Users'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'user found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            email: { type: :string }
          },
          required: [ 'id', 'email' ]

        let(:id) { User.create(email: 'user@example.com', password: 'password').id }
        run_test!
      end

      response '404', 'user not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    put 'Update User Profile' do
      tags 'Users'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string }
        },
        required: [ 'email' ]
      }

      response '200', 'user updated' do
        let(:id) { User.create(email: 'user@example.com', password: 'password').id }
        let(:user) { { email: 'new_email@example.com' } }
        run_test!
      end

      response '404', 'user not found' do
        let(:id) { 'invalid' }
        let(:user) { { email: 'new_email@example.com' } }
        run_test!
      end
    end

    delete 'Delete User' do
      tags 'Users'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'user deleted' do
        let(:id) { User.create(email: 'user@example.com', password: 'password').id }
        run_test!
      end

      response '404', 'user not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
