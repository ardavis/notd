class TagsController < ApplicationController

  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |format|
      format.html do
        @tags = Tag.all
      end
      format.json do
        @tags = Tag.where('LOWER(name) LIKE ?', "%#{params[:term].downcase}%")
        render json: @tags
      end
    end
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path, notice: 'Tag was created successfully!'
    else
      render :new
    end
  end

  def update
    if @tag.update_attributes(tag_params)
      redirect_to tags_path, notice: 'Tag was updated successfully!'
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path, notice: 'Tag destroyed!'
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end