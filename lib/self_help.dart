import 'package:flutter/material.dart';

Widget selfHelp() {
  return Scaffold(
    appBar: AppBar(
      title: Text('Welcome to Flutter!'),
    ),
    body: listViewBuilder(),
  );
}

Widget listViewBuilder() {
  return ListView.builder(
      //shrinkWrap: true,
      itemCount: selfHelp.length,
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
            title: Text('${selfHelp[i]}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => _selfHelpList[i].route),
              );
            });
      });
}

final List<String> selfHelp = <String>[
  'Self Help Resource',
  'Anxiety & Panic',
  'Body Image & Eating Concerns',
  'Depression & Bipolar',
  'Gender & Sexuality',
  'Grief & Loss',
  'Mindfulness & Meditation',
  'Race & Diversity',
  'Relationships',
  'Sleep',
  'Stress & Time Management'
];

// ---------------Level 1 start --------------

// class selfHelpResource extends StatelessWidget {
//   const selfHelpResource({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Self Help Resource'),
//       ),
//       body: Text('you made it! Self Help Resource'),
//     );
//   }
// }

class selfHelpResource extends StatelessWidget {
  const selfHelpResource({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self Help Resource'),
      ),
      body: selfHelpResource_expand(),
    );
  }
}

class anxietyPanic extends StatelessWidget {
  const anxietyPanic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anxiety & Panic'),
      ),
      body: anxietyPanic_expand(),
    );
  }
}

class bodyImageEatingConcerns extends StatelessWidget {
  const bodyImageEatingConcerns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Image & Eating Concerns'),
      ),
      body: bodyImage_eatingConcerns_expand(),
    );
  }
}

class depressionBipolar extends StatelessWidget {
  const depressionBipolar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Depression & Bipolar'),
      ),
      body: depressionBipolar_expand(),
    );
  }
}

class genderSexuality extends StatelessWidget {
  const genderSexuality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gender & Sexuality'),
      ),
      body: genderSexuality_expand(),
    );
  }
}

class griefLoss extends StatelessWidget {
  const griefLoss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grief & Loss'),
      ),
      body: griefLoss_expand(),
    );
  }
}

class mindfulnessMeditation extends StatelessWidget {
  const mindfulnessMeditation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mindfulness & Meditation'),
      ),
      body: mindfulnessMeditation_expand(),
    );
  }
}

class raceDiversity extends StatelessWidget {
  const raceDiversity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Race & Diversity'),
      ),
      body: raceDiversity_expand(),
    );
  }
}

class relationships extends StatelessWidget {
  const relationships({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relationships'),
      ),
      body: relationships_expand(),
    );
  }
}

class sleep extends StatelessWidget {
  const sleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sleep'),
      ),
      body: sleep_expand(),
    );
  }
}

class stressTimeManagement extends StatelessWidget {
  const stressTimeManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stress & Time Management'),
      ),
      body: stressTimeManagement_expand(),
    );
  }
}

// ----------------Level 1 ends--------------

// ----------------Level 2--------------------
class selfHelpResource_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''TAO Self Help is an interactive, dynamic, easy to access online program that provides assistance to help overcome anxiety, depression, relationships/communication, and substance use concerns, which are the problems most commonly faced by students at University of Richmond.
TAO is based on well-researched and highly effective strategies.
TAO Self Help assists you with managing your own emotional well-being without the help of a therapist.
The exercises can be completed through a smartphone, tablet, or computer.
You can choose to view short, but helpful videos, take part in brief exercises, use logs to track moods and progress, and have access to a Mindfulness Library.
All Richmond students, staff and faculty are eligible to use TAO Self Help. You just need a Richmond email address.''',
      "title": '''What is TAO Self Help?'''
    },
    {
      "contents":
          '''You will have access to highly effective therapeutic modules 24/7.
You can sign up any time of day or night, and without having to travel to Counseling and Psychological Services (CAPS).''',
      "title": '''Benefits of TAO Self Help'''
    },
    {
      "contents":
          '''Anxiety: relaxation strategies, analyzing thoughts, mindfulness, facing fears, lifestyle factors
