SET DEFAULT_PARALLEL 20;
REGISTER '/home/auto/smoham3/scripts/Search.jar';
pos = LOAD '/warehouse/made/work/Pos/20150325' using PigStorage('\u0001') AS(
LyltyCardNbr :chararray,
ShoppedSearsBU12months :chararray,
ShoppedSearsDIV12months :chararray,
ShoppedSearsBUDIVLine12months :chararray,
ShoppedSearsKV12months :chararray,
ShoppedKmartBU12months :chararray,
ShoppedKmartDIV12months :chararray,
ShoppedKmartBUDIVLine12months :chararray,
ShoppedKmartKV12months :chararray,
ShoppedSHCBU12months :chararray,
LastTransactionDate :chararray
);

Pos_aggr = FOREACH pos GENERATE
CONCAT(LyltyCardNbr,'POS') as Key,
'POS' as Source,
LyltyCardNbr,
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
ShoppedSearsBU12months,
ShoppedKmartBU12months,
ShoppedSHCBU12months,
ShoppedSearsKV12months,
ShoppedKmartKV12months,
ShoppedSearsDIV12months,
ShoppedKmartDIV12months,
ShoppedSearsBUDIVLine12months,
ShoppedKmartBUDIVLine12months,
org.sears.analytics.SearchUTC(org.sears.analytics.ValidateDate(LastTransactionDate)),
'',
'N',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'';

STORE Pos_aggr into '/warehouse/made/prod/Pos/20150325' using PigStorage('\t');

