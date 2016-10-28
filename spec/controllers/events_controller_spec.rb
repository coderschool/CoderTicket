require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  it "gets index" do
    get 'index'
    expect(response).to be_success
  end
end
