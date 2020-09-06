import 'package:flutter/material.dart';
import 'package:news_app/src/widgets/lista_noticias.dart';

import 'package:provider/provider.dart';
import 'package:news_app/src/services/news_service.dart';

class Tab1Page extends StatefulWidget {
  @override
  _Tab1PageState createState() => _Tab1PageState();
}

class _Tab1PageState extends State<Tab1Page>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;

    return Scaffold(
      body: headlines.length == 0
          ? Center(child: CircularProgressIndicator())
          : ListaNoticias(headlines),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
