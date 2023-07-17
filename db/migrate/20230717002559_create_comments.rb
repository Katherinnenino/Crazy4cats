class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :kind
      t.string :reaction_type

      t.timestamps
    end
  end
end
