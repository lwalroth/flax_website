require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

    

  describe "Services Page" do
    before { visit services_path }

    it { should have_content('Services') }
    it {should have_title(full_title('Services')) }
  end


  describe "About Page" do
    before { visit about_path }
  
    it { should have_content('About') }
    it { should have_title(full_title('About')) }

  end

    
  describe "Contact Page" do
    before { visit contact_path }
 
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

    
end
