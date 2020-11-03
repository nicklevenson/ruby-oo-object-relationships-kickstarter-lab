class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        project = ProjectBacker.new(project, self)
    end

    def backed_projects
        backArray = ProjectBacker.all.select {|proj| proj.backer == self}
        backArray.collect{|proj| proj.project}
    end
    
end