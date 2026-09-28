import 'package:flutter/material.dart';

void main() => runApp(const MathTutorApp());

class MathProblem {
  final String title;
  final String question;
  final String structureLead;
  final String structureKey;
  final String structureTail;
  final String narrativeHint;
  final List<String> solution;
  final String summary;
  final String unitKey;

  const MathProblem({
    required this.title,
    required this.question,
    required this.structureLead,
    required this.structureKey,
    required this.structureTail,
    required this.narrativeHint,
    required this.solution,
    required this.summary,
    required this.unitKey,
  });
}

const problems = <MathProblem>[
  MathProblem(
      title: '01 · 미분',
      question: 'f(x) = x³ - 3x² + 2일 때, f′(x)를 구하여라.',
      structureLead: '다항함수 미분 → ',
      structureKey: '각 항의 지수 × 계수',
      structureTail: ' → 지수를 1 낮춘다.',
      narrativeHint: 'x³과 -3x²를 각각 미분하고, 상수항 2의 미분값을 생각해 보세요.',
      solution: [
        'f(x)=x³-3x²+2',
        '(x³)′=3x², (-3x²)′=-6x, (2)′=0',
        '따라서 f′(x)=3x²-6x'
      ],
      summary: '다항함수는 항별로 미분한다. 상수의 미분은 0.',
      unitKey: '다항함수 미분'),
  MathProblem(
      title: '02 · 미분',
      question: 'f(x) = (2x+1)(x²-3)일 때, f′(x)를 구하여라.',
      structureLead: '두 함수의 곱 → ',
      structureKey: '곱의 미분법',
      structureTail: ' (앞′×뒤 + 앞×뒤′)',
      narrativeHint: 'u=2x+1, v=x²-3으로 놓고 (uv)′=u′v+uv′를 적용하세요.',
      solution: [
        'u=2x+1, v=x²-3',
        'u′=2, v′=2x',
        'f′(x)=2(x²-3)+(2x+1)(2x)',
        '정리하면 f′(x)=6x²+2x-6'
      ],
      summary: '곱은 각각 미분한 뒤 교차해서 더한다.',
      unitKey: '곱의 미분'),
  MathProblem(
      title: '03 · 미분',
      question: 'f(x) = (x²+1)³일 때, f′(x)를 구하여라.',
      structureLead: '함수 안에 함수 → ',
      structureKey: '합성함수 미분',
      structureTail: ' (바깥 미분 × 안쪽 미분)',
      narrativeHint: '바깥 함수 t³을 먼저 미분한 뒤, 안쪽 x²+1의 미분을 곱하세요.',
      solution: [
        't=x²+1로 둔다.',
        '(t³)′=3t², t′=2x',
        'f′(x)=3(x²+1)²·2x',
        '따라서 6x(x²+1)²'
      ],
      summary: '합성함수는 바깥 미분 × 안쪽 미분.',
      unitKey: '합성함수 미분'),
  MathProblem(
      title: '04 · 미분',
      question: 'f(x)=x³-6x²+9x의 극값을 구하여라.',
      structureLead: '극값 → ',
      structureKey: 'f′(x)=0인 후보',
      structureTail: '를 찾고 증가·감소를 확인한다.',
      narrativeHint: '먼저 도함수를 구해 0이 되는 x를 찾으세요. 그 전후의 부호 변화를 확인하면 됩니다.',
      solution: [
        'f′(x)=3x²-12x+9=3(x-1)(x-3)',
        '임계점은 x=1, 3',
        'f′의 부호: +, -, +',
        'x=1에서 극대, x=3에서 극소',
        'f(1)=4, f(3)=0'
      ],
      summary: '극값 문제: 도함수 → 0 → 부호 변화 → 함수값.',
      unitKey: '도함수의 활용'),
  MathProblem(
      title: '05 · 미분',
      question: '곡선 y=x² 위의 x=2인 점에서 접선의 방정식을 구하여라.',
      structureLead: '접선 → ',
      structureKey: '기울기 = f′(a)',
      structureTail: ' + 점 (a,f(a))',
      narrativeHint: 'x=2에서의 도함수 값이 접선의 기울기입니다. 점 (2,4)를 함께 사용하세요.',
      solution: [
        'f′(x)=2x',
        'x=2에서 기울기 m=4',
        '접점은 (2,4)',
        'y-4=4(x-2)',
        '따라서 y=4x-4'
      ],
      summary: '접선은 접점과 그 점에서의 미분계수로 결정된다.',
      unitKey: '접선'),
  MathProblem(
      title: '06 · 적분',
      question: '∫(3x²-4x+2) dx 를 구하여라.',
      structureLead: '부정적분 → ',
      structureKey: '미분의 역과정',
      structureTail: ' + 적분상수 C',
      narrativeHint: '각 항의 지수를 1 올리고, 새 지수로 나누세요.',
      solution: ['∫3x²dx=x³', '∫-4x dx=-2x²', '∫2 dx=2x', '따라서 x³-2x²+2x+C'],
      summary: '부정적분은 항별 적분 후 반드시 +C.',
      unitKey: '부정적분'),
  MathProblem(
      title: '07 · 적분',
      question: '∫₀² (x+1) dx 의 값을 구하여라.',
      structureLead: '정적분 → ',
      structureKey: '원시함수 F(b)-F(a)',
      structureTail: '',
      narrativeHint: '먼저 x+1의 원시함수를 구한 다음 위끝 2, 아래끝 0을 대입하세요.',
      solution: ['F(x)=x²/2+x', 'F(2)=2+2=4', 'F(0)=0', '따라서 정적분의 값은 4'],
      summary: '정적분 계산의 핵심은 위끝 대입값 − 아래끝 대입값.',
      unitKey: '정적분'),
  MathProblem(
      title: '08 · 적분',
      question: '곡선 y=x와 x축, x=0, x=3으로 둘러싸인 넓이를 구하여라.',
      structureLead: '넓이 → ',
      structureKey: '구간에서 함수의 부호',
      structureTail: '를 확인한 뒤 정적분한다.',
      narrativeHint: '0≤x≤3에서 y=x는 x축 위에 있으므로 그대로 적분하면 넓이가 됩니다.',
      solution: ['넓이 A=∫₀³ x dx', '원시함수는 x²/2', 'A=9/2-0', '따라서 넓이는 9/2'],
      summary: '함수가 x축 위에 있으면 정적분값이 곧 넓이.',
      unitKey: '정적분과 넓이'),
  MathProblem(
      title: '09 · 적분',
      question: '∫₁⁴ 1/√x dx 의 값을 구하여라.',
      structureLead: '근호 → ',
      structureKey: '지수 형태 x⁻¹ᐟ²',
      structureTail: '로 바꾸어 적분한다.',
      narrativeHint: '1/√x를 x의 거듭제곱 꼴로 바꾸면 기본 적분 공식을 사용할 수 있습니다.',
      solution: ['1/√x=x⁻¹ᐟ²', '원시함수는 2x¹ᐟ²', '[2√x]₁⁴=4-2', '따라서 값은 2'],
      summary: '근호·분수식은 지수형으로 바꾸면 구조가 잘 보인다.',
      unitKey: '정적분'),
  MathProblem(
      title: '10 · 종합',
      question: 'f′(x)=2x-4이고 f(0)=3일 때, f(x)를 구하여라.',
      structureLead: '도함수에서 원함수 → ',
      structureKey: '적분 후 조건으로 C 결정',
      structureTail: '',
      narrativeHint: '2x-4를 적분하면 상수 C가 생깁니다. f(0)=3을 이용해 C를 정하세요.',
      solution: [
        'f(x)=∫(2x-4)dx',
        'f(x)=x²-4x+C',
        'f(0)=C=3',
        '따라서 f(x)=x²-4x+3'
      ],
      summary: '도함수 → 적분 → 초기조건으로 적분상수 결정.',
      unitKey: '미분과 적분의 연결'),
];

