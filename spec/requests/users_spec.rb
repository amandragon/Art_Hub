require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "should be successful" do
      get users_path
      response.status.should == 200
    end