@flyers_data =
{
  name: "Panfletos",
  image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1490951066/panfletos.jpg",
  question: "Como serão seus Panfletos?",
  properties: [
    {
      name: "format",
      question: "Qual o formato / tamanho do seu panfleto?",
      show: 'text',
      values: [
        { value: "14 x 20cm", image_url: nil },
        { value: "15 x 21cm (A5)", image_url: nil },
        { value: "10 x 15cm (A6)", image_url: nil },
        { value: "21 x 30cm (A4)", image_url: nil }
      ]
    },
    {
      name: "print_mode",
      question: "Como será a impressão?",
      show: 'images',
      values: [
        { value: "Colorida Frente e Verso (4/4 cores)", image_url: "flyers/mode1.jpg" },
        { value: "Colorida Frente / Verso sem impressão (4/0 cores)", image_url: "flyers/mode2.jpg" }
      ]
    },
    {
      name: "paper_type",
      question: "Escolha o papel",
      show: 'text',
      values: [
        { value: "Papel Couchê 90g", image_url: nil },
        { value: "Couchê 115g", image_url: nil },
        { value: "Couchê 170g", image_url: nil }
      ]
    },
    {
      name: "quantity",
      question: "Qual a quantidade?",
      show: 'text',
      values: [
        { value: "2500", image_url: nil },
        { value: "5000", image_url: nil },
        { value: "10000", image_url: nil }
      ]
    }
  ]
}



