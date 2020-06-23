require 'rails_helper'

RSpec.describe 'rants/new', type: :view do
  before(:each) do
    assign(:rant, Rant.new)
  end

  it 'renders new rant form' do
    render

    assert_select 'form[action=?][method=?]', rants_path, 'post' do
    end
  end
end
