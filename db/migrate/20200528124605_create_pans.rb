# frozen_string_literal: true

class CreatePans < ActiveRecord::Migration[6.0]
  def change
    create_table :pans do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
