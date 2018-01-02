class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :description
      t.attachment :image
      t.integer :article_id
      t.string :article_token
      t.string :image

      t.timestamps
    end
  end
end
