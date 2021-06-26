# ajudaai



Para executar o projeto use : flutter run"

O hot reload não atualizará automaticamente enquanto você modificar algum controller.
Se quiser atualizar algum controller utilize o comando abaixo:
flutter pub run build_runner build --delete-conflicting-outputs

Caso queira que os controllers se atualizem automaticamente a cada atualização que você realizar, você deverá
Abrir dois terminais, um deles irá executar o código(flutter run) e deverá ser utilizado o comando abaixo.
flutter pub run build_runner watch --delete-conflicting-outputs