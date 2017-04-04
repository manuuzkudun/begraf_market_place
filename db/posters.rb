@posters_data =
{
  name: "Cartaz",
  image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491299840/cartaz_tqufnr.jpg",
  question: "Como serão seus cartaz?",
  properties: [
    {
      name: "format",
      question: "Qual o tamanho?",
      show: 'text',
      values: [
        { value: "210 x 297mm (A4)", image_url: nil },
        { value: "297 x 420mm (A3)", image_url: nil },
        { value: "42 x 59,4mm (A2)", image_url: nil },
        { value: "70 x 100mm", image_url: nil },
        { value: "500 x 700mm", image_url: nil }
      ]
    },
    {
      name: "paper_type",
      question: "Qual o tipo de papel?",
      show: 'text',
      values: [
        { value: "Couche Fosco 90g", image_url: nil },
        { value: "Couche Brilho 150g", image_url: nil },
        { value: "Couche 300g", image_url: nil }
      ]
    },
    {
      name: "print_mode",
      question: "Como será a impressão?",
      show: 'images',
      values: [
        { value: "Cores Frente e Verso", image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491128683/panfleto_4-4_zndy4k.jpg" },
        { value: "Cores só Frente", image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491128683/panfleto_4-0_zipejo.jpg" },
        { value: "Preto e Branco Frente e Verso", image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491128683/panfleto_4-0_zipejo.jpg" },
        { value: "Preto e Branco só Frente", image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491128683/panfleto_4-0_zipejo.jpg" }
      ]
    },
    {
      name: "quantity",
      question: "Qual a quantidade desejada?",
      show: 'text',
      values: [
        { value: "25", image_url: nil },
        { value: "50", image_url: nil },
        { value: "100", image_url: nil },
        { value: "250", image_url: nil },
        { value: "500", image_url: nil }
      ]
    },
    {
      name: "print_finish",
      question: "Como será o acabamento?",
      show: 'images',
      values: [
        { value: "Padrão Normal", image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491128683/CARTAO_LAM_FSC_VRNZ_LOCAL_sbxf48.jpg" },
        { value: "Extra Laminação Fosca", image_url: "https://res.cloudinary.com/dai3j9qtc/image/upload/v1491128683/CARTAO_FOSCO_bvow5m.jpg" }
      ]
    }
  ]
}
