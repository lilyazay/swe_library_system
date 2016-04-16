Student.create!(:name=>"Lily Zaychik", :email=>"lilya@gmail.com", :password=>"lilya", :student_type=>"P")

Student.create!(:name=>"Connor Wilson", :email=>"connor@gmail.com", :password=>"connor", :student_type=>"P")

Student.create!(:name=>"Brendan Woods", :email=>"brendan@gmail.com", :password=>"brendan", :student_type=>"P")

Student.create!(:name=>"Joseph Wilkerson", :email=>"joseph@gmail.com", :password=>"joseph", :student_type=>"P")

Student.create!(:name=>"Hassan Pournaghshband", :email=>"hassan@gmail.com", :password=>"hassan", :student_type=>"P")

Student.create!(:name=>"Mickey Mouse", :email=>"mickey@gmail.com", :password=>"mickey", :student_type=>"U")

Student.create!(:name=>"Minnie Mouse", :email=>"minnie@gmail.com", :password=>"mini", :student_type=>"U")

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
  c.description = 'This is the tale of Scarlett O’Hara, the spoiled, manipulative daughter of a wealthy plantation owner, who arrives at young womanhood just in time to see the Civil War forever change her way of life. A sweeping story of tangled passion and courage, in the pages of Gone With the Wind, Margaret Mitchell brings to life the unforgettable characters that have captured readers for over seventy years.'
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
  c.description = "In this celebrated work, his only novel, Wilde forged a devastating portrait of the effects of evil and debauchery on a young aesthete in late-19th-century England. Combining elements of the Gothic horror novel and decadent French fiction, the book centers on a striking premise: As Dorian Gray sinks into a life of crime and gross sensuality, his body retains perfect youth and vigor while his recently painted portrait grows day by day into a hideous record of evil, which he must keep hidden from the world. For over a century, this mesmerizing tale of horror and suspense has enjoyed wide popularity. It ranks as one of Wilde's most important creations and among the classic achievements of its kind."
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
  c.description = "A novel of intense power and intrigue, Jane Eyre has dazzled generations of readers with its depiction of a woman's quest for freedom. Having grown up an orphan in the home of her cruel aunt and at a harsh charity school, Jane Eyre becomes an independent and spirited survivor-qualities that serve her well as governess at Thornfield Hall. But when she finds love with her sardonic employer, Rochester, the discovery of his terrible secret forces her to make a choice. Should she stay with him whatever the consequences or follow her convictions, even if it means leaving her beloved?"
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
  c.description = "Wuthering Heights is Emily Brontë's first and only published novel, written between October 1845 and June 1846, and published in 1847 under the pseudonym Ellis Bell; Brontë died the following year, aged 30. The decision to publish came after the success of her sister Charlotte's novel, Jane Eyre. After Emily's death, Charlotte edited the manuscript of Wuthering Heights, and arranged for the edited version to be published as a posthumous second edition in 1850. Wuthering Heights is the name of the farmhouse where the story unfolds. The book's core theme is the destructive effect of jealousy and vengefulness both on the jealous or vengeful individuals and on their communities."
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
  c.description = "First published in 1818, Persuasion was Jane Austen's last work. Its mellow character and autumnal tone have long made it a favorite with Austen readers. Set in Somersetshire and Bath, the novel revolves around the lives and love affair of Sir Walter Elliot, his daughters Elizabeth, Anne, and Mary, and various in-laws, friends, suitors, and other characters, In Anne Elliot, the author created perhaps her sweetest, most appealing heroine.
