import 'all.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({super.key});

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationsPage'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
            minWidth: constraints.maxWidth,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Curves',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Wrap(
                  children: const [
                    _CustomAnimationContainer(
                      curve: Curves.bounceIn,
                      text: 'bounceIn',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.bounceInOut,
                      text: 'bounceInOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.bounceOut,
                      text: 'bounceOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.decelerate,
                      text: 'decelerate',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.linear,
                      text: 'linear',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.ease,
                      text: 'ease',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeIn,
                      text: 'easeIn',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInBack,
                      text: 'easeInBack',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInCirc,
                      text: 'easeInCirc',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInCubic,
                      text: 'easeInCubic',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInExpo,
                      text: 'easeInExpo',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOut,
                      text: 'easeInOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutBack,
                      text: 'easeInOutBack',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutCirc,
                      text: 'easeInOutCirc',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutCubic,
                      text: 'easeInOutCubic',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutCubicEmphasized,
                      text: 'easeInOutCubicEmphasized',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutExpo,
                      text: 'easeInOutExpo',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutQuad,
                      text: 'easeInOutQuad',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutQuint,
                      text: 'easeInOutQuint',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInOutSine,
                      text: 'easeInOutSine',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInQuad,
                      text: 'easeInQuad',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInQuart,
                      text: 'easeInQuart',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInQuint,
                      text: 'easeInQuint',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInSine,
                      text: 'easeInSine',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeInToLinear,
                      text: 'easeInToLinear',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOut,
                      text: 'easeOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutBack,
                      text: 'easeOutBack',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutCirc,
                      text: 'easeOutCirc',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutCubic,
                      text: 'easeOutCubic',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutExpo,
                      text: 'easeOutExpo',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutQuad,
                      text: 'easeOutQuad',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutQuart,
                      text: 'easeOutQuart',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutQuint,
                      text: 'easeOutQuint',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.easeOutSine,
                      text: 'easeOutSine',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.elasticIn,
                      text: 'elasticIn',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.elasticInOut,
                      text: 'elasticInOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.elasticOut,
                      text: 'elasticOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.fastLinearToSlowEaseIn,
                      text: 'fastLinearToSlowEaseIn',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.fastOutSlowIn,
                      text: 'fastOutSlowIn',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.linearToEaseOut,
                      text: 'linearToEaseOut',
                    ),
                    _CustomAnimationContainer(
                      curve: Curves.slowMiddle,
                      text: 'slowMiddle',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _CustomAnimationContainer extends StatefulWidget {
  const _CustomAnimationContainer({
    required this.curve,
    required this.text,
  });

  final Curve curve;
  final String text;

  @override
  State<_CustomAnimationContainer> createState() =>
      _CustomAnimationContainerState();
}

class _CustomAnimationContainerState extends State<_CustomAnimationContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            width: selected ? 200 : 100,
            height: selected ? 200 : 100,
            color: selected ? Colors.blue : Colors.red,
            duration: const Duration(seconds: 2),
            curve: widget.curve,
            child: Center(
              child: Text(
                widget.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
