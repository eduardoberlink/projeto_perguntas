# Projeto Perguntas 📝

Um aplicativo de questionário interativo desenvolvido em **Flutter** e **Dart**. Este projeto foi criado para exercitar os conceitos fundamentais de desenvolvimento mobile, focando em interface reativa e componentes modulares.

---

## 🚀 Sobre o Projeto

O **Projeto Perguntas** é um app onde o usuário responde a uma série de questões dinâmicas e, ao final, recebe uma pontuação baseada em suas escolhas. O objetivo principal foi estudar a anatomia de um app Flutter e a comunicação eficiente entre widgets.

### Principais conceitos aplicados:
* **Stateless vs Stateful Widgets**: Diferenciação e uso prático para gerenciar mudanças na tela.
* **Composição de Widgets**: Criação de componentes reutilizáveis (`Questao`, `Resposta`, `Questionario`, `Resultado`).
* **Lógica em Dart**: Manipulação de Listas (`List`) e Mapas (`Map`) para estruturar as perguntas.
* **Callbacks**: Passagem de funções como parâmetros para atualizar o estado do app a partir de eventos de clique.

---

## 🛠️ Tecnologias Utilizadas

* **Flutter**: SDK de interface de usuário para criar apps nativos.
* **Dart**: Linguagem de programação otimizada para o desenvolvimento de apps.

---

## 📂 Estrutura do Código

A lógica foi dividida para garantir organização e fácil manutenção:

* `lib/main.dart`: Ponto de entrada e gerenciamento do estado principal (`_PerguntaAppState`).
* `lib/questionario.dart`: Agrupa a lógica de exibição das perguntas e botões.
* `lib/questao.dart`: Componente visual para exibir o texto da pergunta.
* `lib/respostas.dart`: Componente para os botões de opção.
* `lib/resultado.dart`: Tela final que calcula e exibe a mensagem de feedback.

---

## 📦 Como rodar o projeto

Se você já tem o ambiente Flutter configurado no seu Mac ou Windows:

1. **Clone o repositório:**
   ```bash
   git clone [https://github.com/eduardoberlink/projeto_perguntas.git](https://github.com/eduardoberlink/projeto_perguntas.git)
