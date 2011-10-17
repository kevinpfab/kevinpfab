# Statis Controller

# Navigation
# Execute before each page render
before /.*html\.haml/ do
    @nav = [
        {
            :url => "/",
            :name => "Home",
        },
        {
            :url => "/essays.html",
            :name => "Essays",
        },
        {
            :url => "http://github.com/kevinpfab",
            :name => "Github",
        },
    ]
end

# Layouts
layout 'layout/_site.html.haml'
