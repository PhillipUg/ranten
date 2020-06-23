require 'rails_helper'

RSpec.describe 'rants/edit', type: :view do
  before(:each) do
    @rant = assign(:rant, Rant.create!)
  end

  it 'renders the edit rant form' do
    render

    assert_select 'form[action=?][method=?]', rant_path(@rant), 'post' do
    end
  end
end
