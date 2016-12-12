class CoursesController < ApplicationController
  attr_reader :term

  def index
    @term = "Python"
    @courses = Coursera.for @term
  end

end
