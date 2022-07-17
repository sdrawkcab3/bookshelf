class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :publisher
      t.string :edition
      t.string :pages

      t.timestamps
    end
  end
end