Depression: traps, problem solving, focusing on thoughts, mindfulness, values, relationships, lifestyle
Substance Abuse: decisions, cravings, social support, lapse and relapses, finances, time management
Relationships and Communication: anger, communication styles, problem solving''',
      "title": '''Module Highlights'''
    },
    {
      "contents": '''Download TAO on the Apple App Store

Download TAO on the Google Play Store''',
      "title": '''DownloadTAO'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class anxietyPanic_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Symptoms may be cognitive, emotional, and/or physical. They may include:

Feeling nervous or on-edge
Difficulty concentrating
Having trouble sleeping
Gastrointestinal problems
Having an increased heart rate
Sweating or trembling
Feeling irritable
Having a sense of impending danger or panic''',
      "title": '''symptoms of Anxiety'''
    },
    {
      "contents":
          '''Anxiety disorders are the most common type of mental illness in the US, affecting approximately 40 million adults every year.
Anxiety may be generalized or about specific things (i.e. test anxiety, social anxiety, specific phobias, etc.).
Anxiety can result from a complex set of risk factors, including genetics, brain chemistry, personality, and life events.
Anxiety disorders are considered highly treatable with counseling and/or medication''',
      "title": '''Anxiety: Did you know?'''
    },
    {
      "contents":
          '''Practice accepting the things you cannot control, and replacing negative thoughts with more realistic ones.
take deep breaths. This can help calm the nervous system when it goes into “fight or flight” mode, our body’s common response to fear. Recognize that these feelings are temporary.
Try not to rely on avoidance to cope. Often, what we are trying hardest to avoid will only continue to bother us. If we are willing to experience some temporary discomfort to face our fears, we often find our anxiety will dissipate.
Take care of your body: limit caffeine and alcohol. Get plenty of sleep. Eat well-balanced meals. Exercise regularly – it really can help!''',
      "title": '''Tips for Managin Anxiety'''
    },
    {
      "contents":
          '''A brief but intense period of overwhelming fear or anxiety. It can include physical symptoms that can cause people to fear they are having a heart attack, cannot breathe, or are dying.''',
      "title": '''What is a Panic Attack?'''
    },
    {
      "contents": '''Chest pain or discomfort
Racing heart
Sweating
Shaking or trembling
Fear of “going crazy”
Breathing difficulties
Nausea
Feeling dizzy or faint
Numbness or tingling sensations
Fear of dying''',
      "title": '''Symptoms of a Panic Attack'''
    },
    {
      "contents":
          '''Panic attacks may feel scary and uncomfortable, but they do not cause physical harm. The most common fears (having a heart attack or dying) are not actual threats.
They may seem to occur randomly, or they may be linked to a specific source of anxiety.
They are usually intense but brief. Symptoms typically peak within 10-30 minutes, though some may linger over an hour.
Panic disorder (PD) can occur when a person has frequent attacks, experiences great worry or fear of future attacks, and changes their behavior in order to avoid having them.
PD affects 2.7% of the US population. Women are twice as likely to experience it as men.
PD is highly treatable with a variety of available therapies.''',
      "title": '''Panic Attacks: Did you know?'''
    },
    {
      "contents":
          '''Practice deep, abdominal breathing while you allow symptoms to pass. Breathe in for several counts and out for several counts. An app such as Calm can guide you.
Use positive coping statements. Some examples: "This feeling isn’t pleasant, but I know it’s temporary." "I’ll just let my body do its thing. I can take the time I need in order to let go and relax."
Ground yourself in the present moment by using all of your senses: Take note of things you can see, hear, or touch. Chew peppermint gum, take a drink of cool water, or sniff some lavender essential oil. Talk to a supportive person.
If you experience persistent panic attacks and are interested in learning ways to manage, consider CAPS Managing Anxiety Program to learn strategies!
*If you have never had a panic attack and are not sure what you are experiencing, seek medical attention to rule out a medical cause.''',
      "title": '''I think I'm having a panic attack, what should I do?'''
    },
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

