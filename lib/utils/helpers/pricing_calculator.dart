
class MPricingCalculator{

  //calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice= taxAAmount + shippingCost;
    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    return 0.19;
  }

  static double getShippingCost(String location){
    return 7.00;
  }

  //sum all cart values and return total amount
  //static double calculteCartTotal(CartModel cart){
  //  return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  //}
}