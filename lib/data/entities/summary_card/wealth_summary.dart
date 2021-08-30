import 'dart:convert';

class WealthSummary {
  final double cdi;
  final double gain;
  final bool hasHistory;
  final int id;
  final double profitability;
  final int total;

  WealthSummary({
    required this.cdi,
    required this.gain,
    required this.hasHistory,
    required this.id,
    required this.profitability,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    return {
      'cdi': cdi,
      'gain': gain,
      'hasHistory': hasHistory,
      'id': id,
      'profitability': profitability,
      'total': total,
    };
  }

  factory WealthSummary.fromMap(Map<String, dynamic> map) {
    return WealthSummary(
      cdi: map['cdi']?.toDouble(),
      gain: map['gain']?.toDouble(),
      hasHistory: map['hasHistory'],
      id: map['id']?.toInt(),
      profitability: map['profitability']?.toDouble(),
      total: map['total']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory WealthSummary.fromJson(String source) =>
      WealthSummary.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WealthSummary(cdi: $cdi, gain: $gain, hasHistory: $hasHistory, id: $id, profitability: $profitability, total: $total)';
  }
}
