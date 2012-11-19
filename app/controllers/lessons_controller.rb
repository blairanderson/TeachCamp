class LessonsController < ApplicationController
  before_filter :authenticate_teacher!

  before_filter :find_classroom
  # GET /lessons
  # GET /lessons.json

  def index
    @lessons = @classroom.lessons

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @lesson = @classroom.lessons.find(params[:id])
    @messages = Message.where(lesson_id: params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    @lesson = @classroom.lessons.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = @classroom.lessons.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = @classroom.lessons.new(params[:lesson])

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to classroom_lesson_path(@classroom.id, @lesson.id), notice: 'Lesson was successfully created.' }
        format.json { render json: @lesson, status: :created, location: @lesson }
      else
        format.html { render action: "new" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    @lesson = @classroom.lessons.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to classroom_lesson_path(@classroom.id, @lesson.id), notice: 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson = @classroom.lessons.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :no_content }
    end
  end

  private
  def find_classroom
    puts params
    @classroom = Classroom.find(params[:classroom_id])
  end
end
