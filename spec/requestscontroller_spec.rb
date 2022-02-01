require 'rails_helper.rb'

describe RequestsController, type: :controller do
  fixtures :all
  before(:all) do
    Request.all.each do |rq|
      rq.destroy
    end
  end
  it "Should give me one request from fixtures" do
    ann = users(:anon)
    sign_in ann
    get :index
    expect(assigns(:requests).size).to eql(1)
  end
end
