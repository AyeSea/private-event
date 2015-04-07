class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
    	t.integer :attended_event_id
    	t.integer :attendee_id
      t.timestamps null: false
    end
  end
end
