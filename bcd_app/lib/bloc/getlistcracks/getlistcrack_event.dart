part of 'getlistcrack_bloc.dart';

abstract class GetListCrackEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetListNotVerifyCrack extends GetListCrackEvent {}

class GetListVerifyCrack extends GetListCrackEvent {}

class GetListUnScheduledCrack extends GetListCrackEvent {}

class GetListCrackInQueue extends GetListCrackEvent {}
