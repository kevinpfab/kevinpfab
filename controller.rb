# Statis Controller

helpers do
    def kp(s = "")
        "http://kevinpfab.com/#{s}"
    end
end

# Navigation
# Execute before each page render
before /.*html\.haml/ do
    @site = "http://kevinpfab.com/"
    @nav = [
        {
            :url => kp,
            :name => "Home",
        },
        {
            :url => kp("essays.html"),
            :name => "Essays",
        },
        {
            :name => "Links",
        },
        {
            :url => "http://github.com/kevinpfab",
            :name => "Github",
        },
    ]
end

# Layouts
layout 'layout/_site.html.haml'
