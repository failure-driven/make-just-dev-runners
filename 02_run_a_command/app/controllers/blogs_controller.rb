class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]

  # GET /blogs or /blogs.json
  # @route GET /blogs (blogs)
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1 or /blogs/1.json
  # @route GET /blogs/:id (blog)
  def show
  end

  # @route GET /blogs/new (new_blog)
  def new
    @blog = Blog.new
  end

  # @route GET /blogs/:id/edit (edit_blog)
  def edit
  end

  # POST /blogs or /blogs.json
  # @route POST /blogs (blogs)
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  # @route PATCH /blogs/:id (blog)
  # @route PUT /blogs/:id (blog)
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  # @route DELETE /blogs/:id (blog)
  def destroy
    @blog.destroy!

    respond_to do |format|
      format.html { redirect_to blogs_path, status: :see_other, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.expect(blog: [:title, :body, :author])
  end
end
