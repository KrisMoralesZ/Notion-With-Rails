class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.references :parent, null: true, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
