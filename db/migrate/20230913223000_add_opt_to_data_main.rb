class AddOptToDataMain < ActiveRecord::Migration[7.0]
  def change
    add_column :data_mains, :opt, :string
  end
end
