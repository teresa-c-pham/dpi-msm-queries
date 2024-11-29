class DirectorsController < ApplicationController
  def show_all
    render({ :template => "misc_templates/directors"})
  end

  def youngest
    render({ :template => "misc_templates/youngest"})
  end

  def eldest
    render({ :template => "misc_templates/eldest"})
  end

  def show
    render({ :template => "misc_templates/director"})
  end
end
