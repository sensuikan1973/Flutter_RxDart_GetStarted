import 'package:flutter/widgets.dart';
import 'package:sample/word_bloc.dart';

class WordProvider extends InheritedWidget {
  final WordBloc wordBloc;

  WordProvider({
    Key key,
    WordBloc wordBloc,
    Widget child,
  })  : wordBloc = wordBloc ?? WordBloc(),
        super(key: key, child: child);

@override
bool updateShouldNotify(InheritedWidget oldWidget) => true;

static WordBloc of(BuildContext context) =>
  (context.inheritFromWidgetOfExactType(WordProvider) as WordProvider)
    .wordBloc;
}