The Worry Trap
The Relaxation and Stress Reduction Workbook
Why Zebras Don’t Get Ulcers
Don’t Panic: Taking Control of Anxiety Attacks''',
      "title": '''Books'''
    },
    {
      "contents": '''Helpful TAO Self-Help Pathways: Calm Your Worries (Student)
CAPS Skill-Building & Group Programs
Academic Skills
University Recreation
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Campus and CAPS Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class bodyImage_eatingConcerns_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Significantly low body weight but sees oneself as overweight
Compulsion to exercise to lose weight, despite being in healthy range
Significant guilt for not exercising or for overeating, and using exercise as a punishment
Uncontrollably eating a larger than normal amount of food and experiencing guilt or shame afterwards
Unrealistic body image distortion and excessively negative body dissatisfaction
Weight loss through self-induced vomiting, laxatives, enemas, or excessive exercise''',
      "title": '''Symptoms of Eating ConcernsTips for Mindful Eating'''
    },
    {
      "contents":
          '''Shift Out of Autopilot Eating: What did you have for breakfast? Be honest. Many people eat the same thing day in and day out. Notice whether you are stuck in any kind of rut or routine.
Take Mindful Bites: Did you ever eat an entire plate of food and not taste a single bite? Bring all of your senses to the dinner table. Breathe in the aroma of a fresh loaf of bread. Notice the texture of yogurt on your tongue. Truly taste your meal. Experience each bite from start to finish.
Attentive Eating: Sure, you’re busy and have a lot “on your plate.” It’s hard to make eating a priority rather than an option or side task. If you get the urge for a snack while doing your homework or studying, stop and take a break so that you can give eating 100% of your attention. Try to avoid multitasking while you eat. When you eat, just eat.
Mindfully Check In: How hungry am I on a scale of one to ten? Gauging your hunger level is a little like taking your temperature. Each time you eat, ask yourself, “Am I physically hungry?” Aim to eat until you are satisfied, leaving yourself neither stuffed nor still hungry.
Think Mindfully: Observe how self-critical thoughts like “I don’t want to gain the Freshman Fifteen,” or “I’m so stupid, how could I do that?” can creep into your consciousness. Just because you think these thoughts doesn’t mean you need to act on them or let them sway your emotions. Negative thoughts can trigger overeating or stop you from adequately feeding your hunger.
Remember: A thought is just a thought, not a fact.
Mindful Speech: Chit chatting about dieting and weight is so commonplace that we are often truly unaware of the impact it might have on our self-esteem. When you are with friends and family, be mindful of your gut reaction to “fat talk” (e.g., “I’m so fat!” or the “I’m so fat – No you’re not” debate). Keep in mind how the words might affect someone struggling with food issues.
Mindful Eating Support: Friends provide an enormous amount of support, but often it’s helpful to obtain assistance or a second opinion from a trained professional. If you would like to learn more about mindful eating, or if you have concerns about your eating habits, email CAPS at caps@richmond.edu, or consult the NEDA website for information and treatment referrals.
Information adapted from National Eating Disorders Association (NationalEatingDisorders.org)''',
      "title": '''Books'''
    },
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

Life without Ed: How One Woman Declared Independence from her Eating Disorder and How you can too
Eating in the Light of the Moon: How women can transform their relationships with food through myths, metaphors & storytelling
Intuitive Eating: A Revolutionary Program That Works''',
      "title": '''Online Resources'''
    },
    {
      "contents": '''National Eating disorders Association

Tips for Managing your Eating Disorder Recovery in Quarantine''',
      "title": '''Campus and CAPS Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class depressionBipolar_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Symptoms of depression may be cognitive, emotional, and/or physical. They may include:

Persistent sad or “empty” mood
Loss of interest or pleasure in hobbies or activities
Insomnia or oversleeping
Feeling guilty, worthless, or hopeless
Change in appetite
Difficulty concentrating and making decisions
Feeling restless or irritable
Persistent fatigue
Thoughts of death or suicide''',
      "title": '''Symptomss of Depression'''
    },
    {
      "contents":
          '''Risk factors for depression can include personal or family history of mood disorders, major life changes, traumas or stressors, and certain physical illnesses or medications
Nearly 40% of college students report their functioning has been impacted by depression within the last year
Not everyone who is depressed has the same symptoms, and there is no “one size fits all” treatment. However, a combination of approaches, even the most severe cases are treatable.''',
      "title": '''Depression: Did You Know?'''
    },
    {
      "contents":
          '''Bipolar disorder is a mental illness that causes dramatic shifts in a person’s mood, energy and ability to think clearly. People with bipolar experience high and low moods—known as mania and depression—which differ from the typical ups-and-downs most people experience.''',
      "title": '''What is Bipolar?'''
    },
    {
      "contents":
          '''To be diagnosed with bipolar disorder, a person must have experienced distinct episodes of depression (see symptoms above) and mania/hypomania. Mania symptoms include:

Abnormally upbeat, jumpy or wired
Increased activity, energy or agitation
Exaggerated sense of well-being and self-confidence (euphoria)
Decreased need for sleep
Unusual talkativeness
Racing thoughts
Distractibility
Poor decision-making — for example, going on buying sprees, taking sexual risks or making foolish investments''',
      "title": '''Symptoms of Bipolar?'''
    },
    {
      "contents":
          '''The average age of onset is about 25 years old and affects about 2.8% of the U.S. population. Although rare nationally, it can emerge during the college years.
The exact cause of bipolar is unknown but several factors may be involved, including genetics (Bipolar disorder is more common among those who have a first-degree relative with the condition), periods of high stress, or drug or alcohol use.
Proper treatment helps most people living with bipolar disorder control their mood swings and other symptoms. Because bipolar disorder is a chronic illness, treatment must be ongoing. If left untreated, the symptoms of bipolar disorder get worse, so diagnosing it and beginning treatment early is important.
Treating bipolar disorder may include medication, psychotherapy, education, self-management strategies and external supports such as family, friends and support groups. There is no one approach to treating bipolar disorder.''',
      "title": '''Bipolar: Did you know?'''
    },
    {
      "contents":
          '''Set realistic goals for yourself. Make specific plans to do things that bring you joy and/or give you a feeling of accomplishment.
Try not to isolate yourself. Spend time with others and confide in people that you trust. More people can relate to how you’re feeling than you might think; you’re not a burden.
Recognize that change takes times, and that your mood will likely improve gradually, rather than immediately. Understand that some “ups and downs” are normal.
Take care of your body: limit caffeine and alcohol. Get plenty of sleep. Eat well-balanced meals. Exercise regularly – it really can help!
Most of the time, people in manic states are unaware of the negative consequences of their actions. With bipolar disorder, suicide is an ever-present danger because some people become suicidal even in manic states. Learning from prior episodes what kinds of behavior signals “red flags” of manic behavior can help manage the symptoms of the illness.''',
      "title": '''Tips for Managing Mood Disorder'''
    },
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

