import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth * 0.05; // 5% of screen width
    double fontSize = screenWidth < 600 ? 15 : 18; // Larger font for larger screens

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          _buildCalculationRow(context, 'x 30', '(Total Days)', fontSize),
          Divider(color: Theme.of(context).dividerColor),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          _buildCalculationRow(context, '\$ 32.4', '(Per Item Price)', fontSize),
          Divider(color: Theme.of(context).dividerColor),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          _buildCalculationRow(context, 'x 30', '(Total Items)', fontSize),
          Divider(color: Theme.of(context).dividerColor),
          _buildCalculationRow(context, '\$ 300', 'Total Amount', fontSize),
          Divider(color: Theme.of(context).dividerColor),
        ],
      ),
    );
  }

  Widget _buildCalculationRow(BuildContext context, String leftText, String rightText, double fontSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(leftText,
              textAlign: TextAlign.center,
              style: GoogleFonts.lexend(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400, // Slightly bolder
                  color: Theme.of(context).primaryColor)),
        ),
        Flexible(
          flex: 3, // Giving more space to the description
          child: Text(rightText,
              textAlign: TextAlign.end,
              style: GoogleFonts.lexend(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w200,
                  color: Theme.of(context).primaryColor)),
        ),
      ],
    );
  }
}
