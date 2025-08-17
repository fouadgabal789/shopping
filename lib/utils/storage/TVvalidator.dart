import 'package:flutter/material.dart';
class TVvalidator {

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required.';
    }

    final email = value.trim();
    final emailRegExp = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$');

    if (!emailRegExp.hasMatch(email)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length

    if (value.length < 6) {

      return 'Password must be at least 6 characters long.';

    }

// Check for uppercase letters

    if (!value.contains (RegExp(r' [A-Z]'))) {

      return 'Password must contain at least one uppercase letter.';

    }

// Check for numbers

    if (!value.contains (RegExp(r' [0-9]'))) {

      return 'Password must contain at least one number.';

    }

// Check for special characters

    if (!value.contains (RegExp(r' [!@#$%^&*(),.?":{}|<>]'))) {

      return 'Password must contain at least one special character.';

    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {

    if (value == null || value.isEmpty) {

      return 'Phone number is required.';
    }
    final phoneRegExp=RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
    return 'Invalid phone number format (10 digits required).';

    }

    return null;

  }

// Regular expression for phone number validation (assuming a 10-digit US phone number format)


}