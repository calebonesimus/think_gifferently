class GifsController < ApplicationController
  before_action :set_gif, only: [:like, :dislike, :show, :edit, :update, :destroy]

  # GET /gifs
  # GET /gifs.json
  def index
    @gifs = Gif.all.order(created_at: :desc)
  end

  def tagged
    @gifs = Gif.all.tagged_with(params[:tag])
    respond_to do |format|
      format.js { render 'gifs/js/tagged.js.erb' }
    end
  end

  def by_user
    @user = User.find_by "username = ?", params[:username]
    @gifs = @user.gifs
    respond_to do |format|
      format.js { render 'gifs/js/tagged.js.erb' }
    end
  end

  def all
    @gifs = Gif.all
    respond_to do |format|
      format.js { render 'gifs/js/all_gifs.js.erb' }
    end
  end

  # GET /gifs/1
  # GET /gifs/1.json
  def show
  end

  # GET /gifs/new
  def new
    @gif = Gif.new
  end

  # GET /gifs/1/edit
  def edit
  end

  # POST /gifs
  # POST /gifs.json
  def create
    @gif = Gif.new(gif_params)
    current_user.gifs << @gif
    respond_to do |format|
      if @gif.save
        format.js { render 'gifs/js/create.js.erb' }
      else
        format.js { render 'shared/render_errors.js.erb', locals: { object: @gif } }
      end
    end
  end

  # PATCH/PUT /gifs/1
  # PATCH/PUT /gifs/1.json
  def update
    respond_to do |format|
      if @gif.update(gif_params)
        format.html { redirect_to @gif, notice: 'Gif was successfully updated.' }
        format.json { render :show, status: :ok, location: @gif }
      else
        format.html { render :edit }
        format.json { render json: @gif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gifs/1
  # DELETE /gifs/1.json
  def destroy
    @gif.destroy
    respond_to do |format|
      format.html { redirect_to gifs_url, notice: 'Gif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def like
    @gif.liked_by current_user
    respond_to do |format|
      format.js { render 'gifs/js/like.js.erb', locals: { gif: @gif } }
    end
  end

  def dislike
    @gif.disliked_by current_user
    respond_to do |format|
      format.js { render 'gifs/js/dislike.js.erb', locals: { gif: @gif } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gif
      @gif = Gif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gif_params
      params.require(:gif).permit(:image_file, :summary, :title, :tag_list)
    end
end
