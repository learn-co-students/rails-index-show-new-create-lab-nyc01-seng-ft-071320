class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end

    def show
        @coupon = Coupon.find(params[:id])
    end


    def create
        @coupon = Coupon.create(coupon_params)

        redirect_to coupon_path(@coupon)
        # if coupon.save
        #     redirect_to coupon_path(coupon)
        # else
        #     flash[:error] = coupon.errors.full_messages
        #     redirect_to new_coupon()
        # end
    end

    def edit
        @coupon = Coupon.find(params[:id])
    end

    private

    def coupon_params
        params.require(:coupon).permit(:store, :coupon_code)
    end

end
