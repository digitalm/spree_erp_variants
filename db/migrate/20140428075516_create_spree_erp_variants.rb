class CreateSpreeErpVariants < ActiveRecord::Migration
  def change
    create_table :spree_add_on_erp_variants do |t|
      t.integer    :variant_id
      t.string     :erp_product_code,           :limit => 32
      t.integer    :stock
      t.timestamps
    end
  end
end
