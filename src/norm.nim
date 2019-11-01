import math
import strutils
import strformat
import imageman/[images, colors]


func l2[T: Color](image1, image2: Image[T]): float =
  var sum = 0
  for i in 0..image1.data.high:
    for j in 0..T.high:
      let d = int(image2.data[i][j]) - int(image1.data[i][j])
      sum += d * d
  sqrt(float(sum)) / T.maxComponentValue.float


func linf[T: Color](image1, image2: Image[T]): float =
  var norm = 0
  for i in 0..image1.data.high:
    for j in 0..T.high:
      let d = int(image2.data[i][j]) - int(image1.data[i][j])
      norm = max(norm, abs(d))
  float(norm) / T.maxComponentValue.float


proc norm(norm = "all", files: seq[string]): int =
  if len(files) != 2:
    stderr.writeLine "Please provide exactly two image files"
    quit QuitFailure
  let image1 = loadImage[ColorRGBU](files[0])
  let image2 = loadImage[ColorRGBU](files[1])
  if image1.height != image2.height or image1.width != image2.width:
    stderr.writeLine "The images must have the same dimensions"
    quit QuitFailure

  case norm.toLowerAscii
  of "l2":
    echo l2(image1, image2)
  of "linf":
    echo linf(image1, image2)
  else:
    echo fmt"L2 = {l2(image1, image2)}"
    echo fmt"Linf = {linf(image1, image2)}"


when isMainModule:
  import cligen
  dispatch(norm)