The Happiness Trap
Facing Bipolar: The young adult’s guide to dealing with bipolar disorder
Coping with the Seasons Workbook: A cognitive-behavioral approach to seasonal affective disorder
Self-Compassion: Stop beating yourself up and leave insecurity behind''',
      "title": '''Books'''
    },
    {
      "contents": '''I had a black dog, his name was depression (video)
Tell me about Bipolar Disorder''',
      "title": '''Online Resources'''
    },
    {
      "contents":
          '''Helpful TAO Self-Help Pathways: Leave your Blues Behind or Improving your Mood
University Recreation
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Campus and CAPS Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class genderSexuality_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents": '''Understanding their gender or sexuality
Feeling welcome and accepted
Deciding whether to come out
Being socially isolation
Experiencing additional mental health concerns (anxiety, depression, anxiety, etc.)
Experiencing harassment''',
      "title": '''Common Concerns'''
    },
    {
      "contents":
          '''It Gets Better: Coming Out, Overcoming Bullying, and Creating a Life Worth Living
The Gay and Lesbian Guide to College Life: A Comprehensive Resource for LGBT Students and Their Allies
PFLAG Suggested Reading on Coming out, families, & other LGBT topics
The Social Justice Advocate’s Handbook: A Guide to Gender
Transgender Voices: Beyond Women and Men
Trans Bodies, Trans Selves: A Resource for the Transgender Community
PFLAG Transgender Reading List for Adults''',
      "title": '''Books'''
    },
    {
      "contents": '''Itgetsbetter.org
