upstream sbdevice {
  server app5:9541 weight=1;
  server app6:9541 weight=1;
}
