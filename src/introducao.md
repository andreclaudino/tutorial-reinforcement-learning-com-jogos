## Introdução

### A IA e os jogos

Já pensou como um jogo, num video-game ou computador, consegue criar oponentes adequados aos diferentes níveis de jogadores? Como um jogo pode ficar mais fácil ou ou mais difícil, de acordo com o "nível" ou "dificuldade" de uma fase, e essa difculdade fazer sentido para quem joga? Os jogos mais antigos não levavam a noção de inteligência ao criar oponentes, então a dificuldade era definida ações mais rápidas, mais inimigos na tela, mais elementos bloqueantes, etc.

Essa forma de complicar um jogo fica fácil quando vemos o classico Pac Man[^1]: O cenário não mudava, mas os inimigos, no caso os fantasmas, se tornavam mais rápidos a cada fase.

![Animação da arena do Pac-Man](https://c.tenor.com/Rf2-km-ODToAAAAC/pac-man-video-game.gif)  
Fonte: [tenor](https://tenor.com/view/pac-man-video-game-80s-gif-22223415)

Outro exemplo onde isso fica bem claro é no classico Space Invaders[^2]. Nas fases mais difíceis, havia um númeor maior de inimigos na tela, eles se aproximavam mais rápido e atacavam com intervalos menores.

![Animação de tela do Space Invaders](https://community.esri.com/t5/image/serverpage/image-id/4885i467C0BE0C2DA2708/image-size/large/is-moderation-mode/true?v=v2&px=999)  
Fonte: [ESRI](https://community.esri.com/t5/media/gallerypage/image-id/4885i467C0BE0C2DA2708)

Nos jogos antigos em geral, aqueles que não levavam a IA em conta ou usavam sistemas de IA não personalizados, as fases eram repetitivas ou aleatórias, muitas vezes era fácil encontrar padrões para vencer o jogo, e isso deixava eles sem graça. Hoje com a inteligência artificial, é mais fácil determinar o que seria um nível de um jogador por meio de agentes de reforço, fazendo com que as fases, níveis e configuraçẽos sejam mais adaptaveis e alcancem as habilidades de jogadores reais em diferentes níveis.

Um método de IA eficiente para criar adaptabilidade em jogos é a aprendizagem por reforço. Podemos usá-la para replicar o comportamento de um grupo de usuários diante de um determinado cenário. Isso é muito útil em jogos de Corrida ou Luta por exemplo, onde o agente de IA tem a mesma posição do jogador real, permitindo que ele seja formado com o conhecimento de jogadores reais diferentes e ofereça uma concorrencia no nível adequado, sem ser muito difícil ou muito fácil, para um novo jogador real. Hoje, um sistema distribuído de treinamento pode ser usado para treinar oponentes em jogos online.

Nessa aula, vamos aprender a criar um modelo de machine larning que joga uma versão customizada do classico pong. O jogo pode ser baixado do repositório [pong-ai-rust](https://github.com/andreclaudino/pong-ai-rust), ele não é o foco dessa aula, fica apenas a título de curiosidade, o que nos interessa na verdade é o conteúdo do repositório [pong-reinforcement-learning](https://github.com/andreclaudino/pong-reinforcement-learning), que cria um agente de IA que interage com o jogo implementado no repositório anterior. No momento certo, você terá instruções sobre como baixar e executar o código, vamos estudar detalhes dessa implementação.

[^1]: Pac-Man é um série de jogos de videogame, feita pela Namco. O objetivo da maioria dos jogos da série é percorrer um labirinto, comendo pontos, pontos energizantes e frutas e fugindo de quatro fantasmas, chamados Blinky, Pinky, Inky e Clyde. Fonte: Wikipedia.

[^2]: Space Invaders é um videogame japonês de tiro lançado em 1978 por Taito. Foi desenvolvido por Tomohiro Nishikado, que foi inspirado por outras mídias: Breakout, A Guerra dos Mundos e Guerra nas Estrelas. Fonte: Wikipedia