require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views

  describe 'POST /posts' do
    it 'create a new post object' do
      post :create, params: {title: 'Test Post'}

      expect(Post.count).to eq(1)
    end
    it 'responds with a post object' do
      post :create, params: {title: 'Test Post'}

      expected_response = {
        post: {
          title: 'Test Post'
        }
      }

      expect(response.body).to eq(expected_response.to_json)
    end
  end
end
