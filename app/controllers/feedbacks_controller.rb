class FeedbacksController < ApplicationController
 
  def new
    @prid=params[:id]
    @feedback = Feedback.new
  end  
  def create
    @feedback = Feedback.new(feedback_params)
    respond_to do |format|
      if @feedback.save
        format.html { redirect_to historys_orderhistory_url(@feedback), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @feedback }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end  




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feedback_params
      params.require(:feedback).permit(:product_id,  :user_id, :feedback, :rating)
    end
end
