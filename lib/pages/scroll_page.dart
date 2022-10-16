import 'package:flutter_design_example/pages/all.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    const inputDecoration = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(),
      errorBorder: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(),
      disabledBorder: OutlineInputBorder(),
      focusedErrorBorder: OutlineInputBorder(),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey[200],
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                children: [
                  const SizedBox(
                    height: 400,
                  ),
                  TextFormField(
                    decoration: inputDecoration,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: inputDecoration,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: inputDecoration,
                  ),
                  const SizedBox(
                    height: 400,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
