// From Dynamic vs. Static Flow-Sensitive Security Analysis, Russo & Sabelfeld, 2010

void output(int i) {}

void f(int secret) {
  int y = 0;
  int x = 0;

  while (y < 10) {
    output(x);

    if (y == 5) {
      x = secret;
      y = 10;
    }
    y++;
    x++;
  }
}