At the center of the novel is Anne's thwarted romance with Captain Frederick Wentworth, a navy man Anne met and fell in love with when she was 19. At the time, Wentworth was deemed an unsuitable match and Anne was forced to break off the relationship. Eight years later, however, they meet again. By this time Captain Wentworth has made his fortune in the navy and is an attractive 'catch.' However, Anne is now uncertain about his feelings for her."
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
  c.description = "During an eventful season at Bath, young, naïve Catherine Morland experiences the joys of fashionable society for the first time. She is delighted with her new acquaintances: flirtatious Isabella, who shares Catherine's love of Gothic romance and horror, and sophisticated Henry and Eleanor Tilney, who invite her to their father's mysterious house, Northanger Abbey. There, her imagination influenced by novels of sensation and intrigue, Catherine imagines terrible crimes committed by General Tilney. With its broad comedy and irrepressible heroine, this is the most youthful and and optimistic of Jane Austen's works."
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
  c.description = "Discovered in the attic in which she spent the last years of her life, Anne Frank's remarkable diary has since become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit. In 1942, with Nazis occupying Holland, a thirteen-year-old Jewish girl and her family fled their home in Amsterdam and went into hiding. For the next two years, until their whereabouts were betrayed to the Gestapo, they and another family lived cloistered in the 'Secret Annex' of an old office building. Cut off from the outside world, they faced hunger, boredom, the constant cruelties of living in confined quarters, and the ever-present threat of discovery and death. In her diary Anne Frank recorded vivid impressions of her experiences during this period. By turns thoughtful, moving, and amusing, her account offers a fascinating commentary on human courage and frailty and a compelling self-portrait of a sensitive and spirited young woman whose promise was tragically cut short."
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
  c.description = "Edith Hahn was an outspoken young woman in Vienna when the Gestapo forced her into a ghetto and then into a slave labor camp. When she returned home months later, she knew she would become a hunted woman and went underground. With the help of a Christian friend, she emerged in Munich as Grete Denner. There she met Werner Vetter, a Nazi Party member who fell in love with her. Despite Edith's protests and even her eventual confession that she was Jewish, he married her and kept her identity a secret."
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
  c.description = 'Since it was originally published in 1994, The Oz Principle has sold nearly 600,000 copies and become the worldwide bible on accountability. Through its practical and invaluable advice, thousands of companies have learned just how vital personal and organizational accountability is for a company to achieve and maintain its best results. '
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
  c.description = 'At thirty-one, Noah Calhoun, back in coastal North Carolina after World War II, is haunted by images of the girl he lost more than a decade earlier. At twenty-nine, socialite Allie Nelson is about to marry a wealthy lawyer, but she cannot stop thinking about the boy who long ago stole her heart. Thus begins the story of a love so enduring and deep it can turn tragedy into triumph, and may even have the power to create a miracle...'
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
  c.description = "Aibileen is a black maid in 1962 Jackson, Mississippi, who's always taken orders quietly, but lately she's unable to hold her bitterness back. Her friend Minny has never held her tongue but now must somehow keep secrets about her employer that leave her speechless. White socialite Skeeter just graduated college. She's full of ambition, but without a husband, she's considered a failure. Together, these seemingly different women join together to write a tell-all book about work as a black maid in the South, that could forever alter their destinies and the life of a small town..."
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
  c.description = 'The Great Gatsby, F. Scott Fitzgerald’s third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted “gin was the national drink and sex the national obsession,” it is an exquisitely crafted tale of America in the 1920s.'
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
  c.description = "De Rosnay's U.S. debut fictionalizes the 1942 Paris roundups and deportations, in which thousands of Jewish families were arrested, held at the Vélodrome d'Hiver outside the city, then transported to Auschwitz. Forty-five-year-old Julia Jarmond, American by birth, moved to Paris when she was 20 and is married to the arrogant, unfaithful Bertrand Tézac, with whom she has an 11-year-old daughter. Julia writes for an American magazine and her editor assigns her to cover the 60th anniversary of the Vél' d'Hiv' roundups. Julia soon learns that the apartment she and Bertrand plan to move into was acquired by Bertrand's family when its Jewish occupants were dispossessed and deported 60 years before. She resolves to find out what happened to the former occupants: Wladyslaw and Rywka Starzynski, parents of 10-year-old Sarah and four-year-old Michel. The more Julia discovers—especially about Sarah, the only member of the Starzynski family to survive—the more she uncovers about Bertrand's family, about France and, finally, herself."
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
  c.description = "Grown-up Meg, tomboyish Jo, timid Beth, and precocious Amy. The four March sisters couldn't be more different. But with their father away at war, and their mother working to support the family, they have to rely on one another. Whether they're putting on a play, forming a secret society, or celebrating Christmas, there's one thing they can't help wondering: Will Father return home safely?"
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
  c.description = 'El consejo de un abogado a sus hijos mientras él defiende el verdadero ruiseñor de la novela clásica de Harper Lee ―un hombre negro acusado de violar a una niña blanca. A través de los ojos de Jem y Scout Finch, Harper Lee explora con humor y honestidad inquebrantable la irracionalidad de la actitud de los adultos hacia la raza y la clase en las profundidades del sur en la década de 1930. La conciencia de una ciudad impregnada de prejuicios, violencia e hipocresía se enfrenta con la resistencia y heroísmo silencioso de la lucha de un hombre por la justicia, pero el peso de la historia no tolera más allá de su límite. Uno de los clásicos más queridos de todos los tiempos, Matar a un ruiseñor ha ganado muchas distinciones desde su publicación original en 1960. Ha ganado el Premio Pulitzer, ha sido traducido a más de cuarenta idiomas, vendió más de cuarenta millones de copias en todo el mundo, y se han convertido en una popular película. También se nombró como la mejor novela del siglo XX por los bibliotecarios de todo el país (Library Journal). Compasivo, dramático y muy emotivo, Matar a un ruiseñor en esta nueva y moderna traducción lleva a los lectores a las raíces de la conducta humana, a la inocencia y experiencia, a la bondad y crueldad, al amor y odio, humor y patetismo.'
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
  c.description = "Роман «Анна Каренина» стал следующим крупным произведением Льва Николаевича Толстого, написанным после «Войны и мира». “... В «Анне Карениной» я люблю мысль семейную, в «Войне и мире» любил мысль народную...” — так сам Толстой говорил жене Софье Андреевне в 1877 году, заканчивая работу над романом."
