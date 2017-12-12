class NewsStaysController < ApplicationController
  before_action :set_news_stay, only: [:show, :edit, :update, :destroy]

  # GET /news_stays
  # GET /news_stays.json
  def index
    @news_stays = NewsStay.paginate(page: params[:page])
    @news = NewsStay.limit(5).reverse
  end

  # GET /news_stays/1
  # GET /news_stays/1.json
  def show
  end

  # GET /news_stays/new
  def new
    @news_stay = NewsStay.new
  end

  # GET /news_stays/1/edit
  def edit
  end

  # POST /news_stays
  # POST /news_stays.json
  def create
    @news_stay = NewsStay.new(news_stay_params)

    respond_to do |format|
      if @news_stay.save
        format.html { redirect_to @news_stay, notice: 'News stay was successfully created.' }
        format.json { render :show, status: :created, location: @news_stay }
      else
        format.html { render :new }
        format.json { render json: @news_stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_stays/1
  # PATCH/PUT /news_stays/1.json
  def update
    respond_to do |format|
      if @news_stay.update(news_stay_params)
        format.html { redirect_to @news_stay, notice: 'News stay was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_stay }
      else
        format.html { render :edit }
        format.json { render json: @news_stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_stays/1
  # DELETE /news_stays/1.json
  def destroy
    @news_stay.destroy
    respond_to do |format|
      format.html { redirect_to news_stays_url, notice: 'News stay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_stay
      @news_stay = NewsStay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_stay_params
      params.require(:news_stay).permit(:title, :user_id, :description, :image)
    end
end
