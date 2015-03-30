class RemoveTableTest < ActiveRecord::Migration
  def change
  	drop_table :tests
  	drop_table :testes
  	drop_table :users
  end
end
