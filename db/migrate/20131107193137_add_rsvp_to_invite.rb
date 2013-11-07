class AddRsvpToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :rsvp, :string
  end
end
