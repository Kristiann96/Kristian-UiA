use context essentials2021
red = rectangle(220, 160, "solid", "red")

white1 = rectangle(40, 160, "solid", "white")

white2 = rectangle(220, 40, "solid", "white")

blue1 = rectangle(20, 160, "solid", "blue")

blue2 = rectangle(220, 20, "solid", "blue")




overlay-xy(blue1, -70, 0,
  overlay-align("middle", "middle", blue2,
    overlay-xy(white1, -60, 0,
      overlay-align("middle", "middle", white2, red))))

