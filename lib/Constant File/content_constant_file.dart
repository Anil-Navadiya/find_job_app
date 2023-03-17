import '../String Files/image_string.dart';
import '../String Files/text_string.dart';

class UnBoardingContent {
  String? image;
  String? title;
  String? description;

  UnBoardingContent({this.image, this.title, this.description});
}

List<UnBoardingContent> contents = [
  UnBoardingContent(
      title: knowledge, image: gifOne, description: knowledgeSubTex),
  UnBoardingContent(
      title: training, image: gifTwo, description: trainingSubTex),
  UnBoardingContent(
      title: realization, image: gifThree, description: realizationSubTex),
];
