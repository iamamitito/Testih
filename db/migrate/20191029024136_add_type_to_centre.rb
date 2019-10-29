class AddTypeToCentre < ActiveRecord::Migration[6.0]
  def change
    add_column :centres, :kind, :string
  end
end
