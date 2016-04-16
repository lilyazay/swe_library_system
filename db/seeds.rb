# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create!(:name=>"Lily Zaychik", :email=>"lilya@gmail.com", :password=>"lilya", :student_type=>"P")

Student.create!(:name=>"Connor Wilson", :email=>"connor@gmail.com", :password=>"connor", :student_type=>"P")

Student.create!(:name=>"Brendan Woods", :email=>"brendan@gmail.com", :password=>"brendan", :student_type=>"P")

Student.create!(:name=>"Joseph Wilkerson", :email=>"joseph@gmail.com", :password=>"joseph", :student_type=>"P")

Student.create!(:name=>"Hassan Pournaghshband", :email=>"hassan@gmail.com", :password=>"hassan", :student_type=>"P")

Student.create!(:name=>"Mickey Mouse", :email=>"mickey@gmail.com", :password=>"mickey", :student_type=>"U")

Student.create!(:name=>"Mini Mouse", :email=>"mini@gmail.com", :password=>"mini", :student_type=>"U")

Student.create!(:name=>"Donald Duck", :email=>"donald@gmail.com", :password=>"donald", :student_type=>"U")

Student.create!(:name=>"Bilbo Baggins", :email=>"bilbo@gmail.com", :password=>"bilbo", :student_type=>"U")

Student.create!(:name=>"Son Goku", :email=>"goku@gmail.com", :password=>"goku", :student_type=>"U")

Student.create!(:name=>"Bruce Wane", :email=>"bruce@gmail.com", :password=>"bruce", :student_type=>"U")

Student.create!(:name=>"Wade Wilson", :email=>"wade@gmail.com", :password=>"wade", :student_type=>"U")

Student.create!(:name=>"Slade Wilson", :email=>"deathstroke@gmail.com", :password=>"slade", :student_type=>"U")

Student.create!(:name=>"Jason Todd", :email=>"jason@gmail.com", :password=>"jason", :student_type=>"U")

Student.create!(:name=>"Diana Prince", :email=>"diana@gmail.com", :password=>"diana", :student_type=>"U")

Student.create!(:name=>"Laura Kinney", :email=>"laura@gmail.com", :password=>"laura", :student_type=>"U")

Student.create!(:name=>"Elisabeth Braddock", :email=>"elisabeth@gmail.com", :password=>"elisabeth", :student_type=>"U")

Book.find_or_create_by!(isbn: '1451635621') do |c|
  c.title = 'Gone with the Wind'
  c.author = 'Margaret Mitchell'
  c.genre = 'Classic Literature'
  c.shelving_code = '567M'
  c.publisher = 'Scribner'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = '<description was blown away in the wind>'
end

Book.find_or_create_by!(isbn: '1515190994') do |c|
  c.title = 'The Picture of Dorian Gray'
  c.author = 'Oscar Wilde'
  c.genre = 'Classic Literature'
  c.shelving_code = '567W'
  c.publisher = 'CreateSpace Independent Publishing Platform'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = "That's a sweet picture, fam."
end

Book.find_or_create_by!(isbn: '0141441143') do |c|
  c.title = 'Jane Eyre'
  c.author = 'Charlotte Bronte'
  c.genre = 'Classic Literature'
  c.shelving_code = '567B'
  c.publisher = 'Penguin Classics'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'Just lots of run-on sentences.'
end

Book.find_or_create_by!(isbn: '0141439556') do |c|
  c.title = 'Wuthering Heights'
  c.author = 'Emily Bronte'
  c.genre = 'Classic Literature'
  c.shelving_code = '567B'
  c.publisher = 'Penguin Classics'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = "Damn, that's pretty high up there!"
end

Book.find_or_create_by!(isbn: '0486295559') do |c|
  c.title = 'Persuasion'
  c.author = 'Jane Austen'
  c.genre = 'Classic Literature'
  c.shelving_code = '567A'
  c.publisher = 'Dover Publications'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = "It's a good book. Trust me. I can be very persuasive."
end

