class AddStuffToDataMains < ActiveRecord::Migration[7.0]
  def change
    add_column :data_mains, :creator_email, :string
    add_column :data_mains, :creator_name, :string
    add_column :data_mains, :create_date, :string
    
    add_column :data_mains, :editor_email, :string
    add_column :data_mains, :edit_date, :string
  end
end
