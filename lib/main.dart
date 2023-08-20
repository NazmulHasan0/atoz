import 'package:atoz/AlertDialog/alertdialog.dart';
import 'package:atoz/Align/align.dart';
import 'package:atoz/Animation/animated_align.dart';
import 'package:atoz/Animation/animated_container.dart';
import 'package:atoz/Animation/animated_positioned.dart';
import 'package:atoz/Animation/animateddefaulttextstyle.dart';
import 'package:atoz/Animation/hero_animation1.dart';
import 'package:atoz/AppBar%20&%20PreferredSize/appbar.dart';
import 'package:atoz/Bottom%20Navigation%20Bar/bottomnavbar.dart';
import 'package:atoz/BottomSheet/bottomsheet.dart';
import 'package:atoz/Button/button.dart';
import 'package:atoz/Card/card.dart';
import 'package:atoz/CheckBox/checkbox.dart';
import 'package:atoz/ClipRRect/cliprrect.dart';
import 'package:atoz/Container/container.dart';
import 'package:atoz/DataTable/datatable.dart';
import 'package:atoz/Date%20Picker/datepicker.dart';
import 'package:atoz/Divider/divider.dart';
import 'package:atoz/Drawer/drawer.dart';
import 'package:atoz/Exit%20Dialog/exitdialog.dart';
import 'package:atoz/Expanded/expanded.dart';
import 'package:atoz/Floating%20Action%20Button/floatingactionbutton.dart';
import 'package:atoz/Gesture%20Detector/gesture.dart';
import 'package:atoz/GridView%20Builder/gridviewbuilder.dart';
import 'package:atoz/GridView/gridview.dart';
import 'package:atoz/Image/image.dart';
import 'package:atoz/Indexed%20Stack/indexedstack.dart';
import 'package:atoz/InkWell/inkwell.dart';
import 'package:atoz/ListTile/listtile.dart';
import 'package:atoz/ListView/listview.dart';
import 'package:atoz/ListView%20Builder/listviewbuilder.dart';
import 'package:atoz/Navigation%20Rail/navigationrail.dart';
import 'package:atoz/Nestedscrollview/nestedscrollview.dart';
import 'package:atoz/Opacity/opacity.dart';
import 'package:atoz/Page%20View/pageview.dart';
import 'package:atoz/RadioButton/radio_button.dart';
import 'package:atoz/Rich%20Text/richtext.dart';
import 'package:atoz/Slider/slider.dart';
import 'package:atoz/Sliver%20AppBar/sliverappbar.dart';
import 'package:atoz/SnackBar/snackbar.dart';
import 'package:atoz/Spacer/spacer.dart';
import 'package:atoz/Stack-Positioned/stack_positioned.dart';
import 'package:atoz/Switch/switch.dart';
import 'package:atoz/TabBar/tabbar.dart';
import 'package:atoz/TimePicker/timepicker.dart';
import 'package:atoz/Toggle%20Button/togglebutton.dart';
import 'package:atoz/Tooltip/tooltip.dart';
import 'package:atoz/Wrap/wrap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Myinkwell',
      routes: {
        '/Myinkwell': (context) => Myinkwell(),
        '/Mygesture': (context) => Mygesture(),
        '/Myradiobutton': (context) => Myradiobutton(),
        '/Myopacity': (context) => Myopacity(),
        '/Myexitdialog': (context) => Myexitdialog(),
        '/Mynavigationrail': (context) => Mynavigationrail(),
        '/Myindexedstack': (context) => Myindexedstack(),
        '/Myheroanimation1': (context) => Myheroanimation1(),
        '/Myanimatedpositioned': (context) => Myanimatedpositioned(),
        '/Myanimateddefaulttextstyle': (context) =>
            Myanimateddefaulttextstyle(),
        '/Myanimatedcontainer': (context) => Myanimatedcontainer(),
        '/Myanimatedalign': (context) => Myanimatedalign(),
        '/MyTooltip': (context) => MyTooltip(),
        '/MyToggleButton': (context) => MyToggleButton(),
        '/MyTimePicker': (context) => MyTimePicker(),
        '/MySwitch': (context) => MySwitch(),
        '/MySpacer': (context) => MySpacer(),
        '/MySliverappbar': (context) => MySliverappbar(),
        '/MyDrawer': (context) => MyDrawer(),
        '/MySlider': (context) => MySlider(),
        '/MyFloatingactionbutton': (context) => MyFloatingactionbutton(),
        '/MyDivider': (context) => MyDivider(),
        '/MyDataTable': (context) => MyDataTable(),
        '/MyCliprrect': (context) => MyCliprrect(),
        '/MyCard': (context) => MyCard(),
        '/MyListtile': (context) => MyListtile(),
        '/MyExpanded': (context) => MyExpanded(),
        '/MyPageview': (context) => MyPageview(),
        '/MyTabbar': (context) => MyTabbar(),
        '/Mygridviewbuilder': (context) => Mygridviewbuilder(),
        '/MyGridview': (context) => MyGridview(),
        '/MyListviewbuilder': (context) => MyListviewbuilder(),
        '/MyListview': (context) => MyListview(),
        '/MyNestedscrollview': (context) => MyNestedscrollview(),
        '/MyBottomnavbar': (context) => MyBottomnavbar(),
        '/MyCheckbox': (context) => MyCheckbox(),
        '/Mybottomsheet': (context) => Mybottomsheet(),
        '/MyAlertdialog': (context) => MyAlertdialog(),
        '/MyDatepicker': (context) => MyDatepicker(),
        '/MySnackbar': (context) => MySnackbar(),
        '/MyAlign': (context) => MyAlign(),
        '/MyStack': (context) => MyStack(),
        '/MyImage': (context) => MyImage(),
        '/MyContainer': (context) => MyContainer(),
        '/MyButton': (context) => MyButton(),
        '/MyWrap': (context) => MyWrap(),
        '/MyRichtext': (context) => MyRichtext(),
        '/MyAppbar': (context) => MyAppbar(),
      },
    );
  }
}