Book.find_or_create_by!(isbn: '0141439793') do |c|
  c.title = 'Northanger Abbey'
  c.author = 'Jane Austen'
  c.genre = 'Classic Literature'
  c.shelving_code = '567A'
  c.publisher = 'Penguin Classics'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = "Don't NorthANGER Abbey. You wouldn't like her when she's angry."
end

Book.find_or_create_by!(isbn: '0553296981') do |c|
  c.title = 'Anne Frank: The Diary of a Young Girl'
  c.author = 'Anne Frank'
  c.genre = 'Biographies'
  c.shelving_code = '123F'
  c.publisher = 'Bantam'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'She was Jewish.'
end

Book.find_or_create_by!(isbn: '0062378082') do |c|
  c.title = "The Nazi Officer's Wife"
  c.author = 'Edith H. Beer'
  c.genre = 'Biographies'
  c.shelving_code = '123B'
  c.publisher = 'William Morrow Paperbacks'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'They got a divorce.'
end

Book.find_or_create_by!(isbn: '1591843480') do |c|
  c.title = 'The Oz Principle: Getting Results Through Individual and Organizational Accountability'
  c.author = 'Roger Connors'
  c.author = 'Tom Smith'
  c.author = 'Craig Hickman'
  c.genre = 'Business'
  c.shelving_code = '150C'
  c.publisher = 'Portfolio'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'Has nothing to do with a Wizard.'
end

Book.find_or_create_by!(isbn: '1455582875') do |c|
  c.title = 'The Notebook'
  c.author = 'Nicholas Sparks'
  c.genre = 'Fiction'
  c.shelving_code = '140S'
  c.publisher = 'Grand Central Publishing'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'Just go watch the movie.'
end

Book.find_or_create_by!(isbn: '0425232204') do |c|
  c.title = 'The Help'
  c.author = 'Kathryn Stockett'
  c.genre = 'Fiction'
  c.shelving_code = '140B'
  c.publisher = 'Berkley'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'Skeeter is a dumb name.'
end

Book.find_or_create_by!(isbn: '0743273567') do |c|
  c.title = 'The Great Gatsby'
  c.author = 'F. Scott Fitzgerald'
  c.genre = 'Classic Literature'
  c.shelving_code = '567F'
  c.publisher = 'Scribner'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'Leo finally got an Oscar, but not for this movie.'
end

Book.find_or_create_by!(isbn: '0312370849') do |c|
  c.title = "Sarah's Key"
  c.author = 'Tatiana de Rosnay'
  c.genre = 'Fiction'
  c.shelving_code = '140R'
  c.publisher = "St. Martin's Griffin"
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = "It's a skeleton key now, because she's dead."
end

Book.find_or_create_by!(isbn: '1503280292') do |c|
  c.title = 'Little Women'
  c.author = 'Louisa May Alcott'
  c.genre = 'Young Adult'
  c.shelving_code = '100A'
  c.publisher = 'CreateSpace Independent Publishing Platform'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = 'A little woman with a big heart.'
end

Book.find_or_create_by!(isbn: '0718076370') do |c|
  c.title = 'Matar a un ruiseñor (To Kill a Mockingbird)'
  c.author = 'Harper Lee'
  c.genre = 'Young Adult'
  c.shelving_code = '100L'
  c.publisher = 'HarperCollins Español'
  c.language = 'Spanish'
  c.available = true
  c.late = false
  c.description = 'Try throwing a rock at it!'
end

Book.find_or_create_by!(isbn: '1463784422') do |c|
  c.title = 'Анна Каренина (Anna Karenina)'
  c.author = 'Leo Tolstoy'
  c.genre = 'Classic Literature'
  c.shelving_code = '567T'
  c.publisher = 'CreateSpace'
  c.language = 'Russian'
  c.available = true
  c.late = false
  c.description = "I don't speak Russian, so good luck."
end

