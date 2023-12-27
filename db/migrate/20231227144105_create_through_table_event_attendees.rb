class CreateThroughTableEventAttendees < ActiveRecord::Migration[7.1]
  def change
    create_table :event_attendees do |t|
      t.integer :event_attendee_id
      t.integer :attended_event_id

      t.timestamps
    end
    add_foreign_key :event_attendees, :users, column: :event_attendee_id, primary_key: :id
    add_foreign_key :event_attendees, :events, column: :attended_event_id, primary_key: :id
  end
end
