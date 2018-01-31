class InquiryController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

  def confirm
    # POSTされたパラメータを取得
    @inquiry = Inquiry.new(inquiry_params)
    # バリデーションチェックNGなら戻す
    render :index if @inquiry.invalid?
  end

  def create
    inquiry = Inquiry.new(inquiry_params)
    if params[:back]
      render :index
    elsif inquiry.save
      redirect_to inquiry_path(id: inquiry.id),notice: "申し込みが完了しました。"
    else
      render :index
    end
  end

  def show
  end

  private
  #セキュリティのため、permitメソッドで許可したパラメータ名しか取得できない。
    def inquiry_params
      params.require(:inquiry).permit(:campaign_code,:genre,:area,:place_decide_which,:date,:name,:phone_number,:mail,:comment,:line_id,:option)
    end

end