nami.org/find-support/lgbtq
pflag.org
thetrevorproject.org
transequality.org
transstudent.org''',
      "title": '''Online Resources'''
    },
    {
      "contents": '''Do I Sound Gay? (2014)
Game Face (2015): “Exploring the coming-out journeys of LGBTQ athletes” (Trailer for Documentary)
The Out List (HBO Docs, 2013): Explores the range of experiences lived by Americans who identify as LGBTQ+ (Trailer)
The Death and Life of Marsha P. Johson (Netflix, 2017) -Exploring justice for violence against trans women of color (trailer)
Deep Run (2015): a documentary portrait of trans life in rural North Carolina
Growing Up Trans (PBS DocuSeries, 2015)
The Trans List (HBO Docs, 2016): Explores the range of experiences lived by Americans who identify as transgender (Trailer)''',
      "title": '''Videos'''
    },
    {
      "contents": '''Student Center for Equity and Inclusion''',
      "title": '''Campus Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class griefLoss_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Talk to loved ones who also experienced the loss for support and community
Take a break from academics, if you’re able (let your College Dean know and they can alert professors)
Take a walk – either with friends or alone
Let people know whether you want to talk about it or not – so many people will want to support you so as much as you can, let them know what is helpful and what isn’t
As mentioned, grief looks different for everyone but if after a few weeks, you are finding it difficult to concentrate, take care of yourself, or manage your emotions, consider the Grief Support Group at CAPS for professional and peer support.
You may also visit the Chaplaincy for additional support.''',
      "title": '''Tips for Managing Grief'''
    },
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

The Grief Recovery Handbook: The Action Program for Moving Beyond Death, Divorce, and other Losses
When Bad Things Happen to Good People
When Things Fall Apart
Living Beyond Loss: Death in the Family
Being with Dying: Cultivating Compassion and Fearlessness in the Presence of Death''',
      "title": '''Books'''
    },
    {
      "contents": '''https://www.aarp.org/home-family/caregiving/grief-and-loss/
https://psychcentral.com/grief/
https://hospicefoundation.org/
https://modernloss.com/
https://afsp.org/ive-lost-someone''',
      "title": '''Online Resources'''
    },
    {
      "contents":
          '''Collateral Beauty (New Line Cinema, 2016): Explores relationships with love, time, and death (trailer)
The Grieving Process: Coping with Death
TED Talks on Grief
Me, Earl, and the Dying Girl (Indian Paintbrush, 2015): The importance of friendship and humor in dealing with the ups and downs of life (trailer)''',
      "title": '''Videos'''
    },
    {
      "contents": '''College Deans: Richmond College or Westhampton College
Chaplaincy
CAPS Grief Support Group
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Campus Resuorces'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class mindfulnessMeditation_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

The Mindful Twenty-Something
Just One Thing: Developing a Buddha brain one simple practice at a time''',
      "title": '''Books'''
    },
    {
      "contents": '''Calm
Insight Timer''',
      "title": '''Apps'''
    },
    {
      "contents": '''Koru Mindfulness
Mindful Mondays
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Campus Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class raceDiversity_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Race-related stress refers to the experience of stress specifically caused by being a target of racism and discriminatory behavior. This type of stress is likely to cause individuals to feel emotionally and psychologically distressed.''',
      "title": '''What is Race-Related Stress?'''
    },
    {
      "contents":
          '''Racism is defined as any type of prejudice or discrimination directed towards a person of color. Acts of racism can be institutionally or individually carried out. An example of institutional racism would be if people of color who are just as qualified as white individuals are less likely than white Americans to receive an opportunity. On the other hand, individual racism refers to racial discrimination that is directed towards a specific individual. For example, using a racial slur or stereotyping an individual is a type of individual racism.''',
      "title": '''What is Racism?'''
    },
    {
      "contents":
          '''Prejudice refers to a biased attitude, belief, or opinion about an individual based on their race or group membership. An example of racial prejudice would be thinking negatively about a person of another racial group solely based on their racial identity. Often times, racial prejudice can lead individuals to discriminate against members of another group.''',
      "title": '''What is Prejudice?'''
    },
    {
      "contents":
          '''Discrimination occurs when an individual of a minority group is treated unfairly due to existing prejudices directed towards that group. An example of discriminatory behavior includes rejecting minority members a position in an organization due to their identity.''',
      "title": '''What is Discrimination?'''
    },
    {
      "contents":
          '''It makes students feel like they are outsiders in the community
They feel more pressured to “prove that they belong”
Makes them feel angry, anxious, stressed, or fearful
They may have difficulty concentrating in class and completing their school work''',
      "title": '''How Racism Impacts Students of Color'''
    },
    {
      "contents":
          '''As stated earlier, race-related stress refers to the stress that results from experiencing any type of racist comments or discriminatory behavior. Having to experience race-related stress can be very exhausting and detrimental to an individual’s health. Below is a list of some of the negative impacts that race-related stress has on an individual:

Intense emotional reactions: anger anxiety fear frustration depression hopelessness isolation paranoia sadness self-blame self-doubt
Ineffective coping: avoidance disengaging substance use health concerns: heart disease hypertension muscle tension
Essentially, experiencing race-related stress can negatively impact an individual both psychologically and physically. For example, the John Henryism hypothesis states that individuals who experience stress for a prolonged period of time due to their racial identity are more likely to use a greater amount of energy and effort directed towards the stressful stimuli. This in turn, negatively impacts their physical health. For this reason, it is very important to help people of color actively cope with any stress that they may be experiencing, so that their health is not compromised in any way.''',
      "title": '''Consequences of Race-Related Stress'''
    },
    {
      "contents":
          '''Utilize on-campus resources, such as CAPS, the Student Center for Equity and Inclusion, the College Deans, the Area Coordinators etc. These resources have individuals that are specifically trained to be an inclusive source of support for you to discuss what is causing race-related stress and how they can aid you in overcoming this stress. Additionally, joining groups focused around discussion of race and eliminating racism and discrimination around campus can be beneficial. There are many of these clubs on campus, in addition to open discussion events based around race, mindfulness, stress, and more which are hosted by different departments and organizations throughout the academic year.''',
      "title": '''Recommendations for Coping with Race-Related Stress'''
    },
    {
      "contents": '''Black Lives Matter: Meditations
Black Lives Matter: Toolkits
Common Coping Strategies
Grief is a Direct Impact of Racism: Eight Ways to Support Yourself
Liberate Meditation App(by and for people of color)
Proactively Coping with Racism
Therapy for Black Girls Podcast
Intersectionality Matters! Podcast
Association of Black Psychologists Community Self-Care Toolkit
44 Black Mental Health Support Resources''',
      "title": '''Resources for Black Individuals and Communities'''
    },
    {
      "contents":
          '''Race-related stress can come in many forms and can manifest differently depending on the individual experiencing the stress. Lend a hand to the individual(s) you are interacting with and show your support by listening to their stories and struggles, and aid them in getting professional help from appropriate staff members if they are asking for it. In order to make an impact on the community, take what you learn from being an ally and attend open discussions and forums to contribute ideas to transforming our community into a more inclusive space. Lastly, educating those who have misconceptions about individuals of certain backgrounds and cultures will allow for a more inclusive campus community.

Emmanuel Acho: Uncomfortable Conversations with a Black Man
Disarming Racial Microaggressions: Microintervention Strategies for Targets, White Allies, and Bystanders
How to Talk to Kids about Race: Books and Resources That Can Help
Talking About Race: Being Antiracist
White Privilege: Unpacking the Invisible Knapsack
How to be an Antiracist Ally
Harvard Implicit Bias Test
Unlocking Us- Brene Brown Podcast with Ibram X Kendi on how to be an antiracist
Unlocking Us – Brene Brown with Austin Channing Brown''',
      "title": '''Ally/Antiracism Resources'''
    },
    {
      "contents": '''Student Center for Equity and Inclusion
CAPS Black Student Support Group''',
      "title": '''Campus Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class relationships_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

Codependent No More: How to Stop Controlling Others and Start Caring for Yourself
Attached: How the New Science of Adult Attachment Can Help You Find and Keep Love
Daring Greatly: How the Courage to be Vulnerable Transforms the Way we Live, Love, Parent, and Lead
The Five Love Languages
The Shyness and Social Anxiety Workbook''',
      "title": '''Books'''
    },
    {
      "contents": '''CAPS Improving Relationships Well-Being Seminar
Love is Respect
Relationships, Love, & Sexuality
NW Network: Support for LGBTQ abuse survivors
Columbia University’s Go Ask Alice
The Lonely College Student (article)
Helpful TAO Self-Help Pathways: Interpersonal Relationships and Communication''',
      "title": '''Online Resources'''
    },
    {
      "contents":
          '''The Power of Vulnerability (Brene Brown, 2010): TED Talk on the value of opening up to others
On Being Wrong (Kathryn Schultz, 2011): TED Talk on embracing our fallibility
Improving Relationships Well-Being Seminar video to learn ways to more effectively communicate with others''',
      "title": '''Videos'''
    },
    {
      "contents": '''C.A.R.E
CAPS Understanding Self and Others Group
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Campus Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class sleep_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Most adults need between 6 to 10 hours of sleep per night. Aiming for 7-8 is a good place to start, adjusting as needed. 7 out of 10 college students say they get less than the recommended amount of sleep every night!''',
      "title": '''How Much Sleep Do I Need'''
    },
    {
      "contents": '''Boost the immune system and support physical health
Contribute to a more positive mood and better mental health
Improve memory, concentration, and academic performance''',
      "title": '''Better Sleep Can:'''
    },
    {
      "contents": '''DO go to bed and get up around the same times every day.
DO exercise regularly. (Avoid exercise for several hours before bedtime.)
DO set aside time to write down anything worrying you earlier in the evening. When it’s time for bed, remind yourself that you’ve already done your worrying for the night.
DO establish a relaxing bedtime routine that works for you. (Take a relaxing shower, read a comforting book, etc.)
DO set the stage for sleep: consider the temperature, light, and sound in the room. Try turning your clock away from you.
DO try relaxation exercises.
DO get up if you’re not asleep in 30 minutes. Do something relaxing until you feel sleepy, then try again.''',
      "title": '''DOs for Better Sleep'''
    },
    {
      "contents":
          '''DON’T take long naps during the day. This can make sleeping at night more difficult and keep the cycle of poor sleep going.
DON’T drink caffeinated beverages (including tea, coffee, energy drinks, etc.), especially after 6pm.
DON’T eat a heavy meal less than 3 hours before bed.
DON’T use devices with bright screens (phone, laptop, tv, etc.) within the hour before bed.
DON’T use your bed for things other than sleeping (studying, socializing, eating, etc.)''',
      "title": '''DON'Ts for Better Sleep'''
    },
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

