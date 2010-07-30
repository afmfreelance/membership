class CreateMusicianInstruments < ActiveRecord::Migration
  def self.up
    create_table :musician_instruments do |t|
      t.integer :instrument_id
      t.integer :musician_id

      t.timestamps
    end
  end

  def self.down
    drop_table :musician_instruments
  end
end
