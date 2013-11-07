class InvitesController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
    Invite.create(:name => params[:invite][:name])
    redirect_to '/events'
  end

end
