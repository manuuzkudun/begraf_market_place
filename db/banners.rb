@banners_data =
{
  name: "Banners",
  image_url: "http://www.1800printing.com/images/product/rollup96.jpg",
  question: "Como serão seus banners?",
  properties: [
    {
      name: "format",
      question: "Qual o formato/tamanho?",
      show: 'text',
      values: [
        { value: "80 x 120cm", image_url: nil }
      ]
    },
    {
      name: "quantity",
      question: "Qual a quantidade desejada?",
      show: 'text',
      values: [
        { value: "1", image_url: nil },
        { value: "2", image_url: nil }
      ]
    },
    {
      name: "install_service",
      question: "Deseja incluir tripé para montagem?",
      show: 'text',
      values: [
        { value: "Yes", image_url: nil },
        { value: "No", image_url: nil }
      ]
    }
  ]
}



