class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :meetups_participants do |t|
      t.integer :participant_id
      t.references :meetup

      t.timestamps
    end

    create_table :meetups_hosts do |t|
      t.integer :host_id
      t.references :meetup

      t.timestamps
    end
  end
end
