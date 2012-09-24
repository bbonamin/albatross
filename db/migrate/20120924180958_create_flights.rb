class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :logfile

      t.timestamps
    end
  end
end
