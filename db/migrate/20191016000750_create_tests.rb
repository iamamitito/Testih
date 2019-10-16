class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
