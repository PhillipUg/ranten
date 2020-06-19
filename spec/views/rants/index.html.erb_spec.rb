require 'rails_helper'

RSpec.describe "rants/index", type: :view do
  before(:each) do
    assign(:rants, [
      Rant.create!(),
      Rant.create!()
    ])
  end

  it "renders a list of rants" do
    render
  end
end
