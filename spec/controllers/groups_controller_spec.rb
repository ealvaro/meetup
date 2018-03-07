require 'rails_helper'

RSpec.describe GroupsController, type: :controller do

  let!(:grp1) { FactoryGirl.create :group }
  let!(:usr1) { FactoryGirl.create :user }
  let!(:usr2) { FactoryGirl.create :user }
  let!(:usr3) { FactoryGirl.create :user }
  let!(:rol1) { FactoryGirl.create :role, name: "Organizer", user: usr1, group: grp1 }
  let!(:rol2) { FactoryGirl.create :role, name: "Presenter", user: usr2, group: grp1 }
  let!(:rol3) { FactoryGirl.create :role, name: "Participant", user: usr3, group: grp1 }


  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: {id: grp1.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      get :edit, params: {id: grp1.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Group" do
        expect {
          post :create, params: {group: {name: "abc"}}}.to change(Group, :count).by(1)
      end

      it "redirects to the created group" do
        post :create, params: {group: {name: "abc"}}
        expect(response).to redirect_to(Group.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {group: {invalid: "abc"}}
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {{name: "cba"}}

      it "updates the requested group" do
        put :update, params: {id: grp1.to_param, group: new_attributes}
        grp1.reload
        expect(grp1.name).to eql("cba")
      end

      it "redirects to the group" do
        put :update, params: {id: grp1.to_param, group: new_attributes}
        expect(response).to redirect_to(grp1)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, params: {id: grp1.to_param, group: {invalid: "abc"}}
        expect(response).to_not be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested group" do
      expect {
        delete :destroy, params: {id: grp1.id}
      }.to change(Group, :count).by(-1)
    end

    it "redirects to the groups list" do
      delete :destroy, params: {id: grp1.id}
      expect(response).to redirect_to(groups_url)
    end
  end

end