end

Book.find_or_create_by!(isbn: '1463784422') do |c|
  c.title = 'Anna Karenina'
  c.author = 'Leo Tolstoy'
  c.genre = 'Classic Literature'
  c.shelving_code = '567T'
  c.publisher = 'CreateSpace'
  c.language = 'English'
  c.available = true
  c.late = false
  c.description = "Considered by some to be the greatest novel ever written, Anna Karenina is Tolstoy's classic tale of love and adultery set against the backdrop of high society in Moscow and Saint Petersburg. A rich and complex masterpiece, the novel charts the disastrous course of a love affair between Anna, a beautiful married woman, and Count Vronsky, a wealthy army officer. Tolstoy seamlessly weaves together the lives of dozens of characters, and in doing so captures a breathtaking tapestry of late-nineteenth-century Russian society."
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
  c.description = "No one ever said life was easy. But Ponyboy is pretty sure that he's got things figured out. He knows that he can count on his brothers, Darry and Sodapop. And he knows that he can count on his friends—true friends who would do anything for him, like Johnny and Two-Bit. And when it comes to the Socs—a vicious gang of rich kids who enjoy beating up on 'greasers' like him and his friends—he knows that he can count on them for trouble. But one night someone takes things too far, and Ponyboy's world is turned upside down."
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
  c.description = 'Ten years ago, Anthony Horowitz introduced the world to Alex Rider . . . and now his debut mission is back in a special fully loaded anniversary edition! Packed with bonus material - including a brand new Alex Rider short story, a letter from Anthony Horowitz, and much more!'
  c.available = true
  c.late = false
end

Book.find_or_create_by!(isbn: '0307474720') do |c|
  c.title = 'Cien años de soledad (One Hundred Year of Solitude)'
  c.author = 'Gabriel García Márquez'
  c.genre = 'Fiction'
  c.shelving_code = '123H'
  c.publisher = 'Vintage Espanol'
  c.language = 'Spanish'
  c.description = 'Con estas palabras empieza una novela ya legendaria en los anales de la literatura universal, una de las aventuras literarias más fascinantes del siglo xx. Millones de ejemplares de Cien años de soledad leídos en todas las lenguas y el Premio Nobel de Literatura coronando una obra que se había abierto paso a “boca a boca” —como gusta decir el escritor— son la más palpable demostración de que la aventura fabulosa de la familia Buendía-Iguarán, con sus milagros, fantasías, obsesiones, tragedias, incestos, adulterios, rebeldías, descubrimientos y condenas, representaba al mismo tiempo el mito y la historia, la tragedia y el amor del mundo entero.'
  c.available = true
  c.late = false
end
