import 'package:flutter/material.dart';
import 'package:portfolio_website/helpers/constants.dart';
import 'package:portfolio_website/helpers/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? const DesktopFooter() : const MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          const Expanded(
            flex: 1,
            child: Text(
              'All Right Reserved',
              style: TextStyle(fontSize: 10),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                NavItem(
                  title: 'Instagram',
                  tapEvent: () {
                    launchSocialMedia(SocialMedia.instagram);
                  },
                ),
                NavItem(
                  title: 'Linkedin',
                  tapEvent: () {
                    launchSocialMedia(SocialMedia.linkedin);
                  },
                ),
                NavItem(
                  title: 'Github',
                  tapEvent: () {
                    launchSocialMedia(SocialMedia.github);
                  },
                ),
                NavItem(
                  title: 'Facebook',
                  tapEvent: () {
                    launchSocialMedia(SocialMedia.facebook);
                  },
                ),
                NavItem(
                  title: 'Twitter',
                  tapEvent: () {
                    launchSocialMedia(SocialMedia.twitter);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          const Text(
            'All Right Reserved',
            style: TextStyle(fontSize: 10),
          ),
          const SizedBox(height: 5),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              NavItem(
                title: 'Instagram',
                tapEvent: () {
                  launchSocialMedia(SocialMedia.instagram);
                },
              ),
              NavItem(
                title: 'Linkedin',
                tapEvent: () {
                  launchSocialMedia(SocialMedia.linkedin);
                },
              ),
              NavItem(
                title: 'Github',
                tapEvent: () {
                  launchSocialMedia(SocialMedia.github);
                },
              ),
              NavItem(
                title: 'Facebook',
                tapEvent: () {
                  launchSocialMedia(SocialMedia.facebook);
                },
              ),
              NavItem(
                title: 'Twitter',
                tapEvent: () {
                  launchSocialMedia(SocialMedia.twitter);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final GestureTapCallback tapEvent;

  const NavItem({
    super.key,
    required this.title,
    required this.tapEvent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
