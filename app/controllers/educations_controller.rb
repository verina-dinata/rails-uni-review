class EducationsController < ApplicationController
  def index
    @educations = Education.all
  end

  def new
    @education = Education.new
    @universities = University.all
  end

  def create

  end
end
