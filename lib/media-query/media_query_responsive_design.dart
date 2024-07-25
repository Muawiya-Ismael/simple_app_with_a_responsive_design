import 'package:flutter/material.dart';

class MediaQueryResponsiveDesign extends StatelessWidget {
  const MediaQueryResponsiveDesign({super.key});

  Widget deviseType(double screenWidth, double screenHeight){
    if(screenWidth <= 1000){
      return const MobileMediaQuery();
    }
    else if(screenWidth <= 1100){
      return const TabletMediaQuery();
    }
    else{
      return const DesktopMediaQuery();
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: deviseType(screenWidth,screenHeight),
    );
  }
}

class MobileMediaQuery extends StatelessWidget {
  const MobileMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile",style: TextStyle(color:Color(0xFFD0BCFE),fontSize: 28,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: const BackButton(
            color: Color(0xFFD0BCFE),
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(onPressed: (){ Scaffold.of(context).openEndDrawer();}, icon: const Icon(Icons.menu));
            }
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.red,
        width: 300,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style:TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style:TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style:TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style:TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color:Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.green),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.green),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.green),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.green),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.yellow),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.yellow),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.yellow),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.white,
                        child: const Center(child: Text("Content",style: TextStyle(color: Colors.yellow),textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.blue,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.blue,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      color: Colors.blue,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      color: Colors.blue,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 100,
                      color: Colors.green,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 100,
                      color: Colors.green,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 100,
                      color: Colors.green,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 100,
                      color: Colors.green,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      color: Colors.yellow,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      color: Colors.yellow,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      color: Colors.yellow,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      color: Colors.yellow,
                      child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                    ),
                  ),
                ],
              ),



            ],
          )
        ],
      ),
    );
  }
}

class TabletMediaQuery extends StatelessWidget {
  const TabletMediaQuery({super.key});

  double underEightHundred(double screenWidth){
      if(screenWidth <=1100){
        return screenWidth - 700;
      }else{
        return 400;
      }
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet",style: TextStyle(color:Color(0xFFD0BCFE),fontSize: 28,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: const BackButton(
          color: Color(0xFFD0BCFE),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.blue,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.blue,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.blue,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.blue,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.green,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.green,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.green,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        color: Colors.green,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.yellow,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.yellow,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.yellow,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 200,
                        color: Colors.yellow,
                        child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.red,
                  width: underEightHundred(screenWidth),
                  child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}

class DesktopMediaQuery extends StatelessWidget {
  const DesktopMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Desktop",style: TextStyle(color:Color(0xFFD0BCFE),fontSize: 28,fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: const BackButton(
            color: Color(0xFFD0BCFE),
          ),
        ),
        body: Row(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.blue,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.blue,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.blue,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.blue,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 100,
                          color: Colors.green,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 100,
                          color: Colors.green,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 100,
                          color: Colors.green,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 100,
                          color: Colors.green,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.yellow,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.yellow,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.yellow,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 200,
                          color: Colors.yellow,
                          child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.red,
                    width: 400,
                    child: const Center(child: Text("Content",textAlign: TextAlign.center,)),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}

