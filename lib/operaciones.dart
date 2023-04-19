class Temperatura {
  double celsiusToFahrenheit(double celsius) {
    celsius = (celsius * 1.8) + 32;
    return (celsius);
  }

  double celsiusToKelvin(double celsius) {
    celsius = celsius + 273.15;
    return celsius;
  }

  double fahrenheitToCelsius(double fahrenheit) {
    fahrenheit = (fahrenheit - 32) / 1.8;
    return (fahrenheit);
  }

  double fahrenheitToKelvin(double fahrenheit) {
    fahrenheit = (fahrenheit + 459.67) / 1.8;
    return (fahrenheit);
  }

  double kelvinToCelsius(double kelvin) {
    kelvin = kelvin - 273.15;
    return kelvin;
  }

  double kelvinToFahrenheit(double kelvin) {
    kelvin = (kelvin * 1.8) - 459.67;
    return kelvin;
  }
}
