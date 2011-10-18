# Statis Controller

helpers do
    def kp(s = "")
        "http://kevinpfab.com/#{s}"
    end
end

# Navigation
# Execute before each page render
before /.*html\.haml/ do
    @nav = [
        {
            :url => kp,
            :name => "Home",
        },
        {
            :url => kp("bio.html"),
            :name => "Bio",
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
        {
            :url => "http://facebook.com/Swoop",
            :name => "Facebook",
        },
        {
            :url => "http://twitter.com/kevinpfab",
            :name => "Twitter",
        },
    ]
end

# Layouts
layout 'layout/_site.html.haml'