The Doctor’s Guide to Sleep Solutions for Stress and Anxiety

Overcoming Insomnia: A Cognitive-Behavioral Approach Workbook

Quiet Your Mind and Get to Sleep: Solutions to Insomnia for Those with Depression, Anxiety, or Chronic Pain

Why we sleep: Unlocking the power of sleep and dreams''',
      "title": '''Books'''
    },
    {
      "contents": '''Sleep Cycle
Sleep Better (Android)
Slumber (Apple)''',
      "title": '''Apps'''
    },
    {
      "contents": '''Getting a Good Night’s Sleep
https://www.sleepfoundation.org/
https://www.sleepassociation.org/sleep-disorders/insomnia/
Your Brain on Sleep
Some resources adapted from Appalachian State University Counseling Center.''',
      "title": '''Online Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class stressTimeManagement_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

The Relaxation and Stress Reduction Workbook
Stress Less, Live More: How acceptance and commitment therapy can help you live a busy yet balanced life''',
      "title": '''Books'''
    },
    {
      "contents": '''Managing Stress Well-Being Seminar
Calming Emotions Well-Being Seminar
Self-Care Well-Being Seminar
Managing Stress - Brainsmart
Self-Regulation @ Home (Great goal setting and time management video!)
TED Talk: How to make stress your friend''',
      "title": '''Videos Resources'''
    },
    {
      "contents": '''6 Tips to Improve your Time Management Skills
