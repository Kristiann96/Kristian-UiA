use context essentials2021

# Her defineres objektene hver for seg så de senere kan kalles på

red = rectangle(220, 160, "solid", "red")

white1 = rectangle(40, 160, "solid", "white")

white2 = rectangle(220, 40, "solid", "white")

blue1 = rectangle(20, 160, "solid", "blue")

blue2 = rectangle(220, 20, "solid", "blue")

# Her brukes "overlay" funksjonen for å legge objektene i lag så det norske flagget blir tegnet med objektene

overlay-xy(blue1, -70, 0,
  overlay-align("middle", "middle", blue2,
    overlay-xy(white1, -60, 0,
      overlay-align("middle", "middle", white2, red))))

