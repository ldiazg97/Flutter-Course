import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios Botones en Flutter',
    link: '/buttoms',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Unas Cards estilizadas',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Inidcators',
    subTitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbars y Dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animaciones',
    subTitle: 'Animaciones en Flutter',
    link: '/animations',
    icon: Icons.animation,
  ),
];