This is what Self-Care really means
Study Tips
Self-Compassion
Benefits of Exercise
Attention and Focus Intervention (for those wondering about ADHD)
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Online Resources'''
    },
    {"contents": '''Academic Skills Center''', "title": '''Campus Resources'''},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class traumaticEvents_expand extends StatelessWidget {
  final List quotes = [
    {
      "contents": '''Difficulty concentrating
Flashbacks of the event
Memory disturbance
Difficulty making decisions
Isolation or withdrawal''',
      "title": '''Cognitive Reactions'''
    },
    {
      "contents": '''Fatigue or exhaustion
Change in sleep patterns
Headaches
Digestive problems
Change in appetite''',
      "title": '''Physical Reactions'''
    },
    {
      "contents": '''Guilt
Anger
Hyper-vigilance
Feeling numb
Moodiness
Feeling helpless
Self-doubt
Frustration
Sadness''',
      "title": '''Emotional Reactions'''
    },
    {
      "contents":
          '''DO try to maintain normal routines for eating, sleeping, and exercising
DO spend time with trusted, supportive people, and talk about how you are doing
DO engage in intentional self-care, making time for simple things that you can find relaxing and enjoyable
DO allow yourself to feel a variety of feelings. Remember that your responses are normal and temporary.
DO see a mental health professional if symptoms persist or greatly impact day-to-day functioning''',
      "title": '''DOs for Recovering from a Traumatic Event'''
    },
    {
      "contents":
          '''DON’T rely on drugs and alcohol to cope; this will likely worsen symptoms in the long run.
