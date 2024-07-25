
import 'package:flutter/material.dart';


class LayoutBuilderResponsiveDesign extends StatelessWidget {
  const LayoutBuilderResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold
  });

  final MobileScaffold mobileScaffold;
  final TabletScaffold tabletScaffold;
  final DesktopScaffold desktopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth <= 1000){
        return mobileScaffold;
      }
      else if(constraints.maxWidth <= 1100){
        return tabletScaffold;
      }
      else{
        return desktopScaffold;
      }
    },);
  }
}

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

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

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

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

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

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

