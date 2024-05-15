class OnboardingPageModel {
  final String image;
  final String title;
  final String description;

  OnboardingPageModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingPageModel> onboardingPages = [
  OnboardingPageModel(
    image: "assets/Group28.png",
    title: "Todos os Pokémons em um só Lugar",
    description:
        "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo",
  ),OnboardingPageModel(
    image: "assets/group29.png",
    title: "Mantenha sua Pokédex atualizada",
    description:
        "Cadastre-se e mantenha seu perfil, pokémon favoritos, configurações e muito mais, salvos no aplicativo, mesmo sem conexão com a internet.",
  ),
];
