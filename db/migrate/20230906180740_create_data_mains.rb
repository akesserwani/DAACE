class CreateDataMains < ActiveRecord::Migration[7.0]
  def change
    create_table :data_mains do |t|
      t.string :title
      t.string :location
      t.string :era
      t.float :long
      t.float :lat
      t.text :source

      t.timestamps
    end
  end
end
