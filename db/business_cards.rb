@business_cards_data =
{
  name: "Cartões de visita",
  image_url: "http://www.cssauthor.com/wp-content/uploads/2013/10/Simple-Business-Card-PSD-2.jpg",
  properties: [
    {
      name: "format",
      question: "Qual o formato do seu cartão?",
      values: [
        { value: "90x50mm", image_url: "http://placehold.it/350x150" },
        { value: "85x55mm", image_url: "http://placehold.it/350x150" }
      ]
    },
    {
      name: "print_mode",
      question: "Qual o tipo de impressão?",
      values: [
        { value: "Cores Frente e Verso", image_url: nil },
        { value: "Cores Frente", image_url: nil },
        { value: "Preto e Branco Frente e Verso", image_url: nil },
        { value: "Preto e Branco Frente", image_url: nil }
      ]
    },
    {
      name: "paper_type",
      question: "Qual o tipo de papel?",
      values: [
        { value: "Couche 300g", image_url: nil },
        { value: "Couche 350g", image_url: nil }
      ]
    },
    {
      name: "quantity",
      question: "Qual a quantidade?",
      values: [
        { value: "100", image_url: nil },
        { value: "200", image_url: nil },
        { value: "500", image_url: nil },
        { value: "1000", image_url: nil }
      ]
    },
    {
      name: "print_finish",
      question: "Qual o acabamento desejado?",
      values: [
        { value: "Plastificação Mate e Verniz Localizado", image_url: nil },
        { value: "Plastificação Brilho Frente e Verso", image_url: nil },
        { value: "Plastificação Brilho Frente", image_url: nil },
        { value: "Plastificação Mate Frente e Verso", image_url: nil },
      ]
    }
  ]
}
