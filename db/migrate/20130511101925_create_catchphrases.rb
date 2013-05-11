class CreateCatchphrases < ActiveRecord::Migration
  def change
    create_table :catchphrases do |t|

      t.string :catchphrase_head
      t.string :catchphrase_body
      t.string :catchphrase_foot
    end
  end
end