class MathTutorApp extends StatelessWidget {
  const MathTutorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '수학 구조 튜터',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF315CFF)),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFF6F7FB)),
      home: const TutorPage(),
    );
  }
}

enum Panel { none, structure, narrative, solution, summary }

class TutorPage extends StatefulWidget {
  const TutorPage({super.key});
  @override
  State<TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> {
  int index = 0;
  Panel panel = Panel.none;
  final Set<int> completed = {};

  void showPanel(Panel value) => setState(() => panel = value);
  void next() {
    setState(() {
      completed.add(index);
      panel = Panel.none;
      if (index < problems.length - 1) index++;
    });
    if (completed.length == problems.length) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const UnitSummaryPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = problems[index];
    return Scaffold(
      appBar: AppBar(title: const Text('수학 구조 튜터'), centerTitle: false),
      body: SafeArea(child: LayoutBuilder(builder: (context, c) {
        return SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: Center(
                child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 760),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(children: [
                            Expanded(
                                child: LinearProgressIndicator(
                                    value: (index + 1) / problems.length,
                                    minHeight: 10,
                                    borderRadius: BorderRadius.circular(10))),
                            const SizedBox(width: 12),
                            Text('${index + 1}/10',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold))
                          ]),
                          const SizedBox(height: 20),
                          Card(
                              elevation: 0,
                              child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(p.title,
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 16),
                                        Text(p.question,
                                            style: const TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w700,
                                                height: 1.45))
                                      ]))),
                          const SizedBox(height: 14),
                          Wrap(spacing: 8, runSpacing: 8, children: [
                            FilledButton.tonalIcon(
                                onPressed: () => showPanel(Panel.structure),
                                icon: const Icon(Icons.account_tree_outlined),
                                label: const Text('구조 힌트')),
                            FilledButton.tonalIcon(
                                onPressed: () => showPanel(Panel.narrative),
                                icon: const Icon(Icons.lightbulb_outline),
                                label: const Text('서술형 힌트')),
                            FilledButton.tonalIcon(
                                onPressed: () => showPanel(Panel.solution),
                                icon: const Icon(Icons.menu_book_outlined),
                                label: const Text('풀이')),
                            FilledButton.tonalIcon(
                                onPressed: () => showPanel(Panel.summary),
                                icon: const Icon(Icons.summarize_outlined),
                                label: const Text('요약 정리')),
                          ]),
                          const SizedBox(height: 14),
                          if (panel != Panel.none)
                            _Panel(problem: p, panel: panel),
                          const SizedBox(height: 20),
                          FilledButton.icon(
                              onPressed: next,
                              icon: Icon(index == 9
                                  ? Icons.flag_outlined
                                  : Icons.arrow_forward),
                              label: Text(index == 9
                                  ? '완료하고 단원정리 보기'
                                  : '이 문제 완료 · 다음 문제'),
                              style: FilledButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16))),
                        ]))));
      })),
    );
  }
}

