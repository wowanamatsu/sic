class CreatePaises < ActiveRecord::Migration[5.2]
  def change
    create_table :paises do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end
end
