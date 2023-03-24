class QuizzerViewModel {
  List questions = [
    Question('The capital of Australia is Sydney.', false),
    Question('The Earth is flat.', false),
    Question('The chemical symbol for gold is Gd.', false),
    Question('The Mona Lisa was painted by Leonardo da Vinci.', true),
    Question('Dolphins are mammals.', true),
    Question('The Great Wall of China can be seen from space.', false),
    Question('The planet Mars has two moons.', true),
    Question('The Statue of Liberty was a gift from France to Canada.', false),
    Question('The human body has 206 bones.', true),
    Question('The Eiffel Tower is located in London.', false),
    Question('The first iPhone was released in 2007.', true),
    Question('The Harry Potter series was written by J.K. Rowling.', true),
    Question('A group of crows is called a murder.', true),
    Question('Mount Everest is the tallest mountain in the world.', true),
    Question('The sun is a planet.', false),
    Question(
        'The Great Barrier Reef is the largest coral reef system in the world.',
        true),
    Question('Barack Obama was the 44th president of the United States.', true),
    Question('The human heart has four chambers.', true),
    Question('The Mona Lisa is currently housed in the Louvre Museum in Paris.',
        true),
    Question('Humans only use 10% of their brains.', false),
    Question('The moon is made of cheese.', false),
    Question('Albert Einstein was a famous musician.', false),
    Question(
        'The Great Wall of China is the only man-made structure visible from space.',
        false),
    Question('A tomato is a fruit.', true),
    Question('Cats have five legs.', false),
    Question('The Earth orbits around the sun.', true),
    Question('The tallest mammal is the giraffe.', true),
    Question('The human nose can detect over 10,000 different scents.', true),
    Question('Kangaroos can only move their hind legs together.', false),
    Question('The smallest country in the world is Vatican City.', true),
    Question('Water boils at 100 degrees Celsius at sea level.', true),
    Question('The planet Jupiter is larger than Earth.', true),
    Question('A crocodile can stick out its tongue.', false),
    Question('The human brain stops developing at age 5.', false),
    Question('The United States has 50 states.', true),
    Question('The human eye can distinguish over 10 million colors.', true),
    Question('A group of owls is called a parliament.', true),
    Question('The Leaning Tower of Pisa leans to the left.', false),
    Question('Dogs are colorblind.', false),
    Question('The longest river in the world is the Nile River.', true),
    Question('The human body has only one kidney.', false),
    Question('The Declaration of Independence was signed in 1776.', true),
    Question('Elephants are the only mammals that can\'t jump.', true),
    Question(
        'The Great Sphinx of Giza has the head of a man and the body of a lion.',
        true),
    Question('The human body can regenerate lost limbs.', false),
    Question('The fastest land animal is the cheetah.', true),
    Question(
        'The Amazon rainforest is the largest rainforest in the world.', true),
    Question('The human tongue is the strongest muscle in the body.', false),
    Question('The Pacific Ocean is the largest ocean in the world.', true),
    Question('The national bird of the United States is the eagle.', true),
    Question(
        'The Great Barrier Reef is located off the coast of Australia.', true),
    Question('The human body has more than 200 bones.', false),
    Question('The Statue of Liberty is located in New York Harbor.', true),
    Question('A group of lions is called a pride.', true),
    Question('The human body contains more bacteria than human cells.', true),
    Question('The planet Venus is the closest planet to Earth.', false),
    Question('The human body can survive without food for three weeks.', true),
    Question('The United Nations has 193 member countries.', true),
    Question('A group of flamingos is called a flock.', true),
    Question('The United States has never had a female president.', false),
    Question(
        'The human liver is the largest internal organ in the body.', true),
    Question('The Great Wall of China was built in the 14th century.', false),
    Question(
        'The human body has three types of muscle: skeletal, smooth, and cardiac.',
        true),
    Question('The country with the most spoken languages is India.', false),
    Question('A group of rhinoceroses is called a herd.', true),
    Question('The smallest planet in our solar system is Mercury.', true),
    Question('The longest bone in the human body is the femur.', true),
    Question('The country of Egypt is located in South America.', false),
    Question('The human body can survive without water for one week.', true),
    Question('A group of wolves is called a pack.', true),
    Question('The currency of Japan is the yen.', true),
    Question(
        'The planet Neptune is named after the Roman god of the sea.', true),
    Question(
        'The human stomach produces hydrochloric acid to help digest food.',
        true),
    Question('The largest organ in the human body is the skin.', true),
    Question('A group of kangaroos is called a mob.', true),
    Question(
        'The Great Pyramid of Giza is the oldest of the Seven Wonders of the Ancient World.',
        true),
    Question(
        'The human brain contains approximately 100 billion neurons.', true),
    Question(
        'The smallest country in Europe by land area is Luxembourg.', true),
    Question('A group of ants is called a colony.', true),
    Question(
        'The country of Canada has two official languages: English and French.',
        true),
    Question(
        'The human body has four types of teeth: incisors, canines, premolars, and molars.',
        true),
    Question(
        'The planet Saturn has the most moons of any planet in our solar system.',
        true),
    Question(
        'The African elephant is the largest land animal in the world.', true),
    Question('The human body has 12 pairs of cranial nerves.', true),
    Question(
        'The Great Barrier Reef is the only living thing visible from space.',
        false),
    Question(
        'The country of Brazil is the largest country in South America by land area.',
        true),
    Question(
        'The human skeleton is divided into three main parts: the skull, the torso, and the limbs.',
        true),
    Question('The country of Russia spans 11 time zones.', true),
    Question('A group of geese is called a gaggle.', true),
    Question(
        'The human body has six main types of nutrients: carbohydrates, proteins, fats, vitamins, minerals, and water.',
        true),
    Question(
        'The planet Uranus is named after the Greek god of the sky.', true),
    Question('The country of Mexico is located in Central America.', false),
    Question('The human body has four chambers in the heart.', true),
    Question(
        'The country of Australia is both a country and a continent.', true),
    Question('The planet Mars has two moons, Phobos and Deimos.', true),
    Question(
        'The human body can produce vitamin D when exposed to sunlight.', true),
    Question('A group of bees is called a swarm.', true),
    Question('The country of South Africa has three capital cities.', false),
    Question('The human body has the ability to heal itself.', true),
    Question(
        'The planet Jupiter is the largest planet in our solar system.', true),
    Question(
        'The human body has two types of sweat glands: eccrine and apocrine.',
        true),
    Question('The country of Iceland is located in the Arctic Circle.', true),
    Question('The human body can blink up to 20 times per minute.', true),
    Question('A group of owls is called a parliament.', true),
    Question('The planet Pluto is considered a dwarf planet.', true),
    Question(
        'The human body has five senses: sight, hearing, taste, smell, and touch.',
        true),
    Question('The country of Peru is located in South America.', true),
    Question('The human body has two lungs.', true),
    Question(
        'The planet Earth is the only known planet with liquid water on its surface.',
        true),
    Question('A group of jellyfish is called a smack.', true),
    Question(
        'The country of Japan is an archipelago, consisting of more than 6,800 islands.',
        true),
    Question(
        'The human body has the ability to regenerate liver tissue.', true),
    Question(
        'The planet Venus is named after the Roman goddess of love and beauty.',
        true),
    Question('The country of Greece is located in Asia.', false),
    Question(
        'The human body has an average temperature of 98.6 degrees Fahrenheit.',
        true),
    Question('A group of seagulls is called a flock.', true),
    Question('The planet Mercury has no atmosphere.', true),
    Question(
        'The country of Argentina is the eighth largest country in the world by land area.',
        true),
    Question('The human body has the ability to regrow fingertips.', true),
    Question('A group of dolphins is called a pod.', true),
    Question('The planet Neptune was discovered in 1846.', true),
    Question('The country of Saudi Arabia is located on the African continent.',
        false),
    Question('The human body can produce more than 1 liter of saliva per day.',
        true),
    Question('A group of zebras is called a herd.', true),
    Question(
        'The planet Uranus has a blue-green color due to the presence of methane gas.',
        true),
    Question('The country of Colombia is located in South America.', true),
    Question('The human body has the ability to repair broken bones.', true),
    Question(
        'The planet Saturn is the second largest planet in our solar system.',
        true),
    Question('The country of Thailand is located in South Asia.', true),
    Question(
        'The human body can produce more than 2 million red blood cells per second.',
        true),
    Question('A group of crows is called a murder.', true)
  ];
}
