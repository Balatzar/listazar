class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :list, null: false, foreign_key: true
      t.string :name
      t.boolean :done
      t.integer :reactivation_delay_days
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
