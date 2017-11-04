require 'rails_helper'
require 'user'

RSpec.describe "users/show.html.erb", type: :view do
let(:my_topic) { create(:topic) }
let(:my_user) { create(:user) }
let(:my_post) { create(:post, topic: my_topic, user: my_user) }

    context 'when user show view loads' do
        it 'displays posts details correctly' do
            render
            rendered.should contain(my_post.title)
        end
    end
end
