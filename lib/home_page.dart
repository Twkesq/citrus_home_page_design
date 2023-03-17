import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  Color bg = Colors.orange;
  Color text = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bg,
      body: AnimatedBackground(
        vsync: this,

        behaviour: RandomParticleBehaviour(
          options:const  ParticleOptions(
            spawnMaxRadius: 30,
            spawnMinSpeed: 10.0,
            particleCount: 128,
            spawnMaxSpeed: 11.0,
            spawnOpacity: 0.3,
            baseColor: Colors.white,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const SizedBox(height: 60,),
            const Text("Citrus",style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 85,fontFamily: 'Nove',),),
            const Text('Plan',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 85,fontFamily: 'Nove')),
            const SizedBox(height: 50,),
            const Text("for bright and productive days",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
            const SizedBox(height:50,),
            TextButton(
                onPressed: () {},
                child:Container(
                  padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
                  width: 225,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Text("Get Started", style: TextStyle(color: text,fontSize: 18,shadows: const [Shadow(
                    blurRadius: 8.0,
                    color: Colors.grey,


                  )]),),
                )
            ),
            const SizedBox(height: 50,),
            const Text("Choose your citrus",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: IconButton
                      (onPressed: () {
                      setState(() {
                        bg = Colors.orange;
                        text = Colors.orange;
                      });
                    },
                      icon: Image.asset("assets/images/orange.png"),
                    )
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        bg =  Colors.lime;
                        text = Colors.lime;
                      });
                    },
                    icon: Image.asset("assets/images/lime.png"),
                  ),
                ),


                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  child:IconButton(
                      onPressed: () {
                        setState(() {
                          bg = Colors.yellow;
                          text = Colors.yellow;
                        });
                      },
                      icon: Image.asset("assets/images/lemon.png")),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
