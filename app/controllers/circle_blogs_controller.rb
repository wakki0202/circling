class CircleBlogsController < ApplicationController
  before_action :set_circle_blog, only: %i[ show edit update destroy ]

  # GET /circle_blogs or /circle_blogs.json
  def index
    @circle_blogs = CircleBlog.all
  end

  # GET /circle_blogs/1 or /circle_blogs/1.json
  def show
  end

  # GET /circle_blogs/new
  def new
    @circle = Circle.find(params[:circle_id])
    @circle_blog = CircleBlog.new
  end

  # GET /circle_blogs/1/edit
  def edit
  end

  # POST /circle_blogs or /circle_blogs.json
  def create
    @circle = Circle.find(params[:circle_id])
    @circle_blog = CircleBlog.new(circle_blog_params)

    respond_to do |format|
      if @circle_blog.save
        redirect_to circles_path
      else
        render :new  #同上
      end
    end
  end

  # PATCH/PUT /circle_blogs/1 or /circle_blogs/1.json
  def update
    respond_to do |format|
      if @circle_blog.update(circle_blog_params)
        format.html { redirect_to circle_blog_url(@circle_blog), notice: "Circle blog was successfully updated." }
        format.json { render :show, status: :ok, location: @circle_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @circle_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circle_blogs/1 or /circle_blogs/1.json
  def destroy
    @circle_blog.destroy

    respond_to do |format|
      format.html { redirect_to circle_blogs_url, notice: "Circle blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle_blog
      @circle_blog = CircleBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def circle_blog_params
      params.require(:circle_blog).permit(:title, :content,:circle_id).merge(circle_id: params[:circle_id]) 
    end
end
