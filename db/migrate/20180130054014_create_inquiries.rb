class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.string :campaign_code
      t.string :genre
      t.string :area
      t.boolean :place_decide_which
      t.integer :date
      t.string :name
      t.integer :phone_number
      t.string :mail
      t.text :comment
      t.string :line_id
      t.boolean :option
      t.timestamps
    end
  end
end
