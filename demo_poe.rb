poe = Collection.create(title:"Books by Edgar Allan Poe")
raven = Work.create(title:"The Raven", collection: poe)

cover = Work.create(title:"Cover of The Raven")
page1 = Work.create(title:"Page 1 of The Raven")
page2 = Work.create(title:"Page 2 of The Raven")

WorkWork.create(parent: raven, child: cover)
WorkWork.create(parent: raven, child: page1)
WorkWork.create(parent: raven, child: page2)

poe = Collection.find_by_title("Books by Edgar Allan Poe")
raven = poe.works.first

raven.works.each {|proxy| puts proxy.child.title }
