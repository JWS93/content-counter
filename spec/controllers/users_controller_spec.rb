require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views

  describe 'POST /users' do
    it 'create a new user object' do
      user :create, params: {username: 'test user'}

      expect(User.count).to eq(1)
    end
  end
end
