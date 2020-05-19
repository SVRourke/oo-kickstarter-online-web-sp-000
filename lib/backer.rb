class Backer
  attr_reader :backed_projects, :name
  def initialize(name)
    @name = name
    @backed_projects = Array.new
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end
end
