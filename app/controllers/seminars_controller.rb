class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]


  def index
    @seminars = Seminar.page(params[:page]).per(3).order(date: :asc)
    @rooms = Room.page(params[:page]).per(3).order(created_at: :desc)
  end


  def show
  end

  def new
    @seminar = Seminar.new
  end

  def edit
  end

  def create
    @seminar = Seminar.new(seminar_params)
    respond_to do |format|
      if @seminar.save
        format.html { redirect_to @seminar, notice: 'セミナーを登録しました' }
        format.json { render :show, status: :created, location: @seminar }
      else
        format.html { render :new }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @seminar.update(seminar_params)
        format.html { redirect_to @seminar, notice: 'セミナーを更新しました' }
        format.json { render :show, status: :ok, location: @seminar }
      else
        format.html { render :edit }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @seminar.destroy
    respond_to do |format|
      format.html { redirect_to seminars_url, notice: 'セミナーを削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar
      @seminar = Seminar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seminar_params
      params.require(:seminar).permit(:name,:date,:start_time,:end_time,:room_id,:price,:cost,:other)
    end
end
