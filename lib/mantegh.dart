bool winO(List OorX) {
  if (OorX[0] == OorX[1] &&
      OorX[1] == OorX[2] &&
      OorX[2] != '' &&
      OorX[1] == 'O') {
    return true;
  }
  if (OorX[3] == OorX[4] &&
      OorX[4] == OorX[5] &&
      OorX[5] != '' &&
      OorX[5] == 'O') {
    return true;
  }
  if (OorX[6] == OorX[7] &&
      OorX[7] == OorX[8] &&
      OorX[8] != '' &&
      OorX[8] == 'O') {
    return true;
  }
  if (OorX[0] == OorX[3] &&
      OorX[3] == OorX[6] &&
      OorX[6] != '' &&
      OorX[6] == 'O') {
    return true;
  }
  if (OorX[1] == OorX[4] &&
      OorX[4] == OorX[7] &&
      OorX[7] != '' &&
      OorX[7] == 'O') {
    return true;
  }
  if (OorX[2] == OorX[5] &&
      OorX[5] == OorX[8] &&
      OorX[8] != '' &&
      OorX[8] == 'O') {
    return true;
  }
  if (OorX[2] == OorX[4] &&
      OorX[4] == OorX[6] &&
      OorX[6] != '' &&
      OorX[6] == 'O') {
    return true;
  }
  if (OorX[0] == OorX[4] &&
      OorX[4] == OorX[8] &&
      OorX[8] != '' &&
      OorX[8] == 'O') {
    return true;
  } else {
    return false;
  }
}

bool winX(List OorX) {
  if (OorX[0] == OorX[1] &&
      OorX[1] == OorX[2] &&
      OorX[2] != '' &&
      OorX[1] == 'X') {
    return true;
  }
  if (OorX[3] == OorX[4] &&
      OorX[4] == OorX[5] &&
      OorX[5] != '' &&
      OorX[5] == 'X') {
    return true;
  }
  if (OorX[6] == OorX[7] &&
      OorX[7] == OorX[8] &&
      OorX[8] != '' &&
      OorX[8] == 'X') {
    return true;
  }
  if (OorX[0] == OorX[3] &&
      OorX[3] == OorX[6] &&
      OorX[6] != '' &&
      OorX[6] == 'X') {
    return true;
  }
  if (OorX[1] == OorX[4] &&
      OorX[4] == OorX[7] &&
      OorX[7] != '' &&
      OorX[7] == 'X') {
    return true;
  }
  if (OorX[2] == OorX[5] &&
      OorX[5] == OorX[8] &&
      OorX[8] != '' &&
      OorX[8] == 'X') {
    return true;
  }
  if (OorX[2] == OorX[4] &&
      OorX[4] == OorX[6] &&
      OorX[6] != '' &&
      OorX[6] == 'X') {
    return true;
  }
  if (OorX[0] == OorX[4] &&
      OorX[4] == OorX[8] &&
      OorX[8] != '' &&
      OorX[8] == 'X') {
    return true;
  } else {
    return false;
  }
}

bool ful(List OorX) {
  int count = 0;
  while (count < 9) {
    if (OorX[count] != '') {
      count += 1;
    } else {
      break;
    }
  }
  if (count == 9 && winO(OorX) == false && winX(OorX) == false) {
    return true;
  } else {
    return false;
  }
}

List craterlist() {
  int count = 0;
  List<String> a = [];
  while (count < 9) {
    a.add('');
    count += 1;
  }

  return a;
}
