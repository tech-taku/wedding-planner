class PagesController < ApplicationController
  def feed
    @services = Service.all
  end
end
