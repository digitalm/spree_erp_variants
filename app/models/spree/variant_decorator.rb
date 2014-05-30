module Spree
  Variant.class_eval do
    has_one :add_on_erp_variant, class_name: 'Spree::AddOnErpVariant'

#   builds add_on_maker_variants from created variant ids
    after_create :create_add_on_erp_variants_from_variants

#   enable variants to CRUD each own add_on_maker_variants by accept nesting as child
    accepts_nested_attributes_for :add_on_erp_variant, allow_destroy: true

    def create_add_on_erp_variants_from_variants
      Spree::AddOnErpVariant.where(variant_id: self.id).first_or_initialize do |a|
        a.variant_id = self.id
        a.save!
      end
    end

  end
end
