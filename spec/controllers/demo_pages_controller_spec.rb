require 'spec_helper'

describe DemoPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'student'" do
    it "returns http success" do
      get 'student'
      response.should be_success
    end
  end

  describe "GET 'lecturer'" do
    it "returns http success" do
      get 'lecturer'
      response.should be_success
    end
  end

  describe "GET 'admin'" do
    it "returns http success" do
      get 'admin'
      response.should be_success
    end
  end

end
