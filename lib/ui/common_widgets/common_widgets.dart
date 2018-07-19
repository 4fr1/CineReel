import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget getDotSeparator() {
	return Text("·", style: TextStyle(fontSize: 23.0));
}

Widget getAppBar({title, context, tabController, myTabs}) {
	return AppBar(
			title: new Text(title),
			elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 3.0,
			bottom: TabBar(
					controller: tabController,
					tabs:myTabs)
	);
}

Widget buildHorizontalDivider() {
	return Divider(height: 22.0);
}

Widget MaterialIcon(String assetPath) {
	return Material(
			color: Colors.transparent,
			child: IconButton(
				icon: Image(image: AssetImage(assetPath)),
				onPressed: () {},
			));
}