Book.find_or_create_by!(isbn: '0618968636') do |c|
  c.title = 'The Hobbit'
  c.author = ' Christopher Tolkien'
  c.genre = 'Fiction'
  c.shelving_code = '140T'
  c.publisher = 'CreateSpace'
  c.language = 'English'
  c.description = "If you care for journeys there and back, out of the comfortable Western world, over the edge of the Wild, and home again, and can take an interest in a humble hero (blessed with a little wisdom and a little courage and considerable good luck), here is a record of such a journey and such a traveler. The period is the ancient time between the age of Faerie and the dominion of men, when the famous forest of Mirkwood was still standing, and the mountains were full of danger. In following the path of this humble adventurer, you will learn by the way (as he did) -- if you do not already know all about these things -- much about trolls, goblins, dwarves, and elves, and get some glimpses into the history and politics of a neglected but important period. For Mr. Bilbo Baggins visited various notable persons; conversed with the dragon, Smaug the Magnificent; and was present, rather unwillingly, at the Battle of the Five Armies. This is all the more remarkable, since he was a hobbit. Hobbits have hitherto been passed over in history and legend, perhaps because they as a rule preferred comfort to excitement. "
  c.available = true
  c.late = false
end

Book.find_or_create_by!(isbn: '0451208633') do |c|
  c.title = 'The Divine Comedy (The Inferno, The Purgatorio, and The Paradiso)'
  c.author = 'Dante Alighieri'
  c.genre = 'Classic Literature'
  c.shelving_code = '567A'
  c.publisher = 'NAL'
  c.language = 'English'
  c.description = "Dante Alighieri's poetic masterpiece, The Divine Comedy, is a moving human drama, an unforgettable visionary journey through the infinite torment of Hell, up the arduous slopes of Purgatory, and on to the glorious realm of Paradise—the sphere of universal harmony and eternal salvation."
  c.available = true
  c.late = false
end

Book.find_or_create_by!(isbn: '0385474547') do |c|
  c.title = 'Things Fall Apart'
  c.author = 'Chinua Achebe'
  c.genre = 'Nonfiction'
  c.shelving_code = '123A'
  c.publisher = 'Anchor'
  c.language = 'English'
  c.description = "Things Fall Apart tells two intertwining stories, both centering on Okonkwo, a 'strong man' of an Ibo village in Nigeria. The first, a powerful fable of the immemorial conflict between the individual and society, traces Okonkwo’s fall from grace with the tribal world. The second, as modern as the first is ancient, concerns the clash of cultures and the destruction of Okonkwo's world with the arrival of aggressive European missionaries. These perfectly harmonized twin dramas are informed by an awareness capable of encompassing at once the life of nature, human history, and the mysterious compulsions of the soul."
  c.available = true
  c.late = false
end

Book.find_or_create_by!(isbn: '014240733X') do |c|
  c.title = 'The Outsiders'
  c.author = 'S. E. Hinton'
  c.genre = 'Fiction'
  c.shelving_code = '123B'
  c.publisher = 'Speak; Platinum ed. edition'
  c.language = 'English'
  c.description = "No one ever said life was easy. But Ponyboy is pretty sure that he's got things figured out. He knows that he can count on his brothers, Darry and Sodapop. And he knows that he can count on his friends—true friends who would do anything for him, like Johnny and Two-Bit. And when it comes to the Socs—a vicious gang of rich kids who enjoy beating up on "greasers" like him and his friends—he knows that he can count on them for trouble. But one night someone takes things too far, and Ponyboy's world is turned upside down.."
  c.available = true
  c.late = false
end

Book.find_or_create_by!(isbn: '0142406112') do |c|
  c.title = 'Stormbreaker'
  c.author = 'Anthony Horowitz'
  c.genre = 'Fiction'
  c.shelving_code = '123H'
  c.publisher = 'Puffin Books'
  c.language = 'English'
  c.description = "Ten years ago, Anthony Horowitz introduced the world to Alex Rider . . . and now his debut mission is back in a special fully loaded anniversary edition! Packed with bonus material - including a brand new Alex Rider short story, a letter from Anthony Horowitz, and much more!"
  c.available = true
  c.late = false
end
