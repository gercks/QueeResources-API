require 'rails_helper'

RSpec.describe "Queeresources", type: :request do
  describe "GET /queeresources" do
    it "works! (now write some real specs)" do
      get queeresources_path
      expect(response).to have_http_status(200)
    end
  end
end
