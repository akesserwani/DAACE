class AddStatusToDataMains < ActiveRecord::Migration[7.0]
  def change
    add_column :data_mains, :status, :boolean
  end
end
