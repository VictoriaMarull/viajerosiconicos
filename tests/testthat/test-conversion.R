# Test 1: Probar la conversión de 32°F a Celsius (debería dar 0°C)
test_that("32°F se convierte correctamente a 0°C", {
  expect_equal(conversion(32), 0)
})

# Test 2: Probar la conversión de -40°F a Celsius (debería dar -40°C)
test_that("-40°F se convierte correctamente a -40°C", {
  expect_equal(conversion(-40), -40)
})
