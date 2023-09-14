class ChangeStatusToBeStringInDataMains < ActiveRecord::Migration[7.0]
  def change
    change_column :data_mains, :status, :string 
  end
end
