class HomeController < ApplicationController
  def index
  	@enquiry = Enquiry.new
  end
end
