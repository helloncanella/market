class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
			t.decimal    :amount_price
			t.integer    :amount    	
    	t.references :user
			t.timestamps
    end
  end
end
