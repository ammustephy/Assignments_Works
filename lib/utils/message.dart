import 'package:flutter/material.dart';

errorSnackbar(context) =>
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
                content: Text("Something went wrong!!!!!!!!!"),
                backgroundColor: Colors.red,
        ));

successSnackbar(context) =>
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
                content: Text("Success!!!"),
                backgroundColor: Colors.green,
        ));