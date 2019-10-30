class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :heading
      t.integer :proficiency
      t.references :expert, index: true

      t.timestamps
    end
  end
end
