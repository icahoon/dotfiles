fgo() {
  find . -type f -name "*.go" -exec grep -Hn $* {} \;
}
