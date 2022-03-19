# bored

Unofficial API wrapper for the Bored API written in Dart  :] 


## API Website

Here is the official API Website of the Bored API -\
https://www.boredapi.com/

## How To Use

"bored" package offers you 9 functions to use the Bored API with ease! They are -

`getActivity()`, `getActivityFromKey()`, `getActivityFromType()`, `getActivityFromParticipants()`, ` getActivityFromPrice()`, `getActivityFromPriceRange()`, ` getActivityFromAccessibility()`, `getActivityFromAccessibilityRange()`, `getCustomizedActivity()`

All of the functions will return a **Map** that kind of looks like this...

```{Activity: An activity here, Accessibility: 0.1, Type: social, Participants: 1, Price: 0, Link: , Key: 123456}```

* If any error occured from the Bored API, the package will throw that error.

## Parameters And Return Types

* ```getActivity()``` // Simply returns a random activity. No parameter is required for this function :)
* ```getActivityFromKey()``` // Requests for an activity associated with the provided key. Parameter "keyValue" is required and must be an integer.
* ```getActivityFromType()``` // Requests for an activity associated with the provided type. Parameter "activityType" is required and must be a String. Available types are ["education", "recreational", "social", "diy", "charity", "cooking", "relaxation", "music", "busywork"].
* ```getActivityFromParticipants()``` // Requests for an activity associated with the provided participant count. Parameter "expectedParticipants" is required and must be an integer.
* ```getActivityFromPrice()``` // Requests for an activity associated with the provided price. Parameter "fixedPrice" is required and must be a double.
* ```getActivityFromPriceRange()``` // Requests for an activity associated with the provided price range. "minPrice" and "maxPrice" parameters are required and both must be a double.
* ```getActivityFromAccessibility()``` // Requests for an activity associated with the provided accessibility. Parameter "expectedAccessibility" is required and must be a double.
* ```getActivityFromAccessibilityRange()``` // Requests for an activity associated with the provided accessibility range. "minAccessibility" and " maxAccessibility" parameters are required and both must be a double.
* ```getCustomizedActivity()``` // This function is useful if you are expecting activities with specific requirements. For example, suppose you want activities that has `2 participants` and price range is `0.1 - 0.5` and the type should be `social`. In that case, simply do - 
```dart
getCustomizedActivity(expectedParticipants: 2, minPrice: 0.1, maxPrice: 0.5, activityType: "Social") // you are awesome :)
```


## Code Example

A piece of code that uses getActivityFromType() ⬇️

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
