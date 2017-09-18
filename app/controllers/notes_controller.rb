class NotesController < ApplicationController

  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path, notice: 'Note was created successfully!'
    else
      render :new
    end
  end

  def update
    if @note.update_attributes(note_params)
      redirect_to notes_path, notice: 'Note was updated successfully!'
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: 'Note destroyed!'
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end
end