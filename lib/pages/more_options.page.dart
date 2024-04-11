import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MoreOptionPage extends ConsumerWidget {
  const MoreOptionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => {print('Open account detail page')},
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 37,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nwaegwu Joel Stanley',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold),
                          ),
                          Text('Account Details')
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              MoreOptionsItem(
                  title: 'Get Zara Pay Business',
                  description: '',
                  iconData: Icons.house_sharp,
                  onTap: () {
                    print('redirect to link to download business app');
                  }),
              MoreOptionsItem(
                  title: 'Statements',
                  description: 'Request monthly statement',
                  iconData: Icons.short_text_outlined,
                  onTap: () {
                    print('redirect to page to request account statement');
                  }),
              MoreOptionsItem(
                  title: 'Reports',
                  description: 'Request spending reports',
                  iconData: Icons.list_alt_rounded,
                  onTap: () {
                    print('redirect to page for spending reports');
                  }),
              MoreOptionsItem(
                  title: 'Saved Cards',
                  description: 'Manage cards saved for deposit',
                  iconData: Icons.card_giftcard,
                  onTap: () {
                    print('redirect to link to for saved cards');
                  }),
              MoreOptionsItem(
                  title: 'Get Help',
                  description: 'Get support or share feedback',
                  iconData: Icons.help_rounded,
                  onTap: () {
                    print('redirect to link to help or feedback');
                  }),
              MoreOptionsItem(
                  title: 'Security',
                  description: 'secure your accounts from intruders',
                  iconData: Icons.security,
                  onTap: () {
                    print('redirect to link to secure account');
                  }),
              MoreOptionsItem(
                  title: 'Referrals',
                  description: 'refer your friends and get paid for it',
                  iconData: Icons.people_outline_rounded,
                  onTap: () {
                    print('redirect to referral page');
                  }),
              MoreOptionsItem(
                  title: 'Account Limits',
                  description: 'manage your spending and deposit limit',
                  iconData: Icons.account_balance_outlined,
                  onTap: () {
                    print('redirect to referral page');
                  }),
              MoreOptionsItem(
                  title: 'Legal',
                  description: 'our legal contract with you',
                  iconData: Icons.admin_panel_settings,
                  onTap: () {
                    print('redirect to legal page');
                  }),
              SizedBox(
                height: 40.0,
              ),
              TextButton(onPressed: () {}, child: Text('Sign out'))
            ],
          ),
        ),
      ),
    );
  }
}

class MoreOptionsItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;
  final VoidCallback onTap;
  const MoreOptionsItem({
    required this.iconData,
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconData),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18.5, fontWeight: FontWeight.bold),
                ),
                Text(description)
              ],
            ),
            Expanded(child: Text('')),
            const Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}