DON’T isolate yourself or reject the support of others, even if you’re not sure what to say or do.
DON’T expect yourself to recover immediately. Trust that with time and patience, you will feel better.
DON’T engage in extreme avoidance of situations associated with the event. Gradually dealing with thoughts and fears related to the event can help you recover.''',
      "title": '''DON'Ts for Recovering from a Traumatic Event'''
    },
    {
      "contents":
          '''Some books may be available through Boatwright and others are linked to Amazon but please choose whatever book store you would like to support!

Healing from Trauma: A Survivor’s Guide to Understanding Your Symptoms and Reclaiming Your Life
It’s Not You, It’s What Happened to You: Complex Trauma and Treatment
8 Keys to Safe Trauma Recovery
The PTSD Workbook: Simple, Effective Techniques for Overcoming Traumatic Stress Symptoms''',
      "title": '''Books'''
    },
    {
      "contents": '''NAMI: 7 Tools for Managing Traumatic Stress
NIMH: PTSD
RAINN National Resources''',
      "title": '''Online Resources'''
    },
    {
      "contents": '''CARE
CAPS
PSMAs
Chaplaincy (ordained staff)
Some resources adapted from Appalachian State University Counseling Center''',
      "title": '''Campus Resources'''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: quotes.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableTile(quotes[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      title: Text(
        item['title'],
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['contents'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

// -----------------level 2 ends---------------

class itemModel {
  final String title;
  final Widget route;

  itemModel({required this.title, required this.route});
}

final _selfHelpList = [
  itemModel(title: '$selfHelp[0]', route: selfHelpResource()),
  itemModel(title: '$selfHelp[1]', route: anxietyPanic()),
  itemModel(title: '$selfHelp[2]', route: bodyImageEatingConcerns()),
  itemModel(title: '$selfHelp[3]', route: depressionBipolar()),
  itemModel(title: '$selfHelp[4]', route: genderSexuality()),
  itemModel(title: '$selfHelp[5]', route: griefLoss()),
  itemModel(title: '$selfHelp[6]', route: mindfulnessMeditation()),
  itemModel(title: '$selfHelp[7]', route: raceDiversity()),
  itemModel(title: '$selfHelp[8]', route: relationships()),
  itemModel(title: '$selfHelp[9]', route: sleep()),
  itemModel(title: '$selfHelp[10]', route: stressTimeManagement())
];
