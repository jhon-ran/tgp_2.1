class HomeController < ApplicationController
  def index
    # needs this so it is not nil
    @gossips = Gossip.all
    @users = User.all
  end
end
