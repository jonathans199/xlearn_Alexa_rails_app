class QuestionsController < ApplicationController
  before_action :find_course
  before_action :set_question, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @questions.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def show
    @question = current_user.question
  end

  def update
    respond_to do |format|
      if @question.update(course_params)
        format.html { redirect_to @question, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
    #  if @question.update(question_params)
    #    redirect_to @course
    #  else
    #    render 'edit'
    #  end
  end

  def destroy
    @question.destroy
    redirect_to @course
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  def find_course
    @course = Course.find(params[:course_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def question_params
    params.require(:question).permit(:course_name, :description, :introduction, :questions, :answers)
  end
end
