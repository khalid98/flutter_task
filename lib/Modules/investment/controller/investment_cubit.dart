import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// State
class InvestmentState {
  final int amount;

  InvestmentState(this.amount);
}

// Cubit
class InvestmentCubit extends Cubit<InvestmentState> {
  InvestmentCubit() : super(InvestmentState(10000));
  double capitalAtMaturity = 0.0;
  double totalInterest = 0.0;
  double annualInterest = 0.0;
  double annaualYield = 6.81;
  String? AverageMaturityDate;
  List<int> termsValue = [3, 5];
  int terms = 3;

  void incrementInvestment() {
    int newAmount = state.amount;

    if (newAmount <= 10000) {
      newAmount += 1000;
    } else {
      newAmount += 10000;
    }

    if (newAmount > 250) {
      emit(InvestmentState(newAmount));
    } else {
      emit(InvestmentState(250));
    }
  }

  void decrementInvestment() {
    int newAmount = state.amount - 1000;

    if (newAmount >= 250) {
      emit(InvestmentState(newAmount));
    } else {
      emit(InvestmentState(250));
    }
  }

  String calculateCapitalAtMaturity() {
    int newAmount = state.amount;
    capitalAtMaturity = (annaualYield * terms * newAmount) + newAmount;
    return capitalAtMaturity.toStringAsFixed(2);
  }

  String calculateTotalInterest() {
    int newAmount = state.amount;
    totalInterest = annaualYield * terms * newAmount;
    return totalInterest.toStringAsFixed(2);
  }

  String calculateAnnualInterest() {
    int newAmount = state.amount;
    annualInterest = newAmount * annaualYield;
    return annualInterest.toStringAsFixed(2);
  }

  String calculateAverageMaturityDate() {
    DateTime today = DateTime.now();
    DateTime desiredDate = DateTime(
      today.year + terms,
    );
    debugPrint("16 years ago date is: $desiredDate");
    return desiredDate.toString().split("-").first;
  }

  void setTermValue(int value) {
    int newAmount = state.amount;
    terms = value;
    emit(InvestmentState(newAmount));
  }
}
