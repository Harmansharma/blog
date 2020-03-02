class CreateSuggests < ActiveRecord::Migration[6.0]
  def change
    create_table :suggests do |t|
      t.string :suggester
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
