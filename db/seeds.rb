require "open-uri"

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fannapinkerton.com%2Fwp-content%2Fuploads%2F2018%2F08%2Fbusiness-workshop-placeholder-1024x768.jpg&f=1&nofb=1')
article = Article.new(title: 'Communicating is hard...', body: "We all know that having to work with humans is not always the best....")
article.photo.attach(io: file, filename: 'business.jpg', content_type: 'image/jpg')
article.save
