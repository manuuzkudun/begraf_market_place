@flyers_data =
{
  name: "Panfletos",
  image_url: "http://www.iday.es/wp-content/uploads/2016/03/tipos-flyers.png",
  properties: [
    {
      name: "format",
      question: "Qual o formato / tamanho do seu panfleto?",
      values: [
        { value: "14 x 20cm", image_url: "http://placehold.it/350x150" },
        { value: "15 x 21cm (A5)", image_url: "http://placehold.it/350x150" },
        { value: "10 x 15cm (A6)", image_url: "http://placehold.it/350x150" },
        { value: "21 x 30cm (A4)", image_url: "http://placehold.it/350x150" }
      ]
    },
    {
      name: "print_mode",
      question: "Como será a impressão?",
      values: [
        { value: "Colorida Frente e Verso (4/4 cores)", image_url: nil },
        { value: "Colorida Frente / Verso sem impressão (4/0 cores)", image_url: nil }
      ]
    },
    {
      name: "paper_type",
      question: "Escolha o papel",
      values: [
        { value: "Papel Couchê 90g", image_url: nil },
        { value: "Couchê 115g", image_url: nil },
        { value: "Couchê 170g", image_url: nil }
      ]
    },
    {
      name: "quantity",
      question: "Qual a quantidade?",
      values: [
        { value: "2500", image_url: nil },
        { value: "5000", image_url: nil },
        { value: "10000", image_url: nil }
      ]
    }
  ]
}



