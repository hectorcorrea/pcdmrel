poe = Collection.create(title:"Books by Edgar Allan Poe")
raven = Work.create(title:"The Raven", collection: poe)

# Create a work with two files for the cover
cover = Work.create(title:"Cover of The Raven")
Pcdmfile.create(name:"cover.pdf", size: 50, url: "http://fedora/rest/raven/cover.pdf", work: cover)
Pcdmfile.create(name:"cover.jpg", size: 50, url: "http://fedora/rest/raven/cover.jpg", work: cover)

# Create a work with one file for page 1
page1 = Work.create(title:"Page 1 of The Raven")
Pcdmfile.create(name:"page1.txt", size: 50, url: "http://fedora/rest/raven/page1.txt", work: page1)

# Create a work with three files for page 2
page2 = Work.create(title:"Page 2 of The Raven")
Pcdmfile.create(name:"page2.txt", size: 50, url: "http://fedora/rest/raven/page2.txt", work: page2)
Pcdmfile.create(name:"page2.pdf", size: 50, url: "http://fedora/rest/raven/page2.pdf", work: page2)
Pcdmfile.create(name:"page2_thumb.jpg", size: 50, url: "http://fedora/rest/raven/page2_thumb.jpg", work: page2)

# Link the cover and page1/page to the Raven
WorkWork.create(parent: raven, child: cover)
WorkWork.create(parent: raven, child: page1)
WorkWork.create(parent: raven, child: page2)

# Fetch Poe's collection
poe = Collection.find_by_title("Books by Edgar Allan Poe")
raven = poe.works.first

# Display Raven's information
puts "Work: #{raven.title}"
raven.works.each do |proxy|
  child = proxy.child
  puts "\tincludes work: #{child.title}"
  child.files.each do |file|
    puts "\t\tincludes file: #{file.name}"
  end
end

