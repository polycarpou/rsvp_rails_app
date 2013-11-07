class InvitesController < ApplicationController
  def new
    @invite = Invite.new
  end

  def create
   Invite.create(:name => params[:invite][:name], :event_id => params[:event_id])
    redirect_to event_path(params[:event_id])
  end

 def edit
   @invite = Invite.find(params[:id])
 end

  def update
    @invite = Invite.find(params[:id])
    @invite.update(:rsvp => params[:invite][:rsvp])
  redirect_to root_path
  end

end
