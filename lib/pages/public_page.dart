import 'package:flutter/material.dart';

class PublicPage extends StatefulWidget {
  @override
  _PublicPageState createState() => _PublicPageState();
}

class _PublicPageState extends State<PublicPage> {
  var _avatar =
      "https://media.licdn.com/dms/image/C4D03AQHsPLgUuJ8K3A/profile-displayphoto-shrink_200_200/0?e=1534982400&v=beta&t=aD7LqbKSPU7ilcERreml7m3MrpoCDgYRgInhu23ewVQ";
  var _avatar2 = "https://lh3.googleusercontent.com/-3Pn7Sr-bvOU/AAAAAAAAAAI/AAAAAAAAAXM/aCp45J_o5P8/s640-il/photo.jpg";
  var avatar3 = "https://scontent-dfw5-2.cdninstagram.com/vp/32b13f3adbd48fa227b450d747b3bb52/5BBAF845/t51.2885-19/s150x150/12338516_182337305450081_212587278_a.jpg";
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      new Card(
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0)),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(7.0)),
            new ListTile(

                title: new Text("Omnyama Pty Ltd", style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                subtitle: new Text("Joined 6 days ago", style: TextStyle(
                  fontSize: 12.0
                ),),
                trailing: new CircleAvatar(
                    backgroundImage: new NetworkImage(_avatar),
                    radius: 35.0,
                ),
                leading: Icon(
                  Icons.favorite_border,
                  color: Colors.greenAccent[700],
                  size: 30.0,
                )),
            new Padding(padding: const EdgeInsets.all(4.0)),
            new ListTile(
              trailing: Icon(Icons.done_all, color: Colors.greenAccent[700], size: 30.0,),
              title: new Text("Plumbing Services", style: TextStyle(
                color: Colors.blueGrey,
                //fontWeight: FontWeight.bold
              ),),
              subtitle: new Text(
                  "Providing the best services services services services services services\n more text...."),
            ),
            new ButtonTheme.bar(
              child: new ButtonBar(
                children: <Widget>[
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.location_on,
                          color: Colors.blueGrey,
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(3.0),
                        ),
                        new Text("9km away")
                      ],
                    ),
                    onPressed: () => print("Contact button pressed"),
                  ),
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.chat,
                          color: Colors.blueGrey,
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(3.0),
                        ),
                        new Text("Contact")
                      ],
                    ),
                    onPressed: () => print("Contact button pressed"),
                  ),
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 17.0,
                        ),
                        new Icon(Icons.star,
                            color: Colors.red, size: 17.0),
                        new Icon(Icons.star,
                            color: Colors.red, size: 17.0),
                        new Icon(Icons.star, color: Colors.grey, size: 17.0),
                        new Icon(Icons.star, color: Colors.grey, size: 17.0)
                      ],
                    ),
                    onPressed: () => print("Rating pressed"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      new Card(
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0)),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(7.0)),
            new ListTile(

                title: new Text("Mila Architects", style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                subtitle: new Text("Joined 13 months ago", style: TextStyle(
                  fontSize: 12.0
                ),),
                trailing: new CircleAvatar(
                    backgroundImage: new NetworkImage(_avatar2),
                    radius: 35.0,
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.greenAccent[700],
                  size: 30.0,
                )),
            new Padding(padding: const EdgeInsets.all(4.0)),
            new ListTile(
              trailing: Icon(Icons.done_all, color: Colors.greenAccent[700], size: 30.0,),
              title: new Text("Civil Engineering", style: TextStyle(
                color: Colors.blueGrey,
                //fontWeight: FontWeight.bold
              ),),
              subtitle: new Text(
                  "Providing the best services services services services services services\n more text...."),
            ),
            new ButtonTheme.bar(
              child: new ButtonBar(
                children: <Widget>[
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.location_on,
                          color: Colors.blueGrey,
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(3.0),
                        ),
                        new Text("12km away")
                      ],
                    ),
                    onPressed: () => print("Contact button pressed"),
                  ),
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.chat,
                          color: Colors.blueGrey,
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(3.0),
                        ),
                        new Text("Contact")
                      ],
                    ),
                    onPressed: () => print("Contact button pressed"),
                  ),
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 17.0,
                        ),
                        new Icon(Icons.star,
                            color: Colors.red, size: 17.0),
                        new Icon(Icons.star,
                            color: Colors.red, size: 17.0),
                        new Icon(Icons.star, color: Colors.red, size: 17.0),
                        new Icon(Icons.star, color: Colors.red, size: 17.0)
                      ],
                    ),
                    onPressed: () => print("Rating pressed"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      new Card(
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0)),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(7.0)),
            new ListTile(

                title: new Text("Asawi IT", style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                subtitle: new Text("Joined 3 years ago", style: TextStyle(
                  fontSize: 12.0
                ),),
                trailing: new CircleAvatar(
                    backgroundImage: new NetworkImage(avatar3),
                    radius: 35.0,
                ),
                leading: Icon(
                  Icons.favorite_border,
                  color: Colors.greenAccent[700],
                  size: 30.0,
                )),
            new Padding(padding: const EdgeInsets.all(4.0)),
            new ListTile(
              trailing: Icon(Icons.check, color: Colors.greenAccent[700], size: 30.0,),
              title: new Text("ICT Services", style: TextStyle(
                color: Colors.blueGrey,
                //fontWeight: FontWeight.bold
              ),),
              subtitle: new Text(
                  "Providing the best services services services services services services\n more text...."),
            ),
            new ButtonTheme.bar(
              child: new ButtonBar(
                children: <Widget>[
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.location_on,
                          color: Colors.blueGrey,
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(3.0),
                        ),
                        new Text("12km away")
                      ],
                    ),
                    onPressed: () => print("Contact button pressed"),
                  ),
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.chat,
                          color: Colors.blueGrey,
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(3.0),
                        ),
                        new Text("Contact")
                      ],
                    ),
                    onPressed: () => print("Contact button pressed"),
                  ),
                  new MaterialButton(
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 17.0,
                        ),
                        new Icon(Icons.star,
                            color: Colors.red, size: 17.0),
                        new Icon(Icons.star,
                            color: Colors.red, size: 17.0),
                        new Icon(Icons.star, color: Colors.red, size: 17.0),
                        new Icon(Icons.star, color: Colors.grey, size: 17.0)
                      ],
                    ),
                    onPressed: () => print("Rating pressed"),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
