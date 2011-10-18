use Rack::Static, 
    :urls => [
        "/style", 
        "/images",
        "/essays.html",
        "/bio.html"
    ],
    :root => "public"

run lambda { |env|
    [
        200, 
        {
            'Content-Type'  => 'text/html', 
            'Cache-Control' => 'public, max-age=86400' 
        },
        File.open('public/index.html', File::RDONLY),
        File.open('public/bio.html', File::RDONLY),
        File.open('public/essays.html', File::RDONLY),
    ]
}
