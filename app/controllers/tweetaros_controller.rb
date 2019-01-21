class TweetarosController < ApplicationController
before_action :set_tweetaro, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweetaro.all
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
  end

  # GET /tweets/new
  def new
    if params[:back]
     @tweet = Tweetaro.new(tweetaro_params)
    else
     @tweet = Tweetaro.new
    end
  end

  # GET /tweets/1/edit
  def edit
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweetaro.new(tweetaro_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Tweetしました！' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweetaro_params)
        format.html { redirect_to @tweet, notice: 'Tweetを更新しました。' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweetaros_url, notice: 'Tweetを削除しました。' }
      format.json { head :no_content }
    end
  end
  
  def confirm
    @tweet = Tweetaro.new(tweetaro_params)
    render :new if @tweet.invalid?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_tweetaro
      puts "テスト#{params[:id]}"
      @tweet = Tweetaro.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def tweetaro_params
      params.require(:tweetaro).permit(:content)
  end
end
