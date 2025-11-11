resource "random_id" "test" {
  byte_length = 8
}

resource "time_sleep" "wait" {
  create_duration = "45s"
  depends_on      = [random_id.test]
}
