class Project
  attr_reader :backers, :title
  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self) if backer.backed_projects.include?(self) != true

  end
end
