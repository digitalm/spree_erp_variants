module Spree
  class AddOnErpVariant < ActiveRecord::Base
    belongs_to :variant, class_name: 'Spree::Variant', :foreign_key => :variant_id
    belongs_to :product, class_name: 'Spree::Product'

    validates :erp_product_code, length: {maximum: 32}, allow_nil: true
    validates :stock,      numericality: { only_integer: true }, allow_nil: true

  end
end