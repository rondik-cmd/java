String mijnZin;

String eersteStuk = "hallo ";
String tweedeStuk = "ik ben rondik ";
String derdeStuk = "ik ben 21 ";
String vierdeStuk = "jaar oud";

void setup () {
  mijnZin = mijnMethode(eersteStuk, tweedeStuk, derdeStuk, vierdeStuk);
  println(mijnZin);
}

String mijnMethode (String eersteStuk, String tweedeStuk, String derdeStuk, String vierdeStuk) {
  String zin = (eersteStuk + tweedeStuk + derdeStuk + vierdeStuk);
  return zin;
}
