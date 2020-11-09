class CreateOrganisms < ActiveRecord::Migration[6.0]
  def change
    create_table :organisms do |t|
      t.string :name
      t.string :img
      t.string :tag

      t.timestamps
    end
  end
end
