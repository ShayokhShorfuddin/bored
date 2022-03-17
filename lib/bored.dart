library bored;

import 'package:http/http.dart' as http;
import 'dart:convert';

//For fetching a random activity!

Future<Map> getActivity() async {
  String targeturl = 'http://www.boredapi.com/api/activity/';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using Key!

Future<Map> getActivityFromKey({required int keyValue}) async {
  String targeturl = 'http://www.boredapi.com/api/activity?key=$keyValue';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using Type!

Future<Map> getActivityFromType({required String activityType}) async {
  List availableTypes = [
    "education",
    "recreational",
    "social",
    "diy",
    "charity",
    "cooking",
    "relaxation",
    "music",
    "busywork"
  ];

  // If given activity is not in availableTypes...

  // Using toLowerCase() and trim() because the given activity can look like this - "Social ".

  if (availableTypes.contains(activityType.toLowerCase().trim()) == false) {
    throw "${activityType.toLowerCase().trim()} is not an available type. Available types are - education, recreational, social, diy, charity, cooking, relaxation, music and busywork.";
  }

  String targeturl =
      'http://www.boredapi.com/api/activity?type=${activityType.toLowerCase().trim()}';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using number of Participants!

Future<Map> getActivityFromParticipants(
    {required int expectedParticipants}) async {
  String targeturl =
      'http://www.boredapi.com/api/activity?participants=$expectedParticipants';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using a specified price!

Future<Map> getActivityFromPrice({required double fixedPrice}) async {
  String targeturl = 'http://www.boredapi.com/api/activity?price=$fixedPrice';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using Minimum Price and Maximum Price!

Future<Map> getActivityFromPriceRange(
    {required double minPrice, required double maxPrice}) async {
  String targeturl =
      'http://www.boredapi.com/api/activity?minprice=$minPrice&maxprice=$maxPrice';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using number of Accessibility!

Future<Map> getActivityFromAccessibility(
    {required double expectedAccessibility}) async {
  String targeturl =
      'http://www.boredapi.com/api/activity?accessibility=$expectedAccessibility';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity using Minimum Accessibility and Maximum Accessibility!

Future<Map> getActivityFromAccessibilityRange(
    {required double minAccessibility,
    required double maxAccessibility}) async {
  String targeturl =
      'http://www.boredapi.com/api/activity?minaccessibility=$minAccessibility&maxaccessibility=$maxAccessibility';
  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

///////////////////////////////////////////
///////////////////////////////////////////

//For fetching a random activity but you can specify your requirements like if you are thinking "Participants should be 3 but minimum price should be around 0.15. Also the type should be Social". So, you can do this - getCustomizedActivity(expectedParticipants: 3, minPrice 0.15, activityType: "social") :]

Future<Map> getCustomizedActivity(
    {int? keyValue,
    String? activityType,
    int? expectedParticipants,
    double? fixedPrice,
    double? minPrice,
    double? maxPrice,
    double? expectedAccessibility,
    double? minAccessibility,
    double? maxAccessibility}) async {
  String targeturl = 'http://www.boredapi.com/api/activity?';

  // KeyValue
  if (keyValue != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "key=$keyValue";
    } else {
      targeturl = targeturl + "&key=$keyValue";
    }
  }

  // ActivityType
  if (activityType != null) {
    List availableTypes = [
      "education",
      "recreational",
      "social",
      "diy",
      "charity",
      "cooking",
      "relaxation",
      "music",
      "busywork"
    ];

    if (availableTypes.contains(activityType.toLowerCase().trim()) == false) {
      throw "${activityType.toLowerCase().trim()} is not an available type. Available types are - education, recreational, social, diy, charity, cooking, relaxation, music and busywork.";
    }
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "type=${activityType.toLowerCase().trim()}";
    } else {
      targeturl = targeturl + "&type=${activityType.toLowerCase().trim()}";
    }
  }

  // ExpectedParticipants
  if (expectedParticipants != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "participants=$expectedParticipants";
    } else {
      targeturl = targeturl + "&participants=$expectedParticipants";
    }
  }

  // FixedPrice
  if (fixedPrice != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "price=$fixedPrice";
    } else {
      targeturl = targeturl + "&price=$fixedPrice";
    }
  }

  // MinPrice
  if (minPrice != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "minprice=$minPrice";
    } else {
      targeturl = targeturl + "&minprice=$minPrice";
    }
  }

  // MaxPrice
  if (maxPrice != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "maxprice=$maxPrice";
    } else {
      targeturl = targeturl + "&maxprice=$maxPrice";
    }
  }

  // ExpectedAccessibility
  if (expectedAccessibility != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "accessibility=$expectedAccessibility";
    } else {
      targeturl = targeturl + "&accessibility=$expectedAccessibility";
    }
  }

  // MinAccessibility
  if (minAccessibility != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "minaccessibility=$minAccessibility";
    } else {
      targeturl = targeturl + "&minaccessibility=$minAccessibility";
    }
  }

  // MaxAccessibility
  if (maxAccessibility != null) {
    if (getLastCharecter(targeturl) == "?") {
      targeturl = targeturl + "maxaccessibility=$maxAccessibility";
    } else {
      targeturl = targeturl + "&maxaccessibility=$maxAccessibility";
    }
  }

  http.Response webresult = await http.get(Uri.parse(targeturl));

  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }
  var activity = jsondata["activity"];
  var accessibility = jsondata["accessibility"];
  var type = jsondata["type"];
  var participants = jsondata["participants"];
  var price = jsondata["price"];
  var link = jsondata["link"];
  var key = jsondata["key"];

  return {
    "Activity": activity,
    "Accessibility": accessibility,
    "Type": type,
    "Participants": participants,
    "Price": price,
    "Link": link,
    "Key": key
  };
}

String getLastCharecter(String target) {
  var result = target.substring(target.length - 1);
  return result.toString();
}
