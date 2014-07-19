require 'rails_helper'

RSpec.describe "games/show", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "Name",
      :description => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
