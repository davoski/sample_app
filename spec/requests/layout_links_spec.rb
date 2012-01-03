require 'spec_helper'

describe "LayoutLinks" do
    #describe "GET /layout_links" do
    it "should have a homepage at '/'" do
      get '/'
      response.should have_selector('title', :content => 'Home')
    end
    #end
    
    it "should have a Contact at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => 'Contact')
    end
    
    it "should have an About at '/about'" do
      get '/about'
      response.should have_selector('title', :content => 'About')
    end
    
    it "should have a Help at '/help'" do
      get '/help'
      response.should have_selector('title', :content => 'Help')
    end
    
    it "should have signup page a '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => "Sign Up")
    end
end
