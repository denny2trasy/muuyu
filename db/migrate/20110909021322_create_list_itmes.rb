class CreateListItmes < ActiveRecord::Migration
  def self.up
    create_table :list_itmes do |t|
      t.string    :value_en,  :value_zh,   :list_type
      t.timestamps
    end
  end

  def self.down
    drop_table :list_itmes
  end
end
