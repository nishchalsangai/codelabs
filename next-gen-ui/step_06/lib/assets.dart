// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

class AssetPaths {
  /// Images
  static const String _images = 'assets/images';

  static const String titleBgBase = '$_images/bg-base.jpg';
  static const String titleBgReceive = '$_images/bg-light-receive.png';
  static const String titleFgEmit = '$_images/fg-light-emit.png';
  static const String titleFgReceive = '$_images/fg-light-receive.png';
  static const String titleFgBase = '$_images/fg-base.png';
  static const String titleMgEmit = '$_images/mg-light-emit.png';
  static const String titleMgReceive = '$_images/mg-light-receive.png';
  static const String titleMgBase = '$_images/mg-base.png';
  static const String titleStartBtn = '$_images/button-start.png';
  static const String titleStartBtnHover = '$_images/button-start-hover.png';
  static const String titleStartArrow = '$_images/button-start-arrow.png';
  static const String titleSelectedLeft = '$_images/select-left.png';
  static const String titleSelectedRight = '$_images/select-right.png';
  static const String pulseParticle = '$_images/particle3.png';

  //Icons To Change
  static const String instaIcon = '$_images/instagram.png';
  static const String githubIcon = '$_images/github.png';
  static const String linkedInIcon = '$_images/linkedin.png';

  //Texts To Change
  static const String name = 'NISHCHAL';
  static const String age = '23';
  static const String title = 'SOFTWARE DEVELOPER';
  static const String btn1 = 'GITHUB';
  static const String btn2 = 'LINKEDIN';
  static const String btn3 = 'INSTAGRAM';
  static const String contactMe = 'CONTACT ME';
  static const String btn1Link = 'https://github.com/nishchalsangai';
  static const String btn2Link =
      'https://www.linkedin.com/in/nishchal-sangai-53836b180/';
  static const String btn3Link = 'https://www.instagram.com/nishchal.codes/';
  static const String contactMeLink = 'sangainishchal@gmail.com';

  /// Shaders
  static const String _shaders = 'assets/shaders';
  static const String orbShader = '$_shaders/orb_shader.frag';
  static const String uiShader = '$_shaders/ui_glitch.frag';
}

List<String> imageAssets = [
  AssetPaths.githubIcon,
  AssetPaths.linkedInIcon,
  AssetPaths.instaIcon
];

typedef FragmentPrograms = ({FragmentProgram orb, FragmentProgram ui});

Future<FragmentPrograms> loadFragmentPrograms() async => (
      orb: (await _loadFragmentProgram(AssetPaths.orbShader)),
      ui: (await _loadFragmentProgram(AssetPaths.uiShader)),
    );

Future<FragmentProgram> _loadFragmentProgram(String path) async {
  return (await FragmentProgram.fromAsset(path));
}
