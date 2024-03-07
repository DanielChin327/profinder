class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @top_services = Service.all.max_by(3){|s| s.average_rating}
    @top_services_financial = Service.select{|service|service.category.downcase.include?("financ")}.max_by(3){|s| s.average_rating}
  end
end
