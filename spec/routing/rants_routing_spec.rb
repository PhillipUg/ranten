require "rails_helper"

RSpec.describe RantsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/rants").to route_to("rants#index")
    end

    it "routes to #new" do
      expect(get: "/rants/new").to route_to("rants#new")
    end

    it "routes to #show" do
      expect(get: "/rants/1").to route_to("rants#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/rants/1/edit").to route_to("rants#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/rants").to route_to("rants#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/rants/1").to route_to("rants#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/rants/1").to route_to("rants#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/rants/1").to route_to("rants#destroy", id: "1")
    end
  end
end
