@business_cards_data =
{
  name: "Cartões de visita",
  image_url: "http://www.cssauthor.com/wp-content/uploads/2013/10/Simple-Business-Card-PSD-2.jpg",
  question: "Como serão seus Cartões de Visita?",
  properties: [
    {
      name: "format",
      question: "Qual o formato do seu cartão?",
      show: 'text',
      values: [
        { value: "90x50mm", image_url: nil },
        { value: "85x55mm", image_url: nil }
      ]
    },
    {
      name: "print_mode",
      question: "Qual o tipo de impressão?",
      show: 'images',
      values: [
        { value: "Cores Frente e Verso", image_url: "business_cards/mode1.jpg" },
        { value: "Cores Frente", image_url: "business_cards/mode2.jpg" },
        { value: "Preto e Branco Frente e Verso", image_url: "business_cards/mode1.jpg" },
        { value: "Preto e Branco Frente", image_url: "business_cards/mode2.jpg" }
      ]
    },
    {
      name: "paper_type",
      question: "Qual o tipo de papel?",
      show: 'text',
      values: [
        { value: "Couche 300g", image_url: nil },
        { value: "Couche 350g", image_url: nil }
      ]
    },
    {
      name: "quantity",
      question: "Qual a quantidade?",
      show: 'text',
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
      show: 'images',
      values: [
        { value: "Plastificação Mate e Verniz Localizado", image_url: "business_cards/finish1.jpg" },
        { value: "Plastificação Brilho Frente e Verso", image_url: "business_cards/finish2.jpg" },
        { value: "Plastificação Brilho Frente", image_url: "business_cards/finish3.jpg" },
        { value: "Plastificação Mate Frente e Verso", image_url: "business_cards/finish1.jpg" },
      ]
    }
  ]
}
