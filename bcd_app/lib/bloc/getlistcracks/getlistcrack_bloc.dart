import 'package:bcd_app/objects/crackDTO.dart';
import 'package:bcd_app/objects/workerDTO.dart';
import 'package:bcd_app/repositories/crack_repository.dart';
import 'package:bcd_app/repositories/worker_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'getlistcrack_event.dart';
part 'getlistcrack_state.dart';

class GetListCrackBloc extends Bloc<GetListCrackEvent, GetListCrackState> {
  @override
  GetListCrackState get initialState => GetListCrackLoading();

  @override
  Stream<GetListCrackState> mapEventToState(GetListCrackEvent event) async* {
    CrackRepository _crackRepository = new CrackRepository();
    if (event is GetListNotVerifyCrack) {
      List<CrackDTO> listDTO =
          await _crackRepository.fetchCrackByStatus("Unconfirmed");
      yield* _mapAppStartedToState(listDTO);
    } else if (event is GetListVerifyCrack) {
      List<CrackDTO> listDTO = await _crackRepository.fetchVerifyCrack();
      yield* _mapAppStartedToState(listDTO);
    } else if (event is GetListUnScheduledCrack) {
      List<CrackDTO> listDTO = await _crackRepository
          .fetchCrackByStatus("Unscheduled for maintenace");
      List<CrackDTO> listFinal = new List<CrackDTO>();
      for (CrackDTO crackDTO in listDTO) {
        if (crackDTO.maintenanceOrderId == null) {
          listFinal.add(crackDTO);
        }
      }
      yield* _mapAppStartedToState(listFinal);
    }
    if (event is GetListCrackInQueue) {
      WorkerRepository _workerRepository = new WorkerRepository();

      List<CrackDTO> listDTO = await _crackRepository.fetchCrackInQueue();
      List<WorkerDTO> listWorker = await _workerRepository.fetchListWorker();

      yield* _mapAppStartedToStateForQueue(listDTO, listWorker);
    }
  }

  Stream<GetListCrackState> _mapAppStartedToState(
      List<CrackDTO> listDTO) async* {
    if (listDTO != null) {
      yield GetListCrackSuccess(listDTO);
    } else {
      yield GetListCrackError();
    }
  }

  Stream<GetListCrackState> _mapAppStartedToStateForQueue(
      List<CrackDTO> listDTO, List<WorkerDTO> listWorker) async* {
    if (listDTO != null) {
      yield GetQueueSuccess(listDTO, listWorker);
    } else {
      yield GetListCrackError();
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
