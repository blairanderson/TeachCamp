class ClassroomsController < ApplicationController

  # GET /classrooms
  # GET /classrooms.json
  def index
    @classrooms = Classroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classrooms }
    end
  end

  def teacher_class
    if teacher_signed_in?
      @classrooms = current_teacher.classrooms

    end

  end

  def take_attendance
    @classroom = Classroom.find(params[:id])



  end

  def process_attendance
    @classroom = Classroom.find(params[:id])
        existing = @classroom.attendances.today.where(student_id: params[:student_id])
        if existing.count > 0
          #edit their current attendance
          existing.last.update_attributes present: params[:present], tardy: params[:tardy], excused: params[:excused]
        else
          @classroom.attendances.create student_id: params[:student_id], classroom_id: params[:classroom_id], present: params[:present], tardy: params[:tardy], excused: params[:excused]
        end
    redirect_to take_attendance_classroom_path
  end



  # GET /classrooms/1
  # GET /classrooms/1.json
  def show
    @classroom = Classroom.find(params[:id])
    @messages = Message.where(classroom_id: params[:id])
    @students = @classroom.students.all


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classroom }
    end
  end

  # GET /classrooms/new
  # GET /classrooms/new.json
  def new
    @classroom = Classroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @classroom }
    end
  end

  # GET /classrooms/1/edit
  def edit
    @classroom = Classroom.find(params[:id])
  end

  # POST /classrooms
  # POST /classrooms.json
  def create
    @classroom = Classroom.new(params[:classroom])

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to @classroom, notice: 'Classroom was successfully created.' }
        format.json { render json: @classroom, status: :created, location: @classroom }
      else
        format.html { render action: "new" }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /classrooms/1
  # PUT /classrooms/1.json
  def update
    @classroom = Classroom.find(params[:id])

    respond_to do |format|
      if @classroom.update_attributes(params[:classroom])
        format.html { redirect_to @classroom, notice: 'Classroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classrooms/1
  # DELETE /classrooms/1.json
  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy

    respond_to do |format|
      format.html { redirect_to classrooms_url }
      format.json { head :no_content }
    end
  end
end
