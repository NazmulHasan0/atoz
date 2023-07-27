
//! textField এ কোন inpute দিয়ে button এ click করলে, inpute console এ show করবে
/*
TextEditingController tf = TextEditingController();

TextField(
  controller: tf,
  ),
  ElevatedButton(
    onPressed: () {
      print(tf.text);
    },
    child: Text("TextField Button"),
  ),
*/

//! textField এ কোন inpute দিলে continiously console এ show করানোর জন্য
/*
TextEditingController tf = TextEditingController();

TextField(
  controller: tf,
  onChanged: (value) {
    print(value);
  },
),
*/

//! textField এ কোন inpute দিয়ে button এ click করলে, inpute screen এ show করবে
/*
TextEditingController tf = TextEditingController();
String _text = "";

TextField(
controller: tf,
),
ElevatedButton(
  onPressed: () {
    setState(() {
      _text = tf.text;
    });
  },
  child: Text("TextField Button"),
),

Text(_text),
*/

//! textField এ কোন inpute দিলে continiously screen এ show করানোর জন্য
/*
TextEditingController tf = TextEditingController();
String _text = "";

TextField(
  controller: tf,
  onChanged: (value) {
  setState(() {
    _text = value;
  });
  },
  ),

Text(_text),
*/

//! কিভাবে Validation করতে হয় ?
/*
TextEditingController tf = TextEditingController();
String _text = "";
final _formKey = GlobalKey<FormState>();

Form(
  key: _formKey,
  autovalidateMode: AutovalidateMode.always,
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      TextFormField(
        controller: tf,
        validator: (value) {
          if (value!.isEmpty) {
            return "This field can't be empty";
          } else if (value.length < 6) {
            return "Password can't be less then 6 digit";
          }
        },
      ),

      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            print("Validation Completed");
          }
        },
        child: Text("Click"),
      ),
    ],
  ),
),
*/