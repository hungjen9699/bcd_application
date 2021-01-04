part of 'getlistcrack_bloc.dart';

abstract class GetListCrackState extends Equatable {
  const GetListCrackState();
  @override
  List<Object> get props => [];
}

class GetListCrackLoading extends GetListCrackState {}

class GetListCrackSuccess extends GetListCrackState {
  final List<CrackDTO> listDTO;
  const GetListCrackSuccess(this.listDTO);
  @override
  List<Object> get props => [listDTO];
}

class GetQueueSuccess extends GetListCrackState {
  final List<CrackDTO> listDTO;
  final List<WorkerDTO> workerDTO;
  const GetQueueSuccess(this.listDTO, this.workerDTO);
  @override
  List<Object> get props => [listDTO];
}

class GetListCrackError extends GetListCrackState {}
