class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :interests
      t.date :date
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
