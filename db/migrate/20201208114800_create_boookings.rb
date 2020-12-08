class CreateBoookings < ActiveRecord::Migration[6.0]
  def change
    create_table :boookings, id: :uuid do |t|
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.uuid :space_id

      t.timestamps
    end
  end
end
