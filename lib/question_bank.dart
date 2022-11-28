class QuestionBank {
  final questions = const [
    {
      'questionText': 'Do you like to work with numbers?',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'No', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          ' Do you enjoy building things and working with your hands?',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'No', 'score': 'LTA'},
      ],
    },
    {
      'questionText': ' Are you artistic, creative and or musical?',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTS'},
      ],
    },
    {
      'questionText': 'Do you love reading poems, history and comics?',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
        {'text': 'Sometimes', 'score': 'LTS'},
      ],
    },
    {
      'questionText':
          'Do you prefer going to the theatre and museums to a laboratory? ',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTS'},
        {'text': 'None', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'Would you rather prefer drawing than solving mathematics? ',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTS'},
        {'text': 'None', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          ' You care about trends, beauty and fashion and you find them important. ',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          ' You enjoy talking about finance, business, and marketing than science and tech ',
      'answers': [
        {'text': 'Yes', 'score': 'LTC'},
        {'text': 'No', 'score': 'LTS'},
        {'text': 'None', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          ' You are interested in science, experiments and practicals. ',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'Never in my life', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          ' Your friends think you are very good at speaking. ',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTS'},
      ],
    },
    {
      'questionText':
          'You love expressing yourself clearly. ',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
        {'text': 'Sometimes', 'score': 'LTS'},

      ],
    },
    {
      'questionText':
          'You want to stand up for people, be their voice, and help them get justice.',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
        {'text': 'It does not matter', 'score': 'LTS'},
      ],
    },
    {
      'questionText':
          'You want to investigate issues to the very root.',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'An excursion ticket was opportunity was given to you,'
              ' you are to choose between going to see how things are done in the Central Bank of Nigeria '
              'or to go watch surgeons at the hospital perform a brain surgery, what ticket would you pick?',
      'answers': [
        {'text': 'Go to the hospital', 'score': 'LTS'},
        {'text': 'Go to the Central Bank', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'You like to understand how things work, and be involved in creating things.',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'No', 'score': 'LTC'},
        {'text': 'Maybe', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          'You love history, religion or questions related to society and politics.',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'You love to plant and watch things grow.',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'Sometimes', 'score': 'LTA'},
        {'text': 'Never', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'Your parents think you are great at Mathematics.',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'Quite fair ', 'score': 'LTC,'},
        {'text': 'Never', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          ' Your parents think you will do well in science related professions. '
              '(Ask them what they think about you). ',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'No', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          ' Your parents think you will do well in humanities (arts) related professions. '
              '(Ask them what they think about you). ',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          ' Your parents think you will do well in business (commercial) related professions. '
              '(Ask them what they think about you). ',
      'answers': [
        {'text': 'Yes', 'score': 'LTC'},
        {'text': 'No', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          'Where do you think your strength lies, calculations, creative writing/literature/reasoning, economics and finance?',
      'answers': [
        {'text': 'Calculations', 'score': 'LTS'},
        {'text': 'Creative writing', 'score': 'LTA'},
        {'text': 'Literature', 'score': 'LTC, LTA'},
        {'text': 'Quantitative reasoning', 'score': 'LTS'},
        {'text': 'Finance', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'If given an option, would you like to make a living from working on computer and writing codes?',
      'answers': [
        {'text': 'Yes, I would love to', 'score': 'LTS'},
        {'text': 'Never', 'score': 'LTA'},
        {'text': 'Maybe', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'Do you tend to tilt towards Science, Arts or Commercial?',
      'answers': [
        {'text': 'Science', 'score': 'LTS'},
        {'text': 'Art', 'score': 'LTA'},
        {'text': 'Commercial', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'Let’s say you are going with SCIENCE. If it gets difficult along the way, will you be able to continue on this path?',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'I will switch to arts', 'score': 'LTA'},
        {'text': 'I will switch to commercial', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          ' Let’s say you are going with ARTS. If it gets difficult along the way, will you be able to continue on this path?',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'I will switch to commercial', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
          'Let’s say you are going with COMMERCIAL. If it gets difficult along the way, will you be able to continue on this path?',
      'answers': [
        {'text': 'Yes', 'score': 'LTC'},
        {'text': 'I will switch to arts', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
          'You prefer Business studies to Civic education and history.',
      'answers': [
        {'text': 'Yes', 'score': 'LTC'},
        {'text': 'No', 'score': 'LTA'},
        {'text': 'None of them', 'score': 'LTS'},
      ],
    },
    {
      'questionText':
      ' You struggle with reading long comprehension passages. ',
      'answers': [
        {'text': 'Yes', 'score': 'LTC'},
        {'text': 'No', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
      ' You prefer comprehension and History to Mathematics and Basic science.',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTS'},
        {'text': 'None of them', 'score': 'LTC'},
      ],
    },
    {
      'questionText':
      'You prefer Mathematics and Basic science to Business studies.',
      'answers': [
        {'text': 'Yes', 'score': 'LTS'},
        {'text': 'No', 'score': 'LTC'},
        {'text': 'None of them', 'score': 'LTA'},
      ],
    },
    {
      'questionText':
      'You love analyzing and critiquing movies',
      'answers': [
        {'text': 'Yes', 'score': 'LTA'},
        {'text': 'No', 'score': 'LTC'},
        {'text': 'Only with others ', 'score': 'LTS'},
      ],
    },
  ];
}