class _Panel extends StatelessWidget {
  final MathProblem problem;
  final Panel panel;
  const _Panel({required this.problem, required this.panel});
  @override
  Widget build(BuildContext context) {
    Widget child;
    String title;
    switch (panel) {
      case Panel.structure:
        title = '구조 힌트';
        child = RichText(
            text: TextSpan(
                style: DefaultTextStyle.of(context)
                    .style
                    .copyWith(fontSize: 18, height: 1.6),
                children: [
              TextSpan(text: problem.structureLead),
              TextSpan(
                  text: problem.structureKey,
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w800)),
              TextSpan(text: problem.structureTail)
            ]));
        break;
      case Panel.narrative:
        title = '서술형 힌트';
        child = Text(problem.narrativeHint,
            style: const TextStyle(fontSize: 17, height: 1.6));
        break;
      case Panel.solution:
        title = '체계적 풀이';
        child = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (int i = 0; i < problem.solution.length; i++)
            Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('${i + 1}. ${problem.solution[i]}',
                    style: const TextStyle(fontSize: 17, height: 1.5)))
        ]);
        break;
      case Panel.summary:
        title = '이 문제의 핵심';
        child=
        Text(problem.summary,
            style: const TextStyle(
                fontSize: 18, height: 1.6, fontWeight: FontWeight.w600));
        break;
      default:
        return const SizedBox.shrink();
    }
    return Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant)),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const Divider(height: 24),
              child
            ])));
  }
}

class UnitSummaryPage extends StatelessWidget {
  const UnitSummaryPage({super.key});
  @override
  Widget build(BuildContext context) {
    const keys = [
      '다항함수 미분: 항별 미분, 상수→0',
      '곱의 미분: 앞′×뒤 + 앞×뒤′',
      '합성함수: 바깥 미분 × 안쪽 미분',
      '극값: f′=0 후보와 부호 변화',
      '접선: 기울기 f′(a) + 접점',
      '부정적분: 미분의 역과정 + C',
      '정적분: F(위끝)-F(아래끝)',
      '넓이: 함수의 부호를 먼저 확인',
      '근호/분수: 지수형으로 구조 변환',
      '도함수→원함수: 적분 후 조건으로 C 결정'
    ];
    return Scaffold(
        appBar: AppBar(title: const Text('단원 정리')),
        body: SafeArea(
            child: ListView(padding: const EdgeInsets.all(20), children: [
          const Text('미분 · 적분 10문제 완료!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          const Text('문제를 다시 볼 때는 “계산”보다 먼저 어떤 구조인지 찾아보세요.',
              style: TextStyle(fontSize: 16, height: 1.5)),
          const SizedBox(height: 18),
          ...List.generate(
              keys.length,
              (i) => Card(
                  elevation: 0,
                  child: ListTile(
                      leading: CircleAvatar(child: Text('${i + 1}')),
                      title: Text(keys[i])))),
          const SizedBox(height: 14),
          FilledButton(
              onPressed: () => Navigator.of(context).popUntil((r) => r.isFirst),
              child: const Text('10문제 다시 풀기'))
        ])));
  }
}
