class LessonAppliesController < ApplicationController
  before_action :set_lesson_apply, only: [:show, :edit, :update, :destroy]
  before_action :set_lessons_students, only: [:new, :edit, :create, :update]

  # GET /lesson_applies
  # GET /lesson_applies.json
  def index
    @lesson_applies = LessonApply.all
  end

  # GET /lesson_applies/1
  # GET /lesson_applies/1.json
  def show
  end

  # GET /lesson_applies/new
  def new
    @lesson_apply = LessonApply.new
  end

  # GET /lesson_applies/1/edit
  def edit
  end

  # POST /lesson_applies
  # POST /lesson_applies.json
  def create
    @lesson_apply = LessonApply.new(lesson_apply_params)

    respond_to do |format|
      if @lesson_apply.save
        format.html { redirect_to @lesson_apply, notice: 'Lesson apply was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_apply }
      else
        format.html { render :new }
        format.json { render json: @lesson_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_applies/1
  # PATCH/PUT /lesson_applies/1.json
  def update
    respond_to do |format|
      if @lesson_apply.update(lesson_apply_params)
        format.html { redirect_to @lesson_apply, notice: 'Lesson apply was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_apply }
      else
        format.html { render :edit }
        format.json { render json: @lesson_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_applies/1
  # DELETE /lesson_applies/1.json
  def destroy
    @lesson_apply.destroy
    respond_to do |format|
      format.html { redirect_to lesson_applies_url, notice: 'Lesson apply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_apply
      @lesson_apply = LessonApply.find(params[:id])
    end

    def set_lessons_students
      @lessons = Lesson.all
      @students = Student.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_apply_params
      params.require(:lesson_apply).permit(:student_id, :lesson_id)
    end
end
