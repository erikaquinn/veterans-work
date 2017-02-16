require 'rails_helper'
require 'spec_helper'


RSpec.describe CompaniesController, type: :controller do

  describe "get #index" do
    it 'assigns all companies to @companies' do
      companies_list = []
      5.times do 
        companies_list << create(:company)
      end
      get :index
      expect(assigns(:companies)).to eq("companies_list")
    end
  end

end
