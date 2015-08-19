class GifsController < ApplicationController
  before_action :set_gif, only: [:like, :dislike, :show, :edit, :update, :destroy, :edit_tag]
  before_action :set_gifs, only: [:index, :tagged, :by_user, :all]

  # GET /gifs
  # GET /gifs.json
  def index
    if @gifs.blank?
      render text: "No Gifs :(", layout: 'application.html.erb'
    end
  end

  def tagged
    # @gifs = Gif.all.tagged_with(params[:tag]).order(cached_votes_score: :desc)
    respond_to do |format|
      format.js { render 'gifs/js/tagged.js.erb' }
    end
  end

  def by_user
    # @user = User.find_by "username = ?", params[:username]
    # @gifs = @user.gifs.order(cached_votes_score: :desc)
    respond_to do |format|
      format.js { render 'gifs/js/tagged.js.erb' }
    end
  end

  def all
    # @gifs = Gif.all.order(cached_votes_score: :desc)
    respond_to do |format|
      format.js { render 'gifs/js/all_gifs.js.erb' }
    end
  end

  # GET /gifs/new
  def new
    @gif = Gif.new
  end

  # POST /gifs
  # POST /gifs.json
  def create
    @gif = Gif.new(gif_params)
    current_user.gifs << @gif
    respond_to do |format|
      if @gif.save
        tags = params[:gif][:tag_list].split(",").collect(&:strip)
        tags.each do |tag|
          @gif.tag_list << Tag.new(:name => tag)
        end
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
        format.js { render 'gifs/js/all_gifs.js.erb' }
      end
    end
  end

  # DELETE /gifs/1
  # DELETE /gifs/1.json
  def destroy
    @gif.destroy
    set_gifs
    respond_to do |format|
      format.js { render 'gifs/js/all_gifs.js.erb' }
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

  def edit_tag
    respond_to do |format|
      format.js { render 'gifs/js/edit_tag.js.erb', locals: { gif: @gif } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gif
      @gif = Gif.find(params[:id])
    end

    def set_gifs
      if params[:username]
        @user = User.find_by "username = ?", params[:username]
        @gifs = @user.gifs.order(cached_votes_score: :desc)#.page(params[:page]).per(3)
      elsif params[:tag]
        @gifs = Gif.all.tagged_with(params[:tag]).order(cached_votes_score: :desc)#.page(params[:page]).per(3)
      else
        @gifs = Gif.all.order(cached_votes_score: :desc)#.page(params[:page]).per(12)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gif_params
      params.require(:gif).permit(:gif_url, :title, :tag_list, :local_gif)
    end
end
