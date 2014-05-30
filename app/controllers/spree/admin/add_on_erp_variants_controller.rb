module Spree
  module Admin
    class AddOnErpVariantsController < ResourceController
      before_filter :load_data, :except => :index

      def show
        session[:return_to] ||= request.referer
        redirect_to( :action => :edit )
      end

      def index
logger.info "###############index#####################"
        session[:return_to] = request.url
        @product = Spree::Product.find_by_permalink!(params[:product_id])
logger.info "@product.inspect"
logger.info @product.variants.inspect
        if @product.has_variants?
          @variant = @product.variants
        else
          @variant = Spree::Variant.where(:id => @product.master.id)
        end
logger.info "@variant"
logger.info @variant.inspect
        @add_on_erp_variant = Spree::AddOnErpVariant.where(:variant_id => @variant).page(params[:page])
logger.info "@add_on_erp_variant"
logger.info @add_on_erp_variant.inspect
        render :index
      end

      def edit
logger.info "###############edit#####################"
        session[:return_to] = request.url
        @product = Spree::Product.find_by_permalink!(params[:product_id])
        @add_on_erp_variant = Spree::AddOnErpVariant.where(:variant_id => params[:variant_id]).first_or_initialize
        logger.info "@add_on_erp_variant.inspect"
        logger.info @add_on_erp_variant.inspect
        render :edit
      end

      def create
        @add_on_erp_variant = Spree::AddOnErpVariant.new(add_on_erp_variant_params.merge(:variant_id => params[:variant_id]))

        respond_to do |format|
          if @add_on_erp_variant.save
            flash[:success] = t('add_on.notice_messages.admin_product_variant_add_on_maker_variant_created')
            format.html { redirect_to admin_product_variant_add_on_erp_variants_path }
            format.json { render action: 'index', status: :created, location: @add_on_erp_variant }
          else
            flash[:error] = t('add_on.notice_messages.admin_product_variant_add_on_maker_variant_has_error')
            format.html { render action: 'new' }
            format.json { render json: @add_on_erp_variant.errors }
          end
        end
      end

      def update
        respond_to do |format|
          if @add_on_erp_variant.update(add_on_erp_variant_params)
            flash[:success] = t('add_on.notice_messages.admin_product_variant_add_on_maker_variant_updated')
            format.html { redirect_to :action => :index }
            format.json { head :no_content }
          else
            flash[:error] = t('add_on.notice_messages.admin_product_variant_add_on_maker_variant_has_error')
            format.html { render action: 'edit' }
            format.json { render json: @add_on_erp_variant.errors }
          end
        end
      end

      def destroy
        @variant = Spree::Variant.find(params[:id])
        if @variant.destroy
          flash[:success] = Spree.t('notice_messages.variant_deleted')
        else
          flash[:success] = Spree.t('notice_messages.variant_not_deleted')
        end

        respond_with(@variant) do |format|
          format.html { redirect_to admin_product_erp_variant_path(params[:product_id]) }
          format.js  { render_js_for_destroy }
        end
      end

  protected
      def variant_includes
        [:add_on_erp_variants]
      end

      def load_data
      @product = Spree::Product.find_by_permalink!(params[:product_id])
        @taxons = Taxon.order(:name)
        @option_types = OptionType.order(:name)
        @tax_categories = TaxCategory.order(:name)
        @shipping_categories = ShippingCategory.order(:name)
      end

  private
      def permit_attributes
        params.require(:add_on_erp_variant).permit!
      end

      def add_on_erp_variant_params
        params.require(:add_on_erp_variant).permit(:variant_id, :erp_product_code, :stock)
      end
    end
  end
end