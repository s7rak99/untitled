import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropDownEx extends StatefulWidget {
  const DropDownEx({Key? key}) : super(key: key);

  @override
  State<DropDownEx> createState() => _DropDownExState();
}

class _DropDownExState extends State<DropDownEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSearchBox: true,
                showSelectedItems: true,
                disabledItemFn: (String s) => s.startsWith('I'),
              ),
              items: const ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              dropdownDecoratorProps: const DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Menu mode",
                  hintText: "country in menu mode",
                ),
              ),
              onChanged: print,
              //selectedItem: "Brazil",
            ),

            // DropdownSearch<String>.multiSelection(
            //   items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
            //   popupProps: PopupPropsMultiSelection.menu(
            //     showSelectedItems: true,
            //     disabledItemFn: (String s) => s.startsWith('I'),
            //   ),
            //   onChanged: print,
            //   selectedItems: ["Brazil"],
            // )
          ],
        ),
      ),
    );
  }
}
