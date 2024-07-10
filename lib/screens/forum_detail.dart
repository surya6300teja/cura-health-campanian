import 'package:flutter/material.dart';
import 'package:glee/screens/colors.dart';

class ForumDetailPage extends StatefulWidget {
  @override
  _ForumDetailPageState createState() => new _ForumDetailPageState();
}

var ForumPostArr = [
  new ForumPostEntry("Anxious_Arjun(Me)", "2 Days ago", 0 , 0 , "Hi everyone, I'm Arjun and I have been struggling with social anxiety for a while now. It gets especially bad when I have to meet new people or go to crowded events. My heart races, I get sweaty palms, and sometimes I even feel like I might faint. Does anyone have any tips for managing anxiety in social situations?."),
  new ForumPostEntry("Calm_Chandu(User401)", "23 Hours ago", 1 , 0 , "Hey Arjun, I totally understand how you feel. Social anxiety can be really tough.  I used to experience similar symptoms. Here are a few things that have helped me "
      "- Deep Breathing Exercises: Taking slow, deep breaths can help to calm your nervous system before or during a social situation. There are many guided meditation apps that offer breathing exercises specifically for anxiety.Positive Self-Talk: Challenging negative thoughts with positive affirmations can be very helpful. Before going into a social situation, remind yourself that you are worthy and interesting, and that most people are more focused on themselves than judging others. -Focus on Others: When youre feeling anxious, its easy to become self-absorbed. Instead, try to shift your focus to the people around you. Ask them questions and listen attentively."),
  new ForumPostEntry("Supportive_Sravya(User514)", "2 Days ago", 5 , 0 , "I agree with Calm_Chandu! Deep breathing exercises have been a lifesaver for me.  Also, focusing on one person at a time in a crowded situation can be less overwhelming than trying to take it all in at once. Start a conversation with someone you feel comfortable with, and then you can gradually expand your social circle."),
  new ForumPostEntry("Anxious_Arjun(Me)User4", "2 Days ago", 0 , 0 , "Thank you both so much for the advice! I will definitely try the deep breathing exercises and positive self-talk. The idea of focusing on one person at a time also seems really helpful. I'm feeling a little more optimistic now."),
new ForumPostEntry("Therapist_Tara", "2 Days ago", 0 , 0 , "Hi arjun, I'm Tara, a licensed therapist.While I can't provide therapy directly through this forum, I'm happy to offer some guidance on seeking professional help.Book A Appointment")
];

class _ForumDetailPageState extends State<ForumDetailPage> {
  @override
  Widget build(BuildContext context) {
    var questionSection = new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Text(
            "Managing Anxiety in Social Situations??",
            textScaleFactor: 1.5,
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconWithText(Icons.laptop_mac, "Technology", iconColor: Colors.lightBlueAccent,),
                new IconWithText(
                  Icons.check_circle,
                  "Answered",
                  iconColor: Colors.lightBlueAccent,
                ),
                new IconWithText(Icons.remove_red_eye, "54",iconColor: Colors.transparent)
              ],
            ),
          ),
          new Divider()
        ],
      ),
    );

    var responses = new Container(
      padding: const EdgeInsets.all(8.0),
      child: new ListView.builder(
        itemBuilder: (BuildContext context, int index) => new ForumPost(ForumPostArr[index]),
        itemCount: ForumPostArr.length,
      )
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Forum Discussions"),
      ),
      body: new Column(
        children: <Widget>[
          questionSection,
          new Expanded(
              child: new Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: responses,
          ))
        ],
      ),
    );
  }
}

class ForumPostEntry{
  final String username;
  final String hours;
  final int likes;
  final int dislikes;
  final String text;

  ForumPostEntry(this.username, this.hours, this.likes, this.dislikes, this.text);
}

class ForumPost extends StatelessWidget {
  final ForumPostEntry entry;

  ForumPost(this.entry);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
        color: Colors.lightBlueAccent[200],
        borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              color:Colors.lightBlueAccent[200],
              borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0)),
            ),
            child: new Row(
              children: <Widget>[
                new Icon(
                  Icons.person,
                  size: 50.0,
                ),
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        entry.username
                      ),
                      new Text(
                        entry.hours
                      ),
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Icon(Icons.thumb_up),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Text(entry.likes.toString()),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Icon(Icons.thumb_down),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 2.0),
                      child: new Text(entry.dislikes.toString()),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 2.0,right: 2.0,bottom: 2.0),
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(bottomLeft :const Radius.circular(20.0),bottomRight :const Radius.circular(20.0))
            ),
            child: new Text(entry.text,style: TextStyle(
              fontSize: 16.0, // Change this value to your desired size
            ),),
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;

  IconWithText(this.iconData, this.text, {required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Icon(
            this.iconData,
            color: this.iconColor,
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(this.text),
          ),
        ],
      ),
    );
  }
}
