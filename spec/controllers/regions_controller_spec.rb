require 'rails_helper'

RSpec.describe RegionsController, type: :controller do


  it { should respond_to(:import) }

  let(:data) { "iso,country,name,region1,region2,iso2,fips,hasc,stat" }

  File.stub(:foreach).with("file_path", headers: true).and_return(data)

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #import" do
    it "redirects to the region page" do
      post :import, file: "UA_Regions.csv"
      expect(response).to redirect_to root_url
    end

    it "adds a flash notice" do
      post :import, file: "UA_Regions.csv"
      expect(flash[:notice]).not_to be == "Ukraine Regions Table imported."
    end

    it "imports the region file" do
      post :import, file: "UA_Regions.csv"
    end
  end



end
