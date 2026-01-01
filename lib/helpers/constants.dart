import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// colors
const kPrimaryColor = Color(0XFF88C54D);
const kSecondaryColor = Color(0XFFFFC906);
const kTextColor = Color(0XFF282828);

// enum for social media
enum SocialMedia { instagram, linkedin, github, facebook, twitter }

// social media links
const _kInstagramURL = "https://www.instagram.com/ankitpsamrat/";
const _kLinkedinURL = "https://www.linkedin.com/in/ankitpsamrat/";
const _kGithubURL = "https://github.com/ankitpsamrat";
const _kFacebookURL = "https://www.facebook.com/ankitpsamrat";
const _kTwitterURL = "https://www.twitter.com/ankitpsamrat";

void _launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

// function to launch social media URLs
void launchSocialMedia(SocialMedia platform) {
  switch (platform) {
    case SocialMedia.instagram:
      _launchURL(_kInstagramURL);
      break;
    case SocialMedia.linkedin:
      _launchURL(_kLinkedinURL);
      break;
    case SocialMedia.github:
      _launchURL(_kGithubURL);
      break;
    case SocialMedia.facebook:
      _launchURL(_kFacebookURL);
      break;
    case SocialMedia.twitter:
      _launchURL(_kTwitterURL);
      break;
  }
}
