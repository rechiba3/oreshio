class CreateCatchphrases < ActiveRecord::Migration
  def change
    create_table :catchphrases, :options => "DEFAULT CHARACTER SET = UTF8" do |t|

      t.string :catchphrase_head
      t.string :catchphrase_body
      t.string :catchphrase_foot
    end
  end
end
