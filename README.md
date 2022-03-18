# bored

Unofficial API wrapper for the Bored API written in Dart  :] 


## API Website

Here is the official API Website of the Bored API -\
https://www.boredapi.com/

## How To Use

"bored" package offers you 9 functions to use the Bored API with ease! They are -

`getActivity()`, `getActivityFromKey()`

## Return Types

very soon <3

## Code Example

A piece of code that uses getActivityFromType()...

```dart

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder(
          future: getActivityFromType(activityType: "Social"),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              } else if (snapshot.hasData) {
                final data = snapshot.data as Map;
                return Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 600,
                  color: Color(0xFF12202F),
                  child: Text(
                    '${data["Activity"]}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              }
            }
            return SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(),
            );
          }),
    ));
  }
}

```


## Output

Here is the output of the code above -

```
{Activity: Do something nice for someone you care about, Accessibility: 0.1, Type: social, Participants: 1, Price: 0, Link: , Key: 8321894} // Got this when I did print(snapshot.data);
```

<img src="https://raw.githubusercontent.com/ShayokhShorfuddin/bored/master/activity.png" />


## Usage

To use this package :

* add the dependency to your `pubspec.yaml` file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    bored:
```


# License
MIT License

Copyright (c) 2022 Shayokh Shuvro

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
