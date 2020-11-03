class Project

    attr_reader :title

    def initialize(title)
        @title = title 

    end

    def add_backer(backer)
        backer = ProjectBacker.new(self, backer)
    end

    def backers
        projArray = ProjectBacker.all.select {|proj| proj.project == self}
        projArray.collect{|proj| proj.backer}
    end


end