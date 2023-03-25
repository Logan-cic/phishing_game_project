import 'dart:async';

class Cronometro {
  static Duration? tempoTotal;

  static DateTime? _startTime;

  void startTimer() {
    _startTime = DateTime.now();
  }

  tempoFinal(tempoFinalEmSegundos) {
    tempoTotal = tempoFinalEmSegundos;
  }
  Duration? get tempoDeDuracao => tempoTotal;

  Duration stopTimer() {
    if (_startTime == null) {
      throw Exception('O cronômetro não foi iniciado.');
    }
    final endTime = DateTime.now();
    final elapsed = endTime.difference(_startTime!);
    _startTime = null;
    return elapsed;
  }
}
