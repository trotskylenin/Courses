class CoursesController < ApplicationController
  attr_reader :term

  def index
    @term = params[:looking_for] || "Python"
    @courses = Coursera.for @term
  end

end
