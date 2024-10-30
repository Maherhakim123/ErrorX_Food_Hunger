import 'package:flutter/material.dart';
import 'package:errorx/editprofilepage.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/foodbank.png'),
            ),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 8),
            onPressed: () {
              //Add action here
            },
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Container(
          // padding: const EdgeInsets.all(''),
            child: Column(

              children: [
                Stack(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/self.JPG',
                            fit: BoxFit.cover,
                          ),
                        )
                    ),

                    Positioned(  //position icon camera
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orangeAccent ),
                        child: const Icon(
                          Icons.add_a_photo,
                          color: Colors.black,
                          size: 20,
                        ) ,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),

                Text('Taufiq', style: Theme.of(context).textTheme.headlineMedium),
                Text('something@gmail.com', style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(height: 20),

                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const editprofile())
                        );
                      },
                      child: const Text('Edit Profile',style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,side: BorderSide.none, shape: const StadiumBorder()
                      ),
                    )
                ),
                const SizedBox(height: 30),
                const Divider(), // make it context to center
                const SizedBox(height: 10),

              ],
            )
        ),
      ),
    );
  }
}
