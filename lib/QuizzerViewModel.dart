import 'dart:math';

class QuizzerViewModel {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('A capital da Austrália é Sydney.', false),
    Question('A Terra é plana.', false),
    Question('O símbolo químico do ouro é Au.', false),
    Question('A Mona Lisa foi pintada por Leonardo da Vinci.', true),
    Question('Golfinhos são mamíferos.', true),
    Question('A Grande Muralha da China pode ser vista do espaço.', false),
    Question('O planeta Marte tem duas luas.', true),
    Question('A Estátua da Liberdade foi um presente da França para o Canadá.',
        false),
    Question('O corpo humano tem 206 ossos.', true),
    Question('A Torre Eiffel está localizada em Londres.', false),
    Question('O primeiro iPhone foi lançado em 2007.', true),
    Question('A série Harry Potter foi escrita por J.K. Rowling.', true),
    Question('O Monte Everest é a montanha mais alta do mundo.', true),
    Question('O sol é um planeta.', false),
    Question(
        'A Grande Barreira de Coral é o maior sistema de recifes de coral do mundo.',
        true),
    Question('Barack Obama foi o 44º presidente dos Estados Unidos.', true),
    Question('O coração humano tem quatro câmaras.', true),
    Question(
        'A Mona Lisa está atualmente abrigada no Museu do Louvre em Paris.',
        true),
    Question('Os humanos usam apenas 10% de seus cérebros.', false),
    Question('A lua é feita de queijo.', false),
    Question('Albert Einstein era um músico famoso.', false),
    Question(
        'A Grande Muralha da China é a única estrutura feita pelo homem visível do espaço.',
        false),
    Question('Um tomate é um fruto.', true),
    Question('A Terra orbita em torno do sol.', true),
    Question('O mamífero mais alto é a girafa.', true),
    Question(
        'O nariz humano pode detectar mais de 10.000 aromas diferentes.', true),
    Question(
        'Os cangurus só conseguem mover as pernas traseiras juntas.', false),
    Question('O menor país do mundo é o Vaticano.', true),
    Question('A água ferve a 100 graus Celsius ao nível do mar.', true),
    Question('O planeta Júpiter é maior do que a Terra.', true),
    Question('Um crocodilo não consegue colocar a língua para fora.', false),
    Question(
        'O cérebro humano para de se desenvolver aos 5 anos de idade.', false),
    Question('Os Estados Unidos têm 50 estados.', true),
    Question(
        'O olho humano pode distinguir mais de 10 milhões de cores.', true),
    Question('Um grupo de corujas é chamado de "parlamento".', true),
    Question('Os cães são daltonicos.', false),
    Question('O rio mais longo do mundo é o Nilo.', true),
    Question('O corpo humano tem apenas um rim.', false),
    Question('A Declaração de Independência foi assinada em 1776.', true),
    Question(
        'Os elefantes são os únicos mamíferos que não conseguem pular.', true),
    Question(
        'A Grande Esfinge de Gizé tem a cabeça de um homem e o corpo de um leão.',
        true),
    Question('O corpo humano pode regenerar membros perdidos.', false),
    Question('O animal terrestre mais rápido é o chita.', true),
    Question(
        'A Floresta Amazônica é a maior floresta tropical do mundo.', true),
    Question('A língua humana não é o músculo mais forte do corpo.', false),
    Question('O Oceano Pacífico é o maior oceano do mundo.', true),
    Question('A ave nacional dos Estados Unidos é a águia.', true),
    Question(
        'A Grande Barreira de Corais está localizada na costa da Austrália.',
        true),
    Question('O corpo humano tem mais de 200 ossos.', false),
    Question(
        'A Estátua da Liberdade está localizada no porto de Nova York.', true),
    Question('Um grupo de leões é chamado de "orgulho".', true),
    Question(
        'O corpo humano contém mais bactérias do que células humanas.', true),
    Question('Vênus é o planeta mais próximo da Terra.', true),
    Question(
        'O corpo humano pode sobreviver sem comida por três semanas.', true),
    Question('As Nações Unidas têm 193 países membros.', true),
    Question('Um grupo de flamingos é chamado de "bando".', true),
    Question('Os Estados Unidos nunca tiveram uma presidente mulher.', false),
    Question('O fígado humano é o maior órgão interno do corpo.', true),
    Question(
        'A Grande Muralha da China não foi construída no século XIV.', false),
    Question(
        'O corpo humano tem três tipos de músculo: esquelético, liso e cardíaco.',
        true),
    Question('O país com mais idiomas falados não é a Índia.', false),
    Question('Um grupo de rinocerontes é chamado de "manada".', true),
    Question('O menor planeta do nosso sistema solar é Mercúrio.', true),
    Question('O osso mais longo do corpo humano é o fêmur.', true),
    Question('O país do Egito não está localizado na América do Sul.', false),
    Question('The human body can survive without water for one week.', true),
    Question('A group of wolves is called a pack.', true),
    Question('The currency of Japan is the yen.', true),
    Question(
        'The planet Neptune is named after the Roman god of the sea.', true),
    Question(
        'The human stomach produces hydrochloric acid to help digest food.',
        true),
    Question('O maior órgão do corpo humano é a pele.', true),
    Question('A group of kangaroos is called a mob.', true),
    Question(
        'A Grande Pirâmide de Gizé é a mais antiga das Sete Maravilhas do Mundo Antigo.',
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
        'O planeta Saturno tem a maior quantidade de luas de todos os planetas do nosso sistema solar.',
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
        'O corpo humano tem seis principais tipos de nutrientes: carboidratos, proteínas, gorduras, vitaminas, minerais e água.',
        true),
    Question('O planeta Urano é nomeado após o deus grego do céu.', true),
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
    Question(
        'O corpo humano tem a capacidade de regenerar pontas de dedos.', true),
    Question('Um grupo de golfinhos é chamado de "cardume".', false),
    Question('O planeta Netuno foi descoberto em 1846.', true),
    Question(
        'O país Arábia Saudita está localizado no continente africano.', false),
    Question('O corpo humano pode produzir mais de 1 litro de saliva por dia.',
        true),
    Question('Um grupo de zebras é chamado de "manada".', true),
    Question(
        'O planeta Urano tem uma cor azul-esverdeada devido à presença de gás metano.',
        true),
    Question('O país Colômbia está localizado na América do Sul.', true),
    Question(
        'O corpo humano tem a capacidade de reparar ossos quebrados.', true),
    Question(
        'O planeta Saturno é o segundo maior planeta em nosso sistema solar.',
        true),
    Question('O país Tailândia está localizado no sudeste da Ásia.', true),
    Question(
        'O corpo humano pode produzir mais de 2 milhões de glóbulos vermelhos por segundo.',
        true),
    Question('Um grupo de corvos é chamado de "corvoada".', false),
    Question('The Great Wall of China is visible from space.', false),
    Question('The sun is the largest star in our galaxy.', false),
    Question('Mount Everest is the tallest mountain in the world.', true),
    Question('All species of penguins live in the Antarctic.', false),
    Question('Cats are the only animals that can purr.', false),
    Question('The Nile River is the longest river in the world.', false),
    Question(
        'A grande barreira de corais é a maior estrutura viva do planeta Terra.',
        true),
    Question('Marte é o planeta mais próximo da Terra?', false),
    Question('Cows only produce milk when they have given birth.', true),
    Question('The Eiffel Tower is taller than the Statue of Liberty.', false),
    Question('All snakes are venomous.', false),
    Question('A terra tem 2 satélites naturais.', true),
    Question('The Mediterranean Sea is the largest sea in the world.', false),
    Question('Bats are blind.', false),
    Question('The Atlantic Ocean is the largest ocean in the world.', false),
    Question('Goldfish have a memory of only a few seconds.', false),
    Question('The Dead Sea is the saltiest body of water in the world.', true),
    Question('All mushrooms are edible.', false),
    Question(
        'The Amazon Rainforest produces 20% of the world’s oxygen.', false),
    Question('Polar bears are only found in Antarctica.', false),
    Question('The human brain stops developing after the age of 18.', false),
    Question('The largest desert in the world is the Sahara Desert.', true),
    Question('All spiders are venomous.', false),
    Question('The human body has 206 bones.', true),
    Question('The biggest animal in the world is the blue whale.', true),
    Question('All sharks are man-eaters.', false),
    Question('The moon is made of cheese.', false),
    Question('Humans and chimpanzees share about 99% of their DNA.', true),
    Question('The longest snake in the world is the anaconda.', true),
    Question('Owls can turn their heads 360 degrees.', false),
    Question('All bats are blind.', false),
    Question('The human body is 70% water.', true),
    Question('All whales are herbivores.', false),
    Question('The highest waterfall in the world is Angel Falls in Venezuela.',
        true),
    Question(
        'All ants can lift objects that are heavier than their body weight.',
        true),
    Question('The Earth’s core is made of gold.', false),
    Question('Cats can see in complete darkness.', false),
    Question('The smallest country in the world is Monaco.', true),
    Question('Alligators are only found in the Americas.', true),
    Question('The fastest land animal in the world is the cheetah.', true),
    Question('Angelina Jolie is an Academy Award-winning actress.', true),
    Question('Taylor Swift has never won a Grammy Award.', false),
    Question(
        'Leonardo DiCaprio won an Oscar for his role in "The Revenant".', true),
    Question('Justin Timberlake was a member of the boy band NSYNC.', true),
    Question(
        'Beyonce was the lead singer of the girl group Destiny’s Child.', true),
    Question(
        'Jennifer Aniston played the role of Rachel Green in the TV show "Friends".',
        true),
    Question(
        'Lady Gaga’s real name is Stefani Joanne Angelina Germanotta.', true),
    Question('Brad Pitt has won two Academy Awards for acting.', true),
    Question('Katy Perry’s real name is Katheryn Elizabeth Hudson.', true),
    Question('Tom Cruise has never been married.', false),
    Question('Rihanna was born in Barbados.', true),
    Question('George Clooney has won three Academy Awards for acting.', false),
    Question('Adele’s debut album was called "21".', true),
    Question(
        'Miley Cyrus played the role of Hannah Montana on the Disney Channel show of the same name.',
        true),
    Question(
        'Jennifer Lawrence won an Academy Award for her role in "Silver Linings Playbook".',
        true),
    Question('Justin Bieber was discovered on YouTube.', true),
    Question(
        'Dwayne "The Rock" Johnson was a professional wrestler before becoming an actor.',
        true),
    Question(
        'Meryl Streep has won the most Academy Awards for acting of any actor or actress in history.',
        true),
    Question('Ariana Grande’s real name is Ariana Grande-Butera.', true),
    Question('Johnny Depp has never won an Academy Award for acting.', false),
    Question(
        'Selena Gomez started her career on the Disney Channel show "Wizards of Waverly Place".',
        true),
    Question(
        'Emma Watson played the role of Hermione Granger in the "Harry Potter" movies.',
        true),
    Question('John Legend’s real name is John Roger Stephens.', true),
    Question(
        'Matthew McConaughey won an Academy Award for his role in "Dallas Buyers Club".',
        true),
    Question('Kanye West was a producer before he became a rapper.', true),
    Question(
        'Scarlett Johansson played the role of Black Widow in the Marvel Cinematic Universe.',
        true),
    Question('Eminem’s real name is Marshall Bruce Mathers III.', true),
    Question(
        'Halle Berry was the first African American woman to win an Academy Award for Best Actress.',
        true),
    Question('Kendall Jenner is the highest-paid model in the world.', false),
    Question(
        'Hugh Jackman has never played the role of Wolverine in any movie.',
        false),
    Question('Brie Larson won an Academy Award for her role in "Room".', true),
    Question('Snoop Dogg’s real name is Calvin Cordozar Broadus Jr.', true),
    Question(
        'Reese Witherspoon played the role of Elle Woods in the "Legally Blonde" movies.',
        true),
    Question('Will Smith was a rapper before he became an actor.', true),
    Question(
        'Cameron Diaz played the role of Mary in "There’s Something About Mary".',
        true),
    Question('Ben Affleck has won an Academy Award for directing.', true),
    Question(
        'Amy Winehouse won five Grammy Awards for her album "Back to Black".',
        false),
    Question('O filme "Tropa de Elite" foi dirigido por José Padilha.', true),
    Question(
        'O ator Tom Hanks ganhou um Oscar pelo seu papel em "O Resgate do Soldado Ryan".',
        false),
    Question(
        'O filme "Cidade de Deus" foi indicado ao Oscar de Melhor Diretor.',
        true),
    Question(
        'O personagem Jack Sparrow é interpretado por Johnny Depp na franquia "Piratas do Caribe".',
        true),
    Question(
        'O filme "O Poderoso Chefão" foi dirigido por Martin Scorsese.', false),
    Question(
        'O ator Robin Williams dublou o personagem Gênio em "Aladdin".', true),
    Question('O filme "Tubarão" foi dirigido por Steven Spielberg.', true),
    Question(
        'O personagem Darth Vader é interpretado por James Earl Jones na franquia "Star Wars".',
        true),
    Question('O filme "O Iluminado" foi dirigido por Alfred Hitchcock.', false),
    Question(
        'O ator Heath Ledger ganhou um Oscar pelo seu papel em "Batman: O Cavaleiro das Trevas".',
        true),
    Question(
        'O filme "O Senhor dos Anéis: O Retorno do Rei" ganhou o Oscar de Melhor Filme em 2004.',
        true),
    Question(
        'O personagem Harry Potter é interpretado por Daniel Radcliffe na franquia "Harry Potter".',
        true),
    Question('O filme "Jurassic Park" foi dirigido por George Lucas.', false),
    Question(
        'O ator Leonardo DiCaprio ganhou um Oscar pelo seu papel em "O Lobo de Wall Street".',
        false),
    Question(
        'O filme "Era uma Vez em Hollywood" foi dirigido por Quentin Tarantino.',
        true),
    Question(
        'O personagem Gandalf é interpretado por Ian McKellen na franquia "O Senhor dos Anéis".',
        true),
    Question('O filme "Gladiador" foi dirigido por Ridley Scott.', true),
    Question(
        'O ator Johnny Depp ganhou um Oscar pelo seu papel em "Edward Mãos de Tesoura".',
        false),
    Question(
        'O filme "De Volta para o Futuro" foi dirigido por Steven Spielberg.',
        false),
    Question(
        'O personagem Coringa é interpretado por Jack Nicholson no filme "Batman" de 1989.',
        true),
    Question('O filme "Titanic" foi dirigido por James Cameron.', true),
    Question(
        'O ator Robert De Niro ganhou um Oscar pelo seu papel em "Taxi Driver".',
        false),
    Question('O filme "Clube da Luta" foi dirigido por David Fincher.', true),
    Question(
        'O personagem Wolverine é interpretado por Hugh Jackman na franquia "X-Men".',
        true),
    Question(
        'O filme "O Grande Lebowski" foi dirigido pelos irmãos Coen.', true),
    Question(
        'O ator Marlon Brando ganhou um Oscar pelo seu papel em "Um Bonde Chamado Desejo".',
        true),
    Question('O filme "Matrix" foi dirigido por Christopher Nolan.', false),
    Question(
        'O personagem Tony Stark é interpretado por Robert Downey Jr. na franquia "Os Vingadores".',
        true),
    Question('O filme "Kill Bill" foi dirigido por Quentin Tarantino.', true),
    Question(
        'Harry Potter é interpretado pelo ator Daniel Radcliffe nos filmes.',
        true),
    Question(
        'Hermione Granger é interpretada pela atriz Emma Watson nos filmes.',
        true),
    Question(
        'Ron Weasley é interpretado pelo ator Rupert Grint nos filmes.', true),
    Question('O nome completo de Voldemort é Tom Riddle.', false),
    Question(
        'A casa de Hogwarts à qual pertencem a maioria dos personagens principais é a Grifinória.',
        true),
    Question('O patrono de Harry Potter é um veado.', true),
    Question('O animal de estimação de Hermione é uma coruja chamada Edwiges.',
        true),
    Question('A varinha de Harry Potter contém uma pena de fênix.', true),
    Question(
        'A professora Minerva McGonagall é a chefe da casa Grifinória em Hogwarts.',
        true),
    Question('O elfo doméstico da família Malfoy é chamado de Dobby.', false),
    Question('O diretor de Hogwarts é Albus Dumbledore.', true),
    Question('O quadribol é o esporte favorito dos bruxos em Hogwarts.', true),
    Question('O melhor amigo de Harry Potter é Ron Weasley.', true),
    Question(
        'A casa de Hogwarts à qual pertencem os alunos mais inteligentes é a Corvinal.',
        true),
    Question(
        'O jogo de xadrez bruxo é um dos desafios que Harry, Ron e Hermione enfrentam no primeiro livro/filme.',
        true),
    Question(
        'Hagrid é um gigante que trabalha em Hogwarts como guarda-caça.', true),
    Question('O animal de estimação de Ron é um sapo chamado Trevor.', false),
    Question(
        'A relíquia da morte mais poderosa é a varinha das varinhas.', true),
    Question(
        'A casa de Hogwarts à qual pertencem os alunos mais ambiciosos é a Sonserina.',
        true),
    Question('Hermione é uma bruxa nascida-trouxa.', false),
    Question('A irmã mais nova de Ron Weasley se chama Ginny.', true),
    Question('O pai de Harry Potter se chamava James Potter.', true),
    Question('O tio de Harry Potter se chama Vernon Dursley.', true),
    Question('O primo de Harry Potter se chama Dudley Dursley.', true),
    Question(
        'A professora de adivinhação de Hogwarts se chama Sibila Trelawney.',
        true),
    Question('O irmão mais velho de Ron Weasley se chama Percy.', true),
    Question('O segundo nome de Hermione Granger é Jean.', true),
    Question(
        'O animal de estimação de Harry é uma coruja chamada Edwiges.', true),
    Question(
        'A escola rival de Hogwarts é a Escola de Magia e Bruxaria de Beauxbatons.',
        true),
    Question(
        'A escola rival de Hogwarts é a Escola de Magia e Bruxaria de Durmstrang.',
        true),
    Question('A tia de Harry Potter se chama Petúnia Dursley.', true),
    Question(
        'A cicatriz em forma de raio na testa de Harry Potter foi causada pelo feitiço "Avada Kedavra".',
        false),
    Question(
        'A cárie é uma doença que afeta apenas os dentes das crianças.', false),
    Question('A periodontite é uma doença que afeta as gengivas.', true),
    Question(
        'A placa bacteriana é uma camada de bactérias que se forma nos dentes.',
        true),
    Question(
        'A radiografia dental é um exame que permite visualizar as estruturas internas dos dentes.',
        true),
    Question(
        'A escovação dos dentes deve ser feita após todas as refeições.', true),
    Question('A gengivite é uma inflamação das raízes dos dentes.', false),
    Question(
        'A profilaxia dental é uma limpeza profunda dos dentes realizada pelo dentista.',
        true),
    Question(
        'O aparelho ortodôntico fixo é o único tipo de aparelho utilizado para corrigir problemas dentários.',
        false),
    Question(
        'O flúor é uma substância que ajuda a prevenir as cáries dentárias.',
        true),
    Question(
        'Os dentes permanentes começam a nascer por volta dos 6 anos de idade.',
        true),
    Question('A periodontite é uma doença que afeta apenas os dentes.', false),
    Question(
        'A gengivoplastia é um procedimento cirúrgico que remove parte da gengiva.',
        true),
    Question(
        'A odontologia restauradora é uma área da odontologia que se concentra na restauração dos dentes danificados.',
        true),
    Question(
        'O clareamento dental é um procedimento que pode causar sensibilidade nos dentes.',
        true),
    Question(
        'A ortodontia é a especialidade da odontologia que se concentra no alinhamento dos dentes e da mandíbula.',
        true),
    Question(
        'A sedação consciente é um método para aliviar a ansiedade durante procedimentos odontológicos.',
        true),
    Question(
        'A endodontia é a especialidade da odontologia que se concentra no tratamento dos tecidos internos dos dentes.',
        true),
    Question(
        'A placa bacteriana é uma camada de bactérias que se forma apenas nos dentes do fundo da boca.',
        false),
    Question(
        'O bruxismo é uma condição em que as pessoas rangem os dentes durante o sono.',
        true),
    Question(
        'A cirurgia ortognática é um procedimento que corrige problemas na estrutura óssea da face e da mandíbula.',
        true),
    Question(
        'A série Desencanto é produzida pela mesma equipe que criou "Os Simpsons" e "Futurama".',
        true),
    Question(
        'O nome completo da personagem principal em Desencanto é Princesa Tiabeanie Mariabeanie De La Rochambeau Grunkwitz.',
        true),
    Question(
        'O Brasil é o país com a maior extensão territorial da América do Sul.',
        true),
    Question('O deserto do Saara é o maior deserto do mundo.', false),
    Question(
        'A maior cadeia de montanhas do mundo é a Cordilheira dos Andes, na América do Sul.',
        false),
    Question('A capital da Colômbia é Bogotá.', true),
    Question('O Japão é formado por quatro ilhas principais.', false),
    Question('O Rio Amazonas é o maior rio do mundo em volume de água.', true),
    Question('A cidade de Istambul é dividida pelo Estreito de Bósforo.', true),
    Question(
        'A Grande Muralha da China é a estrutura construída pelo homem mais longa do mundo.',
        true),
    Question('O país com a maior população do mundo é a Índia.', false),
    Question(
        'O ponto mais baixo do planeta Terra é a Fossa das Marianas, no Oceano Pacífico.',
        true),
    Question(
        'A cidade de Nova York é a mais populosa dos Estados Unidos.', false),
    Question('O Equador atravessa a África de ponta a ponta.', false),
    Question('O Lago Vitória é o maior lago do mundo em extensão territorial.',
        false),
    Question('A cidade de Sidney é a capital da Austrália.', false),
    Question('O Monte Everest é a montanha mais alta do mundo.', true),
    Question('O clima predominante no Brasil é o tropical.', true),
    Question('A ilha de Madagascar fica localizada no Oceano Índico.', true),
    Question('A cidade de Veneza é cortada por diversos canais.', true),
    Question('O litoral brasileiro tem cerca de 7.500 km de extensão.', true),
    Question('A cidade de Pequim é a capital da Coreia do Sul.', false),
    Question('O Rio Nilo é o rio mais longo do mundo.', false),
    Question('A cidade de Londres é a capital da Inglaterra.', true),
    Question(
        'A cordilheira dos Andes se estende por diversos países da América do Sul.',
        true),
    Question(
        'A cidade do Rio de Janeiro é a capital do estado homônimo.', false),
    Question('O maior país do mundo em extensão territorial é a Rússia.', true),
    Question('A cidade de Amsterdã é a capital da Bélgica.', false),
    Question('O Monte Kilimanjaro é a montanha mais alta da África.', true),
    Question('A cidade de Roma é a capital da Itália.', true),
    Question(
        'O Canal do Panamá é uma importante via de navegação que liga os oceanos Atlântico e Pacífico.',
        true),
    Question('A cidade de Berlim é a capital da Alemanha.', true),
    Question(
        'A maior parte do território da China está localizada no hemisfério norte.',
        true),
    Question('A cidade de Moscou é a capital da Ucrânia.', false),
    Question(
        'O Rio Nilo nasce na Tanzânia e deságua no Mar Mediterrâneo.', true),
    Question('O filme "Cidadão Kane" foi lançado em 1941.', true),
    Question(
        'O filme "O Poderoso Chefão" foi dirigido por Martin Scorsese.', false),
    Question(
        'O filme "Forrest Gump - O Contador de Histórias" foi lançado em 1994.',
        true),
    Question('O ator Tom Hanks protagoniza o filme "O Terminal".', true),
    Question('O filme "Titanic" foi dirigido por James Cameron.', true),
    Question('O filme "Gladiador" se passa na Roma Antiga.', true),
    Question('O filme "Psicose" foi dirigido por Alfred Hitchcock.', true),
    Question(
        'O filme "E o Vento Levou" ganhou o Oscar de Melhor Filme em 1940.',
        true),
    Question('O filme "O Iluminado" foi dirigido por Stanley Kubrick.', true),
    Question('O filme "Laranja Mecânica" foi lançado em 1971.', true),
    Question('O Homem de Ferro é o primeiro filme do MCU.', true),
    Question(
        'O personagem Thanos aparece pela primeira vez em "Os Vingadores".',
        false),
    Question(
        'O ator Chris Evans interpreta o personagem Peter Parker/Homem-Aranha.',
        false),
    Question('O filme "Thor: Ragnarok" foi dirigido por Taika Waititi.', true),
    Question(
        'O personagem Viúva Negra é interpretado pela atriz Scarlett Johansson.',
        true),
    Question(
        'O ator Benedict Cumberbatch interpreta o personagem Doutor Estranho.',
        true),
    Question(
        'O filme "Vingadores: Guerra Infinita" foi lançado em 2017.', true),
    Question('O personagem Pantera Negra é o rei de Wakanda.', true),
    Question(
        'O personagem Nick Fury é interpretado pelo ator Samuel L. Jackson.',
        true),
    Question('O filme "Capitã Marvel" se passa nos anos 1990.', true),
    Question(
        'O personagem Gavião Arqueiro é interpretado pelo ator Jeremy Renner.',
        true),
    Question('O personagem Rocket Racoon é um guaxinim.', true),
    Question('O personagem Visão é interpretado pelo ator Paul Bettany.', true),
    Question(
        'O filme "Capitão América: O Primeiro Vingador" foi lançado em 2011.',
        true),
    Question('O personagem Soldado Invernal é o melhor amigo de Steve Rogers.',
        true),
    Question(
        'O personagem Thanos é o principal vilão da Saga do Infinito.', true),
    Question('O personagem Loki é irmão adotivo de Thor.', true),
    Question(
        'O filme "Homem-Formiga e a Vespa" foi lançado antes do filme "Vingadores: Guerra Infinita".',
        false),
    Question(
        'O personagem Homem-Formiga é interpretado pelo ator Paul Rudd.', true),
    Question(
        'O personagem Pantera Negra é interpretado pelo ator Chadwick Boseman.',
        true),
    Question(
        'O personagem Máquina de Combate é interpretado pelo ator Don Cheadle.',
        true),
    Question(
        'O personagem Ultron foi criado por Tony Stark e Bruce Banner.', true),
    Question(
        'O personagem Doutor Estranho é o Mago Supremo do universo.', true),
    Question('O filme "Homem de Ferro 3" foi dirigido por Jon Favreau.', false),
    Question('O personagem Yondu é um dos Guardiões da Galáxia.', true),
    Question('O personagem Thanos é derrotado no filme "Vingadores: Ultimato".',
        true),
    Question('O personagem Groot é interpretado pelo ator Vin Diesel.', true),
    Question(
        'O personagem Drax, o Destruidor é interpretado pelo ator Dave Bautista.',
        true),
    Question('O personagem Sam Wilson é o Falcão.', true),
    Question('O personagem Nick Fury perde um olho em "Capitã Marvel".', true),
    Question(
        'O personagem Visão é morto por Thanos em "Vingadores: Guerra Infinita".',
        true),
    Question(
        'O personagem Thanos usa a Manopla do Infinito para destruir metade do universo.',
        true),
    Question(
        'O personagem Tony Stark morre no final de "Vingadores: Ultimato".',
        true),
    Question(
        'O personagem Bruce Banner se transforma em Hulk quando fica com raiva.',
        true),
    Question('O personagem Darth Vader é o pai de Luke Skywalker.', true),
    Question('O planeta natal de Chewbacca é Kashyyyk.', true),
    Question(
        'O personagem Boba Fett aparece apenas na trilogia original de Star Wars.',
        false),
    Question(
        'A Estrela da Morte é uma base militar móvel construída pelo Império Galáctico.',
        false),
    Question(
        'Yoda é um Jedi da espécie alienígena conhecida como Twi\'lek.', false),
    Question('O sabre de luz de Luke Skywalker é verde.', true),
    Question('A Princesa Leia é irmã de Luke Skywalker.', true),
    Question('O personagem Han Solo é um caçador de recompensas.', false),
    Question(
        'O planeta desértico onde Luke Skywalker cresceu é Tatooine.', true),
    Question('Os Sith usam o lado sombrio da Força.', true),
    Question('O planeta natal de Obi-Wan Kenobi é Coruscant.', false),
    Question('O personagem Chewbacca é um Wookie.', true),
    Question('O líder da Aliança Rebelde é Mon Mothma.', true),
    Question(
        'O filme "Star Wars: Episódio IV - Uma Nova Esperança" foi lançado em 1977.',
        true),
    Question('O personagem R2-D2 é capaz de falar.', false),
    Question(
        'O vilão da trilogia original de Star Wars é Darth Sidious.', false),
    Question('O planeta onde o Templo Jedi foi construído é Yavin 4.', false),
    Question(
        'O personagem C-3PO foi construído pelo jovem Anakin Skywalker.', true),
    Question(
        'O personagem Darth Maul aparece apenas no filme "A Ameaça Fantasma".',
        true),
    Question(
        'A Ordem 66 é a ordem executiva dada aos clones para eliminar todos os Jedi.',
        true),
    Question('A General Grievous é um Jedi caído para o lado sombrio da Força.',
        false),
    Question('O planeta de origem de Mace Windu é Naboo.', false),
    Question('O personagem Lando Calrissian é o piloto do Millennium Falcon.',
        false),
    Question('O personagem Poe Dameron é um soldado da Resistência.', true),
    Question(
        'O planeta Hoth é conhecido por seu clima quente e desértico.', false),
    Question(
        'O personagem Kylo Ren é o filho de Han Solo e Leia Organa.', true),
    Question(
        'A última trilogia de Star Wars é composta pelos filmes "O Despertar da Força", "Os Últimos Jedi" e "A Ascensão Skywalker".',
        true),
    Question('O personagem BB-8 é um droide astromecânico.', true),
    Question(
        'O personagem Finn é um stormtrooper que desertou do Primeira Ordem.',
        true),
    Question('O planeta natal de Rey é Jakku.', true),
    Question(
        'O personagem Count Dooku é um Jedi caído para o lado sombrio da Força.',
        true),
    Question('O planeta Dagobah é o local onde Luke Skywalker treina com Yoda.',
        true),
    Question('O personagem Jango Fett é o pai de Boba Fett.', true),
    Question('O planeta de origem de Anakin Skywalker é Tatooine.', false),
    Question('O personagem Qui-Gon Jinn é um mestre Jedi.', true),
    Question('O personagem Palpatine é o líder do Império Galáctico.', true),
    Question(
        'A sitcom Seinfeld tem um episódio intitulado "The Betrayal" que é contado de trás para frente.',
        true),
    Question(
        'Friends é a sitcom americana de maior duração, com um total de 10 temporadas.',
        true),
    Question(
        'A sitcom How I Met Your Mother foi originalmente criada como um spin-off de Friends.',
        false),
    Question(
        'A sitcom The Office, tanto a versão americana quanto a britânica, foram criadas por Ricky Gervais.',
        false),
    Question(
        'A sitcom The Big Bang Theory foi criada por Chuck Lorre e Bill Prady.',
        true),
    Question(
        'A sitcom Friends teve um episódio inteiro filmado em preto e branco.',
        false),
    Question(
        'A sitcom Seinfeld tem um episódio que é centrado em um bolo de calda.',
        true),
    Question(
        'A sitcom The Big Bang Theory teve um spin-off intitulado "Young Sheldon".',
        true),
    Question('A sitcom The Office americana se passa em Scranton, Pensilvânia.',
        true),
    Question(
        'A sitcom Friends foi criada pelos mesmos produtores de Mad About You.',
        true),
    Question(
        'A sitcom Arrested Development teve sua primeira exibição na Fox em 2003.',
        true),
    Question(
        'A sitcom The Office britânica teve apenas duas temporadas.', true),
    Question('A sitcom Friends é ambientada em Chicago.', false),
    Question(
        'A sitcom Seinfeld tem um episódio intitulado "The Contest" que é centrado em uma aposta sobre quem pode ficar mais tempo sem se masturbar.',
        true),
    Question(
        'A sitcom The Big Bang Theory foi indicada a vários prêmios Emmy, mas nunca ganhou.',
        false),
    Question(
        'A sitcom The Office americana foi baseada em uma série britânica do mesmo nome.',
        true),
    Question(
        'A sitcom Friends tem um episódio que se passa inteiramente em um avião.',
        true),
    Question(
        'A sitcom Seinfeld foi criada por Jerry Seinfeld e Larry David.', true),
    Question(
        'A sitcom The Big Bang Theory tem um personagem principal chamado Sheldon Cooper.',
        true),
    Question('A sitcom How I Met Your Mother se passa em Nova York.', true),
    Question(
        'A sitcom Parks and Recreation foi criada por Greg Daniels e Michael Schur.',
        true),
    Question(
        'A sitcom The Office americana foi estrelada por Steve Carell no papel de Michael Scott.',
        true),
    Question(
        'A sitcom Friends tem um episódio centrado em um jogo de perguntas e respostas.',
        true),
    Question(
        'A sitcom Seinfeld tem um episódio intitulado "The Soup Nazi" que é centrado em um personagem de mesmo nome.',
        true),
    Question(
        'A sitcom The Big Bang Theory tem um personagem chamado Howard Wolowitz que trabalha como engenheiro em uma empresa aeroespacial.',
        true),
    Question(
        'A sitcom How I Met Your Mother tem um personagem principal chamado Ted Mosby.',
        true),
    Question(
        'A sitcom The Office britânica foi criada por Ricky Gervais e Stephen Merchant.',
        true),
    Question(
        'A sitcom Friends tem um episódio intitulado "The One with the Embryos" que é centrado em um jogo de perguntas e respostas.',
        true),
    Question(
        'A sitcom Seinfeld tem um episódio intitulado "The Junior Mint" que é centrado em um bolo de menta.',
        true),
    Question(
        'A sitcom The Big Bang Theory tem um personagem chamado Raj Koothrappali que tem dificuldades em falar com mulheres.',
        true),
    Question(
        'Na série Friends, o personagem Ross namorou todas as amigas de sua irmã, Monica.',
        false),
    Question(
        'Na série How I Met Your Mother, o personagem Ted Mosby é o narrador da história.',
        true),
    Question(
        'Na série Friends, a personagem Rachel Green nunca se casou durante as 10 temporadas.',
        false),
    Question(
        'Na série How I Met Your Mother, o personagem Barney Stinson nunca teve um relacionamento sério.',
        false),
    Question(
        'Na série Friends, o apartamento de Chandler e Joey fica no andar de cima do apartamento de Monica e Rachel.',
        false),
    Question(
        'Na série How I Met Your Mother, o personagem Robin Scherbatsky é uma jornalista de TV.',
        true),
    Question(
        'Na série Friends, o personagem Joey é conhecido por sempre falar a verdade.',
        false),
    Question(
        'Na série How I Met Your Mother, a personagem Lily Aldrin tem um amor platônico pelo personagem Robin Scherbatsky.',
        false),
    Question(
        'Na série Friends, o personagem Chandler trabalha em uma agência de publicidade.',
        true),
    Question(
        'Na série How I Met Your Mother, o personagem Marshall Eriksen é um advogado.',
        true),
    Question(
        'Na série Friends, a personagem Phoebe Buffay tem um irmão gêmeo chamado Ursula.',
        true),
    Question(
        'Na série How I Met Your Mother, a personagem Tracy McConnell é a mãe dos filhos de Ted Mosby.',
        true),
    Question(
        'Na série Friends, a personagem Monica Geller tem um histórico de perda de peso e luta contra a obesidade.',
        false),
    Question(
        'Na série How I Met Your Mother, o personagem Ted Mosby é de Minnesota.',
        true),
    Question(
        'Na série Friends, o personagem Ross Geller é um professor universitário de paleontologia.',
        true),
    Question(
        'Na série How I Met Your Mother, o personagem Barney Stinson é um executivo de sucesso em um banco.',
        true),
    Question(
        'Na série Friends, a personagem Rachel Green trabalha como garçonete em um café chamado Central Perk.',
        true),
    Question(
        'Na série How I Met Your Mother, o personagem Robin Scherbatsky é canadense.',
        true),
    Question(
        'Na série Friends, o personagem Joey Tribbiani é ator e estrela de sua própria série de TV.',
        true),
    Question(
        'Na série How I Met Your Mother, o personagem Marshall Eriksen é o melhor amigo de Ted Mosby.',
        true),
    Question('A cor do cabelo do Sr. Burns é preto', false),
    Question('Moe Szyslak tem uma tatuagem de uma mãe no braço', true),
    Question('A cidade de Springfield é baseada em Springfield, Oregon', false),
    Question('Krusty, o Palhaço, é o pai de Sideshow Bob', false),
    Question('Nenhum dos membros da família Simpson possui sangue RH negativo',
        true),
    Question(
        'A primeira aparição dos Simpsons foi em um programa de televisão de variedades',
        true),
    Question('O apelido do avô Simpson é "Abraham Lincoln Simpson"', false),
    Question(
        'O primeiro nome completo de Sideshow Bob é Robert Terwilliger', true),
    Question(
        'Os nomes dos personagens Krusty, o Palhaço e Sideshow Bob são baseados em pessoas reais',
        true),
    Question('O personagem Kent Brockman é um veterano de guerra', false),
    Question(
        'O cachorro dos Simpsons, o Ajudante de Papai Noel, é da raça Golden Retriever',
        false),
    Question(
        'Maggie Simpson já falou no episódio "Minha irmã, minha babá"', false),
    Question('O personagem Ned Flanders é um ex-hippie', true),
    Question('O nome completo do diretor Skinner é Seymour Skinner', true),
    Question(
        'O personagem do Milhouse é baseado em um amigo de infância do criador da série',
        true),
    Question('O personagem do Sr. Burns nasceu em 1931', false),
    Question(
        'O ator que dubla o personagem do Barney Gumble é um alcoólatra em recuperação',
        true),
    Question('A família Simpson é descendente de Leonardo da Vinci', false),
    Question(
        'O personagem do Moe Szyslak é dono de um bar chamado "Moe\'s Tavern"',
        true),
    Question(
        'O personagem do Ned Flanders foi inspirado em um vizinho do criador da série',
        true),
    Question('Finished. You Scored: ', true),
  ];

  QuizzerViewModel() {
    _questionNumber = Random().nextInt(this.getNumberOfQuestions() - 1);
  }

  String getQuestion() {
    return this._questions[_questionNumber].question;
  }

  bool getAnswer() {
    return this._questions[_questionNumber].answer;
  }

  void newQuestion() {
    _questionNumber = Random().nextInt(this.getNumberOfQuestions() - 1);
  }

  void getFinalText() {
    _questionNumber = getNumberOfQuestions();
  }

  int getNumberOfQuestions() {
    return _questions.length - 1;
  }
}

class Question {
  late String question;
  late bool answer;

  Question(this.question, this.answer);
}
