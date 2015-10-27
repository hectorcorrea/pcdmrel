# Create a bunch of collections
by_size = Collection.create(title:"Books by size")
by_color = Collection.create(title:"Books by color")
red = Collection.create(title:"Red Books")
blue = Collection.create(title:"Blue Books")
short = Collection.create(title:"Short Books")
tall = Collection.create(title:"Tall Books")

# Relate books by size to the "Books by size collection"
cc = CollColl.create(parent:by_size, child:large)
cc = CollColl.create(parent:by_size, child:small)

# Relate books by color to the "Books by color collection"
cc = CollColl.create(parent:by_color, child:red)
cc = CollColl.create(parent:by_color, child:blue)



