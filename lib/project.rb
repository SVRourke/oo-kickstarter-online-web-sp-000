class Project
  attr_reader :backers, :title
  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    @backers << backer
    if backer.backed_projects.include?(self) != true
      backer.back_project(self)
    end
  end
end
