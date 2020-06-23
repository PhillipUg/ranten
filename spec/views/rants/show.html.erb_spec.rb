require 'rails_helper'

RSpec.describe 'rants/show', type: :view do
  before(:each) do
    @rant = assign(:rant, Rant.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
