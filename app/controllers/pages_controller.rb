class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @listings = Listing.where(available: true)
  end
end
