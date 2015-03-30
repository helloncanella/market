class CreateBasketsProducts < ActiveRecord::Migration
  def change
    create_table :baskets_products do |t|
      t.references :basket, index: true
      t.references :product, index: true
    end
  end
end
